; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/core/rtw_cmd.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/core/rtw_cmd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.cmd_hdl = type { i32, ptr }
%struct._cmd_callback = type { i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.evt_priv = type { %struct.work_struct, i8, ptr, %struct.atomic_t, ptr, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.cmd_priv = type { %struct.completion, %struct.completion, %struct.completion, %struct.__queue, i8, ptr, ptr, ptr, ptr, i32, i32, i8, ptr }
%struct.__queue = type { %struct.list_head, %struct.spinlock }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.adapter = type { i32, [3 x i32], i32, ptr, %struct.mlme_priv, %struct.mlme_ext_priv, %struct.cmd_priv, %struct.evt_priv, %struct.io_priv, %struct.xmit_priv, %struct.recv_priv, %struct.sta_priv, %struct.security_priv, %struct.registry_priv, %struct.pwrctrl_priv, %struct.eeprom_priv, %struct.led_priv, ptr, %struct.wifidirect_info, %struct.hal_data_8188e, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rereg_nd_name_data, i32, %struct.net_device_stats, %struct.iw_statistics, ptr, i32, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, %struct.spinlock, [16 x ptr], i32, [6 x i8], [6 x i8], [4 x i8], ptr, [6 x i8], [4 x i8], %struct.br_ext_info, i8 }
%struct.mlme_priv = type { %struct.spinlock, i32, i8, i8, i8, ptr, i8, ptr, %struct.__queue, %struct.__queue, ptr, i8, i32, %struct.ndis_802_11_ssid, [6 x i8], %struct.wlan_network, ptr, i32, %struct.timer_list, i32, i32, %struct.timer_list, i32, %struct.qos_priv, i32, i32, %struct.ht_priv, %struct.rt_link_detect, %struct.timer_list, i8, i8, i32, ptr, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8 }
%struct.ndis_802_11_ssid = type { i32, [32 x i8] }
%struct.wlan_network = type { %struct.list_head, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex, %struct.wlan_bcn_info }
%struct.wlan_bssid_ex = type { i32, [6 x i8], [2 x i8], %struct.ndis_802_11_ssid, i32, i32, i32, %struct.ndis_802_11_config, i32, [16 x i8], %struct.wlan_phy_info, i32, [768 x i8] }
%struct.ndis_802_11_config = type { i32, i32, i32, i32, %struct.ndis_802_11_config_fh }
%struct.ndis_802_11_config_fh = type { i32, i32, i32, i32 }
%struct.wlan_phy_info = type { i8, i8, i8, i8 }
%struct.wlan_bcn_info = type { i8, i32, i32, i32, i16, i8 }
%struct.qos_priv = type { i32 }
%struct.ht_priv = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, %struct.ieee80211_ht_cap }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.rt_link_detect = type { i32, i32, i32, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mlme_ext_priv = type { ptr, i8, %struct.atomic_t, i16, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.rt_channel_info], %struct.p2p_channels, [13 x i8], [13 x i8], %struct.ss_res, %struct.mlme_ext_info, %struct.timer_list, %struct.timer_list, i16, i8, i8, i32, i64, i8, i8, i8, i16, i8 }
%struct.rt_channel_info = type { i8, i32, i32 }
%struct.p2p_channels = type { [10 x %struct.p2p_reg_class], i32 }
%struct.p2p_reg_class = type { i8, [20 x i8], i32 }
%struct.ss_res = type { i32, i32, i32, i32, i8, i8, [9 x %struct.ndis_802_11_ssid], [51 x %struct.rtw_ieee80211_channel] }
%struct.rtw_ieee80211_channel = type { i16, i32 }
%struct.mlme_ext_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [128 x i8], i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.ADDBA_request, %struct.WMM_para_element, %struct.HT_caps_element, %struct.HT_info_element, %struct.wlan_bssid_ex, [32 x %struct.FW_Sta_Info] }
%struct.ADDBA_request = type { i8, i8, i16, i16, i16 }
%struct.WMM_para_element = type { i8, i8, [4 x %struct.AC_param] }
%struct.AC_param = type { i8, i8, i16 }
%struct.HT_caps_element = type { %union.anon.99 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { i16, i8, [16 x i8], i16, i16, i8 }
%struct.HT_info_element = type { i8, [5 x i8], [16 x i8] }
%struct.FW_Sta_Info = type { ptr, i32, i32, i32, [16 x i8] }
%struct.io_priv = type { ptr, %struct.intf_hdl }
%struct.intf_hdl = type { ptr, ptr }
%struct.xmit_priv = type { %struct.spinlock, %struct.semaphore, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, %struct.__queue, i32, ptr, i8, i8, i8, i64, i64, i64, i64, i64, ptr, i8, [4 x i8], %struct.semaphore, i8, %struct.tasklet_struct, i32, i32, i32, i32, %struct.__queue, %struct.__queue, ptr, ptr, i32, %struct.__queue, ptr, ptr, i32, i16, i32, %struct.mutex, %struct.submit_ctx }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.102, i32 }
%union.anon.102 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.submit_ctx = type { i32, i32, i32, %struct.completion }
%struct.recv_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, i32, i32, i32, i32, %struct.semaphore, i8, %struct.tasklet_struct, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, ptr, ptr, %struct.__queue, i32, i8, i8, i8, i8, i8, i8, i8, [2 x i32], [2 x i8], i32, %struct.timer_list, i32, %struct.signal_stat, %struct.signal_stat }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.signal_stat = type { i8, i8, i32, i32 }
%struct.sta_priv = type { ptr, ptr, %struct.__queue, %struct.spinlock, [32 x %struct.list_head], i32, %struct.__queue, %struct.__queue, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.spinlock, i8, i8, i32, i32, i32, [32 x ptr], i16, i16, i16, %struct.wlan_acl_pool }
%struct.wlan_acl_pool = type { i32, i32, [16 x %struct.rtw_wlan_acl_node], %struct.__queue }
%struct.rtw_wlan_acl_node = type { %struct.list_head, [6 x i8], i8 }
%struct.security_priv = type { i32, i32, i32, [4 x %union.Keytype], [4 x i32], i32, i32, [4 x %union.Keytype], [4 x %union.Keytype], [4 x %union.Keytype], %union.pn48, %union.pn48, %struct.arc4_ctx, %struct.arc4_ctx, i32, i32, i32, i32, i32, i32, [512 x i8], i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex, %struct.ndis_802_11_wep, [600 x i8], [256 x i8], [512 x i8], [256 x i8], [256 x i8], i32, i8, i8, i32, [16 x %struct.rt_pmkid_list], i8, i8 }
%union.Keytype = type { [4 x i32] }
%union.pn48 = type { i64 }
%struct.arc4_ctx = type { [256 x i32], i32, i32 }
%struct.ndis_802_11_wep = type { i32, i32, i32, [16 x i8] }
%struct.rt_pmkid_list = type { i8, [6 x i8], [16 x i8], [33 x i8], ptr, i16 }
%struct.registry_priv = type <{ i8, i8, i8, i8, %struct.ndis_802_11_ssid, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.wlan_bssid_ex, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [16 x i8], [16 x i8], i8, [2 x i8] }>
%struct.pwrctrl_priv = type { %struct.mutex, i8, i8, i8, i32, %struct.work_struct, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, %struct.timer_list, i32, i8, i32, i32, i32, i8, i8 }
%struct.eeprom_priv = type { i8, i8, i8, i8, [6 x i8], i16, i8, [3 x i8], [512 x i8] }
%struct.led_priv = type { %struct.LED_871x, i8 }
%struct.LED_871x = type { ptr, i32, i32, i8, i8, i8, i32, i8, i8, i8, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.wifidirect_info = type { ptr, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.tx_provdisc_req_info, %struct.rx_provdisc_req_info, %struct.tx_invite_req_info, [10 x %struct.profile_info], %struct.tx_invite_resp_info, %struct.tx_nego_req_info, %struct.group_id_info, %struct.scan_limit_info, %struct.scan_limit_info, i32, i32, i32, [6 x i8], [6 x i8], [4 x i8], i8, i8, i8, [8 x i8], [7 x i8], i8, [6 x i8], [6 x i8], i8, [32 x i8], i8, i8, i8, i8, i16, i8, [32 x i8], i8, [32 x i8], i8, i8, i8, i32, i16, i32, [100 x i8], i32, i32, i8, i8, i8, i8, [2 x i8], [2 x i32], [2 x i32], [2 x i32] }
%struct.tx_provdisc_req_info = type { i16, [2 x i16], %struct.ndis_802_11_ssid, [6 x i8], [6 x i8], i8 }
%struct.rx_provdisc_req_info = type { [6 x i8], [4 x i8] }
%struct.tx_invite_req_info = type { i8, i8, [32 x i8], i8, [6 x i8], [6 x i8], i8, i8 }
%struct.profile_info = type { i8, [32 x i8], [6 x i8] }
%struct.tx_invite_resp_info = type { i8 }
%struct.tx_nego_req_info = type { [2 x i16], [6 x i8], i8 }
%struct.group_id_info = type { [6 x i8], [32 x i8] }
%struct.scan_limit_info = type { i8, [2 x i8] }
%struct.hal_data_8188e = type { %struct.HAL_VERSION, i16, i16, i16, i16, i8, i32, i32, i8, i8, i16, i8, i8, [14 x i8], [14 x i8], [4 x i8], [4 x i8], [3 x [14 x i8]], [3 x [14 x i8]], [3 x [14 x i8]], [3 x [14 x i8]], i8, i8, i8, i8, i8, [13 x [16 x i32]], i8, i8, i32, [2 x %struct.bb_reg_def], [2 x i32], i8, i8, i8, i8, i8, %struct.dm_priv, %struct.odm_dm_struct, i8, i8, i8, i8, i8, i8, i8, i16, %struct.P2P_PS_Offload_t, i8, i32, i8, i8, i32, i8, i8, i8, i8 }
%struct.HAL_VERSION = type { i32, i32, i32, i8 }
%struct.bb_reg_def = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dm_priv = type { i32, i32, i32, i32 }
%struct.odm_dm_struct = type { ptr, i8, i8, i8, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x ptr], i16, [32 x %struct.odm_ra_info], %struct.odm_phy_dbg_info, %struct.fast_ant_train, %struct.rtw_dig, %struct.rtl_ps, %struct.false_alarm_stats, %struct.sw_ant_switch, %struct.edca_turbo, i8, %struct.odm_rate_adapt, %struct.odm_rf_cal, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.odm_ra_info = type { i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, [5 x i16], i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.odm_phy_dbg_info = type { [3 x i8], i64, i64, i64, [3 x i32] }
%struct.fast_ant_train = type { i8, i8, i8, [32 x i8], [32 x i8], [32 x i8], [32 x i32], [32 x i32], [32 x i32], [32 x i32], i8, i8 }
%struct.rtw_dig = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i32 }
%struct.rtl_ps = type { i8, i8, i8, i32, i32, i32, i32 }
%struct.false_alarm_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sw_ant_switch = type { i8, i8, i8 }
%struct.edca_turbo = type { i8, i8, i32 }
%struct.odm_rate_adapt = type { i8, i8, i8, i32 }
%struct.odm_rf_cal = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, [2 x i8], [2 x i8], i8, i8, i8, i8, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, [2 x i8], i8, [8 x i8], i8, %struct.ijk_matrix_regs_set, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [16 x i32], [4 x i32], [9 x i32], [9 x i32], [2 x [2 x i32]], i8, i8, i8, i8, i8 }
%struct.ijk_matrix_regs_set = type { i8, [1 x [8 x i32]] }
%struct.P2P_PS_Offload_t = type { i8 }
%struct.rereg_nd_name_data = type { ptr, [16 x i8], i8, i8 }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.br_ext_info = type { i32, i32, i32, i32, [6 x i8], i32 }
%struct.cmd_obj = type { ptr, i16, i8, ptr, i32, ptr, i32, %struct.list_head }
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
%struct.drvextra_cmd_parm = type { i32, i32, ptr }
%struct.sitesurvey_parm = type { i32, i8, i8, [9 x %struct.ndis_802_11_ssid], [51 x %struct.rtw_ieee80211_channel] }
%struct.setdatarate_parm = type { i8, [13 x i8] }
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.sta_xmit_priv, %struct.sta_recv_priv, %struct.__queue, i32, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, i8, i8, i8, i8, i32, i8, %struct.stainfo_stats, %struct.timer_list, [16 x %struct.recv_reorder_ctrl], [16 x i16], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i16, i32, i32, i32, i32, i32, i32, i32, i8, [32 x i8], i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, [6 x i8], i8, i16, [8 x i8], i8, [32 x i8], i16, [32 x i8], i8, i8, %struct.rssi_sta, i8, i8, i8, [4 x i8], i8, [4 x i8], [4 x i8], i16 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16] }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.stainfo_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.recv_reorder_ctrl = type { ptr, i8, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.rssi_sta = type { i32, i32, i32, i64, i8 }
%struct.set_stakey_parm = type { [6 x i8], i8, i8, [16 x i8] }
%struct.addBaReq_parm = type { i32, [6 x i8] }

@rtw_cmd_thread.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r8188eu\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rtw_cmd_thread\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/staging/r8188eu/core/rtw_cmd.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"DriverStopped(%d) SurpriseRemoved(%d) break\0A\00", [51 x i8] zeroinitializer }, align 32
@wlancmds = internal constant { [63 x %struct.cmd_hdl], [104 x i8] } { [63 x %struct.cmd_hdl] [%struct.cmd_hdl { i32 0, ptr @NULL_hdl }, %struct.cmd_hdl { i32 0, ptr @NULL_hdl }, %struct.cmd_hdl { i32 0, ptr @NULL_hdl }, %struct.cmd_hdl { i32 0, ptr @NULL_hdl }, %struct.cmd_hdl { i32 0, ptr @NULL_hdl }, %struct.cmd_hdl { i32 0, ptr @NULL_hdl }, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl { i32 888, ptr @join_cmd_hdl }, %struct.cmd_hdl { i32 4, ptr @disconnect_hdl }, %struct.cmd_hdl { i32 888, ptr @createbss_hdl }, %struct.cmd_hdl { i32 4, ptr @setopmode_hdl }, %struct.cmd_hdl { i32 740, ptr @sitesurvey_cmd_hdl }, %struct.cmd_hdl { i32 4, ptr @setauth_hdl }, %struct.cmd_hdl { i32 20, ptr @setkey_hdl }, %struct.cmd_hdl { i32 24, ptr @set_stakey_hdl }, %struct.cmd_hdl { i32 6, ptr null }, %struct.cmd_hdl { i32 6, ptr null }, %struct.cmd_hdl { i32 8, ptr null }, %struct.cmd_hdl { i32 13, ptr null }, %struct.cmd_hdl { i32 4, ptr null }, %struct.cmd_hdl { i32 14, ptr null }, %struct.cmd_hdl { i32 4, ptr null }, %struct.cmd_hdl { i32 56, ptr null }, %struct.cmd_hdl { i32 4, ptr null }, %struct.cmd_hdl { i32 2, ptr null }, %struct.cmd_hdl { i32 4, ptr null }, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl { i32 12, ptr @add_ba_hdl }, %struct.cmd_hdl { i32 3, ptr @set_ch_hdl }, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl zeroinitializer, %struct.cmd_hdl { i32 888, ptr @tx_beacon_hdl }, %struct.cmd_hdl { i32 0, ptr @mlme_evt_hdl }, %struct.cmd_hdl { i32 0, ptr @rtw_drvextra_cmd_hdl }, %struct.cmd_hdl { i32 0, ptr @h2c_msg_hdl }, %struct.cmd_hdl { i32 1, ptr @set_chplan_hdl }, %struct.cmd_hdl { i32 4, ptr @led_blink_hdl }, %struct.cmd_hdl { i32 1, ptr @set_csa_hdl }, %struct.cmd_hdl { i32 7, ptr @tdls_hdl }], [104 x i8] zeroinitializer }, align 32
@rtw_cmd_callback = internal constant { [63 x %struct._cmd_callback], [104 x i8] } { [63 x %struct._cmd_callback] [%struct._cmd_callback zeroinitializer, %struct._cmd_callback { i32 1, ptr null }, %struct._cmd_callback { i32 2, ptr @rtw_getbbrfreg_cmdrsp_callback }, %struct._cmd_callback { i32 3, ptr null }, %struct._cmd_callback { i32 4, ptr @rtw_getbbrfreg_cmdrsp_callback }, %struct._cmd_callback { i32 5, ptr null }, %struct._cmd_callback { i32 6, ptr null }, %struct._cmd_callback { i32 7, ptr null }, %struct._cmd_callback { i32 8, ptr null }, %struct._cmd_callback { i32 9, ptr null }, %struct._cmd_callback { i32 10, ptr null }, %struct._cmd_callback { i32 11, ptr null }, %struct._cmd_callback { i32 12, ptr null }, %struct._cmd_callback { i32 13, ptr null }, %struct._cmd_callback { i32 14, ptr @rtw_joinbss_cmd_callback }, %struct._cmd_callback { i32 15, ptr @rtw_disassoc_cmd_callback }, %struct._cmd_callback { i32 16, ptr @rtw_createbss_cmd_callback }, %struct._cmd_callback { i32 17, ptr null }, %struct._cmd_callback { i32 18, ptr @rtw_survey_cmd_callback }, %struct._cmd_callback { i32 19, ptr null }, %struct._cmd_callback { i32 20, ptr null }, %struct._cmd_callback { i32 21, ptr @rtw_setstaKey_cmdrsp_callback }, %struct._cmd_callback { i32 22, ptr @rtw_setassocsta_cmdrsp_callback }, %struct._cmd_callback { i32 23, ptr null }, %struct._cmd_callback { i32 24, ptr null }, %struct._cmd_callback { i32 25, ptr null }, %struct._cmd_callback { i32 26, ptr null }, %struct._cmd_callback { i32 27, ptr null }, %struct._cmd_callback { i32 28, ptr null }, %struct._cmd_callback { i32 29, ptr null }, %struct._cmd_callback { i32 30, ptr null }, %struct._cmd_callback { i32 31, ptr null }, %struct._cmd_callback { i32 32, ptr null }, %struct._cmd_callback { i32 33, ptr null }, %struct._cmd_callback { i32 34, ptr null }, %struct._cmd_callback { i32 35, ptr null }, %struct._cmd_callback { i32 36, ptr null }, %struct._cmd_callback { i32 37, ptr null }, %struct._cmd_callback { i32 38, ptr null }, %struct._cmd_callback { i32 39, ptr null }, %struct._cmd_callback { i32 40, ptr null }, %struct._cmd_callback { i32 41, ptr null }, %struct._cmd_callback { i32 42, ptr null }, %struct._cmd_callback { i32 43, ptr null }, %struct._cmd_callback { i32 44, ptr null }, %struct._cmd_callback { i32 45, ptr null }, %struct._cmd_callback { i32 46, ptr null }, %struct._cmd_callback { i32 47, ptr null }, %struct._cmd_callback { i32 48, ptr null }, %struct._cmd_callback { i32 49, ptr null }, %struct._cmd_callback { i32 50, ptr null }, %struct._cmd_callback { i32 51, ptr null }, %struct._cmd_callback { i32 52, ptr null }, %struct._cmd_callback { i32 53, ptr null }, %struct._cmd_callback { i32 54, ptr null }, %struct._cmd_callback { i32 55, ptr null }, %struct._cmd_callback { i32 56, ptr null }, %struct._cmd_callback { i32 57, ptr null }, %struct._cmd_callback { i32 58, ptr null }, %struct._cmd_callback { i32 59, ptr null }, %struct._cmd_callback { i32 60, ptr null }, %struct._cmd_callback { i32 61, ptr null }, %struct._cmd_callback { i32 62, ptr null }], [104 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rtw_joinbss_cmd.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 -112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtw_joinbss_cmd\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"smart_ps = %d\0A\00", [17 x i8] zeroinitializer }, align 32
@_rtw_init_cmd_priv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&((&pcmdpriv->cmd_queue)->lock)\00", [32 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@_rtw_init_evt_priv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&pevtpriv->c2h_wk)\00", [59 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@GlobalDebugLevel = external dso_local local_unnamed_addr global i32, align 4
@rtl8188e_sreset_xmit_status_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 955, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016R8188EU: %s REG_TXDMA_STATUS:0x%08x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"rtl8188e_sreset_xmit_status_check\00", [62 x i8] zeroinitializer }, align 32
@rtl8188e_sreset_xmit_status_check._entry_ptr = internal global ptr @rtl8188e_sreset_xmit_status_check._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 14, i64 16]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 16, i64 14, i64 16]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 16, i64 14, i64 16]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 16, i64 14, i64 16]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 5]
@__sancov_gen_cov_switch_values.16 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.17 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.18 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 11, i64 12]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 16, i64 14, i64 16]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 16, i64 14, i64 16]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 16, i64 14, i64 16]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 16, i64 14, i64 16]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 16, i64 14, i64 16]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 16, i64 14, i64 16]
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 256, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant [9 x i8] c"wlancmds\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [58 x i8] c"../drivers/staging/r8188eu/core/../include/rtw_mlme_ext.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 682, i32 23 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"rtw_cmd_callback\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [53 x i8] c"../drivers/staging/r8188eu/core/../include/rtw_cmd.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 878, i32 29 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 577, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 28, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 87, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 70, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private constant [42 x i8] c"../drivers/staging/r8188eu/core/rtw_cmd.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 955, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @rtl8188e_sreset_xmit_status_check._entry, ptr @rtl8188e_sreset_xmit_status_check._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @wlancmds, ptr @rtw_cmd_callback, ptr @.str.4, ptr @.str.5, ptr @_rtw_init_cmd_priv.__key, ptr @.str.6, ptr @init_completion.__key, ptr @.str.7, ptr @_rtw_init_evt_priv.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlancmds to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_cmd_callback to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_cmd_priv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_evt_priv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188e_sreset_xmit_status_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_free_evt_priv(ptr noundef %pevtpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %pevtpriv) #7
  %c2h_wk_alive = getelementptr inbounds %struct.evt_priv, ptr %pevtpriv, i32 0, i32 1
  %0 = ptrtoint ptr %c2h_wk_alive to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %c2h_wk_alive, align 4, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not14 = icmp eq i8 %1, 0
  br i1 %tobool.not14, label %entry.while.cond1.preheader_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.cond1.preheader_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond1.preheader

while.cond1.preheader:                            ; preds = %while.body.while.cond1.preheader_crit_edge, %entry.while.cond1.preheader_crit_edge
  %c2h_queue = getelementptr inbounds %struct.evt_priv, ptr %pevtpriv, i32 0, i32 2
  %2 = ptrtoint ptr %c2h_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %c2h_queue, align 4
  %call215 = tail call zeroext i1 @rtw_cbuf_empty(ptr noundef %3) #7
  br i1 %call215, label %while.cond1.preheader.while.end7_crit_edge, label %while.cond1.preheader.while.body3_crit_edge

while.cond1.preheader.while.body3_crit_edge:      ; preds = %while.cond1.preheader
  br label %while.body3

while.cond1.preheader.while.end7_crit_edge:       ; preds = %while.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end7

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  tail call void @msleep(i32 noundef 10) #7
  %4 = ptrtoint ptr %c2h_wk_alive to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %c2h_wk_alive, align 4, !range !38
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %while.body.while.cond1.preheader_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.cond1.preheader_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond1.preheader

while.body3:                                      ; preds = %if.end.while.body3_crit_edge, %while.cond1.preheader.while.body3_crit_edge
  %6 = ptrtoint ptr %c2h_queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %c2h_queue, align 4
  %call5 = tail call ptr @rtw_cbuf_pop(ptr noundef %7) #7
  %tobool6.not = icmp eq ptr %call5, null
  %cmp.not = icmp eq ptr %call5, %pevtpriv
  %or.cond = or i1 %tobool6.not, %cmp.not
  br i1 %or.cond, label %while.body3.if.end_crit_edge, label %if.then

while.body3.if.end_crit_edge:                     ; preds = %while.body3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %while.body3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call5) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body3.if.end_crit_edge
  %8 = ptrtoint ptr %c2h_queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %c2h_queue, align 4
  %call2 = tail call zeroext i1 @rtw_cbuf_empty(ptr noundef %9) #7
  br i1 %call2, label %if.end.while.end7_crit_edge, label %if.end.while.body3_crit_edge

if.end.while.body3_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body3

if.end.while.end7_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end7

while.end7:                                       ; preds = %if.end.while.end7_crit_edge, %while.cond1.preheader.while.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtw_cbuf_empty(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_cbuf_pop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_init_cmd_priv(ptr noundef %pcmdpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcmdpriv to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %pcmdpriv, align 4
  %wait.i.i = getelementptr inbounds %struct.completion, ptr %pcmdpriv, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #7
  %start_cmd_thread.i = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 1
  %1 = ptrtoint ptr %start_cmd_thread.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %start_cmd_thread.i, align 4
  %wait.i38.i = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i38.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #7
  %stop_cmd_thread.i = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 2
  %2 = ptrtoint ptr %stop_cmd_thread.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %stop_cmd_thread.i, align 4
  %wait.i39.i = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i39.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #7
  %cmd_queue.i = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 3
  %3 = ptrtoint ptr %cmd_queue.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %cmd_queue.i, ptr %cmd_queue.i, align 4
  %prev.i.i = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cmd_queue.i, ptr %prev.i.i, align 4
  %lock.i = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 3, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @_rtw_init_cmd_priv.__key, i16 noundef signext 3) #7
  %cmd_seq.i = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 4
  %5 = ptrtoint ptr %cmd_seq.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %cmd_seq.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 1536) #10
  %cmd_allocated_buf.i = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 6
  %7 = ptrtoint ptr %cmd_allocated_buf.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i.i, ptr %cmd_allocated_buf.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry._rtw_init_cmd_priv.exit_crit_edge, label %if.end.i

entry._rtw_init_cmd_priv.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtw_init_cmd_priv.exit

if.end.i:                                         ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %call7.i.i.i, i32 512
  %8 = ptrtoint ptr %call7.i.i.i to i32
  %and.i = and i32 %8, 504
  %idx.neg.i = sub nsw i32 0, %and.i
  %add.ptr9.i = getelementptr i8, ptr %add.ptr.i, i32 %idx.neg.i
  %cmd_buf.i = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 5
  %9 = ptrtoint ptr %cmd_buf.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr9.i, ptr %cmd_buf.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i40.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 516) #10
  %rsp_allocated_buf.i = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 8
  %11 = ptrtoint ptr %rsp_allocated_buf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i40.i, ptr %rsp_allocated_buf.i, align 4
  %tobool12.not.i = icmp eq ptr %call7.i.i40.i, null
  br i1 %tobool12.not.i, label %if.end.i._rtw_init_cmd_priv.exit_crit_edge, label %if.end14.i

if.end.i._rtw_init_cmd_priv.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtw_init_cmd_priv.exit

if.end14.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr16.i = getelementptr i8, ptr %call7.i.i40.i, i32 4
  %rsp_buf.i = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 7
  %12 = ptrtoint ptr %rsp_buf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr16.i, ptr %rsp_buf.i, align 4
  %cmd_done_cnt.i = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 9
  %13 = ptrtoint ptr %cmd_done_cnt.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %cmd_done_cnt.i, align 4
  %rsp_cnt.i = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 10
  %14 = ptrtoint ptr %rsp_cnt.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %rsp_cnt.i, align 4
  br label %_rtw_init_cmd_priv.exit

_rtw_init_cmd_priv.exit:                          ; preds = %if.end14.i, %if.end.i._rtw_init_cmd_priv.exit_crit_edge, %entry._rtw_init_cmd_priv.exit_crit_edge
  %res.0.i = phi i32 [ 1, %if.end14.i ], [ 0, %entry._rtw_init_cmd_priv.exit_crit_edge ], [ 0, %if.end.i._rtw_init_cmd_priv.exit_crit_edge ]
  ret i32 %res.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_init_evt_priv(ptr noundef %pevtpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %event_seq.i = getelementptr inbounds %struct.evt_priv, ptr %pevtpriv, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event_seq.i, i32 noundef 4) #7
  %0 = ptrtoint ptr %event_seq.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %event_seq.i, align 4
  %evt_done_cnt.i = getelementptr inbounds %struct.evt_priv, ptr %pevtpriv, i32 0, i32 6
  %1 = ptrtoint ptr %evt_done_cnt.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %evt_done_cnt.i, align 4
  tail call void @__init_work(ptr noundef %pevtpriv, i32 noundef 0) #7
  %2 = ptrtoint ptr %pevtpriv to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %pevtpriv, align 4
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %pevtpriv, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @_rtw_init_evt_priv.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry4.i = getelementptr inbounds %struct.work_struct, ptr %pevtpriv, i32 0, i32 1
  %3 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry4.i, ptr %entry4.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %pevtpriv, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry4.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.work_struct, ptr %pevtpriv, i32 0, i32 2
  %5 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @c2h_wk_callback, ptr %func.i, align 4
  %c2h_wk_alive.i = getelementptr inbounds %struct.evt_priv, ptr %pevtpriv, i32 0, i32 1
  %6 = ptrtoint ptr %c2h_wk_alive.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %c2h_wk_alive.i, align 4
  %call.i = tail call ptr @rtw_cbuf_alloc(i32 noundef 11) #7
  %c2h_queue.i = getelementptr inbounds %struct.evt_priv, ptr %pevtpriv, i32 0, i32 2
  %7 = ptrtoint ptr %c2h_queue.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %c2h_queue.i, align 4
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_free_cmd_priv(ptr noundef readonly %pcmdpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %pcmdpriv, null
  br i1 %tobool.not.i, label %entry._rtw_free_cmd_priv.exit_crit_edge, label %if.then.i

entry._rtw_free_cmd_priv.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtw_free_cmd_priv.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cmd_allocated_buf.i = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 6
  %0 = ptrtoint ptr %cmd_allocated_buf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd_allocated_buf.i, align 4
  tail call void @kfree(ptr noundef %1) #7
  %rsp_allocated_buf.i = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 8
  %2 = ptrtoint ptr %rsp_allocated_buf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rsp_allocated_buf.i, align 4
  tail call void @kfree(ptr noundef %3) #7
  br label %_rtw_free_cmd_priv.exit

_rtw_free_cmd_priv.exit:                          ; preds = %if.then.i, %entry._rtw_free_cmd_priv.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_enqueue_cmd(ptr noundef %pcmdpriv, ptr noundef %cmd_obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cmd_obj, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end:                                           ; preds = %entry
  %padapter1 = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 12
  %0 = ptrtoint ptr %padapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %padapter1, align 4
  %2 = ptrtoint ptr %cmd_obj to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %cmd_obj, align 4
  %3 = load ptr, ptr %padapter1, align 4
  %hw_init_completed.i = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 26
  %4 = ptrtoint ptr %hw_init_completed.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_init_completed.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.rtw_cmd_filter.exit_crit_edge

if.end.rtw_cmd_filter.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

land.lhs.true.i.rtw_cmd_filter.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_cmd_filter.exit

rtw_cmd_filter.exit:                              ; preds = %land.lhs.true.i.rtw_cmd_filter.exit_crit_edge, %if.end.rtw_cmd_filter.exit_crit_edge
  %cmdthd_running.i = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 11
  %8 = ptrtoint ptr %cmdthd_running.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cmdthd_running.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not.i.not = icmp eq i8 %9, 0
  br i1 %tobool3.not.i.not, label %rtw_cmd_filter.exit.if.then3_crit_edge, label %do.body1.i

rtw_cmd_filter.exit.if.then3_crit_edge:           ; preds = %rtw_cmd_filter.exit
  call void @__sanitizer_cov_trace_pc() #9
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
    i16 16, label %if.then3.if.end.i_crit_edge23
  ]

if.then3.if.end.i_crit_edge23:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then3.if.end.i_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %parmbuf.i = getelementptr inbounds %struct.cmd_obj, ptr %cmd_obj, i32 0, i32 3
  %13 = ptrtoint ptr %parmbuf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parmbuf.i, align 4
  tail call void @kfree(ptr noundef %14) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then3.if.end.i_crit_edge, %if.then3.if.end.i_crit_edge23
  %rsp.i = getelementptr inbounds %struct.cmd_obj, ptr %cmd_obj, i32 0, i32 5
  %15 = ptrtoint ptr %rsp.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rsp.i, align 4
  %tobool.not.i19 = icmp eq ptr %16, null
  br i1 %tobool.not.i19, label %if.end.i.rtw_free_cmd_obj.exit_crit_edge, label %if.then6.i

if.end.i.rtw_free_cmd_obj.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_free_cmd_obj.exit

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %16) #7
  br label %rtw_free_cmd_obj.exit

rtw_free_cmd_obj.exit:                            ; preds = %if.then9.i, %if.then6.i.rtw_free_cmd_obj.exit_crit_edge, %if.end.i.rtw_free_cmd_obj.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %cmd_obj) #7
  br label %exit

do.body1.i:                                       ; preds = %rtw_cmd_filter.exit
  %cmd_queue = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 3
  %lock.i = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 3, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %list.i = getelementptr inbounds %struct.cmd_obj, ptr %cmd_obj, i32 0, i32 7
  %prev.i.i = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 3, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %20, ptr noundef %cmd_queue) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body1.i._rtw_enqueue_cmd.exit_crit_edge

do.body1.i._rtw_enqueue_cmd.exit_crit_edge:       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtw_enqueue_cmd.exit

if.end.i.i.i:                                     ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %list.i, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %cmd_queue, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.cmd_obj, ptr %cmd_obj, i32 0, i32 7, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %list.i, ptr %20, align 4
  br label %_rtw_enqueue_cmd.exit

_rtw_enqueue_cmd.exit:                            ; preds = %if.end.i.i.i, %do.body1.i._rtw_enqueue_cmd.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #7
  tail call void @complete(ptr noundef %pcmdpriv) #7
  br label %exit

exit:                                             ; preds = %_rtw_enqueue_cmd.exit, %rtw_free_cmd_obj.exit, %entry.exit_crit_edge
  %res.0 = phi i32 [ 0, %rtw_free_cmd_obj.exit ], [ 1, %_rtw_enqueue_cmd.exit ], [ 0, %entry.exit_crit_edge ]
  ret i32 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_free_cmd_obj(ptr noundef %pcmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 1
  %0 = ptrtoint ptr %cmdcode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cmdcode, align 4
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.11)
  switch i16 %1, label %if.then [
    i16 14, label %entry.if.end_crit_edge
    i16 16, label %entry.if.end_crit_edge19
  ]

entry.if.end_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 3
  %3 = ptrtoint ptr %parmbuf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parmbuf, align 4
  tail call void @kfree(ptr noundef %4) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge, %entry.if.end_crit_edge19
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 5
  %5 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rsp, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.if.end12_crit_edge, label %if.then6

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %6) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.then6.if.end12_crit_edge, %if.end.if.end12_crit_edge
  tail call void @kfree(ptr noundef %pcmd) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_dequeue_cmd(ptr noundef %pcmdpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_queue = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 3
  %lock.i = getelementptr inbounds %struct.cmd_priv, ptr %pcmdpriv, i32 0, i32 3, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %0 = ptrtoint ptr %cmd_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %cmd_queue, align 4
  %cmp.i.not.i = icmp eq ptr %1, %cmd_queue
  br i1 %cmp.i.not.i, label %entry._rtw_dequeue_cmd.exit_crit_edge, label %if.else.i

entry._rtw_dequeue_cmd.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtw_dequeue_cmd.exit

if.else.i:                                        ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -24
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.else.i.rtw_list_delete.exit.i_crit_edge

if.else.i.rtw_list_delete.exit.i_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_list_delete.exit.i

if.end.i.i.i.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %rtw_list_delete.exit.i

rtw_list_delete.exit.i:                           ; preds = %if.end.i.i.i.i, %if.else.i.rtw_list_delete.exit.i_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %prev.i3.i.i.i, align 4
  br label %_rtw_dequeue_cmd.exit

_rtw_dequeue_cmd.exit:                            ; preds = %rtw_list_delete.exit.i, %entry._rtw_dequeue_cmd.exit_crit_edge
  %obj.0.i = phi ptr [ %add.ptr.i, %rtw_list_delete.exit.i ], [ null, %entry._rtw_dequeue_cmd.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #7
  ret ptr %obj.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_cmd_thread(ptr noundef %context) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 6
  %cmd_buf = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 6, i32 5
  %0 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd_buf, align 4
  %cmdthd_running = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 6, i32 11
  %2 = ptrtoint ptr %cmdthd_running to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %cmdthd_running, align 4
  %start_cmd_thread = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 6, i32 1
  tail call void @complete(ptr noundef %start_cmd_thread) #7
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 21
  tail call void @wait_for_completion(ptr noundef %cmdpriv) #7
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 20
  %3 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bDriverStopped, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not145148 = icmp eq i32 %4, 0
  br i1 %tobool.not145148, label %lor.lhs.false.lr.ph.lr.ph, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

lor.lhs.false.lr.ph.lr.ph:                        ; preds = %entry
  %cmd_queue.i = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 6, i32 3
  %lock.i.i = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 6, i32 3, i32 1
  %padapter.i = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 6, i32 12
  %cmd_seq = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 6, i32 4
  br label %lor.lhs.false

while.cond.loopexit:                              ; preds = %rtw_dequeue_cmd.exit.while.cond.loopexit_crit_edge, %rtw_dequeue_cmd.exit.thread
  tail call void @wait_for_completion(ptr noundef %cmdpriv) #7
  %5 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bDriverStopped, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not145 = icmp eq i32 %6, 0
  br i1 %tobool.not145, label %while.cond.loopexit.lor.lhs.false.backedge_crit_edge, label %while.cond.loopexit.do.body2_crit_edge

while.cond.loopexit.do.body2_crit_edge:           ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

while.cond.loopexit.lor.lhs.false.backedge_crit_edge: ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.backedge

lor.lhs.false:                                    ; preds = %lor.lhs.false.backedge, %lor.lhs.false.lr.ph.lr.ph
  %7 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bSurpriseRemoved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not = icmp eq i32 %8, 0
  br i1 %tobool1.not, label %if.end11, label %lor.lhs.false.do.body2_crit_edge

lor.lhs.false.do.body2_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2:                                         ; preds = %flush_signals_thread.exit.do.body2_crit_edge, %lor.lhs.false.do.body2_crit_edge, %while.cond.loopexit.do.body2_crit_edge, %entry.do.body2_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_cmd_thread.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_cmd_thread, %if.then6)) #7
          to label %while.end [label %if.then6], !srcloc !39

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 37
  %9 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pnetdev, align 4
  %11 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bDriverStopped, align 8
  %13 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bSurpriseRemoved, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_cmd_thread.__UNIQUE_ID_ddebug346, ptr noundef %10, ptr noundef nonnull @.str.3, i32 noundef %12, i32 noundef %14) #7
  br label %while.end

if.end11:                                         ; preds = %lor.lhs.false
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #7
  %15 = ptrtoint ptr %cmd_queue.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %cmd_queue.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %16, %cmd_queue.i
  br i1 %cmp.i.not.i.i, label %rtw_dequeue_cmd.exit.thread, label %if.else.i.i

rtw_dequeue_cmd.exit.thread:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #7
  br label %while.cond.loopexit

if.else.i.i:                                      ; preds = %if.end11
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 -24
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %16) #7
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.else.i.i.rtw_dequeue_cmd.exit_crit_edge

if.else.i.i.rtw_dequeue_cmd.exit_crit_edge:       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_dequeue_cmd.exit

if.end.i.i.i.i.i:                                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %rtw_dequeue_cmd.exit

rtw_dequeue_cmd.exit:                             ; preds = %if.end.i.i.i.i.i, %if.else.i.i.rtw_dequeue_cmd.exit_crit_edge
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %16, ptr %16, align 4
  %prev.i3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %16, ptr %prev.i3.i.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #7
  %tobool13.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool13.not, label %rtw_dequeue_cmd.exit.while.cond.loopexit_crit_edge, label %if.end15

rtw_dequeue_cmd.exit.while.cond.loopexit_crit_edge: ; preds = %rtw_dequeue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.loopexit

if.end15:                                         ; preds = %rtw_dequeue_cmd.exit
  %25 = ptrtoint ptr %padapter.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %padapter.i, align 4
  %hw_init_completed.i = getelementptr inbounds %struct.adapter, ptr %26, i32 0, i32 26
  %27 = ptrtoint ptr %hw_init_completed.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %hw_init_completed.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end15.rtw_cmd_filter.exit_crit_edge

if.end15.rtw_cmd_filter.exit_crit_edge:           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_cmd_filter.exit

land.lhs.true.i:                                  ; preds = %if.end15
  %cmdcode.i = getelementptr i8, ptr %16, i32 -20
  %29 = ptrtoint ptr %cmdcode.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %cmdcode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 59, i16 %30)
  %cmp.i = icmp eq i16 %30, 59
  br i1 %cmp.i, label %land.lhs.true.i.rtw_cmd_filter.exit_crit_edge, label %land.lhs.true.i.if.then17_crit_edge

land.lhs.true.i.if.then17_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

land.lhs.true.i.rtw_cmd_filter.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_cmd_filter.exit

rtw_cmd_filter.exit:                              ; preds = %land.lhs.true.i.rtw_cmd_filter.exit_crit_edge, %if.end15.rtw_cmd_filter.exit_crit_edge
  %31 = ptrtoint ptr %cmdthd_running to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %cmdthd_running, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool3.not.i.not = icmp eq i8 %32, 0
  br i1 %tobool3.not.i.not, label %rtw_cmd_filter.exit.if.then17_crit_edge, label %if.end18

rtw_cmd_filter.exit.if.then17_crit_edge:          ; preds = %rtw_cmd_filter.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

if.then17:                                        ; preds = %rtw_cmd_filter.exit.if.then17_crit_edge, %land.lhs.true.i.if.then17_crit_edge
  %res = getelementptr i8, ptr %16, i32 -18
  %33 = ptrtoint ptr %res to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 3, ptr %res, align 2
  br label %post_process

if.end18:                                         ; preds = %rtw_cmd_filter.exit
  %cmdsz = getelementptr i8, ptr %16, i32 -12
  %34 = ptrtoint ptr %cmdsz to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cmdsz, align 4
  %and.i = and i32 %35, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.not.i = icmp eq i32 %and.i, 0
  %add2.i = select i1 %tobool.not.not.i, i32 0, i32 4
  %shr3.i = add i32 %add2.i, %35
  %shl.i = and i32 %shr3.i, -4
  %36 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %shl.i, ptr %cmdsz, align 4
  %parmbuf = getelementptr i8, ptr %16, i32 -16
  %37 = ptrtoint ptr %parmbuf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %parmbuf, align 4
  %39 = call ptr @memcpy(ptr %1, ptr %38, i32 %shl.i)
  %cmdcode = getelementptr i8, ptr %16, i32 -20
  %40 = ptrtoint ptr %cmdcode to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %cmdcode, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %41)
  %cmp22 = icmp ult i16 %41, 63
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end18
  %conv = zext i16 %41 to i32
  %h2cfuns = getelementptr [63 x %struct.cmd_hdl], ptr @wlancmds, i32 0, i32 %conv, i32 1
  %42 = ptrtoint ptr %h2cfuns to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %h2cfuns, align 4
  %tobool26.not = icmp eq ptr %43, null
  br i1 %tobool26.not, label %if.then24.if.end31_crit_edge, label %if.then27

if.then24.if.end31_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then27:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i.i, align 4
  %call29 = tail call zeroext i8 %43(ptr noundef %45, ptr noundef %1) #7
  %res30 = getelementptr i8, ptr %16, i32 -18
  %46 = ptrtoint ptr %res30 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %call29, ptr %res30, align 2
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.then24.if.end31_crit_edge
  %47 = ptrtoint ptr %cmd_seq to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %cmd_seq, align 4
  %inc = add i8 %48, 1
  store i8 %inc, ptr %cmd_seq, align 4
  br label %post_process

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %res32 = getelementptr i8, ptr %16, i32 -18
  %49 = ptrtoint ptr %res32 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 4, ptr %res32, align 2
  br label %post_process

post_process:                                     ; preds = %if.else, %if.end31, %if.then17
  %cmdcode34 = getelementptr i8, ptr %16, i32 -20
  %50 = ptrtoint ptr %cmdcode34 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %cmdcode34, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %51)
  %cmp36 = icmp ult i16 %51, 63
  br i1 %cmp36, label %if.then38, label %if.then.i99

if.then38:                                        ; preds = %post_process
  %conv35 = zext i16 %51 to i32
  %callback = getelementptr [63 x %struct._cmd_callback], ptr @rtw_cmd_callback, i32 0, i32 %conv35, i32 1
  %52 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %callback, align 4
  %tobool42.not = icmp eq ptr %53, null
  br i1 %tobool42.not, label %if.then43, label %if.else44

if.then43:                                        ; preds = %if.then38
  %54 = zext i16 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.12)
  switch i16 %51, label %if.then.i [
    i16 14, label %if.then43.if.end.i_crit_edge
    i16 16, label %if.then43.if.end.i_crit_edge170
  ]

if.then43.if.end.i_crit_edge170:                  ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then43.if.end.i_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  %parmbuf.i = getelementptr i8, ptr %16, i32 -16
  %55 = ptrtoint ptr %parmbuf.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %parmbuf.i, align 4
  tail call void @kfree(ptr noundef %56) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then43.if.end.i_crit_edge, %if.then43.if.end.i_crit_edge170
  %rsp.i = getelementptr i8, ptr %16, i32 -8
  %57 = ptrtoint ptr %rsp.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rsp.i, align 4
  %tobool.not.i96 = icmp eq ptr %58, null
  br i1 %tobool.not.i96, label %if.end.i.rtw_free_cmd_obj.exit_crit_edge, label %if.then6.i

if.end.i.rtw_free_cmd_obj.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_free_cmd_obj.exit

if.then6.i:                                       ; preds = %if.end.i
  %rspsz.i = getelementptr i8, ptr %16, i32 -4
  %59 = ptrtoint ptr %rspsz.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rspsz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp7.not.i = icmp eq i32 %60, 0
  br i1 %cmp7.not.i, label %if.then6.i.rtw_free_cmd_obj.exit_crit_edge, label %if.then9.i

if.then6.i.rtw_free_cmd_obj.exit_crit_edge:       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_free_cmd_obj.exit

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %58) #7
  br label %rtw_free_cmd_obj.exit

rtw_free_cmd_obj.exit:                            ; preds = %if.then9.i, %if.then6.i.rtw_free_cmd_obj.exit_crit_edge, %if.end.i.rtw_free_cmd_obj.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %add.ptr.i.i) #7
  br label %if.end48

if.else44:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr.i.i, align 4
  tail call void %53(ptr noundef %62, ptr noundef nonnull %add.ptr.i.i) #7
  br label %if.end48

if.then.i99:                                      ; preds = %post_process
  %parmbuf.i98 = getelementptr i8, ptr %16, i32 -16
  %63 = ptrtoint ptr %parmbuf.i98 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %parmbuf.i98, align 4
  tail call void @kfree(ptr noundef %64) #7
  %rsp.i100 = getelementptr i8, ptr %16, i32 -8
  %65 = ptrtoint ptr %rsp.i100 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rsp.i100, align 4
  %tobool.not.i101 = icmp eq ptr %66, null
  br i1 %tobool.not.i101, label %if.then.i99.rtw_free_cmd_obj.exit107_crit_edge, label %if.then6.i105

if.then.i99.rtw_free_cmd_obj.exit107_crit_edge:   ; preds = %if.then.i99
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_free_cmd_obj.exit107

if.then6.i105:                                    ; preds = %if.then.i99
  %rspsz.i103 = getelementptr i8, ptr %16, i32 -4
  %67 = ptrtoint ptr %rspsz.i103 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rspsz.i103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp7.not.i104 = icmp eq i32 %68, 0
  br i1 %cmp7.not.i104, label %if.then6.i105.rtw_free_cmd_obj.exit107_crit_edge, label %if.then9.i106

if.then6.i105.rtw_free_cmd_obj.exit107_crit_edge: ; preds = %if.then6.i105
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_free_cmd_obj.exit107

if.then9.i106:                                    ; preds = %if.then6.i105
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %66) #7
  br label %rtw_free_cmd_obj.exit107

rtw_free_cmd_obj.exit107:                         ; preds = %if.then9.i106, %if.then6.i105.rtw_free_cmd_obj.exit107_crit_edge, %if.then.i99.rtw_free_cmd_obj.exit107_crit_edge
  tail call void @kfree(ptr noundef nonnull %add.ptr.i.i) #7
  br label %if.end48

if.end48:                                         ; preds = %rtw_free_cmd_obj.exit107, %if.else44, %rtw_free_cmd_obj.exit
  %69 = tail call i32 @llvm.read_register.i32(metadata !28) #7
  %and.i.i = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %stack.i.i.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %74, align 4
  %77 = and i32 %76, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not.i.i = icmp eq i32 %77, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %if.end48.if.then.i109_crit_edge, !prof !40

if.end48.if.then.i109_crit_edge:                  ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i109

signal_pending.exit.i:                            ; preds = %if.end48
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %74, align 4
  %and1.i.i.i.i.i.i = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i108 = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i108, label %signal_pending.exit.i.flush_signals_thread.exit_crit_edge, label %signal_pending.exit.i.if.then.i109_crit_edge

signal_pending.exit.i.if.then.i109_crit_edge:     ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i109

signal_pending.exit.i.flush_signals_thread.exit_crit_edge: ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %flush_signals_thread.exit

if.then.i109:                                     ; preds = %signal_pending.exit.i.if.then.i109_crit_edge, %if.end48.if.then.i109_crit_edge
  tail call void @flush_signals(ptr noundef %72) #7
  br label %flush_signals_thread.exit

flush_signals_thread.exit:                        ; preds = %if.then.i109, %signal_pending.exit.i.flush_signals_thread.exit_crit_edge
  %80 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %bDriverStopped, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not = icmp eq i32 %81, 0
  br i1 %tobool.not, label %flush_signals_thread.exit.lor.lhs.false.backedge_crit_edge, label %flush_signals_thread.exit.do.body2_crit_edge

flush_signals_thread.exit.do.body2_crit_edge:     ; preds = %flush_signals_thread.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

flush_signals_thread.exit.lor.lhs.false.backedge_crit_edge: ; preds = %flush_signals_thread.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.backedge

lor.lhs.false.backedge:                           ; preds = %flush_signals_thread.exit.lor.lhs.false.backedge_crit_edge, %while.cond.loopexit.lor.lhs.false.backedge_crit_edge
  br label %lor.lhs.false

while.end:                                        ; preds = %if.then6, %do.body2
  %82 = ptrtoint ptr %cmdthd_running to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %cmdthd_running, align 4
  %cmd_queue.i111 = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 6, i32 3
  %lock.i.i112 = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 6, i32 3, i32 1
  %call2.i.i113150 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i112) #7
  %83 = ptrtoint ptr %cmd_queue.i111 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile ptr, ptr %cmd_queue.i111, align 4
  %cmp.i.not.i.i114151 = icmp eq ptr %84, %cmd_queue.i111
  br i1 %cmp.i.not.i.i114151, label %while.end.rtw_dequeue_cmd.exit124.thread_crit_edge, label %while.end.if.else.i.i117_crit_edge

while.end.if.else.i.i117_crit_edge:               ; preds = %while.end
  br label %if.else.i.i117

while.end.rtw_dequeue_cmd.exit124.thread_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_dequeue_cmd.exit124.thread

rtw_dequeue_cmd.exit124.thread:                   ; preds = %rtw_free_cmd_obj.exit135.rtw_dequeue_cmd.exit124.thread_crit_edge, %while.end.rtw_dequeue_cmd.exit124.thread_crit_edge
  %call2.i.i113.lcssa = phi i32 [ %call2.i.i113150, %while.end.rtw_dequeue_cmd.exit124.thread_crit_edge ], [ %call2.i.i113, %rtw_free_cmd_obj.exit135.rtw_dequeue_cmd.exit124.thread_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i112, i32 noundef %call2.i.i113.lcssa) #7
  br label %do.end56

if.else.i.i117:                                   ; preds = %rtw_free_cmd_obj.exit135.if.else.i.i117_crit_edge, %while.end.if.else.i.i117_crit_edge
  %85 = phi ptr [ %104, %rtw_free_cmd_obj.exit135.if.else.i.i117_crit_edge ], [ %84, %while.end.if.else.i.i117_crit_edge ]
  %call2.i.i113152 = phi i32 [ %call2.i.i113, %rtw_free_cmd_obj.exit135.if.else.i.i117_crit_edge ], [ %call2.i.i113150, %while.end.if.else.i.i117_crit_edge ]
  %add.ptr.i.i115 = getelementptr i8, ptr %85, i32 -24
  %call.i.i.i.i.i116 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %85) #7
  br i1 %call.i.i.i.i.i116, label %if.end.i.i.i.i.i120, label %if.else.i.i117.rtw_dequeue_cmd.exit124_crit_edge

if.else.i.i117.rtw_dequeue_cmd.exit124_crit_edge: ; preds = %if.else.i.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_dequeue_cmd.exit124

if.end.i.i.i.i.i120:                              ; preds = %if.else.i.i117
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i.i118 = getelementptr inbounds %struct.list_head, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %prev.i.i.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %prev.i.i.i.i.i118, align 4
  %88 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %85, align 4
  %prev1.i.i.i.i.i.i119 = getelementptr inbounds %struct.list_head, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %prev1.i.i.i.i.i.i119 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %87, ptr %prev1.i.i.i.i.i.i119, align 4
  %91 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %89, ptr %87, align 4
  br label %rtw_dequeue_cmd.exit124

rtw_dequeue_cmd.exit124:                          ; preds = %if.end.i.i.i.i.i120, %if.else.i.i117.rtw_dequeue_cmd.exit124_crit_edge
  %92 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %85, ptr %85, align 4
  %prev.i3.i.i.i.i121 = getelementptr inbounds %struct.list_head, ptr %85, i32 0, i32 1
  %93 = ptrtoint ptr %prev.i3.i.i.i.i121 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %85, ptr %prev.i3.i.i.i.i121, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i112, i32 noundef %call2.i.i113152) #7
  %tobool52.not = icmp eq ptr %add.ptr.i.i115, null
  br i1 %tobool52.not, label %rtw_dequeue_cmd.exit124.do.end56_crit_edge, label %if.end54

rtw_dequeue_cmd.exit124.do.end56_crit_edge:       ; preds = %rtw_dequeue_cmd.exit124
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end56

if.end54:                                         ; preds = %rtw_dequeue_cmd.exit124
  %cmdcode.i125 = getelementptr i8, ptr %85, i32 -20
  %94 = ptrtoint ptr %cmdcode.i125 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %cmdcode.i125, align 4
  %96 = zext i16 %95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.13)
  switch i16 %95, label %if.then.i127 [
    i16 14, label %if.end54.if.end.i130_crit_edge
    i16 16, label %if.end54.if.end.i130_crit_edge171
  ]

if.end54.if.end.i130_crit_edge171:                ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i130

if.end54.if.end.i130_crit_edge:                   ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i130

if.then.i127:                                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  %parmbuf.i126 = getelementptr i8, ptr %85, i32 -16
  %97 = ptrtoint ptr %parmbuf.i126 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %parmbuf.i126, align 4
  tail call void @kfree(ptr noundef %98) #7
  br label %if.end.i130

if.end.i130:                                      ; preds = %if.then.i127, %if.end54.if.end.i130_crit_edge, %if.end54.if.end.i130_crit_edge171
  %rsp.i128 = getelementptr i8, ptr %85, i32 -8
  %99 = ptrtoint ptr %rsp.i128 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rsp.i128, align 4
  %tobool.not.i129 = icmp eq ptr %100, null
  br i1 %tobool.not.i129, label %if.end.i130.rtw_free_cmd_obj.exit135_crit_edge, label %if.then6.i133

if.end.i130.rtw_free_cmd_obj.exit135_crit_edge:   ; preds = %if.end.i130
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_free_cmd_obj.exit135

if.then6.i133:                                    ; preds = %if.end.i130
  %rspsz.i131 = getelementptr i8, ptr %85, i32 -4
  %101 = ptrtoint ptr %rspsz.i131 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %rspsz.i131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp7.not.i132 = icmp eq i32 %102, 0
  br i1 %cmp7.not.i132, label %if.then6.i133.rtw_free_cmd_obj.exit135_crit_edge, label %if.then9.i134

if.then6.i133.rtw_free_cmd_obj.exit135_crit_edge: ; preds = %if.then6.i133
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_free_cmd_obj.exit135

if.then9.i134:                                    ; preds = %if.then6.i133
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %100) #7
  br label %rtw_free_cmd_obj.exit135

rtw_free_cmd_obj.exit135:                         ; preds = %if.then9.i134, %if.then6.i133.rtw_free_cmd_obj.exit135_crit_edge, %if.end.i130.rtw_free_cmd_obj.exit135_crit_edge
  tail call void @kfree(ptr noundef nonnull %add.ptr.i.i115) #7
  %call2.i.i113 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i112) #7
  %103 = ptrtoint ptr %cmd_queue.i111 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile ptr, ptr %cmd_queue.i111, align 4
  %cmp.i.not.i.i114 = icmp eq ptr %104, %cmd_queue.i111
  br i1 %cmp.i.not.i.i114, label %rtw_free_cmd_obj.exit135.rtw_dequeue_cmd.exit124.thread_crit_edge, label %rtw_free_cmd_obj.exit135.if.else.i.i117_crit_edge

rtw_free_cmd_obj.exit135.if.else.i.i117_crit_edge: ; preds = %rtw_free_cmd_obj.exit135
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i117

rtw_free_cmd_obj.exit135.rtw_dequeue_cmd.exit124.thread_crit_edge: ; preds = %rtw_free_cmd_obj.exit135
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_dequeue_cmd.exit124.thread

do.end56:                                         ; preds = %rtw_dequeue_cmd.exit124.do.end56_crit_edge, %rtw_dequeue_cmd.exit124.thread
  %stop_cmd_thread = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 6, i32 2
  tail call void @complete(ptr noundef %stop_cmd_thread) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_sitesurvey_cmd(ptr noundef %padapter, ptr noundef readonly %ssid, i32 noundef %ssid_num, ptr noundef readonly %ch, i32 noundef %ch_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2848, i32 noundef 32) #10
  %tobool1.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool1.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i24.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 2848, i32 noundef 12) #10
  %tobool4.not.i = icmp eq ptr %call7.i.i24.i, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %if.end

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call7.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 5, ptr %call7.i.i24.i, align 8
  %type_size.i = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call7.i.i24.i, i32 0, i32 1
  %5 = ptrtoint ptr %type_size.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %type_size.i, align 4
  %pbuf.i = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call7.i.i24.i, i32 0, i32 2
  %6 = ptrtoint ptr %pbuf.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %pbuf.i, align 8
  %list.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list.i, ptr %list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list.i, ptr %prev.i.i, align 4
  %cmdcode.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %cmdcode.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 57, ptr %cmdcode.i, align 4
  %parmbuf.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %parmbuf.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i24.i, ptr %parmbuf.i, align 8
  %cmdsz.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %cmdsz.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 12, ptr %cmdsz.i, align 4
  %rsp.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %rsp.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %rsp.i, align 8
  %rspsz.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %rspsz.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %rspsz.i, align 4
  %call7.i = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call7.i.i.i) #7
  br label %if.end

if.end:                                           ; preds = %if.end6.i, %if.then5.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fw_state.i, align 4
  %and.i108 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i108)
  %tobool3.not = icmp eq i32 %and.i108, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call zeroext i8 @p2p_ps_wk_cmd(ptr noundef %padapter, i8 noundef zeroext 2, i8 noundef zeroext 1) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 2848, i32 noundef 32) #10
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i111 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 2848, i32 noundef 740) #10
  %tobool12.not = icmp eq ptr %call7.i.i111, null
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  tail call void @rtw_free_network_queue(ptr noundef %padapter, i8 noundef zeroext 0) #7
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 7
  %18 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 7, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 18, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i111, ptr %parmbuf, align 8
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 4
  %22 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 740, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %rsp, align 8
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 6
  %24 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %rspsz, align 4
  %scan_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 31
  %25 = ptrtoint ptr %scan_mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %scan_mode, align 4
  %27 = ptrtoint ptr %call7.i.i111 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %call7.i.i111, align 8
  %tobool16.not = icmp ne ptr %ssid, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ssid_num)
  %cmp118 = icmp sgt i32 %ssid_num, 0
  %or.cond124 = and i1 %tobool16.not, %cmp118
  br i1 %or.cond124, label %for.body.lr.ph, label %if.end14.if.end27_crit_edge

if.end14.if.end27_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

for.body.lr.ph:                                   ; preds = %if.end14
  %ssid_num24 = getelementptr inbounds %struct.sitesurvey_parm, ptr %call7.i.i111, i32 0, i32 1
  %28 = add nsw i32 %ssid_num, -1
  %umin = call i32 @llvm.umin.i32(i32 %28, i32 8)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0119 = phi i32 [ 0, %for.body.lr.ph ], [ %inc26, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ndis_802_11_ssid, ptr %ssid, i32 %i.0119
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool19.not = icmp eq i32 %30, 0
  br i1 %tobool19.not, label %for.body.for.inc_crit_edge, label %if.then20

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx22 = getelementptr %struct.sitesurvey_parm, ptr %call7.i.i111, i32 0, i32 3, i32 %i.0119
  %31 = call ptr @memcpy(ptr %arrayidx22, ptr %arrayidx, i32 36)
  %32 = ptrtoint ptr %ssid_num24 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ssid_num24, align 4
  %inc = add i8 %33, 1
  store i8 %inc, ptr %ssid_num24, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then20, %for.body.for.inc_crit_edge
  %inc26 = add nuw nsw i32 %i.0119, 1
  %exitcond.not = icmp eq i32 %i.0119, %umin
  br i1 %exitcond.not, label %for.inc.if.end27_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.if.end27_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.end27:                                         ; preds = %for.inc.if.end27_crit_edge, %if.end14.if.end27_crit_edge
  %tobool28.not = icmp ne ptr %ch, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ch_num)
  %cmp32121 = icmp sgt i32 %ch_num, 0
  %or.cond125 = and i1 %tobool28.not, %cmp32121
  br i1 %or.cond125, label %for.body36.lr.ph, label %if.end27.if.end51_crit_edge

if.end27.if.end51_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

for.body36.lr.ph:                                 ; preds = %if.end27
  %ch_num45 = getelementptr inbounds %struct.sitesurvey_parm, ptr %call7.i.i111, i32 0, i32 2
  %34 = add nsw i32 %ch_num, -1
  %umin126 = call i32 @llvm.umin.i32(i32 %34, i32 50)
  br label %for.body36

for.body36:                                       ; preds = %for.inc48.for.body36_crit_edge, %for.body36.lr.ph
  %i30.0122 = phi i32 [ 0, %for.body36.lr.ph ], [ %inc49, %for.inc48.for.body36_crit_edge ]
  %arrayidx37 = getelementptr %struct.rtw_ieee80211_channel, ptr %ch, i32 %i30.0122
  %35 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx37, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool38.not = icmp eq i16 %36, 0
  br i1 %tobool38.not, label %for.body36.for.inc48_crit_edge, label %land.lhs.true

for.body36.for.inc48_crit_edge:                   ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc48

land.lhs.true:                                    ; preds = %for.body36
  %flags = getelementptr %struct.rtw_ieee80211_channel, ptr %ch, i32 %i30.0122, i32 1
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags, align 4
  %and = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool40.not = icmp eq i32 %and, 0
  br i1 %tobool40.not, label %if.then41, label %land.lhs.true.for.inc48_crit_edge

land.lhs.true.for.inc48_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc48

if.then41:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx43 = getelementptr %struct.sitesurvey_parm, ptr %call7.i.i111, i32 0, i32 4, i32 %i30.0122
  %39 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 8)
  %40 = load i64, ptr %arrayidx37, align 4
  %41 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 %40, ptr %arrayidx43, align 4
  %42 = ptrtoint ptr %ch_num45 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ch_num45, align 1
  %inc46 = add i8 %43, 1
  store i8 %inc46, ptr %ch_num45, align 1
  br label %for.inc48

for.inc48:                                        ; preds = %if.then41, %land.lhs.true.for.inc48_crit_edge, %for.body36.for.inc48_crit_edge
  %inc49 = add nuw nsw i32 %i30.0122, 1
  %exitcond127.not = icmp eq i32 %i30.0122, %umin126
  br i1 %exitcond127.not, label %for.inc48.if.end51_crit_edge, label %for.inc48.for.body36_crit_edge

for.inc48.for.body36_crit_edge:                   ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body36

for.inc48.if.end51_crit_edge:                     ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.end51:                                         ; preds = %for.inc48.if.end51_crit_edge, %if.end27.if.end51_crit_edge
  %44 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fw_state.i, align 4
  %or.i = or i32 %45, 2048
  store i32 %or.i, ptr %fw_state.i, align 4
  %bScanInProcess.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 2
  %46 = ptrtoint ptr %bScanInProcess.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %bScanInProcess.i, align 4
  %call52 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call7.i.i)
  %conv53 = trunc i32 %call52 to i8
  %conv54 = and i32 %call52, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv54)
  %cmp55 = icmp eq i32 %conv54, 1
  br i1 %cmp55, label %if.then57, label %if.else

if.then57:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %scan_start_time = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 22
  %48 = ptrtoint ptr %scan_start_time to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %scan_start_time, align 4
  %scan_to_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 21
  %49 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %49, 800
  %call.i = tail call i32 @mod_timer(ptr noundef %scan_to_timer, i32 noundef %add.i) #7
  tail call void @rtw_led_control(ptr noundef %padapter, i32 noundef 6) #7
  %scan_interval = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 17
  %50 = ptrtoint ptr %scan_interval to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 30, ptr %scan_interval, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fw_state.i, align 4
  %and.i115 = and i32 %52, -2049
  store i32 %and.i115, ptr %fw_state.i, align 4
  %53 = ptrtoint ptr %bScanInProcess.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %bScanInProcess.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then57, %if.then13, %if.end6.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %if.then13 ], [ 0, %if.end6.cleanup_crit_edge ], [ %conv53, %if.else ], [ %conv53, %if.then57 ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_lps_ctrl_wk_cmd(ptr noundef %padapter, i8 noundef zeroext %lps_ctrl_type, i8 noundef zeroext %enqueue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enqueue)
  %tobool.not = icmp eq i8 %enqueue, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 32) #10
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.then.exit_crit_edge, label %if.end

if.then.exit_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end:                                           ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i24 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2848, i32 noundef 12) #10
  %tobool4.not = icmp eq ptr %call7.i.i24, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %exit

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call7.i.i24 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %call7.i.i24, align 8
  %conv = zext i8 %lps_ctrl_type to i32
  %type_size = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call7.i.i24, i32 0, i32 1
  %3 = ptrtoint ptr %type_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %type_size, align 4
  %pbuf = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call7.i.i24, i32 0, i32 2
  %4 = ptrtoint ptr %pbuf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pbuf, align 8
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 7
  %5 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 57, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i24, ptr %parmbuf, align 8
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 12, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %rsp, align 8
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %rspsz, align 4
  %call7 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call7.i.i)
  %conv8 = trunc i32 %call7 to i8
  br label %exit

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @lps_ctrl_wk_hdl(ptr noundef %padapter, i8 noundef zeroext %lps_ctrl_type)
  br label %exit

exit:                                             ; preds = %if.else, %if.end6, %if.then5, %if.then.exit_crit_edge
  %res.0 = phi i8 [ %conv8, %if.end6 ], [ 0, %if.then5 ], [ 1, %if.else ], [ 0, %if.then.exit_crit_edge ]
  ret i8 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @p2p_ps_wk_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_free_network_queue(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_led_control(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_setdatarate_cmd(ptr noundef %padapter, ptr nocapture noundef readonly %rateset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 32) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2848, i32 noundef 14) #10
  %tobool2.not = icmp eq ptr %call7.i.i17, null
  br i1 %tobool2.not, label %if.then3, label %do.body

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %exit

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 7
  %2 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 27, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i17, ptr %parmbuf, align 8
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 14, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %rsp, align 8
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %rspsz, align 4
  %9 = ptrtoint ptr %call7.i.i17 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 5, ptr %call7.i.i17, align 8
  %datarates = getelementptr inbounds %struct.setdatarate_parm, ptr %call7.i.i17, i32 0, i32 1
  %10 = call ptr @memcpy(ptr %datarates, ptr %rateset, i32 13)
  %call5 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call7.i.i)
  %conv = trunc i32 %call5 to i8
  br label %exit

exit:                                             ; preds = %do.body, %if.then3, %entry.exit_crit_edge
  %res.0 = phi i8 [ %conv, %do.body ], [ 0, %if.then3 ], [ 0, %entry.exit_crit_edge ]
  ret i8 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_getbbrfreg_cmdrsp_callback(ptr nocapture readnone %padapter, ptr noundef %pcmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 3
  %0 = ptrtoint ptr %parmbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parmbuf, align 4
  tail call void @kfree(ptr noundef %1) #7
  tail call void @kfree(ptr noundef %pcmd) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_createbss_cmd(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtw_led_control(ptr noundef %padapter, i32 noundef 8) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 32) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev_network = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 36
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 7
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 16, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev_network, ptr %parmbuf, align 8
  %IELength.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 36, i32 11
  %5 = ptrtoint ptr %IELength.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %IELength.i, align 1
  %add.i = add i32 %6, 120
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add.i, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %rsp, align 8
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %rspsz, align 4
  %10 = ptrtoint ptr %dev_network to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %add.i, ptr %dev_network, align 1
  %call3 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call7.i.i)
  %conv = trunc i32 %call3 to i8
  br label %exit

exit:                                             ; preds = %if.end, %entry.exit_crit_edge
  %res.0 = phi i8 [ %conv, %if.end ], [ 0, %entry.exit_crit_edge ]
  ret i8 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_joinbss_cmd(ptr noundef %padapter, ptr noundef %pnetwork) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  %qospriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 23
  %htpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 26
  %network = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6
  %InfrastructureMode = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %InfrastructureMode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %InfrastructureMode, align 4
  tail call void @rtw_led_control(ptr noundef %padapter, i32 noundef 8) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2848, i32 noundef 32) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end:                                           ; preds = %entry
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %4, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %if.then3, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then3:                                         ; preds = %if.end
  %5 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %1, label %if.then3.if.end6_crit_edge [
    i32 0, label %if.then3.if.end6.sink.split_crit_edge
    i32 1, label %sw.bb4
  ]

if.then3.if.end6.sink.split_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.sink.split

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

sw.bb4:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.sink.split

if.end6.sink.split:                               ; preds = %sw.bb4, %if.then3.if.end6.sink.split_crit_edge
  %.sink193 = phi i32 [ 8, %sw.bb4 ], [ 32, %if.then3.if.end6.sink.split_crit_edge ]
  %or.i = or i32 %4, %.sink193
  %6 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or.i, ptr %fw_state.i, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %if.then3.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %sec_bss = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 31
  %tobool7.not = icmp eq ptr %sec_bss, null
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %exit

if.end9:                                          ; preds = %if.end6
  %7 = call ptr @memset(ptr %sec_bss, i32 0, i32 888)
  %IELength.i = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 11
  %8 = ptrtoint ptr %IELength.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %IELength.i, align 1
  %add.i = add i32 %9, 120
  %10 = call ptr @memcpy(ptr %sec_bss, ptr %network, i32 %add.i)
  %IELength = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 31, i32 11
  %11 = ptrtoint ptr %IELength to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %IELength, align 1
  %conv = trunc i32 %12 to i8
  %authenticator_ie = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 36
  %13 = ptrtoint ptr %authenticator_ie to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %authenticator_ie, align 8
  %sub = add i32 %12, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %sub)
  %cmp = icmp ult i32 %sub, 255
  %arrayidx17 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 12, i32 36, i32 1
  %arrayidx18 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 12, i32 31, i32 12, i32 12
  br i1 %cmp, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %14 = call ptr @memcpy(ptr %arrayidx17, ptr %arrayidx18, i32 %sub)
  br label %if.end25

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %15 = call ptr @memcpy(ptr %arrayidx17, ptr %arrayidx18, i32 255)
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then15
  %16 = ptrtoint ptr %IELength to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 0, ptr %IELength, align 1
  %assoc_by_bssid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 19
  %17 = ptrtoint ptr %assoc_by_bssid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %assoc_by_bssid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool27.not = icmp eq i32 %18, 0
  br i1 %tobool27.not, label %if.then28, label %if.end25.if.end32_crit_edge

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %assoc_bssid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 14
  %MacAddress = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 1
  %19 = call ptr @memcpy(ptr %assoc_bssid, ptr %MacAddress, i32 6)
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.end25.if.end32_crit_edge
  %IEs34 = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 12
  %IEs36 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 31, i32 12
  %20 = ptrtoint ptr %IELength.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %IELength.i, align 4
  %call40 = tail call i32 @rtw_restruct_sec_ie(ptr noundef %padapter, ptr noundef %IEs34, ptr noundef %IEs36, i32 noundef %21) #7
  %22 = ptrtoint ptr %IELength to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %call40, ptr %IELength, align 1
  %23 = ptrtoint ptr %qospriv to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %qospriv, align 4
  %wmm_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 28
  %24 = ptrtoint ptr %wmm_enable to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %wmm_enable, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool42.not = icmp eq i8 %25, 0
  br i1 %tobool42.not, label %if.end32.if.end62_crit_edge, label %if.then43

if.end32.if.end62_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then43:                                        ; preds = %if.end32
  %26 = ptrtoint ptr %IELength.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %IELength.i, align 4
  %call52 = tail call i32 @rtw_restruct_wmm_ie(ptr noundef %padapter, ptr noundef %IEs34, ptr noundef %IEs36, i32 noundef %27, i32 noundef %call40) #7
  %28 = ptrtoint ptr %IELength to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %IELength, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %call52)
  %cmp54.not = icmp eq i32 %29, %call52
  br i1 %cmp54.not, label %if.then43.if.end61_crit_edge, label %if.then56

if.then43.if.end61_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then56:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %IELength to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %call52, ptr %IELength, align 1
  br label %if.end61

if.end61:                                         ; preds = %if.then56, %if.then43.if.end61_crit_edge
  %storemerge = phi i32 [ 1, %if.then56 ], [ 0, %if.then43.if.end61_crit_edge ]
  %31 = ptrtoint ptr %qospriv to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %storemerge, ptr %qospriv, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.end32.if.end62_crit_edge
  %32 = ptrtoint ptr %htpriv to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %htpriv, align 4
  %ht_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 37
  %33 = ptrtoint ptr %ht_enable to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ht_enable, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool63.not = icmp eq i8 %34, 0
  br i1 %tobool63.not, label %if.end62.if.end88_crit_edge, label %if.then64

if.end62.if.end88_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.then64:                                        ; preds = %if.end62
  %dot11PrivacyAlgrthm = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 1
  %35 = ptrtoint ptr %dot11PrivacyAlgrthm to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dot11PrivacyAlgrthm, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %36, label %if.then77 [
    i32 1, label %if.then64.if.end88_crit_edge
    i32 5, label %if.then64.if.end88_crit_edge194
    i32 2, label %if.then64.if.end88_crit_edge195
  ]

if.then64.if.end88_crit_edge195:                  ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.then64.if.end88_crit_edge194:                  ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.then64.if.end88_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.then77:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %IELength.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %IELength.i, align 4
  %call86 = tail call i32 @rtw_restructure_ht_ie(ptr noundef %padapter, ptr noundef %IEs34, ptr noundef %IEs36, i32 noundef %39, ptr noundef %IELength) #7
  br label %if.end88

if.end88:                                         ; preds = %if.then77, %if.then64.if.end88_crit_edge, %if.then64.if.end88_crit_edge194, %if.then64.if.end88_crit_edge195, %if.end62.if.end88_crit_edge
  %40 = ptrtoint ptr %IELength.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %IELength.i, align 4
  %call93 = tail call zeroext i8 @check_assoc_AP(ptr noundef %IEs34, i32 noundef %41) #7
  %assoc_AP_vendor = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 14
  %42 = ptrtoint ptr %assoc_AP_vendor to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %call93, ptr %assoc_AP_vendor, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %call93)
  %cmp96 = icmp eq i8 %call93, 16
  br i1 %cmp96, label %if.end88.do.body105_crit_edge, label %if.else99

if.end88.do.body105_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body105

if.else99:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  %smart_ps101 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 19
  %43 = ptrtoint ptr %smart_ps101 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %smart_ps101, align 8
  br label %do.body105

do.body105:                                       ; preds = %if.else99, %if.end88.do.body105_crit_edge
  %.sink = phi i8 [ %44, %if.else99 ], [ 0, %if.end88.do.body105_crit_edge ]
  %45 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 2
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %.sink, ptr %45, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_joinbss_cmd.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_joinbss_cmd, %if.then110)) #7
          to label %do.end116 [label %if.then110], !srcloc !39

if.then110:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #9
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 37
  %47 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pnetdev, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %45, align 1
  %conv113 = zext i8 %50 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_joinbss_cmd.__UNIQUE_ID_ddebug347, ptr noundef %48, ptr noundef nonnull @.str.5, i32 noundef %conv113) #7
  br label %do.end116

do.end116:                                        ; preds = %if.then110, %do.body105
  %51 = ptrtoint ptr %IELength to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %IELength, align 1
  %add.i191 = add i32 %52, 120
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 4
  %53 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add.i191, ptr %cmdsz, align 4
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 7
  %54 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 7, i32 1
  %55 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 14, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 3
  %57 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %sec_bss, ptr %parmbuf, align 8
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 5
  %58 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %rsp, align 8
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 6
  %59 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %rspsz, align 4
  %call118 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call7.i.i)
  %conv119 = trunc i32 %call118 to i8
  br label %exit

exit:                                             ; preds = %do.end116, %if.then8, %entry.exit_crit_edge
  %res.0 = phi i8 [ %conv119, %do.end116 ], [ 0, %if.then8 ], [ 0, %entry.exit_crit_edge ]
  ret i8 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_restruct_sec_ie(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_restruct_wmm_ie(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_restructure_ht_ie(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @check_assoc_AP(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_disassoc_cmd(ptr noundef %padapter, i32 noundef %deauth_timeout_ms, i1 noundef zeroext %enqueue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv1 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 4) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %deauth_timeout_ms, ptr %call7.i.i, align 8
  br i1 %enqueue, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i29 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2848, i32 noundef 32) #10
  %tobool6.not = icmp eq ptr %call7.i.i29, null
  br i1 %tobool6.not, label %if.then7, label %do.body

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %exit

do.body:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i29, i32 0, i32 7
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i29, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i29, i32 0, i32 1
  %5 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 15, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i29, i32 0, i32 3
  %6 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %parmbuf, align 8
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i29, i32 0, i32 4
  %7 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i29, i32 0, i32 5
  %8 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %rsp, align 8
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i29, i32 0, i32 6
  %9 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %rspsz, align 4
  %call9 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv1, ptr noundef nonnull %call7.i.i29)
  %conv = trunc i32 %call9 to i8
  br label %exit

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call zeroext i8 @disconnect_hdl(ptr noundef %padapter, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call10)
  %cmp.not = icmp eq i8 %call10, 0
  %spec.select = zext i1 %cmp.not to i8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %exit

exit:                                             ; preds = %if.else, %do.body, %if.then7, %entry.exit_crit_edge
  %res.1 = phi i8 [ %conv, %do.body ], [ 0, %if.then7 ], [ %spec.select, %if.else ], [ 0, %entry.exit_crit_edge ]
  ret i8 %res.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @disconnect_hdl(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_setopmode_cmd(ptr noundef %padapter, i32 noundef %networktype) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 4) #10
  %tobool2.not = icmp eq ptr %call7.i.i17, null
  br i1 %tobool2.not, label %if.then3, label %do.body

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %exit

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 7
  %2 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 17, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i17, ptr %parmbuf, align 8
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %rsp, align 8
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %rspsz, align 4
  %conv = trunc i32 %networktype to i8
  %9 = ptrtoint ptr %call7.i.i17 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %call7.i.i17, align 8
  %call5 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call7.i.i)
  %conv6 = trunc i32 %call5 to i8
  br label %exit

exit:                                             ; preds = %do.body, %if.then3, %entry.exit_crit_edge
  %res.0 = phi i8 [ %conv6, %do.body ], [ 0, %if.then3 ], [ 0, %entry.exit_crit_edge ]
  ret i8 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_setstakey_cmd(ptr noundef %padapter, ptr nocapture noundef readonly %psta, i8 noundef zeroext %unicast_key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  %securitypriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i68 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 24) #10
  %tobool2.not = icmp eq ptr %call7.i.i68, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %exit

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i69 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 8) #10
  %tobool6.not = icmp eq ptr %call7.i.i69, null
  br i1 %tobool6.not, label %if.then7, label %do.body

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i68) #7
  br label %exit

do.body:                                          ; preds = %if.end4
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 7
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 21, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i68, ptr %parmbuf, align 8
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 24, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 5
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i69, ptr %rsp, align 8
  %9 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8, ptr %rspsz, align 4
  %hwaddr = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 11
  %10 = call ptr @memcpy(ptr %call7.i.i68, ptr %hwaddr, i32 6)
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fw_state.i, align 4
  %13 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool13.not = icmp eq i32 %13, 0
  br i1 %tobool13.not, label %do.body15, label %if.then14

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dot11PrivacyAlgrthm = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 1
  br label %if.end28.sink.split

do.body15:                                        ; preds = %do.body
  %14 = ptrtoint ptr %securitypriv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %securitypriv, align 8
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %15, label %do.body15.if.end28_crit_edge [
    i32 0, label %do.body15.sw.bb_crit_edge
    i32 1, label %do.body15.sw.bb_crit_edge70
    i32 3, label %do.body15.sw.bb_crit_edge71
    i32 2, label %sw.bb19
    i32 4, label %sw.bb22
  ]

do.body15.sw.bb_crit_edge71:                      ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

do.body15.sw.bb_crit_edge70:                      ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

do.body15.sw.bb_crit_edge:                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

do.body15.if.end28_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

sw.bb:                                            ; preds = %do.body15.sw.bb_crit_edge, %do.body15.sw.bb_crit_edge70, %do.body15.sw.bb_crit_edge71
  %dot11PrivacyAlgrthm16 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 1
  br label %if.end28.sink.split

sw.bb19:                                          ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  %dot118021XPrivacy = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 13
  br label %if.end28.sink.split

sw.bb22:                                          ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  %dot11PrivacyAlgrthm23 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 1
  br label %if.end28.sink.split

if.end28.sink.split:                              ; preds = %sw.bb22, %sw.bb19, %sw.bb, %if.then14
  %.sink.in = phi ptr [ %dot11PrivacyAlgrthm16, %sw.bb ], [ %dot118021XPrivacy, %sw.bb19 ], [ %dot11PrivacyAlgrthm23, %sw.bb22 ], [ %dot11PrivacyAlgrthm, %if.then14 ]
  %17 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %.sink = load i32, ptr %.sink.in, align 4
  %conv17 = trunc i32 %.sink to i8
  %algorithm18 = getelementptr inbounds %struct.set_stakey_parm, ptr %call7.i.i68, i32 0, i32 1
  %18 = ptrtoint ptr %algorithm18 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv17, ptr %algorithm18, align 2
  br label %if.end28

if.end28:                                         ; preds = %if.end28.sink.split, %do.body15.if.end28_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %unicast_key)
  %tobool29.not = icmp eq i8 %unicast_key, 0
  %key32 = getelementptr inbounds %struct.set_stakey_parm, ptr %call7.i.i68, i32 0, i32 3
  br i1 %tobool29.not, label %if.else31, label %if.then30

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %dot118021x_UncstKey = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 16
  br label %if.end33

if.else31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %dot118021XGrpKeyid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 6
  %19 = ptrtoint ptr %dot118021XGrpKeyid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dot118021XGrpKeyid, align 8
  %arrayidx = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 12, i32 7, i32 %20
  br label %if.end33

if.end33:                                         ; preds = %if.else31, %if.then30
  %arrayidx.sink = phi ptr [ %arrayidx, %if.else31 ], [ %dot118021x_UncstKey, %if.then30 ]
  %21 = call ptr @memcpy(ptr %key32, ptr %arrayidx.sink, i32 16)
  %busetkipkey = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 23
  %22 = ptrtoint ptr %busetkipkey to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %busetkipkey, align 1
  %call35 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call7.i.i)
  %conv36 = trunc i32 %call35 to i8
  br label %exit

exit:                                             ; preds = %if.end33, %if.then7, %if.then3, %entry.exit_crit_edge
  %res.0 = phi i8 [ %conv36, %if.end33 ], [ 0, %if.then7 ], [ 0, %if.then3 ], [ 0, %entry.exit_crit_edge ]
  ret i8 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_clearstakey_cmd(ptr noundef %padapter, ptr nocapture noundef readonly %psta, i8 noundef zeroext %entry1, i8 noundef zeroext %enqueue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enqueue)
  %tobool.not = icmp eq i8 %enqueue, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clear_cam_entry(ptr noundef %padapter, i8 noundef zeroext %entry1) #7
  br label %exit

if.else:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 32) #10
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.else.exit_crit_edge, label %if.end

if.else.exit_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end:                                           ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i36 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2848, i32 noundef 24) #10
  %tobool5.not = icmp eq ptr %call7.i.i36, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %exit

if.end7:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i37 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2848, i32 noundef 8) #10
  %tobool9.not = icmp eq ptr %call7.i.i37, null
  br i1 %tobool9.not, label %if.then10, label %do.body

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i36) #7
  br label %exit

do.body:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 7
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 21, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i36, ptr %parmbuf, align 8
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 24, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 5
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i37, ptr %rsp, align 8
  %9 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8, ptr %rspsz, align 4
  %hwaddr = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 11
  %10 = call ptr @memcpy(ptr %call7.i.i36, ptr %hwaddr, i32 6)
  %algorithm = getelementptr inbounds %struct.set_stakey_parm, ptr %call7.i.i36, i32 0, i32 1
  %11 = ptrtoint ptr %algorithm to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %algorithm, align 2
  %id = getelementptr inbounds %struct.set_stakey_parm, ptr %call7.i.i36, i32 0, i32 2
  %12 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %entry1, ptr %id, align 1
  %call15 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call7.i.i)
  %conv = trunc i32 %call15 to i8
  br label %exit

exit:                                             ; preds = %do.body, %if.then10, %if.then6, %if.else.exit_crit_edge, %if.then
  %res.0 = phi i8 [ %conv, %do.body ], [ 0, %if.then10 ], [ 0, %if.then6 ], [ 1, %if.then ], [ 0, %if.else.exit_crit_edge ]
  ret i8 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_cam_entry(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_addbareq_cmd(ptr noundef %padapter, i8 noundef zeroext %tid, ptr nocapture noundef readonly %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 32) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i20 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2848, i32 noundef 12) #10
  %tobool2.not = icmp eq ptr %call7.i.i20, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %exit

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %tid to i32
  %2 = ptrtoint ptr %call7.i.i20 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %call7.i.i20, align 8
  %addr6 = getelementptr inbounds %struct.addBaReq_parm, ptr %call7.i.i20, i32 0, i32 1
  %3 = call ptr @memcpy(ptr %addr6, ptr %addr, i32 6)
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 7
  %4 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 45, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i20, ptr %parmbuf, align 8
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 12, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %rsp, align 8
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %rspsz, align 4
  %call7 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call7.i.i)
  %conv8 = trunc i32 %call7 to i8
  br label %exit

exit:                                             ; preds = %if.end4, %if.then3, %entry.exit_crit_edge
  %res.0 = phi i8 [ %conv8, %if.end4 ], [ 0, %if.then3 ], [ 0, %entry.exit_crit_edge ]
  ret i8 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_dynamic_chk_wk_cmd(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 32) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2848, i32 noundef 12) #10
  %tobool2.not = icmp eq ptr %call7.i.i19, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %exit

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call7.i.i19 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %call7.i.i19, align 8
  %type_size = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call7.i.i19, i32 0, i32 1
  %3 = ptrtoint ptr %type_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %type_size, align 4
  %pbuf = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call7.i.i19, i32 0, i32 2
  %4 = ptrtoint ptr %pbuf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %padapter, ptr %pbuf, align 8
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 7
  %5 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 57, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i19, ptr %parmbuf, align 8
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 12, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %rsp, align 8
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %rspsz, align 4
  %call5 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call7.i.i)
  %conv = trunc i32 %call5 to i8
  br label %exit

exit:                                             ; preds = %if.end4, %if.then3, %entry.exit_crit_edge
  %res.0 = phi i8 [ %conv, %if.end4 ], [ 0, %if.then3 ], [ 0, %entry.exit_crit_edge ]
  ret i8 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_set_chplan_cmd(ptr noundef %padapter, i8 noundef zeroext %chplan, i8 noundef zeroext %enqueue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %chplan)
  %cmp = icmp ult i8 %chplan, 66
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %chplan)
  %cmp3 = icmp eq i8 %chplan, 127
  %or.cond = or i1 %cmp, %cmp3
  br i1 %or.cond, label %if.end, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.exit_crit_edge, label %if.end6

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end6:                                          ; preds = %if.end
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %chplan, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enqueue)
  %tobool7.not = icmp eq i8 %enqueue, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i45 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 32) #10
  %tobool10.not = icmp eq ptr %call7.i.i45, null
  br i1 %tobool10.not, label %if.then11, label %if.end21

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %exit

if.else:                                          ; preds = %if.end6
  %call15 = tail call zeroext i8 @set_chplan_hdl(ptr noundef %padapter, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call15)
  %cmp17.not = icmp eq i8 %call15, 0
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br i1 %cmp17.not, label %if.else.if.then25_crit_edge, label %if.else.exit_crit_edge

if.else.exit_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.else.if.then25_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25

if.end21:                                         ; preds = %if.then8
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i45, i32 0, i32 7
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i45, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i45, i32 0, i32 1
  %5 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 59, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i45, i32 0, i32 3
  %6 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %parmbuf, align 8
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i45, i32 0, i32 4
  %7 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i45, i32 0, i32 5
  %8 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %rsp, align 8
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i45, i32 0, i32 6
  %9 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %rspsz, align 4
  %call13 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call7.i.i45)
  %conv14 = trunc i32 %call13 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv14)
  %cmp23 = icmp eq i8 %conv14, 1
  br i1 %cmp23, label %if.end21.if.then25_crit_edge, label %if.end21.exit_crit_edge

if.end21.exit_crit_edge:                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end21.if.then25_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25

if.then25:                                        ; preds = %if.end21.if.then25_crit_edge, %if.else.if.then25_crit_edge
  %ChannelPlan = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 30
  %10 = ptrtoint ptr %ChannelPlan to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %chplan, ptr %ChannelPlan, align 1
  br label %exit

exit:                                             ; preds = %if.then25, %if.end21.exit_crit_edge, %if.else.exit_crit_edge, %if.then11, %if.end.exit_crit_edge, %entry.exit_crit_edge
  %res.2 = phi i8 [ 1, %if.then25 ], [ %conv14, %if.end21.exit_crit_edge ], [ 0, %if.then11 ], [ 0, %entry.exit_crit_edge ], [ 0, %if.end.exit_crit_edge ], [ 0, %if.else.exit_crit_edge ]
  ret i8 %res.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @set_chplan_hdl(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lps_ctrl_wk_hdl(ptr noundef %padapter, i8 noundef zeroext %lps_ctrl_type) unnamed_addr #0 align 64 {
entry:
  %mstatus = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mstatus) #7
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_state.i, align 4
  %2 = and i32 %1, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i8 %lps_ctrl_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %lps_ctrl_type, label %if.end.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb7
    i8 2, label %sw.bb8
    i8 3, label %sw.bb10
    i8 4, label %sw.bb11
    i8 5, label %sw.bb12
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %and.i31 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31)
  %tobool4.not = icmp eq i32 %and.i31, 0
  br i1 %tobool4.not, label %sw.bb.cleanup_crit_edge, label %if.then5

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @LPS_Leave(ptr noundef %padapter) #7
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @LPS_Leave(ptr noundef %padapter) #7
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %mstatus to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %mstatus, align 1
  %LpsIdleCount = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 19
  %6 = ptrtoint ptr %LpsIdleCount to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %LpsIdleCount, align 2
  call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 37, ptr noundef nonnull %mstatus) #7
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %mstatus to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %mstatus, align 1
  tail call void @LPS_Leave(ptr noundef %padapter) #7
  call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 37, ptr noundef nonnull %mstatus) #7
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %DelayLPSLastTimeStamp = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 22
  %9 = ptrtoint ptr %DelayLPSLastTimeStamp to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %DelayLPSLastTimeStamp, align 4
  tail call void @LPS_Leave(ptr noundef %padapter) #7
  br label %cleanup

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @LPS_Leave(ptr noundef %padapter) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb8, %sw.bb7, %if.then5, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mstatus) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_rpt_timer_cfg_cmd(ptr noundef %padapter, i16 noundef zeroext %min_time) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 32) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2848, i32 noundef 12) #10
  %tobool2.not = icmp eq ptr %call7.i.i19, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %exit

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call7.i.i19 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 12, ptr %call7.i.i19, align 8
  %conv = zext i16 %min_time to i32
  %type_size = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call7.i.i19, i32 0, i32 1
  %3 = ptrtoint ptr %type_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %type_size, align 4
  %pbuf = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call7.i.i19, i32 0, i32 2
  %4 = ptrtoint ptr %pbuf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pbuf, align 8
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 7
  %5 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 57, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i19, ptr %parmbuf, align 8
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 12, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %rsp, align 8
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %rspsz, align 4
  %call5 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call7.i.i)
  %conv6 = trunc i32 %call5 to i8
  br label %exit

exit:                                             ; preds = %if.end4, %if.then3, %entry.exit_crit_edge
  %res.0 = phi i8 [ %conv6, %if.end4 ], [ 0, %if.then3 ], [ 0, %entry.exit_crit_edge ]
  ret i8 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_antenna_select_cmd(ptr noundef %padapter, i8 noundef zeroext %antenna, i8 noundef zeroext %enqueue) local_unnamed_addr #0 align 64 {
entry:
  %antenna.addr.i = alloca i8, align 1
  %support_ant_div = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %support_ant_div) #7
  %0 = ptrtoint ptr %support_ant_div to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %support_ant_div, align 1, !annotation !41
  %call = call zeroext i8 @GetHalDefVar8188EUsb(ptr noundef %padapter, i32 noundef 1, ptr noundef nonnull %support_ant_div) #7
  %1 = ptrtoint ptr %support_ant_div to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %support_ant_div, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enqueue)
  %tobool1.not = icmp eq i8 %enqueue, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 32) #10
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.then2.cleanup_crit_edge, label %if.end6

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.then2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i34 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 12) #10
  %tobool8.not = icmp eq ptr %call7.i.i34, null
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call7.i.i34 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 6, ptr %call7.i.i34, align 8
  %conv = zext i8 %antenna to i32
  %type_size = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call7.i.i34, i32 0, i32 1
  %6 = ptrtoint ptr %type_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %type_size, align 4
  %pbuf = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call7.i.i34, i32 0, i32 2
  %7 = ptrtoint ptr %pbuf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pbuf, align 8
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 7
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 57, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i34, ptr %parmbuf, align 8
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 12, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %rsp, align 8
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %rspsz, align 4
  %call11 = call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call7.i.i)
  %conv12 = trunc i32 %call11 to i8
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %antenna.addr.i)
  %15 = ptrtoint ptr %antenna.addr.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %antenna, ptr %antenna.addr.i, align 1
  call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 49, ptr noundef nonnull %antenna.addr.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %antenna.addr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end10, %if.then9, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 1, %entry.cleanup_crit_edge ], [ %conv12, %if.end10 ], [ 0, %if.then9 ], [ 1, %if.else ], [ 0, %if.then2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %support_ant_div) #7
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @GetHalDefVar8188EUsb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @p2p_protocol_wk_cmd(ptr noundef %padapter, i32 noundef %intCmdType) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  %p2p_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 17
  %0 = ptrtoint ptr %p2p_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p2p_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2848, i32 noundef 32) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i27 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 2848, i32 noundef 12) #10
  %tobool5.not = icmp eq ptr %call7.i.i27, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call7.i.i27 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8, ptr %call7.i.i27, align 8
  %type_size = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call7.i.i27, i32 0, i32 1
  %5 = ptrtoint ptr %type_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %intCmdType, ptr %type_size, align 4
  %pbuf = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call7.i.i27, i32 0, i32 2
  %6 = ptrtoint ptr %pbuf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %pbuf, align 8
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 57, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i27, ptr %parmbuf, align 8
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 12, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %rsp, align 8
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %rspsz, align 4
  %call8 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call7.i.i)
  %conv = trunc i32 %call8 to i8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 1, %entry.cleanup_crit_edge ], [ %conv, %if.end7 ], [ 0, %if.then6 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_ps_cmd(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 32) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2848, i32 noundef 12) #10
  %tobool2.not = icmp eq ptr %call7.i.i17, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %exit

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call7.i.i17 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %call7.i.i17, align 8
  %pbuf = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call7.i.i17, i32 0, i32 2
  %3 = ptrtoint ptr %pbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %pbuf, align 8
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 7
  %4 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 57, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i17, ptr %parmbuf, align 8
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 12, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %rsp, align 8
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %rspsz, align 4
  %call5 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call7.i.i)
  %conv = trunc i32 %call5 to i8
  br label %exit

exit:                                             ; preds = %if.end4, %if.then3, %entry.exit_crit_edge
  %res.0 = phi i8 [ %conv, %if.end4 ], [ 0, %if.then3 ], [ 0, %entry.exit_crit_edge ]
  ret i8 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_chk_hi_queue_cmd(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 32) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2848, i32 noundef 12) #10
  %tobool2.not = icmp eq ptr %call7.i.i18, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %exit

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call7.i.i18 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 9, ptr %call7.i.i18, align 8
  %type_size = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call7.i.i18, i32 0, i32 1
  %3 = ptrtoint ptr %type_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %type_size, align 4
  %pbuf = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call7.i.i18, i32 0, i32 2
  %4 = ptrtoint ptr %pbuf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pbuf, align 8
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 7
  %5 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 57, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i18, ptr %parmbuf, align 8
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 12, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %rsp, align 8
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %rspsz, align 4
  %call5 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call7.i.i)
  %conv = trunc i32 %call5 to i8
  br label %exit

exit:                                             ; preds = %if.end4, %if.then3, %entry.exit_crit_edge
  %res.0 = phi i8 [ %conv, %if.end4 ], [ 0, %if.then3 ], [ 0, %entry.exit_crit_edge ]
  ret i8 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_c2h_wk_cmd(ptr noundef %padapter, ptr noundef %c2h_evt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 32) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i20 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2848, i32 noundef 12) #10
  %tobool2.not = icmp eq ptr %call7.i.i20, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %exit

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call7.i.i20 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 11, ptr %call7.i.i20, align 8
  %tobool5.not = icmp eq ptr %c2h_evt, null
  %cond = select i1 %tobool5.not, i32 0, i32 16
  %type_size = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call7.i.i20, i32 0, i32 1
  %3 = ptrtoint ptr %type_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %cond, ptr %type_size, align 4
  %pbuf = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call7.i.i20, i32 0, i32 2
  %4 = ptrtoint ptr %pbuf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %c2h_evt, ptr %pbuf, align 8
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 7
  %5 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 57, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i20, ptr %parmbuf, align 8
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 12, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %rsp, align 8
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %rspsz, align 4
  %call6 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call7.i.i)
  %conv = trunc i32 %call6 to i8
  br label %exit

exit:                                             ; preds = %if.end4, %if.then3, %entry.exit_crit_edge
  %res.0 = phi i8 [ %conv, %if.end4 ], [ 0, %if.then3 ], [ 0, %entry.exit_crit_edge ]
  ret i8 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_drvextra_cmd_hdl(ptr noundef %padapter, ptr noundef readonly %pbuf) #0 align 64 {
entry:
  %buf.i = alloca [16 x i8], align 1
  %val.i = alloca i8, align 1
  %antenna.addr.i = alloca i8, align 1
  %min_time.addr.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pbuf, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %pbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pbuf, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %1, label %if.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %sw.bb2
    i32 5, label %sw.bb3
    i32 12, label %sw.bb4
    i32 6, label %sw.bb7
    i32 7, label %sw.bb10
    i32 8, label %sw.bb13
    i32 9, label %sw.bb15
    i32 11, label %sw.bb16
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %pbuf1 = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %pbuf, i32 0, i32 2
  %3 = ptrtoint ptr %pbuf1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pbuf1, align 4
  %fw_state.i.i = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_state.i.i, align 4
  %7 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %sw.bb.if.end.i_crit_edge, label %if.then.i

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @expire_timeout_chk(ptr noundef %4) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb.if.end.i_crit_edge
  %call.i.i = tail call i32 @rtw_read32(ptr noundef %4, i32 noundef 528) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.rtl8188e_sreset_xmit_status_check.exit.i_crit_edge, label %do.body.i.i

if.end.i.rtl8188e_sreset_xmit_status_check.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8188e_sreset_xmit_status_check.exit.i

do.body.i.i:                                      ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %8 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp1.i.i = icmp ugt i32 %8, 4
  br i1 %cmp1.i.i, label %do.end.i.i, label %do.body.i.i.do.end6.i.i_crit_edge

do.body.i.i.do.end6.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %call.i.i) #11
  br label %do.end6.i.i

do.end6.i.i:                                      ; preds = %do.end.i.i, %do.body.i.i.do.end6.i.i_crit_edge
  %call7.i.i = tail call i32 @rtw_write32(ptr noundef %4, i32 noundef 528, i32 noundef %call.i.i) #7
  br label %rtl8188e_sreset_xmit_status_check.exit.i

rtl8188e_sreset_xmit_status_check.exit.i:         ; preds = %do.end6.i.i, %if.end.i.rtl8188e_sreset_xmit_status_check.exit.i_crit_edge
  tail call void @linked_status_chk(ptr noundef %4) #7
  %9 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fw_state.i.i, align 4
  %and.i.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i1.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i1.i, label %if.else43.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %rtl8188e_sreset_xmit_status_check.exit.i
  %LinkDetectInfo.i.i = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 4, i32 27
  %NumRxOkInPeriod.i.i = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 4, i32 27, i32 1
  %11 = ptrtoint ptr %NumRxOkInPeriod.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %NumRxOkInPeriod.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %12)
  %cmp.i.i = icmp ugt i32 %12, 100
  %13 = ptrtoint ptr %LinkDetectInfo.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %LinkDetectInfo.i.i, align 4
  br i1 %cmp.i.i, label %if.end10.i.i, label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %14)
  %cmp2.i.i = icmp ugt i32 %14, 100
  br i1 %cmp2.i.i, label %if.end10.thread113.i.i, label %lor.lhs.false.i.i.if.end27.i.i_crit_edge

lor.lhs.false.i.i.if.end27.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i.i

if.end10.thread113.i.i:                           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp8114.i.i = icmp ugt i32 %12, %14
  %not.cmp8114.i.i = xor i1 %cmp8114.i.i, true
  %.115.i.i = zext i1 %not.cmp8114.i.i to i8
  %.97116.i.i = zext i1 %cmp8114.i.i to i8
  br label %lor.lhs.false14.i.i

if.end10.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp8.i.i = icmp ugt i32 %12, %14
  %not.cmp8.i.i = xor i1 %cmp8.i.i, true
  %..i2.i = zext i1 %not.cmp8.i.i to i8
  %.97.i.i = zext i1 %cmp8.i.i to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %12)
  %cmp13.i.i = icmp ugt i32 %12, 4000
  br i1 %cmp13.i.i, label %if.end10.i.i.if.then18.i.i_crit_edge, label %if.end10.i.i.lor.lhs.false14.i.i_crit_edge

if.end10.i.i.lor.lhs.false14.i.i_crit_edge:       ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false14.i.i

if.end10.i.i.if.then18.i.i_crit_edge:             ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18.i.i

lor.lhs.false14.i.i:                              ; preds = %if.end10.i.i.lor.lhs.false14.i.i_crit_edge, %if.end10.thread113.i.i
  %bRxBusyTraffic.0111.i.i = phi i8 [ %.97116.i.i, %if.end10.thread113.i.i ], [ %.97.i.i, %if.end10.i.i.lor.lhs.false14.i.i_crit_edge ]
  %bTxBusyTraffic.0108.i.i = phi i8 [ %.115.i.i, %if.end10.thread113.i.i ], [ %..i2.i, %if.end10.i.i.lor.lhs.false14.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %14)
  %cmp17.i.i = icmp ugt i32 %14, 4000
  br i1 %cmp17.i.i, label %lor.lhs.false14.i.i.if.then18.i.i_crit_edge, label %lor.lhs.false14.i.i.if.end27.i.i_crit_edge

lor.lhs.false14.i.i.if.end27.i.i_crit_edge:       ; preds = %lor.lhs.false14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i.i

lor.lhs.false14.i.i.if.then18.i.i_crit_edge:      ; preds = %lor.lhs.false14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18.i.i

if.then18.i.i:                                    ; preds = %lor.lhs.false14.i.i.if.then18.i.i_crit_edge, %if.end10.i.i.if.then18.i.i_crit_edge
  %bRxBusyTraffic.0112.i.i = phi i8 [ %.97.i.i, %if.end10.i.i.if.then18.i.i_crit_edge ], [ %bRxBusyTraffic.0111.i.i, %lor.lhs.false14.i.i.if.then18.i.i_crit_edge ]
  %bTxBusyTraffic.0109.i.i = phi i8 [ %..i2.i, %if.end10.i.i.if.then18.i.i_crit_edge ], [ %bTxBusyTraffic.0108.i.i, %lor.lhs.false14.i.i.if.then18.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp23.i.i = icmp ugt i32 %12, %14
  %.98.i.i = zext i1 %cmp23.i.i to i8
  %not.cmp23.i.i = xor i1 %cmp23.i.i, true
  %.99.i.i = zext i1 %not.cmp23.i.i to i8
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %if.then18.i.i, %lor.lhs.false14.i.i.if.end27.i.i_crit_edge, %lor.lhs.false.i.i.if.end27.i.i_crit_edge
  %bRxBusyTraffic.0110.i.i = phi i8 [ %bRxBusyTraffic.0111.i.i, %lor.lhs.false14.i.i.if.end27.i.i_crit_edge ], [ %bRxBusyTraffic.0112.i.i, %if.then18.i.i ], [ 0, %lor.lhs.false.i.i.if.end27.i.i_crit_edge ]
  %bTxBusyTraffic.0107.i.i = phi i8 [ %bTxBusyTraffic.0108.i.i, %lor.lhs.false14.i.i.if.end27.i.i_crit_edge ], [ %bTxBusyTraffic.0109.i.i, %if.then18.i.i ], [ 0, %lor.lhs.false.i.i.if.end27.i.i_crit_edge ]
  %bBusyTraffic.0104.i.i = phi i8 [ 1, %lor.lhs.false14.i.i.if.end27.i.i_crit_edge ], [ 1, %if.then18.i.i ], [ 0, %lor.lhs.false.i.i.if.end27.i.i_crit_edge ]
  %bHigherBusyTraffic.0.i.i = phi i8 [ 0, %lor.lhs.false14.i.i.if.end27.i.i_crit_edge ], [ 1, %if.then18.i.i ], [ 0, %lor.lhs.false.i.i.if.end27.i.i_crit_edge ]
  %bHigherBusyRxTraffic.0.i.i = phi i8 [ 0, %lor.lhs.false14.i.i.if.end27.i.i_crit_edge ], [ %.98.i.i, %if.then18.i.i ], [ 0, %lor.lhs.false.i.i.if.end27.i.i_crit_edge ]
  %bHigherBusyTxTraffic.0.i.i = phi i8 [ 0, %lor.lhs.false14.i.i.if.end27.i.i_crit_edge ], [ %.99.i.i, %if.then18.i.i ], [ 0, %lor.lhs.false.i.i.if.end27.i.i_crit_edge ]
  %NumRxUnicastOkInPeriod.i.i = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 4, i32 27, i32 2
  %15 = ptrtoint ptr %NumRxUnicastOkInPeriod.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %NumRxUnicastOkInPeriod.i.i, align 4
  %add.i.i = add i32 %16, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i.i)
  %cmp31.i.i = icmp ugt i32 %add.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp35.i.i = icmp ugt i32 %16, 2
  %or.cond.i.i = or i1 %cmp35.i.i, %cmp31.i.i
  br i1 %or.cond.i.i, label %if.else41.i.i, label %if.then40.critedge.i.i

if.then40.critedge.i.i:                           ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @LPS_Enter(ptr noundef %4) #7
  br label %dynamic_chk_wk_hdl.exit

if.else41.i.i:                                    ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @LPS_Leave(ptr noundef %4) #7
  br label %dynamic_chk_wk_hdl.exit

if.else43.i.i:                                    ; preds = %rtl8188e_sreset_xmit_status_check.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @LPS_Leave(ptr noundef %4) #7
  br label %dynamic_chk_wk_hdl.exit

dynamic_chk_wk_hdl.exit:                          ; preds = %if.else43.i.i, %if.else41.i.i, %if.then40.critedge.i.i
  %bBusyTraffic.1.i.i = phi i8 [ %bBusyTraffic.0104.i.i, %if.then40.critedge.i.i ], [ %bBusyTraffic.0104.i.i, %if.else41.i.i ], [ 0, %if.else43.i.i ]
  %bTxBusyTraffic.1.i.i = phi i8 [ %bTxBusyTraffic.0107.i.i, %if.then40.critedge.i.i ], [ %bTxBusyTraffic.0107.i.i, %if.else41.i.i ], [ 0, %if.else43.i.i ]
  %bRxBusyTraffic.1.i.i = phi i8 [ %bRxBusyTraffic.0110.i.i, %if.then40.critedge.i.i ], [ %bRxBusyTraffic.0110.i.i, %if.else41.i.i ], [ 0, %if.else43.i.i ]
  %bHigherBusyTraffic.1.i.i = phi i8 [ %bHigherBusyTraffic.0.i.i, %if.then40.critedge.i.i ], [ %bHigherBusyTraffic.0.i.i, %if.else41.i.i ], [ 0, %if.else43.i.i ]
  %bHigherBusyRxTraffic.1.i.i = phi i8 [ %bHigherBusyRxTraffic.0.i.i, %if.then40.critedge.i.i ], [ %bHigherBusyRxTraffic.0.i.i, %if.else41.i.i ], [ 0, %if.else43.i.i ]
  %bHigherBusyTxTraffic.1.i.i = phi i8 [ %bHigherBusyTxTraffic.0.i.i, %if.then40.critedge.i.i ], [ %bHigherBusyTxTraffic.0.i.i, %if.else41.i.i ], [ 0, %if.else43.i.i ]
  %LinkDetectInfo45.i.i = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 4, i32 27
  %NumRxOkInPeriod46.i.i = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 4, i32 27, i32 1
  %17 = ptrtoint ptr %NumRxOkInPeriod46.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %NumRxOkInPeriod46.i.i, align 4
  %18 = ptrtoint ptr %LinkDetectInfo45.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %LinkDetectInfo45.i.i, align 4
  %NumRxUnicastOkInPeriod50.i.i = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 4, i32 27, i32 2
  %19 = ptrtoint ptr %NumRxUnicastOkInPeriod50.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %NumRxUnicastOkInPeriod50.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bBusyTraffic.1.i.i)
  %tobool51.i.i = icmp ne i8 %bBusyTraffic.1.i.i, 0
  %bBusyTraffic53.i.i = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 4, i32 27, i32 3
  %frombool.i.i = zext i1 %tobool51.i.i to i8
  %20 = ptrtoint ptr %bBusyTraffic53.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool.i.i, ptr %bBusyTraffic53.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bTxBusyTraffic.1.i.i)
  %tobool54.i.i = icmp ne i8 %bTxBusyTraffic.1.i.i, 0
  %bTxBusyTraffic56.i.i = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 4, i32 27, i32 4
  %frombool57.i.i = zext i1 %tobool54.i.i to i8
  %21 = ptrtoint ptr %bTxBusyTraffic56.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %frombool57.i.i, ptr %bTxBusyTraffic56.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bRxBusyTraffic.1.i.i)
  %tobool58.i.i = icmp ne i8 %bRxBusyTraffic.1.i.i, 0
  %bRxBusyTraffic60.i.i = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 4, i32 27, i32 5
  %frombool61.i.i = zext i1 %tobool58.i.i to i8
  %22 = ptrtoint ptr %bRxBusyTraffic60.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %frombool61.i.i, ptr %bRxBusyTraffic60.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bHigherBusyTraffic.1.i.i)
  %tobool62.i.i = icmp ne i8 %bHigherBusyTraffic.1.i.i, 0
  %bHigherBusyTraffic64.i.i = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 4, i32 27, i32 6
  %frombool65.i.i = zext i1 %tobool62.i.i to i8
  %23 = ptrtoint ptr %bHigherBusyTraffic64.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %frombool65.i.i, ptr %bHigherBusyTraffic64.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bHigherBusyRxTraffic.1.i.i)
  %tobool66.i.i = icmp ne i8 %bHigherBusyRxTraffic.1.i.i, 0
  %bHigherBusyRxTraffic68.i.i = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 4, i32 27, i32 7
  %frombool69.i.i = zext i1 %tobool66.i.i to i8
  %24 = ptrtoint ptr %bHigherBusyRxTraffic68.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %frombool69.i.i, ptr %bHigherBusyRxTraffic68.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bHigherBusyTxTraffic.1.i.i)
  %tobool70.i.i = icmp ne i8 %bHigherBusyTxTraffic.1.i.i, 0
  %bHigherBusyTxTraffic72.i.i = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 4, i32 27, i32 8
  %frombool73.i.i = zext i1 %tobool70.i.i to i8
  %25 = ptrtoint ptr %bHigherBusyTxTraffic72.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool73.i.i, ptr %bHigherBusyTxTraffic72.i.i, align 1
  tail call void @rtl8188e_HalDmWatchDog(ptr noundef %4) #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtw_ps_processor(ptr noundef %padapter) #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %type_size = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %pbuf, i32 0, i32 1
  %26 = ptrtoint ptr %type_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type_size, align 4
  %conv = trunc i32 %27 to i8
  tail call fastcc void @lps_ctrl_wk_hdl(ptr noundef %padapter, i8 noundef zeroext %conv)
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %type_size5 = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %pbuf, i32 0, i32 1
  %28 = ptrtoint ptr %type_size5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type_size5, align 4
  %conv6 = trunc i32 %29 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %min_time.addr.i)
  %30 = ptrtoint ptr %min_time.addr.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv6, ptr %min_time.addr.i, align 2
  call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 58, ptr noundef nonnull %min_time.addr.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %min_time.addr.i)
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %type_size8 = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %pbuf, i32 0, i32 1
  %31 = ptrtoint ptr %type_size8 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %type_size8, align 4
  %conv9 = trunc i32 %32 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %antenna.addr.i)
  %33 = ptrtoint ptr %antenna.addr.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv9, ptr %antenna.addr.i, align 1
  call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 49, ptr noundef nonnull %antenna.addr.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %antenna.addr.i)
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %type_size11 = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %pbuf, i32 0, i32 1
  %34 = ptrtoint ptr %type_size11 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type_size11, align 4
  %conv12 = trunc i32 %35 to i8
  tail call void @p2p_ps_wk_hdl(ptr noundef %padapter, i8 noundef zeroext %conv12) #7
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %type_size14 = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %pbuf, i32 0, i32 1
  %36 = ptrtoint ptr %type_size14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %type_size14, align 4
  tail call void @p2p_protocol_wk_hdl(ptr noundef %padapter, i32 noundef %37) #7
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end
  %call.i = tail call ptr @rtw_get_bcmc_stainfo(ptr noundef %padapter) #7
  %tobool.not.i44 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i44, label %sw.bb15.sw.epilog_crit_edge, label %if.end.i45

sw.bb15.sw.epilog_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i45:                                       ; preds = %sw.bb15
  %sleepq_len.i = getelementptr inbounds %struct.sta_info, ptr %call.i, i32 0, i32 6
  %38 = ptrtoint ptr %sleepq_len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sleepq_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i = icmp eq i32 %39, 0
  br i1 %cmp.i, label %if.then1.i, label %if.end.i45.sw.epilog_crit_edge

if.end.i45.sw.epilog_crit_edge:                   ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then1.i:                                       ; preds = %if.end.i45
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #7
  %40 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %val.i, align 1
  call void @GetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 61, ptr noundef nonnull %val.i) #7
  %41 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %val.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool2.not28.i = icmp eq i8 %42, 0
  br i1 %tobool2.not28.i, label %while.body.preheader.i, label %if.then1.i.if.then7.i_crit_edge

if.then1.i.if.then7.i_crit_edge:                  ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i

while.body.preheader.i:                           ; preds = %if.then1.i
  call void @msleep(i32 noundef 100) #7
  call void @GetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 61, ptr noundef nonnull %val.i) #7
  %43 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %val.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool2.not.i = icmp eq i8 %44, 0
  br i1 %tobool2.not.i, label %while.body.1.i, label %while.body.preheader.i.if.then7.i_crit_edge

while.body.preheader.i.if.then7.i_crit_edge:      ; preds = %while.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i

while.body.1.i:                                   ; preds = %while.body.preheader.i
  call void @msleep(i32 noundef 100) #7
  call void @GetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 61, ptr noundef nonnull %val.i) #7
  %45 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %val.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool2.not.1.i = icmp eq i8 %46, 0
  br i1 %tobool2.not.1.i, label %while.body.2.i, label %while.body.1.i.if.then7.i_crit_edge

while.body.1.i.if.then7.i_crit_edge:              ; preds = %while.body.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i

while.body.2.i:                                   ; preds = %while.body.1.i
  call void @msleep(i32 noundef 100) #7
  call void @GetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 61, ptr noundef nonnull %val.i) #7
  %47 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %val.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool2.not.2.i = icmp eq i8 %48, 0
  br i1 %tobool2.not.2.i, label %while.body.3.i, label %while.body.2.i.if.then7.i_crit_edge

while.body.2.i.if.then7.i_crit_edge:              ; preds = %while.body.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i

while.body.3.i:                                   ; preds = %while.body.2.i
  call void @msleep(i32 noundef 100) #7
  call void @GetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 61, ptr noundef nonnull %val.i) #7
  %49 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %val.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool2.not.3.i = icmp eq i8 %50, 0
  br i1 %tobool2.not.3.i, label %while.body.4.i, label %while.body.3.i.if.then7.i_crit_edge

while.body.3.i.if.then7.i_crit_edge:              ; preds = %while.body.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i

while.body.4.i:                                   ; preds = %while.body.3.i
  call void @msleep(i32 noundef 100) #7
  call void @GetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 61, ptr noundef nonnull %val.i) #7
  %51 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %val.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool2.not.4.i = icmp eq i8 %52, 0
  br i1 %tobool2.not.4.i, label %while.body.5.i, label %while.body.4.i.if.then7.i_crit_edge

while.body.4.i.if.then7.i_crit_edge:              ; preds = %while.body.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i

while.body.5.i:                                   ; preds = %while.body.4.i
  call void @msleep(i32 noundef 100) #7
  call void @GetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 61, ptr noundef nonnull %val.i) #7
  %53 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %val.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool2.not.5.i = icmp eq i8 %54, 0
  br i1 %tobool2.not.5.i, label %while.body.6.i, label %while.body.5.i.if.then7.i_crit_edge

while.body.5.i.if.then7.i_crit_edge:              ; preds = %while.body.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i

while.body.6.i:                                   ; preds = %while.body.5.i
  call void @msleep(i32 noundef 100) #7
  call void @GetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 61, ptr noundef nonnull %val.i) #7
  %55 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %val.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool2.not.6.i = icmp eq i8 %56, 0
  br i1 %tobool2.not.6.i, label %while.body.7.i, label %while.body.6.i.if.then7.i_crit_edge

while.body.6.i.if.then7.i_crit_edge:              ; preds = %while.body.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i

while.body.7.i:                                   ; preds = %while.body.6.i
  call void @msleep(i32 noundef 100) #7
  call void @GetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 61, ptr noundef nonnull %val.i) #7
  %57 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %val.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool2.not.7.i = icmp eq i8 %58, 0
  br i1 %tobool2.not.7.i, label %while.body.8.i, label %while.body.7.i.if.then7.i_crit_edge

while.body.7.i.if.then7.i_crit_edge:              ; preds = %while.body.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i

while.body.8.i:                                   ; preds = %while.body.7.i
  call void @msleep(i32 noundef 100) #7
  call void @GetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 61, ptr noundef nonnull %val.i) #7
  %59 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %val.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool2.not.8.i = icmp eq i8 %60, 0
  br i1 %tobool2.not.8.i, label %while.body.9.i, label %while.body.8.i.if.then7.i_crit_edge

while.body.8.i.if.then7.i_crit_edge:              ; preds = %while.body.8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i

while.body.9.i:                                   ; preds = %while.body.8.i
  call void @msleep(i32 noundef 100) #7
  call void @GetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 61, ptr noundef nonnull %val.i) #7
  %61 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %val.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool2.not.9.i = icmp eq i8 %62, 0
  br i1 %tobool2.not.9.i, label %if.else.i, label %while.body.9.i.if.then7.i_crit_edge

while.body.9.i.if.then7.i_crit_edge:              ; preds = %while.body.9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i

if.then7.i:                                       ; preds = %while.body.9.i.if.then7.i_crit_edge, %while.body.8.i.if.then7.i_crit_edge, %while.body.7.i.if.then7.i_crit_edge, %while.body.6.i.if.then7.i_crit_edge, %while.body.5.i.if.then7.i_crit_edge, %while.body.4.i.if.then7.i_crit_edge, %while.body.3.i.if.then7.i_crit_edge, %while.body.2.i.if.then7.i_crit_edge, %while.body.1.i.if.then7.i_crit_edge, %while.body.preheader.i.if.then7.i_crit_edge, %if.then1.i.if.then7.i_crit_edge
  %tim_bitmap.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 20
  %63 = ptrtoint ptr %tim_bitmap.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %tim_bitmap.i, align 2
  %65 = and i16 %64, -2
  store i16 %65, ptr %tim_bitmap.i, align 2
  %sta_dz_bitmap.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 19
  %66 = ptrtoint ptr %sta_dz_bitmap.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %sta_dz_bitmap.i, align 4
  %68 = and i16 %67, -2
  store i16 %68, ptr %sta_dz_bitmap.i, align 4
  call void @update_beacon(ptr noundef %padapter, i8 noundef zeroext 5, ptr noundef null, i8 noundef zeroext 0) #7
  br label %if.end13.i

if.else.i:                                        ; preds = %while.body.9.i
  call void @msleep(i32 noundef 100) #7
  %cmdpriv.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %69 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %69, i32 noundef 2848, i32 noundef 32) #10
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.else.i.if.end13.i_crit_edge, label %if.end.i.i

if.else.i.if.end13.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.end.i.i:                                       ; preds = %if.else.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %70 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i18.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %70, i32 noundef 2848, i32 noundef 12) #10
  %tobool2.not.i.i = icmp eq ptr %call7.i.i18.i.i, null
  br i1 %tobool2.not.i.i, label %if.then3.i.i, label %if.end4.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #7
  br label %if.end13.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %call7.i.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 9, ptr %call7.i.i18.i.i, align 8
  %type_size.i.i = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call7.i.i18.i.i, i32 0, i32 1
  %72 = ptrtoint ptr %type_size.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %type_size.i.i, align 4
  %pbuf.i.i = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call7.i.i18.i.i, i32 0, i32 2
  %73 = ptrtoint ptr %pbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %pbuf.i.i, align 8
  %list.i.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i.i, i32 0, i32 7
  %74 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %list.i.i, ptr %list.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i.i, i32 0, i32 7, i32 1
  %75 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %list.i.i, ptr %prev.i.i.i, align 4
  %cmdcode.i.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i.i, i32 0, i32 1
  %76 = ptrtoint ptr %cmdcode.i.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 57, ptr %cmdcode.i.i, align 4
  %parmbuf.i.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i.i, i32 0, i32 3
  %77 = ptrtoint ptr %parmbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call7.i.i18.i.i, ptr %parmbuf.i.i, align 8
  %cmdsz.i.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i.i, i32 0, i32 4
  %78 = ptrtoint ptr %cmdsz.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 12, ptr %cmdsz.i.i, align 4
  %rsp.i.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i.i, i32 0, i32 5
  %79 = ptrtoint ptr %rsp.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %rsp.i.i, align 8
  %rspsz.i.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i.i, i32 0, i32 6
  %80 = ptrtoint ptr %rspsz.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %rspsz.i.i, align 4
  %call5.i.i = call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv.i.i, ptr noundef nonnull %call7.i.i.i.i) #7
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end4.i.i, %if.then3.i.i, %if.else.i.if.end13.i_crit_edge, %if.then7.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  %pbuf17 = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %pbuf, i32 0, i32 2
  %81 = ptrtoint ptr %pbuf17 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pbuf17, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i) #7
  %tobool.not.i46 = icmp eq ptr %82, null
  %83 = call ptr @memset(ptr %buf.i, i32 255, i32 16)
  br i1 %tobool.not.i46, label %if.then.i48, label %sw.bb16.c2h_evt_hdl.exit_crit_edge

sw.bb16.c2h_evt_hdl.exit_crit_edge:               ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  br label %c2h_evt_hdl.exit

if.then.i48:                                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  %call.i47 = call i32 @c2h_evt_read(ptr noundef %padapter, ptr noundef nonnull %buf.i) #7
  br label %c2h_evt_hdl.exit

c2h_evt_hdl.exit:                                 ; preds = %if.then.i48, %sw.bb16.c2h_evt_hdl.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %c2h_evt_hdl.exit, %if.end13.i, %if.end.i45.sw.epilog_crit_edge, %sw.bb15.sw.epilog_crit_edge, %sw.bb13, %sw.bb10, %sw.bb7, %sw.bb4, %sw.bb3, %sw.bb2, %dynamic_chk_wk_hdl.exit, %if.end.sw.epilog_crit_edge
  %pbuf18 = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %pbuf, i32 0, i32 2
  %84 = ptrtoint ptr %pbuf18 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pbuf18, align 4
  %tobool19.not = icmp eq ptr %85, null
  br i1 %tobool19.not, label %sw.epilog.cleanup_crit_edge, label %land.lhs.true

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %sw.epilog
  %type_size20 = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %pbuf, i32 0, i32 1
  %86 = ptrtoint ptr %type_size20 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %type_size20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp = icmp sgt i32 %87, 0
  br i1 %cmp, label %if.then22, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %85) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %land.lhs.true.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 4, %entry.cleanup_crit_edge ], [ 0, %if.then22 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_ps_processor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @p2p_ps_wk_hdl(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @p2p_protocol_wk_hdl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_survey_cmd_callback(ptr noundef %padapter, ptr noundef %pcmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %res = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 2
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %res, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cond = icmp eq i8 %1, 0
  br i1 %cond, label %entry.if.end8_crit_edge, label %if.end8.sink.split

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end8.sink.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %scan_to_timer7 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %call.i12 = tail call i32 @mod_timer(ptr noundef %scan_to_timer7, i32 noundef %2) #7
  br label %if.end8

if.end8:                                          ; preds = %if.end8.sink.split, %entry.if.end8_crit_edge
  %cmdcode.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 1
  %3 = ptrtoint ptr %cmdcode.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %cmdcode.i, align 4
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.19)
  switch i16 %4, label %if.then.i [
    i16 14, label %if.end8.if.end.i_crit_edge
    i16 16, label %if.end8.if.end.i_crit_edge13
  ]

if.end8.if.end.i_crit_edge13:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end8.if.end.i_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %parmbuf.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 3
  %6 = ptrtoint ptr %parmbuf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parmbuf.i, align 4
  tail call void @kfree(ptr noundef %7) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end8.if.end.i_crit_edge, %if.end8.if.end.i_crit_edge13
  %rsp.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 5
  %8 = ptrtoint ptr %rsp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rsp.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i.rtw_free_cmd_obj.exit_crit_edge, label %if.then6.i

if.end.i.rtw_free_cmd_obj.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_free_cmd_obj.exit

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %9) #7
  br label %rtw_free_cmd_obj.exit

rtw_free_cmd_obj.exit:                            ; preds = %if.then9.i, %if.then6.i.rtw_free_cmd_obj.exit_crit_edge, %if.end.i.rtw_free_cmd_obj.exit_crit_edge
  tail call void @kfree(ptr noundef %pcmd) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_disassoc_cmd_callback(ptr noundef %padapter, ptr noundef %pcmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %res = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 2
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %res, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mlmepriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %mlmepriv) #7
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_state.i, align 4
  %or.i = or i32 %3, 1
  store i32 %or.i, ptr %fw_state.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %mlmepriv) #7
  br label %cleanup

if.else:                                          ; preds = %entry
  tail call void @nat25_db_cleanup(ptr noundef %padapter) #7
  %cmdcode.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 1
  %4 = ptrtoint ptr %cmdcode.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cmdcode.i, align 4
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.20)
  switch i16 %5, label %if.then.i [
    i16 14, label %if.else.if.end.i_crit_edge
    i16 16, label %if.else.if.end.i_crit_edge7
  ]

if.else.if.end.i_crit_edge7:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %parmbuf.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 3
  %7 = ptrtoint ptr %parmbuf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parmbuf.i, align 4
  tail call void @kfree(ptr noundef %8) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.else.if.end.i_crit_edge, %if.else.if.end.i_crit_edge7
  %rsp.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 5
  %9 = ptrtoint ptr %rsp.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rsp.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i.rtw_free_cmd_obj.exit_crit_edge, label %if.then6.i

if.end.i.rtw_free_cmd_obj.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_free_cmd_obj.exit

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %10) #7
  br label %rtw_free_cmd_obj.exit

rtw_free_cmd_obj.exit:                            ; preds = %if.then9.i, %if.then6.i.rtw_free_cmd_obj.exit_crit_edge, %if.end.i.rtw_free_cmd_obj.exit_crit_edge
  tail call void @kfree(ptr noundef %pcmd) #7
  br label %cleanup

cleanup:                                          ; preds = %rtw_free_cmd_obj.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nat25_db_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_joinbss_cmd_callback(ptr noundef %padapter, ptr noundef %pcmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %res = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 2
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %res, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cond = icmp eq i8 %1, 0
  br i1 %cond, label %entry.if.end8_crit_edge, label %if.end8.sink.split

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end8.sink.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %assoc_timer7 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %call.i12 = tail call i32 @mod_timer(ptr noundef %assoc_timer7, i32 noundef %2) #7
  br label %if.end8

if.end8:                                          ; preds = %if.end8.sink.split, %entry.if.end8_crit_edge
  %cmdcode.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 1
  %3 = ptrtoint ptr %cmdcode.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %cmdcode.i, align 4
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.21)
  switch i16 %4, label %if.then.i [
    i16 14, label %if.end8.if.end.i_crit_edge
    i16 16, label %if.end8.if.end.i_crit_edge13
  ]

if.end8.if.end.i_crit_edge13:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end8.if.end.i_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %parmbuf.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 3
  %6 = ptrtoint ptr %parmbuf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parmbuf.i, align 4
  tail call void @kfree(ptr noundef %7) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end8.if.end.i_crit_edge, %if.end8.if.end.i_crit_edge13
  %rsp.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 5
  %8 = ptrtoint ptr %rsp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rsp.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i.rtw_free_cmd_obj.exit_crit_edge, label %if.then6.i

if.end.i.rtw_free_cmd_obj.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_free_cmd_obj.exit

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %9) #7
  br label %rtw_free_cmd_obj.exit

rtw_free_cmd_obj.exit:                            ; preds = %if.then9.i, %if.then6.i.rtw_free_cmd_obj.exit_crit_edge, %if.end.i.rtw_free_cmd_obj.exit_crit_edge
  tail call void @kfree(ptr noundef %pcmd) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_createbss_cmd_callback(ptr noundef %padapter, ptr noundef %pcmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 3
  %0 = ptrtoint ptr %parmbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parmbuf, align 4
  %res = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 2
  %2 = ptrtoint ptr %res to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %res, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %assoc_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %call.i = tail call i32 @mod_timer(ptr noundef %assoc_timer, i32 noundef %4) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %assoc_timer2 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 18
  %call.i66 = tail call i32 @del_timer_sync(ptr noundef %assoc_timer2) #7
  tail call void @_raw_spin_lock_bh(ptr noundef %mlmepriv) #7
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_state.i, align 4
  %7 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %MacAddress = getelementptr inbounds %struct.wlan_bssid_ex, ptr %1, i32 0, i32 1
  %call4 = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %MacAddress) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.then6, label %if.then3.if.end14_crit_edge

if.then3.if.end14_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then6:                                         ; preds = %if.then3
  %call10 = tail call ptr @rtw_alloc_stainfo(ptr noundef %stapriv, ptr noundef %MacAddress) #7
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.then6.createbss_cmd_fail_crit_edge, label %if.then6.if.end14_crit_edge

if.then6.if.end14_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then6.createbss_cmd_fail_crit_edge:            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %createbss_cmd_fail

if.end14:                                         ; preds = %if.then6.if.end14_crit_edge, %if.then3.if.end14_crit_edge
  tail call void @rtw_indicate_connect(ptr noundef %padapter) #7
  br label %createbss_cmd_fail

if.else:                                          ; preds = %if.end
  %call15 = tail call ptr @_rtw_alloc_network(ptr noundef %mlmepriv) #7
  %scanned_queue = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 9
  %lock16 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 9, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock16) #7
  %tobool17.not = icmp eq ptr %call15, null
  br i1 %tobool17.not, label %if.then18, label %if.else26

if.then18:                                        ; preds = %if.else
  %call20 = tail call ptr @rtw_get_oldest_wlan_network(ptr noundef %scanned_queue) #7
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock16) #7
  br label %createbss_cmd_fail

if.end25:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %last_scanned = getelementptr inbounds %struct.wlan_network, ptr %call20, i32 0, i32 3
  %9 = ptrtoint ptr %last_scanned to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %last_scanned, align 4
  br label %if.end28

if.else26:                                        ; preds = %if.else
  %prev.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 9, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call15, ptr noundef %11, ptr noundef %scanned_queue) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.else26.if.end28_crit_edge

if.else26.if.end28_crit_edge:                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.end.i.i:                                       ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call15, ptr %prev.i, align 4
  %13 = ptrtoint ptr %call15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %scanned_queue, ptr %call15, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call15, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call15, ptr %11, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.end.i.i, %if.else26.if.end28_crit_edge, %if.end25
  %pwlan.0 = phi ptr [ %call20, %if.end25 ], [ %call15, %if.else26.if.end28_crit_edge ], [ %call15, %if.end.i.i ]
  %IELength.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %1, i32 0, i32 11
  %16 = ptrtoint ptr %IELength.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %IELength.i, align 1
  %add.i = add i32 %17, 120
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %add.i, ptr %1, align 1
  %network = getelementptr inbounds %struct.wlan_network, ptr %pwlan.0, i32 0, i32 6
  %19 = call ptr @memcpy(ptr %network, ptr %1, i32 %add.i)
  %network31 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 15, i32 6
  %20 = load i32, ptr %IELength.i, align 1
  %add.i68 = add i32 %20, 120
  %21 = call ptr @memcpy(ptr %network31, ptr %1, i32 %add.i68)
  %22 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fw_state.i, align 4
  %and.i70 = and i32 %23, -129
  store i32 %and.i70, ptr %fw_state.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock16) #7
  br label %createbss_cmd_fail

createbss_cmd_fail:                               ; preds = %if.end28, %if.then22, %if.end14, %if.then6.createbss_cmd_fail_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %mlmepriv) #7
  %cmdcode.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 1
  %24 = ptrtoint ptr %cmdcode.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %cmdcode.i, align 4
  %26 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.22)
  switch i16 %25, label %if.then.i [
    i16 14, label %createbss_cmd_fail.if.end.i_crit_edge
    i16 16, label %createbss_cmd_fail.if.end.i_crit_edge72
  ]

createbss_cmd_fail.if.end.i_crit_edge72:          ; preds = %createbss_cmd_fail
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

createbss_cmd_fail.if.end.i_crit_edge:            ; preds = %createbss_cmd_fail
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %createbss_cmd_fail
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %parmbuf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parmbuf, align 4
  tail call void @kfree(ptr noundef %28) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %createbss_cmd_fail.if.end.i_crit_edge, %createbss_cmd_fail.if.end.i_crit_edge72
  %rsp.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 5
  %29 = ptrtoint ptr %rsp.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rsp.i, align 4
  %tobool.not.i71 = icmp eq ptr %30, null
  br i1 %tobool.not.i71, label %if.end.i.rtw_free_cmd_obj.exit_crit_edge, label %if.then6.i

if.end.i.rtw_free_cmd_obj.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_free_cmd_obj.exit

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %30) #7
  br label %rtw_free_cmd_obj.exit

rtw_free_cmd_obj.exit:                            ; preds = %if.then9.i, %if.then6.i.rtw_free_cmd_obj.exit_crit_edge, %if.end.i.rtw_free_cmd_obj.exit_crit_edge
  tail call void @kfree(ptr noundef %pcmd) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_alloc_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_indicate_connect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_rtw_alloc_network(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_oldest_wlan_network(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_setstaKey_cmdrsp_callback(ptr noundef %padapter, ptr noundef %pcmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 5
  %0 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsp, align 4
  %call = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %1) #7
  %cmdcode.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 1
  %2 = ptrtoint ptr %cmdcode.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cmdcode.i, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.23)
  switch i16 %3, label %if.then.i [
    i16 14, label %entry.if.end.i_crit_edge
    i16 16, label %entry.if.end.i_crit_edge2
  ]

entry.if.end.i_crit_edge2:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %parmbuf.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 3
  %5 = ptrtoint ptr %parmbuf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parmbuf.i, align 4
  tail call void @kfree(ptr noundef %6) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge, %entry.if.end.i_crit_edge2
  %7 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rsp, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i.rtw_free_cmd_obj.exit_crit_edge, label %if.then6.i

if.end.i.rtw_free_cmd_obj.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_free_cmd_obj.exit

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %8) #7
  br label %rtw_free_cmd_obj.exit

rtw_free_cmd_obj.exit:                            ; preds = %if.then9.i, %if.then6.i.rtw_free_cmd_obj.exit_crit_edge, %if.end.i.rtw_free_cmd_obj.exit_crit_edge
  tail call void @kfree(ptr noundef %pcmd) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_setassocsta_cmdrsp_callback(ptr noundef %padapter, ptr noundef %pcmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %call = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %1) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %conv = zext i8 %5 to i32
  %aid = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 8
  %6 = ptrtoint ptr %aid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %aid, align 8
  %7 = load i8, ptr %3, align 1
  %conv2 = zext i8 %7 to i32
  %mac_id = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 9
  %8 = ptrtoint ptr %mac_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv2, ptr %mac_id, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %mlmepriv) #7
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fw_state.i, align 4
  %11 = and i32 %10, 65664
  call void @__sanitizer_cov_trace_const_cmp4(i32 65664, i32 %11)
  %.not = icmp eq i32 %11, 65664
  br i1 %.not, label %if.then7, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void @_raw_spin_unlock_bh(ptr noundef %mlmepriv) #7
  br label %exit

exit:                                             ; preds = %if.end8, %entry.exit_crit_edge
  %cmdcode.i = getelementptr inbounds %struct.cmd_obj, ptr %pcmd, i32 0, i32 1
  %15 = ptrtoint ptr %cmdcode.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %cmdcode.i, align 4
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.24)
  switch i16 %16, label %if.then.i [
    i16 14, label %exit.if.end.i_crit_edge
    i16 16, label %exit.if.end.i_crit_edge29
  ]

exit.if.end.i_crit_edge29:                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

exit.if.end.i_crit_edge:                          ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %parmbuf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parmbuf, align 4
  tail call void @kfree(ptr noundef %19) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %exit.if.end.i_crit_edge, %exit.if.end.i_crit_edge29
  %20 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rsp, align 4
  %tobool.not.i28 = icmp eq ptr %21, null
  br i1 %tobool.not.i28, label %if.end.i.rtw_free_cmd_obj.exit_crit_edge, label %if.then6.i

if.end.i.rtw_free_cmd_obj.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_free_cmd_obj.exit

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %21) #7
  br label %rtw_free_cmd_obj.exit

rtw_free_cmd_obj.exit:                            ; preds = %if.then9.i, %if.then6.i.rtw_free_cmd_obj.exit_crit_edge, %if.end.i.rtw_free_cmd_obj.exit_crit_edge
  tail call void @kfree(ptr noundef %pcmd) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @c2h_wk_callback(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %work, i32 -5424
  %c2h_wk_alive = getelementptr inbounds %struct.evt_priv, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %c2h_wk_alive to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %c2h_wk_alive, align 4
  %c2h_queue = getelementptr inbounds %struct.evt_priv, ptr %work, i32 0, i32 2
  %1 = ptrtoint ptr %c2h_queue to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %c2h_queue, align 4
  %call41 = tail call zeroext i1 @rtw_cbuf_empty(ptr noundef %2) #7
  br i1 %call41, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %cmdpriv.i = getelementptr i8, ptr %work, i32 -256
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %3 = ptrtoint ptr %c2h_queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %c2h_queue, align 4
  %call5 = tail call ptr @rtw_cbuf_pop(ptr noundef %4) #7
  %cmp.not = icmp eq ptr %call5, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @c2h_evt_clear(ptr noundef %add.ptr3) #7
  br label %if.end13

if.else:                                          ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 16) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.else.cleanup_crit_edge, label %if.then7

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %if.else
  %call8 = tail call i32 @c2h_evt_read(ptr noundef %add.ptr3, ptr noundef nonnull %call7.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8)
  %cmp9.not = icmp eq i32 %call8, 1
  br i1 %cmp9.not, label %if.then7.if.end13_crit_edge, label %if.then10

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end4.i, %if.then3.i, %if.end22.while.cond.backedge_crit_edge, %if.then21, %if.end13.while.cond.backedge_crit_edge, %if.then10
  %6 = ptrtoint ptr %c2h_queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %c2h_queue, align 4
  %call = tail call zeroext i1 @rtw_cbuf_empty(ptr noundef %7) #7
  br i1 %call, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end13:                                         ; preds = %if.then7.if.end13_crit_edge, %if.then
  %c2h_evt.0 = phi ptr [ %call5, %if.then ], [ %call7.i, %if.then7.if.end13_crit_edge ]
  %cmp14 = icmp eq ptr %c2h_evt.0, %work
  br i1 %cmp14, label %if.end13.while.cond.backedge_crit_edge, label %if.end16

if.end13.while.cond.backedge_crit_edge:           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

if.end16:                                         ; preds = %if.end13
  %8 = ptrtoint ptr %c2h_evt.0 to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %c2h_evt.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %9 = icmp eq i8 %bf.load, 0
  br i1 %9, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %c2h_evt.0) #7
  br label %while.cond.backedge

if.end22:                                         ; preds = %if.end16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 2848, i32 noundef 32) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end22.while.cond.backedge_crit_edge, label %if.end.i

if.end22.while.cond.backedge_crit_edge:           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

if.end.i:                                         ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i20.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 2848, i32 noundef 12) #10
  %tobool2.not.i = icmp eq ptr %call7.i.i20.i, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %while.cond.backedge

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %call7.i.i20.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 11, ptr %call7.i.i20.i, align 8
  %type_size.i = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call7.i.i20.i, i32 0, i32 1
  %13 = ptrtoint ptr %type_size.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 16, ptr %type_size.i, align 4
  %pbuf.i = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call7.i.i20.i, i32 0, i32 2
  %14 = ptrtoint ptr %pbuf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %c2h_evt.0, ptr %pbuf.i, align 8
  %list.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i, i32 0, i32 7
  %15 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %list.i, ptr %list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list.i, ptr %prev.i.i, align 4
  %cmdcode.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %cmdcode.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 57, ptr %cmdcode.i, align 4
  %parmbuf.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %parmbuf.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i20.i, ptr %parmbuf.i, align 8
  %cmdsz.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %cmdsz.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 12, ptr %cmdsz.i, align 4
  %rsp.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i, i32 0, i32 5
  %20 = ptrtoint ptr %rsp.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %rsp.i, align 8
  %rspsz.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i, i32 0, i32 6
  %21 = ptrtoint ptr %rspsz.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %rspsz.i, align 4
  %call6.i = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv.i, ptr noundef nonnull %call7.i.i.i) #7
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  %22 = ptrtoint ptr %c2h_wk_alive to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %c2h_wk_alive, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.else.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_cbuf_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @c2h_evt_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c2h_evt_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @NULL_hdl(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @join_cmd_hdl(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @createbss_hdl(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @setopmode_hdl(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @sitesurvey_cmd_hdl(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @setauth_hdl(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @setkey_hdl(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @set_stakey_hdl(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @add_ba_hdl(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @set_ch_hdl(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tx_beacon_hdl(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mlme_evt_hdl(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @h2c_msg_hdl(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @led_blink_hdl(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @set_csa_hdl(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tdls_hdl(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_signals(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @LPS_Leave(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @SetHwReg8188EU(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @expire_timeout_chk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @linked_status_chk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8188e_HalDmWatchDog(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_read32(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @LPS_Enter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_bcmc_stainfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @GetHwReg8188EU(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_beacon(ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !18, !19, !21, !23, !25, !26, !27}
!llvm.named.register.sp = !{!28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/r8188eu/core/rtw_cmd.c", i32 256, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @rtw_cmd_thread.__UNIQUE_ID_ddebug346, !1, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/r8188eu/core/rtw_cmd.c", i32 577, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @rtw_joinbss_cmd.__UNIQUE_ID_ddebug347, !7, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!10 = !{ptr @_rtw_init_cmd_priv.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/staging/r8188eu/core/rtw_cmd.c", i32 28, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @init_completion.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../include/linux/completion.h", i32 87, i32 2}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @_rtw_init_evt_priv.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/staging/r8188eu/core/rtw_cmd.c", i32 70, i32 2}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @wlancmds, !20, !"wlancmds", i1 false, i1 false}
!20 = !{!"../drivers/staging/r8188eu/core/../include/rtw_mlme_ext.h", i32 682, i32 23}
!21 = !{ptr @rtw_cmd_callback, !22, !"rtw_cmd_callback", i1 false, i1 false}
!22 = !{!"../drivers/staging/r8188eu/core/../include/rtw_cmd.h", i32 878, i32 29}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/staging/r8188eu/core/rtw_cmd.c", i32 955, i32 3}
!25 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @rtl8188e_sreset_xmit_status_check._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @rtl8188e_sreset_xmit_status_check._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{!"sp"}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i8 0, i8 2}
!39 = !{i64 2148824499, i64 2148824504, i64 2148824517, i64 2148824561, i64 2148824595, i64 2148824616}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{!"auto-init"}
