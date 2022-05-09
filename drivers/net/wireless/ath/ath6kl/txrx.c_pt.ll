; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath6kl/txrx.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath6kl/txrx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.5 }
%union.anon.5 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.85 }
%struct.atomic_t = type { i32 }
%union.anon.85 = type { i32 }
%struct.cpumask = type { [1 x i32] }
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
%struct.ath6kl = type <{ ptr, ptr, i32, i32, %struct.ath6kl_bmi, ptr, ptr, ptr, [9 x i32], i32, ptr, i32, ptr, %struct.list_head, %struct.spinlock, i8, [3 x i8], i32, i8, i8, [2 x i8], %struct.spinlock, %struct.semaphore, i8, [3 x i8], %struct.ath6kl_version, i32, i8, [15 x %struct.ath6kl_node_mapping], i8, i8, i8, i8, [3 x i8], ptr, i32, [4 x i32], [4 x i8], [4 x i8], i8, [9 x i8], [2 x i8], i32, %struct.ath6kl_htc_credit_info, i32, i32, i8, [3 x i8], [10 x %struct.ath6kl_sta], i8, [3 x i8], %struct.ath6kl_req_key, %struct.sk_buff_head, i32, i16, [2 x i8], %struct.spinlock, i8, %struct.wmi_ap_mode_stat, [3 x i8], %struct.list_head, i8, [3 x i8], i32, [6 x i8], [2 x i8], %struct.anon.131, %struct.ath6kl_hw, i16, i16, i16, [2 x i8], %struct.wait_queue_head, %struct.ath6kl_mbox_info, [198 x %struct.ath6kl_cookie], i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, [1 x i32], ptr, ptr, i8, i8, [2 x i8], %struct.ath6kl_fw_recovery, %struct.anon.132 }>
%struct.ath6kl_bmi = type { i32, i8, ptr, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ath6kl_version = type { i32, i32, i32 }
%struct.ath6kl_node_mapping = type { [6 x i8], i8, i8 }
%struct.ath6kl_htc_credit_info = type { i32, i32, %struct.list_head }
%struct.ath6kl_sta = type { i16, [6 x i8], i8, i8, i8, i8, [256 x i8], %struct.sk_buff_head, %struct.spinlock, %struct.list_head, i32, i8, %struct.sk_buff_head, ptr }
%struct.ath6kl_req_key = type { i8, i8, i32, [32 x i8], i8 }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.wmi_ap_mode_stat = type { i32, [11 x %struct.wmi_per_sta_stat] }
%struct.wmi_per_sta_stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.anon.131 = type { ptr, i32 }
%struct.ath6kl_hw = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, %struct.ath6kl_hw_fw, ptr, ptr }
%struct.ath6kl_hw_fw = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ath6kl_mbox_info = type { i32, i32, i32, i32, i32, i32 }
%struct.ath6kl_cookie = type { ptr, i32, %struct.htc_packet, ptr }
%struct.htc_packet = type { %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, %union.anon.128, ptr, ptr, ptr }
%union.anon.128 = type { %struct.htc_tx_packet_info }
%struct.htc_tx_packet_info = type { i16, i32, i8, i32 }
%struct.ath6kl_fw_recovery = type { %struct.work_struct, i32, i32, %struct.timer_list, i32, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.132 = type { %struct.sk_buff_head, %struct.completion, i8, i32, i32, i32, i32, %struct.anon.133, ptr, i32, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.133 = type { i32 }
%struct.htc_target = type { [9 x %struct.htc_endpoint], %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], %struct.anon.130 }
%struct.htc_endpoint = type { i32, i16, %struct.list_head, %struct.list_head, %struct.htc_endpoint_credit_dist, %struct.htc_ep_callbacks, i32, i32, i32, i32, ptr, i8, i32, %struct.htc_endpoint_stats, i16, %struct.anon.129 }
%struct.htc_endpoint_credit_dist = type { %struct.list_head, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.htc_ep_callbacks = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.htc_endpoint_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.129 = type { i8, i8, %struct.list_head, i8 }
%struct.anon.130 = type { ptr, [256 x i8], i32, i8, [9 x %struct.htc_pipe_txcredit_alloc] }
%struct.htc_pipe_txcredit_alloc = type { i16, i8 }
%struct.ath6kl_device = type { %struct.spinlock, %struct.ath6kl_irq_proc_registers, %struct.ath6kl_irq_enable_reg, ptr, ptr }
%struct.ath6kl_irq_proc_registers = type { i8, i8, i8, i8, i8, i8, i8, i8, [2 x i32], [2 x i32] }
%struct.ath6kl_irq_enable_reg = type { i8, i8, i8, i8 }
%struct.ath6kl_htc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.wmi_tx_meta_v2 = type { i8, i8, i8 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.106, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.anon.114 = type { i16, i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ath6kl_vif = type { %struct.list_head, %struct.wireless_dev, ptr, ptr, %struct.spinlock, i8, i32, i32, [32 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i8], [6 x i8], i16, i16, [4 x %struct.ath6kl_wep_key], [4 x %struct.ath6kl_key], ptr, [6 x %struct.ath6kl_htcap], %struct.timer_list, %struct.timer_list, ptr, i32, i32, i32, i32, i32, i8, i16, i16, i16, i32, i16, i8, %struct.target_stats, %struct.wmi_connect_cmd, i16, %struct.list_head }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.104, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.104 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.105 }
%union.anon.105 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.ath6kl_wep_key = type { i8, i8, [64 x i8] }
%struct.ath6kl_key = type { [32 x i8], i8, [8 x i8], i8, i32 }
%struct.ath6kl_htcap = type { i8, i8, i16 }
%struct.target_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, [4 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32 }
%struct.wmi_connect_cmd = type <{ i8, i8, i8, i8, i8, i8, i8, i8, [32 x i8], i16, [6 x i8], i32, i8 }>
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.wmi_data_hdr = type { i8, i8, i16, i16 }
%struct.wmi_cmd_hdr = type { i16, i16, i16 }
%struct.ath6kl_mgmt_buff = type { %struct.list_head, i32, i32, i32, i8, i32, [0 x i8] }
%struct.wmi_rx_meta_v2 = type <{ i16, i8 }>
%struct.aggr_info_conn = type { i8, i8, %struct.timer_list, ptr, [8 x %struct.rxtid], [8 x %struct.rxtid_stats], ptr }
%struct.rxtid = type { i8, i8, i16, i16, i32, ptr, %struct.sk_buff_head, %struct.spinlock }
%struct.rxtid_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.skb_hold_q = type { ptr, i8, i16 }
%struct.aggr_info = type { ptr, %struct.sk_buff_head }

@ath6kl_control_tx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/wireless/ath/ath6kl/txrx.c\00", [57 x i8] zeroinitializer }, align 32
@ath6kl_control_tx.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: skb=0x%p, len=0x%x eid =%d\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.ath6kl_control_tx = private unnamed_addr constant [18 x i8] c"ath6kl_control_tx\00", align 1
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"wmi ctrl ep full, dropping pkt : 0x%p, len:%d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: skb=0x%p, data=0x%p, len=0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.ath6kl_data_tx = private unnamed_addr constant [15 x i8] c"ath6kl_data_tx\00", align 1
@ath6kl_data_tx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ath6kl_wmi_dix_2_dot3 failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to add wmi data header:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"eid %d is not mapped!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tx \00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wmi ctrl ep is full\0A\00", [43 x i8] zeroinitializer }, align 32
@ath6kl_tx_complete.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ath6kl_tx_complete.__already_done.10 = internal unnamed_addr global i1 false, section ".data.once", align 1
@ath6kl_tx_complete.__already_done.11 = internal unnamed_addr global i1 false, section ".data.once", align 1
@ath6kl_tx_complete.__already_done.12 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tx complete error: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: skb=0x%p data=0x%p len=0x%x eid=%d %s\0A\00", [53 x i8] zeroinitializer }, align 32
@__func__.ath6kl_tx_complete = private unnamed_addr constant [19 x i8] c"ath6kl_tx_complete\00", align 1
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"error!\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"OK\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: providing htc with %d buffers at eid=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@__func__.ath6kl_rx_refill = private unnamed_addr constant [17 x i8] c"ath6kl_rx_refill\00", align 1
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: eid=%d, len:%d\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.ath6kl_alloc_amsdu_rxbuf = private unnamed_addr constant [25 x i8] c"ath6kl_alloc_amsdu_rxbuf\00", align 1
@.str.19 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s: ar=0x%p eid=%d, skb=0x%p, data=0x%p, len=0x%x status:%d\00", [36 x i8] zeroinitializer }, align 32
@__func__.ath6kl_rx = private unnamed_addr constant [10 x i8] c"ath6kl_rx\00", align 1
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rx \00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"frame len is too short or too long\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: win_sz %d, tid %d\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.aggr_recv_addba_req_evt = private unnamed_addr constant [24 x i8] c"aggr_recv_addba_req_evt\00", align 1
@aggr_conn_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"(&aggr_conn->timer)\00", [44 x i8] zeroinitializer }, align 32
@aggr_conn_init.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&rxtid->lock\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to alloc memory for aggr_node\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"failed to alloc memory for connection specific aggr info\0A\00", [38 x i8] zeroinitializer }, align 32
@__tracepoint_ath6kl_wmi_cmd = external dso_local global %struct.tracepoint, align 4
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/wireless/ath/ath6kl/trace.h\00", [56 x i8] zeroinitializer }, align 32
@trace_ath6kl_wmi_cmd.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.32 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"802.3 AMSDU frame bound check failed. len %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no buffer available\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dot3_2_dix error\0A\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"aggr timeout (st %d end %d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"netbuf allocation failed\0A\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 3, i64 1, i64 2]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 3, i64 1, i64 2]
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 295, i32 6 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 309, i32 6 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 318, i32 14 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 374, i32 6 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 409, i32 15 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 433, i32 16 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 461, i32 14 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 504, i32 50 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 602, i32 14 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 768, i32 17 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 771, i32 8 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 773, i32 13 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 778, i32 13 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 892, i32 6 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 956, i32 33 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 1323, i32 6 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 1335, i32 50 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 1392, i32 15 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 1726, i32 34 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 1754, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 1764, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 1774, i32 14 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 1780, i32 14 }
@___asan_gen_.118 = private unnamed_addr constant [43 x i8] c"../drivers/net/wireless/ath/ath6kl/trace.h\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 39, i32 1 }
@___asan_gen_.121 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 108, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1984, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 1008, i32 15 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 1016, i32 15 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 1023, i32 15 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 1639, i32 7 }
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.142 = private constant [42 x i8] c"../drivers/net/wireless/ath/ath6kl/txrx.c\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 852, i32 15 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @aggr_conn_init.__key, ptr @.str.23, ptr @aggr_conn_init.__key.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @skb_queue_head_init.__key, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aggr_conn_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aggr_conn_init.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_control_tx(ptr noundef %devt, ptr noundef %skb, i32 noundef %eid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  tail call fastcc void @trace_ath6kl_wmi_cmd(ptr noundef %1, i32 noundef %3)
  %state = getelementptr inbounds %struct.ath6kl, ptr %devt, i32 0, i32 2
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp = icmp eq i32 %5, 6
  br i1 %cmp, label %land.rhs, label %if.end37

land.rhs:                                         ; preds = %entry
  %.b161 = load i1, ptr @ath6kl_control_tx.__already_done, align 1
  br i1 %.b161, label %land.rhs.if.then36_crit_edge, label %if.then, !prof !106

land.rhs.if.then36_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ath6kl_control_tx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 295, i32 noundef 9, ptr noundef null) #10
  br label %if.then36

if.then36:                                        ; preds = %if.then, %land.rhs.if.then36_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #10
  br label %cleanup

if.end37:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %eid)
  %cmp39 = icmp eq i32 %eid, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %eid)
  %cmp40 = icmp sgt i32 %eid, 8
  %spec.select = or i1 %cmp39, %cmp40
  br i1 %spec.select, label %land.rhs47, label %if.end95

land.rhs47:                                       ; preds = %if.end37
  %.b159160 = load i1, ptr @ath6kl_control_tx.__already_done.1, align 1
  br i1 %.b159160, label %land.rhs47.fail_ctrl_tx_crit_edge, label %if.then58, !prof !106

land.rhs47.fail_ctrl_tx_crit_edge:                ; preds = %land.rhs47
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_ctrl_tx

if.then58:                                        ; preds = %land.rhs47
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ath6kl_control_tx.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 301, i32 noundef 9, ptr noundef null) #10
  br label %fail_ctrl_tx

if.end95:                                         ; preds = %if.end37
  %lock = getelementptr inbounds %struct.ath6kl, ptr %devt, i32 0, i32 21
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 4, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ath6kl_control_tx, ptr noundef %skb, i32 noundef %7, i32 noundef %eid) #10
  %flag = getelementptr inbounds %struct.ath6kl, ptr %devt, i32 0, i32 75
  %8 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flag, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool97.not = icmp eq i32 %10, 0
  br i1 %tobool97.not, label %if.end95.if.end102_crit_edge, label %land.lhs.true

if.end95.if.end102_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

land.lhs.true:                                    ; preds = %if.end95
  %ctrl_ep = getelementptr inbounds %struct.ath6kl, ptr %devt, i32 0, i32 42
  %11 = ptrtoint ptr %ctrl_ep to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ctrl_ep, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %eid)
  %cmp98 = icmp eq i32 %12, %eid
  br i1 %cmp98, label %if.end102.thread, label %land.lhs.true.if.end102_crit_edge

land.lhs.true.if.end102_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

if.end102.thread:                                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.3, ptr noundef %skb, i32 noundef %14) #10
  br label %if.then104

if.end102:                                        ; preds = %land.lhs.true.if.end102_crit_edge, %if.end95.if.end102_crit_edge
  %call101 = tail call ptr @ath6kl_alloc_cookie(ptr noundef %devt) #10
  %cmp103 = icmp eq ptr %call101, null
  br i1 %cmp103, label %if.end102.if.then104_crit_edge, label %if.end106

if.end102.if.then104_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then104

if.then104:                                       ; preds = %if.end102.if.then104_crit_edge, %if.end102.thread
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %fail_ctrl_tx

if.end106:                                        ; preds = %if.end102
  %arrayidx = getelementptr %struct.ath6kl, ptr %devt, i32 0, i32 8, i32 %eid
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %arrayidx, align 4
  %ctrl_ep107 = getelementptr inbounds %struct.ath6kl, ptr %devt, i32 0, i32 42
  %17 = ptrtoint ptr %ctrl_ep107 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ctrl_ep107, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %eid)
  %cmp108.not = icmp eq i32 %18, %eid
  br i1 %cmp108.not, label %if.end106.if.end111_crit_edge, label %if.then109

if.end106.if.end111_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

if.then109:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  %total_tx_data_pend = getelementptr inbounds %struct.ath6kl, ptr %devt, i32 0, i32 9
  %19 = ptrtoint ptr %total_tx_data_pend to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %total_tx_data_pend, align 4
  %inc110 = add i32 %20, 1
  store i32 %inc110, ptr %total_tx_data_pend, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.then109, %if.end106.if.end111_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %21 = ptrtoint ptr %call101 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %skb, ptr %call101, align 4
  %map_no = getelementptr inbounds %struct.ath6kl_cookie, ptr %call101, i32 0, i32 1
  %22 = ptrtoint ptr %map_no to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %map_no, align 4
  %htc_pkt = getelementptr inbounds %struct.ath6kl_cookie, ptr %call101, i32 0, i32 2
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  %pkt_cntxt.i = getelementptr inbounds %struct.ath6kl_cookie, ptr %call101, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %pkt_cntxt.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call101, ptr %pkt_cntxt.i, align 4
  %buf1.i = getelementptr inbounds %struct.ath6kl_cookie, ptr %call101, i32 0, i32 2, i32 3
  %28 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %24, ptr %buf1.i, align 4
  %act_len.i = getelementptr inbounds %struct.ath6kl_cookie, ptr %call101, i32 0, i32 2, i32 5
  %29 = ptrtoint ptr %act_len.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %26, ptr %act_len.i, align 4
  %endpoint.i = getelementptr inbounds %struct.ath6kl_cookie, ptr %call101, i32 0, i32 2, i32 6
  %30 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %eid, ptr %endpoint.i, align 4
  %info.i = getelementptr inbounds %struct.ath6kl_cookie, ptr %call101, i32 0, i32 2, i32 8
  %31 = ptrtoint ptr %info.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 10, ptr %info.i, align 4
  %skb117 = getelementptr inbounds %struct.ath6kl_cookie, ptr %call101, i32 0, i32 2, i32 11
  %32 = ptrtoint ptr %skb117 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %skb, ptr %skb117, align 4
  %htc_target = getelementptr inbounds %struct.ath6kl, ptr %devt, i32 0, i32 10
  %33 = ptrtoint ptr %htc_target to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %htc_target, align 4
  %dev.i = getelementptr inbounds %struct.htc_target, ptr %34, i32 0, i32 10
  %35 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i, align 4
  %ar.i = getelementptr inbounds %struct.ath6kl_device, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ar.i, align 4
  %htc_ops.i = getelementptr inbounds %struct.ath6kl, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %htc_ops.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %htc_ops.i, align 4
  %tx.i = getelementptr inbounds %struct.ath6kl_htc_ops, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tx.i, align 4
  %call.i = tail call i32 %42(ptr noundef %34, ptr noundef %htc_pkt) #10
  br label %cleanup

fail_ctrl_tx:                                     ; preds = %if.then104, %if.then58, %land.rhs47.fail_ctrl_tx_crit_edge
  %status.0 = phi i32 [ -12, %if.then104 ], [ -22, %if.then58 ], [ -22, %land.rhs47.fail_ctrl_tx_crit_edge ]
  tail call void @consume_skb(ptr noundef %skb) #10
  br label %cleanup

cleanup:                                          ; preds = %fail_ctrl_tx, %if.end111, %if.then36
  %retval.0 = phi i32 [ -13, %if.then36 ], [ %status.0, %fail_ctrl_tx ], [ 0, %if.end111 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ath6kl_wmi_cmd(ptr noundef %buf, i32 noundef %buf_len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath6kl_wmi_cmd, i32 0, i32 1), ptr blockaddress(@trace_ath6kl_wmi_cmd, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !107

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !96) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !106

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !96) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !108
  %call42 = tail call i32 @__traceiter_ath6kl_wmi_cmd(ptr noundef null, ptr noundef %buf, i32 noundef %buf_len) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !109
  %13 = tail call i32 @llvm.read_register.i32(metadata !96) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !96) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !106

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !96) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !110
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath6kl_wmi_cmd, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath6kl_wmi_cmd, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ath6kl_wmi_cmd.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ath6kl_wmi_cmd.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 60, ptr noundef nonnull @.str.29) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !111
  %31 = tail call i32 @llvm.read_register.i32(metadata !96) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath6kl_alloc_cookie(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_data_tx(ptr noundef %skb, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %map_no = alloca i32, align 4
  %ac = alloca i8, align 1
  %meta_v2 = alloca %struct.wmi_tx_meta_v2, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ar.i = getelementptr i8, ptr %dev, i32 3280
  %0 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar.i, align 8
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %map_no) #10
  %2 = ptrtoint ptr %map_no to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %map_no, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ac) #10
  %3 = ptrtoint ptr %ac to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 99, ptr %ac, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %meta_v2) #10
  %4 = ptrtoint ptr %meta_v2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %meta_v2, align 1, !annotation !112
  %5 = getelementptr inbounds %struct.wmi_tx_meta_v2, ptr %meta_v2, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !112
  %7 = getelementptr inbounds %struct.wmi_tx_meta_v2, ptr %meta_v2, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !112
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %9 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load = load i16, ptr %ip_summed, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 4, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ath6kl_data_tx, ptr noundef %skb, ptr noundef %11, i32 noundef %13) #10
  %flags2 = getelementptr i8, ptr %dev, i32 3332
  %14 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags2, align 4
  %and1.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.fail_tx_crit_edge, label %if.end

entry.fail_tx_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_tx

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.not = icmp eq i32 %17, 1
  br i1 %cmp.not, label %if.end43.critedge, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %.b263 = load i1, ptr @ath6kl_data_tx.__already_done, align 1
  br i1 %.b263, label %land.rhs.fail_tx_crit_edge, label %if.then11, !prof !106

land.rhs.fail_tx_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_tx

if.then11:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ath6kl_data_tx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 381, i32 noundef 9, ptr noundef null) #10
  br label %fail_tx

if.end43.critedge:                                ; preds = %if.end
  %flag = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 75
  %18 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flag, align 4
  %20 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool45.not = icmp eq i32 %20, 0
  br i1 %tobool45.not, label %if.end43.critedge.fail_tx_crit_edge, label %if.end47

if.end43.critedge.fail_tx_crit_edge:              ; preds = %if.end43.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_tx

if.end47:                                         ; preds = %if.end43.critedge
  %nw_type = getelementptr i8, ptr %dev, i32 3380
  %21 = ptrtoint ptr %nw_type to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %nw_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %22)
  %cmp48 = icmp eq i8 %22, 16
  br i1 %cmp48, label %if.then50, label %if.end47.if.end54_crit_edge

if.end47.if.end54_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then50:                                        ; preds = %if.end47
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %25 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ar.i, align 8
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %24, align 4
  %29 = and i32 %28, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i.not.i = icmp eq i32 %29, 0
  br i1 %tobool.i.not.i, label %if.else28.i, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.then50
  %arrayidx.i = getelementptr %struct.ath6kl, ptr %26, i32 0, i32 48, i32 0
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx.i, align 4
  %32 = and i16 %31, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool.not.i = icmp eq i16 %32, 0
  br i1 %tobool.not.i, label %for.cond.i, label %for.body.preheader.i.if.then6.critedge.i_crit_edge

for.body.preheader.i.if.then6.critedge.i_crit_edge: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6.critedge.i

for.cond.i:                                       ; preds = %for.body.preheader.i
  %arrayidx.1.i = getelementptr %struct.ath6kl, ptr %26, i32 0, i32 48, i32 1
  %33 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx.1.i, align 4
  %35 = and i16 %34, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool.not.1.i = icmp eq i16 %35, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.if.then6.critedge.i_crit_edge

for.cond.i.if.then6.critedge.i_crit_edge:         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6.critedge.i

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr %struct.ath6kl, ptr %26, i32 0, i32 48, i32 2
  %36 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx.2.i, align 4
  %38 = and i16 %37, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool.not.2.i = icmp eq i16 %38, 0
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.if.then6.critedge.i_crit_edge

for.cond.1.i.if.then6.critedge.i_crit_edge:       ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6.critedge.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx.3.i = getelementptr %struct.ath6kl, ptr %26, i32 0, i32 48, i32 3
  %39 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx.3.i, align 4
  %41 = and i16 %40, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool.not.3.i = icmp eq i16 %41, 0
  br i1 %tobool.not.3.i, label %for.cond.3.i, label %for.cond.2.i.if.then6.critedge.i_crit_edge

for.cond.2.i.if.then6.critedge.i_crit_edge:       ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6.critedge.i

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %arrayidx.4.i = getelementptr %struct.ath6kl, ptr %26, i32 0, i32 48, i32 4
  %42 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx.4.i, align 4
  %44 = and i16 %43, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool.not.4.i = icmp eq i16 %44, 0
  br i1 %tobool.not.4.i, label %for.cond.4.i, label %for.cond.3.i.if.then6.critedge.i_crit_edge

for.cond.3.i.if.then6.critedge.i_crit_edge:       ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6.critedge.i

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %arrayidx.5.i = getelementptr %struct.ath6kl, ptr %26, i32 0, i32 48, i32 5
  %45 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx.5.i, align 4
  %47 = and i16 %46, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool.not.5.i = icmp eq i16 %47, 0
  br i1 %tobool.not.5.i, label %for.cond.5.i, label %for.cond.4.i.if.then6.critedge.i_crit_edge

for.cond.4.i.if.then6.critedge.i_crit_edge:       ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6.critedge.i

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %arrayidx.6.i = getelementptr %struct.ath6kl, ptr %26, i32 0, i32 48, i32 6
  %48 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx.6.i, align 4
  %50 = and i16 %49, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool.not.6.i = icmp eq i16 %50, 0
  br i1 %tobool.not.6.i, label %for.cond.6.i, label %for.cond.5.i.if.then6.critedge.i_crit_edge

for.cond.5.i.if.then6.critedge.i_crit_edge:       ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6.critedge.i

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %arrayidx.7.i = getelementptr %struct.ath6kl, ptr %26, i32 0, i32 48, i32 7
  %51 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx.7.i, align 4
  %53 = and i16 %52, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool.not.7.i = icmp eq i16 %53, 0
  br i1 %tobool.not.7.i, label %for.cond.7.i, label %for.cond.6.i.if.then6.critedge.i_crit_edge

for.cond.6.i.if.then6.critedge.i_crit_edge:       ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6.critedge.i

for.cond.7.i:                                     ; preds = %for.cond.6.i
  %arrayidx.8.i = getelementptr %struct.ath6kl, ptr %26, i32 0, i32 48, i32 8
  %54 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx.8.i, align 4
  %56 = and i16 %55, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool.not.8.i = icmp eq i16 %56, 0
  br i1 %tobool.not.8.i, label %for.cond.8.i, label %for.cond.7.i.if.then6.critedge.i_crit_edge

for.cond.7.i.if.then6.critedge.i_crit_edge:       ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6.critedge.i

for.cond.8.i:                                     ; preds = %for.cond.7.i
  %arrayidx.9.i = getelementptr %struct.ath6kl, ptr %26, i32 0, i32 48, i32 9
  %57 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx.9.i, align 4
  %59 = and i16 %58, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool.not.9.i = icmp eq i16 %59, 0
  br i1 %tobool.not.9.i, label %for.cond.8.i.if.end54_crit_edge, label %for.cond.8.i.if.then6.critedge.i_crit_edge

for.cond.8.i.if.then6.critedge.i_crit_edge:       ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6.critedge.i

for.cond.8.i.if.end54_crit_edge:                  ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then6.critedge.i:                              ; preds = %for.cond.8.i.if.then6.critedge.i_crit_edge, %for.cond.7.i.if.then6.critedge.i_crit_edge, %for.cond.6.i.if.then6.critedge.i_crit_edge, %for.cond.5.i.if.then6.critedge.i_crit_edge, %for.cond.4.i.if.then6.critedge.i_crit_edge, %for.cond.3.i.if.then6.critedge.i_crit_edge, %for.cond.2.i.if.then6.critedge.i_crit_edge, %for.cond.1.i.if.then6.critedge.i_crit_edge, %for.cond.i.if.then6.critedge.i_crit_edge, %for.body.preheader.i.if.then6.critedge.i_crit_edge
  %60 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %flags2, align 4
  %62 = and i32 %61, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool9.not.i = icmp eq i32 %62, 0
  %mcastpsq_lock.i = getelementptr inbounds %struct.ath6kl, ptr %26, i32 0, i32 56
  tail call void @_raw_spin_lock_bh(ptr noundef %mcastpsq_lock.i) #10
  %mcastpsq.i = getelementptr inbounds %struct.ath6kl, ptr %26, i32 0, i32 52
  %63 = ptrtoint ptr %mcastpsq.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mcastpsq.i, align 4
  %cmp.i.not.i = icmp eq ptr %64, %mcastpsq.i
  br i1 %tobool9.not.i, label %if.then10.i, label %if.else.i

if.then10.i:                                      ; preds = %if.then6.critedge.i
  tail call void @skb_queue_tail(ptr noundef %mcastpsq.i, ptr noundef %skb) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %mcastpsq_lock.i) #10
  br i1 %cmp.i.not.i, label %if.then16.i, label %if.then10.i.cleanup175_crit_edge

if.then10.i.cleanup175_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup175

if.then16.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  %wmi.i = getelementptr inbounds %struct.ath6kl, ptr %26, i32 0, i32 7
  %65 = ptrtoint ptr %wmi.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %wmi.i, align 4
  %fw_vif_idx.i = getelementptr i8, ptr %dev, i32 3328
  %67 = ptrtoint ptr %fw_vif_idx.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %fw_vif_idx.i, align 8
  %call17.i = tail call i32 @ath6kl_wmi_set_pvb_cmd(ptr noundef %66, i8 noundef zeroext %68, i16 noundef zeroext 255, i1 noundef zeroext true) #10
  br label %cleanup175

if.else.i:                                        ; preds = %if.then6.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  %not.cmp.i.not.i = xor i1 %cmp.i.not.i, true
  %spec.select = zext i1 %not.cmp.i.not.i to i32
  br label %if.end54.sink.split

if.else28.i:                                      ; preds = %if.then50
  %call31.i = tail call ptr @ath6kl_find_sta(ptr noundef %add.ptr.i, ptr noundef %24) #10
  %tobool32.not.i = icmp eq ptr %call31.i, null
  br i1 %tobool32.not.i, label %if.then33.i, label %if.end34.i

if.then33.i:                                      ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef %skb) #10
  br label %cleanup175

if.end34.i:                                       ; preds = %if.else28.i
  %69 = ptrtoint ptr %call31.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %call31.i, align 4
  %71 = and i16 %70, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool38.not.i = icmp eq i16 %71, 0
  br i1 %tobool38.not.i, label %if.end34.i.if.end54_crit_edge, label %if.then39.i

if.end34.i.if.end54_crit_edge:                    ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then39.i:                                      ; preds = %if.end34.i
  %72 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ar.i, align 8
  %74 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data, align 4
  %76 = and i16 %70, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %tobool.not.i.i = icmp eq i16 %76, 0
  br i1 %tobool.not.i.i, label %if.else13.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then39.i
  %psq_lock.i.i = getelementptr inbounds %struct.ath6kl_sta, ptr %call31.i, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %psq_lock.i.i) #10
  %apsdq.i.i = getelementptr inbounds %struct.ath6kl_sta, ptr %call31.i, i32 0, i32 12
  %77 = ptrtoint ptr %apsdq.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %apsdq.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %78, %apsdq.i.i
  br i1 %cmp.i.not.i.i, label %if.else.i.i, label %if.then.i.i.if.end10.sink.split.i.i_crit_edge

if.then.i.i.if.end10.sink.split.i.i_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.sink.split.i.i

if.else.i.i:                                      ; preds = %if.then.i.i
  %79 = ptrtoint ptr %call31.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %call31.i, align 4
  %81 = and i16 %80, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %tobool7.not.i.i = icmp eq i16 %81, 0
  br i1 %tobool7.not.i.i, label %if.else.i.i.ath6kl_process_uapsdq.exit.i_crit_edge, label %if.else.i.i.if.end10.sink.split.i.i_crit_edge

if.else.i.i.if.end10.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.sink.split.i.i

if.else.i.i.ath6kl_process_uapsdq.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_process_uapsdq.exit.i

if.end10.sink.split.i.i:                          ; preds = %if.else.i.i.if.end10.sink.split.i.i_crit_edge, %if.then.i.i.if.end10.sink.split.i.i_crit_edge
  %.sink87.i.i = phi i32 [ 1, %if.then.i.i.if.end10.sink.split.i.i_crit_edge ], [ 2, %if.else.i.i.if.end10.sink.split.i.i_crit_edge ]
  br label %ath6kl_process_uapsdq.exit.i

if.else13.i.i:                                    ; preds = %if.then39.i
  %apsd_info.i.i = getelementptr inbounds %struct.ath6kl_sta, ptr %call31.i, i32 0, i32 11
  %82 = ptrtoint ptr %apsd_info.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %apsd_info.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool14.not.i.i = icmp eq i8 %83, 0
  br i1 %tobool14.not.i.i, label %if.else13.i.i.if.then44.i_crit_edge, label %if.end17.i.i

if.else13.i.i.if.then44.i_crit_edge:              ; preds = %if.else13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44.i

if.end17.i.i:                                     ; preds = %if.else13.i.i
  %84 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %flags2, align 4
  %86 = and i32 %85, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool20.not.i.i = icmp eq i32 %86, 0
  br i1 %tobool20.not.i.i, label %if.end17.i.i.if.end35.i.i_crit_edge, label %if.then21.i.i

if.end17.i.i.if.end35.i.i_crit_edge:              ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35.i.i

if.then21.i.i:                                    ; preds = %if.end17.i.i
  %h_proto.i.i = getelementptr inbounds %struct.ethhdr, ptr %75, i32 0, i32 2
  %87 = ptrtoint ptr %h_proto.i.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 2)
  %88 = load i16, ptr %h_proto.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1535, i16 %88)
  %cmp.i84.i = icmp ugt i16 %88, 1535
  br i1 %cmp.i84.i, label %if.then24.i.i, label %if.else25.i.i

if.then24.i.i:                                    ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr %struct.ethhdr, ptr %75, i32 1
  br label %if.end28.i.i

if.else25.i.i:                                    ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %eth_type.i.i = getelementptr %struct.ethhdr, ptr %75, i32 1, i32 1
  %89 = ptrtoint ptr %eth_type.i.i to i32
  call void @__asan_loadN_noabort(i32 %89, i32 2)
  %90 = load i16, ptr %eth_type.i.i, align 1
  %add.ptr27.i.i = getelementptr %struct.ethhdr, ptr %75, i32 1, i32 1, i32 2
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.else25.i.i, %if.then24.i.i
  %ip_hdr.0.i.i = phi ptr [ %add.ptr.i.i, %if.then24.i.i ], [ %add.ptr27.i.i, %if.else25.i.i ]
  %ether_type.0.i.i = phi i16 [ %88, %if.then24.i.i ], [ %90, %if.else25.i.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %ether_type.0.i.i)
  %cmp30.i.i = icmp eq i16 %ether_type.0.i.i, 2048
  br i1 %cmp30.i.i, label %if.then32.i.i, label %if.end28.i.i.if.end35.i.i_crit_edge

if.end28.i.i.if.end35.i.i_crit_edge:              ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35.i.i

if.then32.i.i:                                    ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call33.i.i = tail call zeroext i8 @ath6kl_wmi_determine_user_priority(ptr noundef %ip_hdr.0.i.i, i32 noundef 0) #10
  br label %if.end35.i.i

if.end35.i.i:                                     ; preds = %if.then32.i.i, %if.end28.i.i.if.end35.i.i_crit_edge, %if.end17.i.i.if.end35.i.i_crit_edge
  %up.0.i.i = phi i8 [ %call33.i.i, %if.then32.i.i ], [ 0, %if.end28.i.i.if.end35.i.i_crit_edge ], [ 0, %if.end17.i.i.if.end35.i.i_crit_edge ]
  %call36.i.i = tail call zeroext i8 @ath6kl_wmi_get_traffic_class(i8 noundef zeroext %up.0.i.i) #10
  %91 = ptrtoint ptr %apsd_info.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %apsd_info.i.i, align 4
  %conv38.i.i = zext i8 %92 to i32
  %conv39.i.i = zext i8 %call36.i.i to i32
  %shl.i.i = shl nuw i32 1, %conv39.i.i
  %and40.i.i = and i32 %shl.i.i, %conv38.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i.i)
  %cmp41.i.i = icmp eq i32 %and40.i.i, 0
  br i1 %cmp41.i.i, label %if.end35.i.i.if.then44.i_crit_edge, label %if.end44.i.i

if.end35.i.i.if.then44.i_crit_edge:               ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44.i

if.end44.i.i:                                     ; preds = %if.end35.i.i
  %psq_lock45.i.i = getelementptr inbounds %struct.ath6kl_sta, ptr %call31.i, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %psq_lock45.i.i) #10
  %apsdq46.i.i = getelementptr inbounds %struct.ath6kl_sta, ptr %call31.i, i32 0, i32 12
  %93 = ptrtoint ptr %apsdq46.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %apsdq46.i.i, align 4
  %cmp.i85.not.i.i = icmp eq ptr %94, %apsdq46.i.i
  tail call void @skb_queue_tail(ptr noundef %apsdq46.i.i, ptr noundef %skb) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %psq_lock45.i.i) #10
  br i1 %cmp.i85.not.i.i, label %if.then52.i.i, label %if.end44.i.i.cleanup175_crit_edge

if.end44.i.i.cleanup175_crit_edge:                ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup175

if.then52.i.i:                                    ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %wmi.i.i = getelementptr inbounds %struct.ath6kl, ptr %73, i32 0, i32 7
  %95 = ptrtoint ptr %wmi.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %wmi.i.i, align 4
  %fw_vif_idx.i.i = getelementptr i8, ptr %dev, i32 3328
  %97 = ptrtoint ptr %fw_vif_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %fw_vif_idx.i.i, align 8
  %aid.i.i = getelementptr inbounds %struct.ath6kl_sta, ptr %call31.i, i32 0, i32 2
  %99 = ptrtoint ptr %aid.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %aid.i.i, align 4
  %conv53.i.i = zext i8 %100 to i16
  %call54.i.i = tail call i32 @ath6kl_wmi_set_apsd_bfrd_traf(ptr noundef %96, i8 noundef zeroext %98, i16 noundef zeroext %conv53.i.i, i16 noundef zeroext 1, i32 noundef 0) #10
  br label %cleanup175

ath6kl_process_uapsdq.exit.i:                     ; preds = %if.end10.sink.split.i.i, %if.else.i.i.ath6kl_process_uapsdq.exit.i_crit_edge
  %flags.1 = phi i32 [ 0, %if.else.i.i.ath6kl_process_uapsdq.exit.i_crit_edge ], [ %.sink87.i.i, %if.end10.sink.split.i.i ]
  %or11.i.i = or i32 %flags.1, 4
  br label %if.end54.sink.split

if.then44.i:                                      ; preds = %if.end35.i.i.if.then44.i_crit_edge, %if.else13.i.i.if.then44.i_crit_edge
  %101 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ar.i, align 8
  %103 = ptrtoint ptr %call31.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %call31.i, align 4
  %105 = and i16 %104, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %tobool.not.i86.i = icmp eq i16 %105, 0
  %psq_lock6.i.i = getelementptr inbounds %struct.ath6kl_sta, ptr %call31.i, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %psq_lock6.i.i) #10
  %psq7.i.i = getelementptr inbounds %struct.ath6kl_sta, ptr %call31.i, i32 0, i32 7
  %106 = ptrtoint ptr %psq7.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %psq7.i.i, align 4
  %cmp.i27.not.i.i = icmp eq ptr %107, %psq7.i.i
  br i1 %tobool.not.i86.i, label %if.end5.i.i, label %if.then.i87.i

if.then.i87.i:                                    ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #12
  %not.cmp.i27.not.i.i = xor i1 %cmp.i27.not.i.i, true
  %or.i.i = zext i1 %not.cmp.i27.not.i.i to i32
  br label %if.end54.sink.split

if.end5.i.i:                                      ; preds = %if.then44.i
  tail call void @skb_queue_tail(ptr noundef %psq7.i.i, ptr noundef %skb) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %psq_lock6.i.i) #10
  br i1 %cmp.i27.not.i.i, label %if.then13.i.i, label %if.end5.i.i.cleanup175_crit_edge

if.end5.i.i.cleanup175_crit_edge:                 ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup175

if.then13.i.i:                                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %wmi.i88.i = getelementptr inbounds %struct.ath6kl, ptr %102, i32 0, i32 7
  %108 = ptrtoint ptr %wmi.i88.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %wmi.i88.i, align 4
  %fw_vif_idx.i89.i = getelementptr i8, ptr %dev, i32 3328
  %110 = ptrtoint ptr %fw_vif_idx.i89.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %fw_vif_idx.i89.i, align 8
  %aid.i90.i = getelementptr inbounds %struct.ath6kl_sta, ptr %call31.i, i32 0, i32 2
  %112 = ptrtoint ptr %aid.i90.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %aid.i90.i, align 4
  %conv14.i.i = zext i8 %113 to i16
  %call15.i.i = tail call i32 @ath6kl_wmi_set_pvb_cmd(ptr noundef %109, i8 noundef zeroext %111, i16 noundef zeroext %conv14.i.i, i1 noundef zeroext true) #10
  br label %cleanup175

if.end54.sink.split:                              ; preds = %if.then.i87.i, %ath6kl_process_uapsdq.exit.i, %if.else.i
  %psq_lock.i.i.sink = phi ptr [ %psq_lock.i.i, %ath6kl_process_uapsdq.exit.i ], [ %psq_lock6.i.i, %if.then.i87.i ], [ %mcastpsq_lock.i, %if.else.i ]
  %flags.5.ph = phi i32 [ %or11.i.i, %ath6kl_process_uapsdq.exit.i ], [ %or.i.i, %if.then.i87.i ], [ %spec.select, %if.else.i ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %psq_lock.i.i.sink) #10
  br label %if.end54

if.end54:                                         ; preds = %if.end54.sink.split, %if.end34.i.if.end54_crit_edge, %for.cond.8.i.if.end54_crit_edge, %if.end47.if.end54_crit_edge
  %flags.5 = phi i32 [ 0, %if.end47.if.end54_crit_edge ], [ 0, %if.end34.i.if.end54_crit_edge ], [ 0, %for.cond.8.i.if.end54_crit_edge ], [ %flags.5.ph, %if.end54.sink.split ]
  %114 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %flag, align 4
  %and1.i268 = and i32 %115, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i268)
  %tobool57.not = icmp eq i32 %and1.i268, 0
  br i1 %tobool57.not, label %if.end54.fail_tx_crit_edge, label %if.then58

if.end54.fail_tx_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_tx

if.then58:                                        ; preds = %if.end54
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %116 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %features, align 16
  %and = and i64 %117, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool59.not = icmp ne i64 %and, 0
  %118 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %118)
  %cmp61 = icmp eq i16 %118, 1536
  %or.cond = select i1 %tobool59.not, i1 %cmp61, i1 false
  br i1 %or.cond, label %if.then63, label %if.then58.if.end72_crit_edge

if.then58.if.end72_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.then63:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  %119 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %119, align 8
  %conv65 = trunc i16 %121 to i8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %122 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %network_header.i, align 4
  %conv.i = trunc i16 %123 to i8
  %sub = sub i8 %conv65, %conv.i
  %conv67 = add i8 %sub, 8
  %csum_offset = getelementptr inbounds %struct.anon.114, ptr %119, i32 0, i32 1
  %124 = ptrtoint ptr %csum_offset to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %csum_offset, align 2
  %conv68 = trunc i16 %125 to i8
  %add70 = add i8 %conv67, %conv68
  br label %if.end72

if.end72:                                         ; preds = %if.then63, %if.then58.if.end72_crit_edge
  %csum_start.0 = phi i8 [ %conv67, %if.then63 ], [ 0, %if.then58.if.end72_crit_edge ]
  %csum_dest.0 = phi i8 [ %add70, %if.then63 ], [ 0, %if.then58.if.end72_crit_edge ]
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 21
  %126 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %needed_headroom, align 8
  %conv73 = zext i16 %127 to i32
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %128 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i273 = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i273, label %if.end72.skb_header_cloned.exit.i_crit_edge, label %if.end.i.i275

if.end72.skb_header_cloned.exit.i_crit_edge:      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_header_cloned.exit.i

if.end.i.i275:                                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %129 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %130, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #10
  %131 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile i32, ptr %dataref1.i.i, align 4
  %and.i.i = and i32 %132, 65535
  %shr.i.i = ashr i32 %132, 16
  %sub.i.i = sub nsw i32 %and.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i274 = icmp eq i32 %sub.i.i, 1
  br label %skb_header_cloned.exit.i

skb_header_cloned.exit.i:                         ; preds = %if.end.i.i275, %if.end72.skb_header_cloned.exit.i_crit_edge
  %retval.0.i.i276 = phi i1 [ %cmp.i.not.i274, %if.end.i.i275 ], [ true, %if.end72.skb_header_cloned.exit.i_crit_edge ]
  %133 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %data, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %135 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %134 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %136 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %conv73)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i, %conv73
  %or.cond.i.i = and i1 %retval.0.i.i276, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_header_cloned.exit.i.if.end77_crit_edge, label %skb_cow_head.exit

skb_header_cloned.exit.i.if.end77_crit_edge:      ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

skb_cow_head.exit:                                ; preds = %skb_header_cloned.exit.i
  %137 = tail call i32 @llvm.usub.sat.i32(i32 %conv73, i32 %sub.ptr.sub.i.i.i) #10
  %add.i.i = add nuw nsw i32 %137, 127
  %and.i4.i = and i32 %add.i.i, 130944
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool75.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool75.not, label %skb_cow_head.exit.if.end77_crit_edge, label %if.then76

skb_cow_head.exit.if.end77_crit_edge:             ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

if.then76:                                        ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #12
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %138 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %139, 1
  store i32 %inc, ptr %tx_dropped, align 4
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup175

if.end77:                                         ; preds = %skb_cow_head.exit.if.end77_crit_edge, %skb_header_cloned.exit.i.if.end77_crit_edge
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %140 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %wmi, align 4
  %call78 = tail call i32 @ath6kl_wmi_dix_2_dot3(ptr noundef %141, ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %if.then80

if.then80:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.5) #10
  br label %fail_tx

if.end81:                                         ; preds = %if.end77
  %142 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %features, align 16
  %and83 = and i64 %143, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and83)
  %tobool84.not = icmp ne i64 %and83, 0
  %or.cond265 = select i1 %tobool84.not, i1 %cmp61, i1 false
  br i1 %or.cond265, label %if.then89, label %if.end81.if.end92_crit_edge

if.end81.if.end92_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92

if.then89:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  %144 = ptrtoint ptr %meta_v2 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %csum_start.0, ptr %meta_v2, align 1
  %145 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %csum_dest.0, ptr %5, align 1
  %146 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 1, ptr %7, align 1
  br label %if.end92

if.end92:                                         ; preds = %if.then89, %if.end81.if.end92_crit_edge
  %meta.0 = phi ptr [ %meta_v2, %if.then89 ], [ null, %if.end81.if.end92_crit_edge ]
  %meta_ver.0 = phi i8 [ 2, %if.then89 ], [ 0, %if.end81.if.end92_crit_edge ]
  %147 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %wmi, align 4
  %fw_vif_idx = getelementptr i8, ptr %dev, i32 3328
  %149 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %fw_vif_idx, align 8
  %call94 = call i32 @ath6kl_wmi_data_hdr_add(ptr noundef %148, ptr noundef %skb, i8 noundef zeroext 0, i32 noundef %flags.5, i32 noundef 0, i8 noundef zeroext %meta_ver.0, ptr noundef %meta.0, i8 noundef zeroext %150) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %if.then96

if.then96:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.6, i32 noundef %call94) #10
  br label %fail_tx

if.end97:                                         ; preds = %if.end92
  %151 = ptrtoint ptr %nw_type to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %nw_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %152)
  %cmp100 = icmp eq i8 %152, 2
  br i1 %cmp100, label %land.lhs.true102, label %if.end97.if.else110_crit_edge

if.end97.if.else110_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else110

land.lhs.true102:                                 ; preds = %if.end97
  %ibss_ps_enable = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 29
  %153 = ptrtoint ptr %ibss_ps_enable to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %ibss_ps_enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool104.not = icmp eq i8 %154, 0
  br i1 %tobool104.not, label %land.lhs.true102.if.else110_crit_edge, label %land.lhs.true105

land.lhs.true102.if.else110_crit_edge:            ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else110

land.lhs.true105:                                 ; preds = %land.lhs.true102
  %155 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile i32, ptr %flags2, align 4
  %and1.i269 = and i32 %156, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i269)
  %tobool108.not = icmp eq i32 %and1.i269, 0
  br i1 %tobool108.not, label %land.lhs.true105.if.else110_crit_edge, label %if.then124

land.lhs.true105.if.else110_crit_edge:            ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else110

if.else110:                                       ; preds = %land.lhs.true105.if.else110_crit_edge, %land.lhs.true102.if.else110_crit_edge, %if.end97.if.else110_crit_edge
  %157 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %wmi, align 4
  %159 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %fw_vif_idx, align 8
  %161 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load volatile i32, ptr %flags2, align 4
  %163 = and i32 %162, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool115 = icmp ne i32 %163, 0
  %call116 = call i32 @ath6kl_wmi_implicit_create_pstream(ptr noundef %158, i8 noundef zeroext %160, ptr noundef %skb, i32 noundef 0, i1 noundef zeroext %tobool115, ptr noundef nonnull %ac) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.else127, label %if.else110.fail_tx_crit_edge

if.else110.fail_tx_crit_edge:                     ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_tx

if.then124:                                       ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #12
  %lock301 = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 21
  call void @_raw_spin_lock_bh(ptr noundef %lock301) #10
  %call125 = call fastcc zeroext i8 @ath6kl_ibss_map_epid(ptr noundef %skb, ptr noundef %dev, ptr noundef nonnull %map_no)
  %conv126 = zext i8 %call125 to i32
  br label %if.end128

if.else127:                                       ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #12
  %lock = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 21
  call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %164 = ptrtoint ptr %ac to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %ac, align 1
  %idxprom = zext i8 %165 to i32
  %arrayidx = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 36, i32 %idxprom
  %166 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.else127, %if.then124
  %lock302 = phi ptr [ %lock301, %if.then124 ], [ %lock, %if.else127 ]
  %eid.0 = phi i32 [ %conv126, %if.then124 ], [ %167, %if.else127 ]
  %168 = zext i32 %eid.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %168, ptr @__sancov_gen_cov_switch_values)
  switch i32 %eid.0, label %if.end135 [
    i32 0, label %if.end128.if.then133_crit_edge
    i32 -1, label %if.end128.if.then133_crit_edge309
  ]

if.end128.if.then133_crit_edge309:                ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then133

if.end128.if.then133_crit_edge:                   ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then133

if.then133:                                       ; preds = %if.end128.if.then133_crit_edge, %if.end128.if.then133_crit_edge309
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.7, i32 noundef %eid.0) #10
  call void @_raw_spin_unlock_bh(ptr noundef %lock302) #10
  br label %fail_tx

if.end135:                                        ; preds = %if.end128
  %call136 = call ptr @ath6kl_alloc_cookie(ptr noundef %1) #10
  %tobool137.not = icmp eq ptr %call136, null
  br i1 %tobool137.not, label %if.then138, label %if.end140

if.then138:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock_bh(ptr noundef %lock302) #10
  br label %fail_tx

if.end140:                                        ; preds = %if.end135
  %arrayidx141 = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 8, i32 %eid.0
  %169 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx141, align 4
  %inc142 = add i32 %170, 1
  store i32 %inc142, ptr %arrayidx141, align 4
  %total_tx_data_pend = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 9
  %171 = ptrtoint ptr %total_tx_data_pend to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %total_tx_data_pend, align 4
  %inc143 = add i32 %172, 1
  store i32 %inc143, ptr %total_tx_data_pend, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %lock302) #10
  %173 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %data, align 4
  %175 = ptrtoint ptr %174 to i32
  %sub146 = add i32 %175, 2
  %and147 = and i32 %sub146, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %cmp148 = icmp eq i32 %and147, 0
  br i1 %cmp148, label %if.end140.if.end159_crit_edge, label %land.lhs.true150

if.end140.if.end159_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end159

land.lhs.true150:                                 ; preds = %if.end140
  %call151 = call fastcc i32 @skb_cloned(ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %land.lhs.true150.if.end159_crit_edge, label %if.then153

land.lhs.true150.if.end159_crit_edge:             ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end159

if.then153:                                       ; preds = %land.lhs.true150
  %call154 = call ptr @skb_copy_expand(ptr noundef %skb, i32 noundef 6, i32 noundef 0, i32 noundef 2592) #10
  %cmp155 = icmp eq ptr %call154, null
  br i1 %cmp155, label %if.then153.fail_tx_crit_edge, label %cleanup.thread

if.then153.fail_tx_crit_edge:                     ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_tx

cleanup.thread:                                   ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %if.end159

if.end159:                                        ; preds = %cleanup.thread, %land.lhs.true150.if.end159_crit_edge, %if.end140.if.end159_crit_edge
  %skb.addr.1 = phi ptr [ %skb, %if.end140.if.end159_crit_edge ], [ %skb, %land.lhs.true150.if.end159_crit_edge ], [ %call154, %cleanup.thread ]
  %176 = ptrtoint ptr %call136 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %skb.addr.1, ptr %call136, align 4
  %177 = ptrtoint ptr %map_no to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %map_no, align 4
  %map_no161 = getelementptr inbounds %struct.ath6kl_cookie, ptr %call136, i32 0, i32 1
  %179 = ptrtoint ptr %map_no161 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %map_no161, align 4
  %htc_pkt = getelementptr inbounds %struct.ath6kl_cookie, ptr %call136, i32 0, i32 2
  %data162 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 19
  %180 = ptrtoint ptr %data162 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %data162, align 4
  %len163 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 6
  %182 = ptrtoint ptr %len163 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %len163, align 4
  %pkt_cntxt.i = getelementptr inbounds %struct.ath6kl_cookie, ptr %call136, i32 0, i32 2, i32 1
  %184 = ptrtoint ptr %pkt_cntxt.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %call136, ptr %pkt_cntxt.i, align 4
  %buf1.i = getelementptr inbounds %struct.ath6kl_cookie, ptr %call136, i32 0, i32 2, i32 3
  %185 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %181, ptr %buf1.i, align 4
  %act_len.i = getelementptr inbounds %struct.ath6kl_cookie, ptr %call136, i32 0, i32 2, i32 5
  %186 = ptrtoint ptr %act_len.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %183, ptr %act_len.i, align 4
  %endpoint.i = getelementptr inbounds %struct.ath6kl_cookie, ptr %call136, i32 0, i32 2, i32 6
  %187 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %eid.0, ptr %endpoint.i, align 4
  %info.i = getelementptr inbounds %struct.ath6kl_cookie, ptr %call136, i32 0, i32 2, i32 8
  %188 = ptrtoint ptr %info.i to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 11, ptr %info.i, align 4
  %skb165 = getelementptr inbounds %struct.ath6kl_cookie, ptr %call136, i32 0, i32 2, i32 11
  %189 = ptrtoint ptr %skb165 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %skb.addr.1, ptr %skb165, align 4
  %190 = load ptr, ptr %data162, align 4
  %191 = load i32, ptr %len163, align 4
  call void @ath6kl_dbg_dump(i32 noundef 16384, ptr noundef nonnull @__func__.ath6kl_data_tx, ptr noundef nonnull @.str.8, ptr noundef %190, i32 noundef %191) #10
  %htc_target = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 10
  %192 = ptrtoint ptr %htc_target to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %htc_target, align 4
  %dev.i = getelementptr inbounds %struct.htc_target, ptr %193, i32 0, i32 10
  %194 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %dev.i, align 4
  %ar.i278 = getelementptr inbounds %struct.ath6kl_device, ptr %195, i32 0, i32 4
  %196 = ptrtoint ptr %ar.i278 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %ar.i278, align 4
  %htc_ops.i = getelementptr inbounds %struct.ath6kl, ptr %197, i32 0, i32 6
  %198 = ptrtoint ptr %htc_ops.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %htc_ops.i, align 4
  %tx.i = getelementptr inbounds %struct.ath6kl_htc_ops, ptr %199, i32 0, i32 4
  %200 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %tx.i, align 4
  %call.i = call i32 %201(ptr noundef %193, ptr noundef %htc_pkt) #10
  br label %cleanup175

fail_tx:                                          ; preds = %if.then153.fail_tx_crit_edge, %if.then138, %if.then133, %if.else110.fail_tx_crit_edge, %if.then96, %if.then80, %if.end54.fail_tx_crit_edge, %if.end43.critedge.fail_tx_crit_edge, %if.then11, %land.rhs.fail_tx_crit_edge, %entry.fail_tx_crit_edge
  call void @consume_skb(ptr noundef %skb) #10
  %tx_dropped171 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %202 = ptrtoint ptr %tx_dropped171 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %tx_dropped171, align 4
  %inc172 = add i32 %203, 1
  store i32 %inc172, ptr %tx_dropped171, align 4
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 16
  %204 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %tx_aborted_errors, align 8
  %inc174 = add i32 %205, 1
  store i32 %inc174, ptr %tx_aborted_errors, align 8
  br label %cleanup175

cleanup175:                                       ; preds = %fail_tx, %if.end159, %if.then76, %if.then13.i.i, %if.end5.i.i.cleanup175_crit_edge, %if.then52.i.i, %if.end44.i.i.cleanup175_crit_edge, %if.then33.i, %if.then16.i, %if.then10.i.cleanup175_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %meta_v2) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ac) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %map_no) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_dix_2_dot3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_data_hdr_add(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_warn(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_implicit_create_pstream(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @ath6kl_ibss_map_epid(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %map_no) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ar.i = getelementptr i8, ptr %dev, i32 3280
  %0 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar.i, align 8
  %2 = ptrtoint ptr %map_no to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %map_no, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 6
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr, align 4
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not = icmp eq i32 %7, 0
  br i1 %tobool.i.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %node_num = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 31
  %8 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %node_num, align 1
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp133.not = icmp eq i8 %9, 0
  br i1 %cmp133.not, label %if.then25.thread, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then25.thread:                                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %inc29145 = add nuw nsw i8 %9, 1
  %10 = ptrtoint ptr %node_num to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %inc29145, ptr %node_num, align 1
  br label %if.end36

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %ep_map.0136 = phi i32 [ %ep_map.1, %for.inc.for.body_crit_edge ], [ -1, %for.cond.preheader.for.body_crit_edge ]
  %i.0134 = phi i32 [ %inc22, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 28, i32 %i.0134
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %add.ptr, ptr noundef dereferenceable(6) %arrayidx, i32 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp7 = icmp eq i32 %bcmp, 0
  br i1 %cmp7, label %if.then9, label %if.end14

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %add = add nuw i32 %i.0134, 1
  %11 = ptrtoint ptr %map_no to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add, ptr %map_no, align 4
  %tx_pend = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 28, i32 %i.0134, i32 2
  %12 = ptrtoint ptr %tx_pend to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tx_pend, align 1
  %inc = add i8 %13, 1
  store i8 %inc, ptr %tx_pend, align 1
  %ep_id = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 28, i32 %i.0134, i32 1
  br label %cleanup.sink.split

if.end14:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ep_map.0136)
  %cmp15 = icmp eq i32 %ep_map.0136, -1
  br i1 %cmp15, label %land.lhs.true, label %if.end14.for.inc_crit_edge

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %tx_pend19 = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 28, i32 %i.0134, i32 2
  %14 = ptrtoint ptr %tx_pend19 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tx_pend19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  %spec.select = select i1 %tobool.not, i32 %i.0134, i32 -1
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %if.end14.for.inc_crit_edge
  %ep_map.1 = phi i32 [ %ep_map.0136, %if.end14.for.inc_crit_edge ], [ %spec.select, %land.lhs.true ]
  %inc22 = add nuw nsw i32 %i.0134, 1
  %exitcond.not = icmp eq i32 %inc22, %conv
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ep_map.1)
  %cmp23 = icmp eq i32 %ep_map.1, -1
  br i1 %cmp23, label %if.then25, label %for.end.if.end36_crit_edge

for.end.if.end36_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then25:                                        ; preds = %for.end
  %inc29 = add i8 %9, 1
  %16 = ptrtoint ptr %node_num to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %inc29, ptr %node_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %inc29)
  %cmp32 = icmp ugt i8 %inc29, 15
  br i1 %cmp32, label %if.then25.cleanup_crit_edge, label %if.then25.if.end36_crit_edge

if.then25.if.end36_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end36:                                         ; preds = %if.then25.if.end36_crit_edge, %for.end.if.end36_crit_edge, %if.then25.thread
  %ep_map.2 = phi i32 [ %conv, %if.then25.if.end36_crit_edge ], [ %ep_map.1, %for.end.if.end36_crit_edge ], [ 0, %if.then25.thread ]
  %arrayidx38 = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 28, i32 %ep_map.2
  %17 = call ptr @memcpy(ptr %arrayidx38, ptr %add.ptr, i32 6)
  %next_ep_id = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 32
  %ep_id60 = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 28, i32 %ep_map.2, i32 1
  %arrayidx47 = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 8, i32 2
  %18 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool48.not = icmp eq i32 %19, 0
  br i1 %tobool48.not, label %if.end36.if.then49_crit_edge, label %for.inc71

if.end36.if.then49_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then49

if.then49:                                        ; preds = %for.inc71.2.if.then49_crit_edge, %for.inc71.1.if.then49_crit_edge, %for.inc71.if.then49_crit_edge, %if.end36.if.then49_crit_edge
  %i.1139.lcssa = phi i8 [ 2, %if.end36.if.then49_crit_edge ], [ 3, %for.inc71.if.then49_crit_edge ], [ 4, %for.inc71.1.if.then49_crit_edge ], [ 5, %for.inc71.2.if.then49_crit_edge ]
  %20 = ptrtoint ptr %ep_id60 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %i.1139.lcssa, ptr %ep_id60, align 1
  br label %for.end73

for.inc71:                                        ; preds = %if.end36
  %arrayidx47.1 = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 8, i32 3
  %21 = ptrtoint ptr %arrayidx47.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx47.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool48.not.1 = icmp eq i32 %22, 0
  br i1 %tobool48.not.1, label %for.inc71.if.then49_crit_edge, label %for.inc71.1

for.inc71.if.then49_crit_edge:                    ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then49

for.inc71.1:                                      ; preds = %for.inc71
  %arrayidx47.2 = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 8, i32 4
  %23 = ptrtoint ptr %arrayidx47.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx47.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool48.not.2 = icmp eq i32 %24, 0
  br i1 %tobool48.not.2, label %for.inc71.1.if.then49_crit_edge, label %for.inc71.2

for.inc71.1.if.then49_crit_edge:                  ; preds = %for.inc71.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then49

for.inc71.2:                                      ; preds = %for.inc71.1
  %arrayidx47.3 = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 8, i32 5
  %25 = ptrtoint ptr %arrayidx47.3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx47.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool48.not.3 = icmp eq i32 %26, 0
  br i1 %tobool48.not.3, label %for.inc71.2.if.then49_crit_edge, label %for.inc71.3

for.inc71.2.if.then49_crit_edge:                  ; preds = %for.inc71.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then49

for.inc71.3:                                      ; preds = %for.inc71.2
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %next_ep_id to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %next_ep_id, align 4
  %29 = ptrtoint ptr %ep_id60 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %ep_id60, align 1
  %inc62.3 = add i8 %28, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %inc62.3)
  %cmp65.3 = icmp ugt i8 %inc62.3, 5
  %spec.store.select.3 = select i1 %cmp65.3, i8 2, i8 %inc62.3
  %30 = ptrtoint ptr %next_ep_id to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %spec.store.select.3, ptr %next_ep_id, align 4
  br label %for.end73

for.end73:                                        ; preds = %for.inc71.3, %if.then49
  %add74 = add i32 %ep_map.2, 1
  %31 = ptrtoint ptr %map_no to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add74, ptr %map_no, align 4
  %tx_pend77 = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 28, i32 %ep_map.2, i32 2
  %32 = ptrtoint ptr %tx_pend77 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %tx_pend77, align 1
  %inc78 = add i8 %33, 1
  store i8 %inc78, ptr %tx_pend77, align 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end73, %if.then9
  %ep_id60.sink = phi ptr [ %ep_id60, %for.end73 ], [ %ep_id, %if.then9 ]
  %34 = ptrtoint ptr %ep_id60.sink to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ep_id60.sink, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then25.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 2, %entry.cleanup_crit_edge ], [ -1, %if.then25.cleanup_crit_edge ], [ %35, %cleanup.sink.split ]
  ret i8 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @skb_cloned(ptr nocapture noundef readonly %skb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %cloned = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %0 = ptrtoint ptr %cloned to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %cloned, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %1 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %end.i, align 4
  %dataref = getelementptr inbounds %struct.skb_shared_info, ptr %2, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref, i32 noundef 4) #10
  %3 = ptrtoint ptr %dataref to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %dataref, align 4
  %and = and i32 %4, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp = icmp ne i32 %and, 1
  %phi.cast = zext i1 %cmp to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %5 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy_expand(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_dbg_dump(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_indicate_tx_activity(ptr noundef %devt, i8 noundef zeroext %traffic_class, i1 noundef zeroext %active) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %traffic_class to i32
  %arrayidx = getelementptr %struct.ath6kl, ptr %devt, i32 0, i32 36, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %flag = getelementptr inbounds %struct.ath6kl, ptr %devt, i32 0, i32 75
  %2 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flag, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.notify_htc_crit_edge, label %if.end

entry.notify_htc_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %notify_htc

if.end:                                           ; preds = %entry
  %frombool = zext i1 %active to i8
  %lock = getelementptr inbounds %struct.ath6kl, ptr %devt, i32 0, i32 21
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %arrayidx3 = getelementptr %struct.ath6kl, ptr %devt, i32 0, i32 37, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %arrayidx3, align 1
  br i1 %active, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %arrayidx8 = getelementptr %struct.ath6kl, ptr %devt, i32 0, i32 38, i32 %idxprom
  %5 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx8, align 1
  %hiac_stream_active_pri = getelementptr inbounds %struct.ath6kl, ptr %devt, i32 0, i32 39
  %7 = ptrtoint ptr %hiac_stream_active_pri to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hiac_stream_active_pri, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %8)
  %cmp = icmp ugt i8 %6, %8
  br i1 %cmp, label %if.then11, label %if.then6.if.end46_crit_edge

if.then6.if.end46_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then11:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %hiac_stream_active_pri to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %6, ptr %hiac_stream_active_pri, align 4
  br label %if.end46

if.else:                                          ; preds = %if.end
  %hiac_stream_active_pri17 = getelementptr inbounds %struct.ath6kl, ptr %devt, i32 0, i32 39
  %10 = ptrtoint ptr %hiac_stream_active_pri17 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hiac_stream_active_pri17, align 4
  %arrayidx21 = getelementptr %struct.ath6kl, ptr %devt, i32 0, i32 38, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx21, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %13)
  %cmp23 = icmp eq i8 %11, %13
  br i1 %cmp23, label %if.then25, label %if.else.if.end46_crit_edge

if.else.if.end46_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then25:                                        ; preds = %if.else
  %14 = ptrtoint ptr %hiac_stream_active_pri17 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %hiac_stream_active_pri17, align 4
  %arrayidx30 = getelementptr %struct.ath6kl, ptr %devt, i32 0, i32 37, i32 0
  %15 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx30, align 1, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool31.not = icmp eq i8 %16, 0
  br i1 %tobool31.not, label %if.then25.for.inc_crit_edge, label %land.lhs.true

if.then25.for.inc_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %if.then25
  %arrayidx34 = getelementptr %struct.ath6kl, ptr %devt, i32 0, i32 38, i32 0
  %17 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx34, align 1
  %19 = ptrtoint ptr %hiac_stream_active_pri17 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %hiac_stream_active_pri17, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %20)
  %cmp38 = icmp ugt i8 %18, %20
  br i1 %cmp38, label %if.then40, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then40:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %hiac_stream_active_pri17 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %18, ptr %hiac_stream_active_pri17, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then40, %land.lhs.true.for.inc_crit_edge, %if.then25.for.inc_crit_edge
  %arrayidx30.1 = getelementptr %struct.ath6kl, ptr %devt, i32 0, i32 37, i32 1
  %22 = ptrtoint ptr %arrayidx30.1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx30.1, align 1, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool31.not.1 = icmp eq i8 %23, 0
  br i1 %tobool31.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %arrayidx34.1 = getelementptr %struct.ath6kl, ptr %devt, i32 0, i32 38, i32 1
  %24 = ptrtoint ptr %arrayidx34.1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx34.1, align 1
  %26 = ptrtoint ptr %hiac_stream_active_pri17 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %hiac_stream_active_pri17, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %27)
  %cmp38.1 = icmp ugt i8 %25, %27
  br i1 %cmp38.1, label %if.then40.1, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then40.1:                                      ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %hiac_stream_active_pri17 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %25, ptr %hiac_stream_active_pri17, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then40.1, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx30.2 = getelementptr %struct.ath6kl, ptr %devt, i32 0, i32 37, i32 2
  %29 = ptrtoint ptr %arrayidx30.2 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx30.2, align 1, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool31.not.2 = icmp eq i8 %30, 0
  br i1 %tobool31.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %arrayidx34.2 = getelementptr %struct.ath6kl, ptr %devt, i32 0, i32 38, i32 2
  %31 = ptrtoint ptr %arrayidx34.2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx34.2, align 1
  %33 = ptrtoint ptr %hiac_stream_active_pri17 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %hiac_stream_active_pri17, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %34)
  %cmp38.2 = icmp ugt i8 %32, %34
  br i1 %cmp38.2, label %if.then40.2, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then40.2:                                      ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %hiac_stream_active_pri17 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %32, ptr %hiac_stream_active_pri17, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then40.2, %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx30.3 = getelementptr %struct.ath6kl, ptr %devt, i32 0, i32 37, i32 3
  %36 = ptrtoint ptr %arrayidx30.3 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx30.3, align 1, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool31.not.3 = icmp eq i8 %37, 0
  br i1 %tobool31.not.3, label %for.inc.2.if.end46_crit_edge, label %land.lhs.true.3

for.inc.2.if.end46_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

land.lhs.true.3:                                  ; preds = %for.inc.2
  %arrayidx34.3 = getelementptr %struct.ath6kl, ptr %devt, i32 0, i32 38, i32 3
  %38 = ptrtoint ptr %arrayidx34.3 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx34.3, align 1
  %40 = ptrtoint ptr %hiac_stream_active_pri17 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %hiac_stream_active_pri17, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %41)
  %cmp38.3 = icmp ugt i8 %39, %41
  br i1 %cmp38.3, label %if.then40.3, label %land.lhs.true.3.if.end46_crit_edge

land.lhs.true.3.if.end46_crit_edge:               ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then40.3:                                      ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %hiac_stream_active_pri17 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %39, ptr %hiac_stream_active_pri17, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then40.3, %land.lhs.true.3.if.end46_crit_edge, %for.inc.2.if.end46_crit_edge, %if.else.if.end46_crit_edge, %if.then11, %if.then6.if.end46_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %notify_htc

notify_htc:                                       ; preds = %if.end46, %entry.notify_htc_crit_edge
  %htc_target = getelementptr inbounds %struct.ath6kl, ptr %devt, i32 0, i32 10
  %43 = ptrtoint ptr %htc_target to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %htc_target, align 4
  %dev.i = getelementptr inbounds %struct.htc_target, ptr %44, i32 0, i32 10
  %45 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i, align 4
  %ar.i = getelementptr inbounds %struct.ath6kl_device, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ar.i, align 4
  %htc_ops.i = getelementptr inbounds %struct.ath6kl, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %htc_ops.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %htc_ops.i, align 4
  %activity_changed.i = getelementptr inbounds %struct.ath6kl_htc_ops, ptr %50, i32 0, i32 9
  %51 = ptrtoint ptr %activity_changed.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %activity_changed.i, align 4
  tail call void %52(ptr noundef %44, i32 noundef %1, i1 noundef zeroext %active) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_tx_queue_full(ptr nocapture noundef readonly %target, ptr nocapture noundef readonly %packet) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 10
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %ar1 = getelementptr inbounds %struct.ath6kl_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ar1, align 4
  %endpoint2 = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 6
  %4 = ptrtoint ptr %endpoint2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %endpoint2, align 4
  %ctrl_ep = getelementptr inbounds %struct.ath6kl, ptr %3, i32 0, i32 42
  %6 = ptrtoint ptr %ctrl_ep to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctrl_ep, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp eq i32 %5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %flag = getelementptr inbounds %struct.ath6kl, ptr %3, i32 0, i32 75
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag) #10
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.9) #10
  tail call void @ath6kl_recovery_err_notify(ptr noundef %3, i32 noundef 2) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %info = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 8
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %9)
  %cmp3 = icmp eq i16 %9, 10
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.ath6kl, ptr %3, i32 0, i32 40, i32 %5
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %idxprom = zext i8 %11 to i32
  %arrayidx7 = getelementptr %struct.ath6kl, ptr %3, i32 0, i32 38, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx7, align 1
  %hiac_stream_active_pri = getelementptr inbounds %struct.ath6kl, ptr %3, i32 0, i32 39
  %14 = ptrtoint ptr %hiac_stream_active_pri to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %hiac_stream_active_pri, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp10 = icmp ult i8 %13, %15
  br i1 %cmp10, label %land.lhs.true, label %if.end6.if.end18_crit_edge

if.end6.if.end18_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %cookie_count = getelementptr inbounds %struct.ath6kl, ptr %3, i32 0, i32 35
  %16 = ptrtoint ptr %cookie_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cookie_count, align 4
  %tx_drop_packet_threshold = getelementptr [9 x %struct.htc_endpoint], ptr %target, i32 0, i32 %5, i32 14
  %18 = ptrtoint ptr %tx_drop_packet_threshold to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %tx_drop_packet_threshold, align 4
  %conv14 = zext i16 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv14)
  %cmp15.not = icmp ugt i32 %17, %conv14
  %not.cmp15.not = xor i1 %cmp15.not, true
  %spec.select62 = zext i1 %not.cmp15.not to i32
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true, %if.end6.if.end18_crit_edge
  %cmp25.not = phi i1 [ true, %if.end6.if.end18_crit_edge ], [ %cmp15.not, %land.lhs.true ]
  %action.0 = phi i32 [ 0, %if.end6.if.end18_crit_edge ], [ %spec.select62, %land.lhs.true ]
  %list_lock = getelementptr inbounds %struct.ath6kl, ptr %3, i32 0, i32 14
  tail call void @_raw_spin_lock_bh(ptr noundef %list_lock) #10
  %vif_list = getelementptr inbounds %struct.ath6kl, ptr %3, i32 0, i32 13
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end18
  %vif.0.in = phi ptr [ %vif_list, %if.end18 ], [ %vif.0, %for.body.for.cond_crit_edge ]
  %20 = ptrtoint ptr %vif.0.in to i32
  call void @__asan_load4_noabort(i32 %20)
  %vif.0 = load ptr, ptr %vif.0.in, align 4
  %cmp20.not = icmp eq ptr %vif.0, %vif_list
  br i1 %cmp20.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %nw_type = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0, i32 0, i32 17
  %21 = ptrtoint ptr %nw_type to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %nw_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp23 = icmp eq i8 %22, 2
  %brmerge = select i1 %cmp23, i1 true, i1 %cmp25.not
  br i1 %brmerge, label %if.then27, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then27:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock) #10
  %flags = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #10
  %ndev = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0, i32 0, i32 2
  %23 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ndev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 103
  %25 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %26, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then27, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %action.0, %if.then27 ], [ %action.0, %for.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_recovery_err_notify(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_tx_complete(ptr nocapture noundef readonly %target, ptr noundef %packet_queue) local_unnamed_addr #0 align 64 {
entry:
  %skb_queue = alloca %struct.sk_buff_head, align 4
  %flushing = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 10
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %ar1 = getelementptr inbounds %struct.ath6kl_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ar1, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %skb_queue) #10
  %4 = call ptr @memset(ptr %skb_queue, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %flushing) #10
  %5 = call ptr @memset(ptr %flushing, i32 0, i32 3)
  %lock.i = getelementptr inbounds %struct.sk_buff_head, ptr %skb_queue, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %6 = ptrtoint ptr %skb_queue to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %skb_queue, ptr %skb_queue, align 4
  %prev.i.i = getelementptr inbounds %struct.anon.52, ptr %skb_queue, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %skb_queue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %skb_queue, i32 0, i32 1
  %8 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %qlen.i.i, align 4
  %lock = getelementptr inbounds %struct.ath6kl, ptr %3, i32 0, i32 21
  call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %9 = ptrtoint ptr %packet_queue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %packet_queue, align 4
  %cmp.i.not426 = icmp eq ptr %10, %packet_queue
  br i1 %cmp.i.not426, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %ctrl_ep = getelementptr inbounds %struct.ath6kl, ptr %3, i32 0, i32 42
  %total_tx_data_pend = getelementptr inbounds %struct.ath6kl, ptr %3, i32 0, i32 9
  %flag = getelementptr inbounds %struct.ath6kl, ptr %3, i32 0, i32 75
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %11 = phi ptr [ %10, %while.body.lr.ph ], [ %33, %while.cond.backedge.while.body_crit_edge ]
  %wake_event.0.off0427 = phi i1 [ false, %while.body.lr.ph ], [ %wake_event.0.off0.be, %while.cond.backedge.while.body_crit_edge ]
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %11) #10
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i419 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i419 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i419, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %endpoint = getelementptr inbounds %struct.htc_packet, ptr %11, i32 0, i32 6
  %20 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %endpoint, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp = icmp eq i32 %21, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %21)
  %cmp3 = icmp sgt i32 %21, 8
  %spec.select = or i1 %cmp, %cmp3
  br i1 %spec.select, label %land.rhs, label %if.end43.critedge

land.rhs:                                         ; preds = %list_del.exit
  %.b409 = load i1, ptr @ath6kl_tx_complete.__already_done, align 1
  br i1 %.b409, label %land.rhs.while.cond.backedge_crit_edge, label %if.then, !prof !106

land.rhs.while.cond.backedge_crit_edge:           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ath6kl_tx_complete.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 708, i32 noundef 9, ptr noundef null) #10
  br label %while.cond.backedge

if.end43.critedge:                                ; preds = %list_del.exit
  %pkt_cntxt = getelementptr inbounds %struct.htc_packet, ptr %11, i32 0, i32 1
  %22 = ptrtoint ptr %pkt_cntxt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pkt_cntxt, align 4
  %tobool45.not = icmp eq ptr %23, null
  br i1 %tobool45.not, label %land.rhs54, label %if.end102.critedge

land.rhs54:                                       ; preds = %if.end43.critedge
  %.b400408 = load i1, ptr @ath6kl_tx_complete.__already_done.10, align 1
  br i1 %.b400408, label %land.rhs54.while.cond.backedge_crit_edge, label %if.then65, !prof !106

land.rhs54.while.cond.backedge_crit_edge:         ; preds = %land.rhs54
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.then65:                                        ; preds = %land.rhs54
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ath6kl_tx_complete.__already_done.10, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 712, i32 noundef 9, ptr noundef null) #10
  br label %while.cond.backedge

if.end102.critedge:                               ; preds = %if.end43.critedge
  %status103 = getelementptr inbounds %struct.htc_packet, ptr %11, i32 0, i32 7
  %24 = ptrtoint ptr %status103 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %status103, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  %map_no106 = getelementptr inbounds %struct.ath6kl_cookie, ptr %23, i32 0, i32 1
  %28 = ptrtoint ptr %map_no106 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %map_no106, align 4
  %tobool108.not = icmp eq ptr %27, null
  br i1 %tobool108.not, label %if.end102.critedge.land.rhs120_crit_edge, label %lor.rhs109

if.end102.critedge.land.rhs120_crit_edge:         ; preds = %if.end102.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs120

lor.rhs109:                                       ; preds = %if.end102.critedge
  %data = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 19
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %tobool110.not = icmp eq ptr %31, null
  br i1 %tobool110.not, label %lor.rhs109.land.rhs120_crit_edge, label %if.end168

lor.rhs109.land.rhs120_crit_edge:                 ; preds = %lor.rhs109
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs120

land.rhs120:                                      ; preds = %lor.rhs109.land.rhs120_crit_edge, %if.end102.critedge.land.rhs120_crit_edge
  %.b401407 = load i1, ptr @ath6kl_tx_complete.__already_done.11, align 1
  br i1 %.b401407, label %land.rhs120.if.then167_crit_edge, label %if.then131, !prof !106

land.rhs120.if.then167_crit_edge:                 ; preds = %land.rhs120
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then167

if.then131:                                       ; preds = %land.rhs120
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ath6kl_tx_complete.__already_done.11, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 720, i32 noundef 9, ptr noundef null) #10
  br label %if.then167

if.then167:                                       ; preds = %if.then131, %land.rhs120.if.then167_crit_edge
  call void @consume_skb(ptr noundef %27) #10
  call void @ath6kl_free_cookie(ptr noundef %3, ptr noundef nonnull %23) #10
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then284, %ath6kl_tx_clear_node_map.exit.while.cond.backedge_crit_edge, %if.then256, %if.then227, %if.then167, %if.then65, %land.rhs54.while.cond.backedge_crit_edge, %if.then, %land.rhs.while.cond.backedge_crit_edge
  %wake_event.0.off0.be = phi i1 [ %wake_event.0.off0427, %if.then167 ], [ %wake_event.0.off0427, %if.then227 ], [ %wake_event.1.off0, %if.then256 ], [ %wake_event.0.off0427, %if.then ], [ %wake_event.0.off0427, %if.then65 ], [ %wake_event.0.off0427, %land.rhs.while.cond.backedge_crit_edge ], [ %wake_event.0.off0427, %land.rhs54.while.cond.backedge_crit_edge ], [ %wake_event.1.off0, %if.then284 ], [ %wake_event.1.off0, %ath6kl_tx_clear_node_map.exit.while.cond.backedge_crit_edge ]
  %32 = ptrtoint ptr %packet_queue to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %packet_queue, align 4
  %cmp.i.not = icmp eq ptr %33, %packet_queue
  br i1 %cmp.i.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end168:                                        ; preds = %lor.rhs109
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i, align 4
  %36 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %skb_queue, ptr %27, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon, ptr %27, i32 0, i32 1
  %37 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %prev10.i.i.i, align 4
  store volatile ptr %27, ptr %prev.i.i, align 4
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %27, ptr %35, align 4
  %39 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %qlen.i.i, align 4
  %add.i.i.i = add i32 %40, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool170.not = icmp eq i32 %25, 0
  br i1 %tobool170.not, label %land.rhs171, label %if.end168.if.end228_crit_edge

if.end168.if.end228_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end228

land.rhs171:                                      ; preds = %if.end168
  %act_len = getelementptr inbounds %struct.htc_packet, ptr %11, i32 0, i32 5
  %41 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %act_len, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 6
  %43 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp172.not = icmp eq i32 %42, %44
  br i1 %cmp172.not, label %land.rhs171.if.end228_crit_edge, label %land.rhs180

land.rhs171.if.end228_crit_edge:                  ; preds = %land.rhs171
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end228

land.rhs180:                                      ; preds = %land.rhs171
  %.b402406 = load i1, ptr @ath6kl_tx_complete.__already_done.12, align 1
  br i1 %.b402406, label %land.rhs180.if.then227_crit_edge, label %if.then191, !prof !106

land.rhs180.if.then227_crit_edge:                 ; preds = %land.rhs180
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then227

if.then191:                                       ; preds = %land.rhs180
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ath6kl_tx_complete.__already_done.12, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 728, i32 noundef 9, ptr noundef null) #10
  br label %if.then227

if.then227:                                       ; preds = %if.then191, %land.rhs180.if.then227_crit_edge
  call void @ath6kl_free_cookie(ptr noundef %3, ptr noundef nonnull %23) #10
  br label %while.cond.backedge

if.end228:                                        ; preds = %land.rhs171.if.end228_crit_edge, %if.end168.if.end228_crit_edge
  %arrayidx = getelementptr %struct.ath6kl, ptr %3, i32 0, i32 8, i32 %21
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx, align 4
  %dec = add i32 %46, -1
  store i32 %dec, ptr %arrayidx, align 4
  %47 = ptrtoint ptr %ctrl_ep to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ctrl_ep, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %48)
  %cmp229.not = icmp eq i32 %21, %48
  br i1 %cmp229.not, label %if.end228.if.end232_crit_edge, label %if.then230

if.end228.if.end232_crit_edge:                    ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end232

if.then230:                                       ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %total_tx_data_pend to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %total_tx_data_pend, align 4
  %dec231 = add i32 %50, -1
  store i32 %dec231, ptr %total_tx_data_pend, align 4
  br label %if.end232

if.end232:                                        ; preds = %if.then230, %if.end228.if.end232_crit_edge
  %51 = ptrtoint ptr %ctrl_ep to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ctrl_ep, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %52)
  %cmp234 = icmp eq i32 %21, %52
  br i1 %cmp234, label %if.then235, label %if.end232.if.end246_crit_edge

if.end232.if.end246_crit_edge:                    ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end246

if.then235:                                       ; preds = %if.end232
  %53 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %flag, align 4
  %55 = and i32 %54, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool237.not = icmp eq i32 %55, 0
  br i1 %tobool237.not, label %if.then235.if.end240_crit_edge, label %if.then238

if.then235.if.end240_crit_edge:                   ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end240

if.then238:                                       ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #12
  call void @_clear_bit(i32 noundef 2, ptr noundef %flag) #10
  br label %if.end240

if.end240:                                        ; preds = %if.then238, %if.then235.if.end240_crit_edge
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp243 = icmp eq i32 %57, 0
  %spec.select415 = select i1 %cmp243, i1 true, i1 %wake_event.0.off0427
  br label %if.end246

if.end246:                                        ; preds = %if.end240, %if.end232.if.end246_crit_edge
  %wake_event.1.off0 = phi i1 [ %wake_event.0.off0427, %if.end232.if.end246_crit_edge ], [ %spec.select415, %if.end240 ]
  %58 = ptrtoint ptr %ctrl_ep to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ctrl_ep, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %59)
  %cmp248 = icmp eq i32 %21, %59
  %buf = getelementptr inbounds %struct.htc_packet, ptr %11, i32 0, i32 3
  %60 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %buf, align 4
  %info3.i = getelementptr inbounds %struct.wmi_data_hdr, ptr %61, i32 0, i32 3
  %info1.i = getelementptr inbounds %struct.wmi_cmd_hdr, ptr %61, i32 0, i32 1
  %info3.i.sink = select i1 %cmp248, ptr %info1.i, ptr %info3.i
  %62 = ptrtoint ptr %info3.i.sink to i32
  call void @__asan_loadN_noabort(i32 %62, i32 2)
  %63 = load i16, ptr %info3.i.sink, align 1
  %64 = lshr i16 %63, 8
  %65 = trunc i16 %64 to i8
  %if_idx.0 = and i8 %65, 15
  %call254 = call ptr @ath6kl_get_vif_by_index(ptr noundef %3, i8 noundef zeroext %if_idx.0) #10
  %tobool255.not = icmp eq ptr %call254, null
  br i1 %tobool255.not, label %if.then256, label %if.end257

if.then256:                                       ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #12
  call void @ath6kl_free_cookie(ptr noundef %3, ptr noundef nonnull %23) #10
  br label %while.cond.backedge

if.end257:                                        ; preds = %if.end246
  br i1 %tobool170.not, label %if.else270, label %if.then259

if.then259:                                       ; preds = %if.end257
  call void @__sanitizer_cov_trace_const_cmp4(i32 -125, i32 %25)
  %cmp260 = icmp eq i32 %25, -125
  br i1 %cmp260, label %if.end263.thread, label %if.end263

if.end263.thread:                                 ; preds = %if.then259
  call void @__sanitizer_cov_trace_pc() #12
  %idxprom = zext i8 %if_idx.0 to i32
  %arrayidx262 = getelementptr [3 x i8], ptr %flushing, i32 0, i32 %idxprom
  %66 = ptrtoint ptr %arrayidx262 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %arrayidx262, align 1
  %ndev423 = getelementptr inbounds %struct.ath6kl_vif, ptr %call254, i32 0, i32 2
  %67 = ptrtoint ptr %ndev423 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ndev423, align 4
  %tx_errors424 = getelementptr inbounds %struct.net_device, ptr %68, i32 0, i32 36, i32 5
  %69 = ptrtoint ptr %tx_errors424 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tx_errors424, align 4
  %inc425 = add i32 %70, 1
  store i32 %inc425, ptr %tx_errors424, align 4
  br label %if.end267

if.end263:                                        ; preds = %if.then259
  %ndev = getelementptr inbounds %struct.ath6kl_vif, ptr %call254, i32 0, i32 2
  %71 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ndev, align 4
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %72, i32 0, i32 36, i32 5
  %73 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %74, 1
  store i32 %inc, ptr %tx_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %25)
  %cond = icmp eq i32 %25, -28
  br i1 %cond, label %if.end263.if.end267_crit_edge, label %if.then266

if.end263.if.end267_crit_edge:                    ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end267

if.then266:                                       ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.13, i32 noundef %25) #10
  br label %if.end267

if.end267:                                        ; preds = %if.then266, %if.end263.if.end267_crit_edge, %if.end263.thread
  %buf268 = getelementptr inbounds %struct.htc_packet, ptr %11, i32 0, i32 3
  %75 = ptrtoint ptr %buf268 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %buf268, align 4
  %act_len269 = getelementptr inbounds %struct.htc_packet, ptr %11, i32 0, i32 5
  %77 = ptrtoint ptr %act_len269 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %act_len269, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 4, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.ath6kl_tx_complete, ptr noundef nonnull %27, ptr noundef %76, i32 noundef %78, i32 noundef %21, ptr noundef nonnull @.str.15) #10
  br label %if.end281

if.else270:                                       ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #12
  %buf271 = getelementptr inbounds %struct.htc_packet, ptr %11, i32 0, i32 3
  %79 = ptrtoint ptr %buf271 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %buf271, align 4
  %act_len272 = getelementptr inbounds %struct.htc_packet, ptr %11, i32 0, i32 5
  %81 = ptrtoint ptr %act_len272 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %act_len272, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 4, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.ath6kl_tx_complete, ptr noundef nonnull %27, ptr noundef %80, i32 noundef %82, i32 noundef %21, ptr noundef nonnull @.str.16) #10
  %idxprom273 = zext i8 %if_idx.0 to i32
  %arrayidx274 = getelementptr [3 x i8], ptr %flushing, i32 0, i32 %idxprom273
  %83 = ptrtoint ptr %arrayidx274 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %arrayidx274, align 1
  %ndev275 = getelementptr inbounds %struct.ath6kl_vif, ptr %call254, i32 0, i32 2
  %84 = ptrtoint ptr %ndev275 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ndev275, align 4
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %85, i32 0, i32 36, i32 1
  %86 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %tx_packets, align 4
  %inc277 = add i32 %87, 1
  store i32 %inc277, ptr %tx_packets, align 4
  %len278 = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 6
  %88 = ptrtoint ptr %len278 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %len278, align 4
  %90 = load ptr, ptr %ndev275, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %90, i32 0, i32 36, i32 3
  %91 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %92, %89
  store i32 %add, ptr %tx_bytes, align 4
  br label %if.end281

if.end281:                                        ; preds = %if.else270, %if.end267
  %ar1.i = getelementptr inbounds %struct.ath6kl_vif, ptr %call254, i32 0, i32 3
  %93 = ptrtoint ptr %ar1.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ar1.i, align 8
  %nw_type.i = getelementptr inbounds %struct.ath6kl_vif, ptr %call254, i32 0, i32 17
  %95 = ptrtoint ptr %nw_type.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %nw_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %96)
  %cmp.not.i = icmp eq i8 %96, 2
  br i1 %cmp.not.i, label %if.end.i, label %if.end281.ath6kl_tx_clear_node_map.exit_crit_edge

if.end281.ath6kl_tx_clear_node_map.exit_crit_edge: ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_tx_clear_node_map.exit

if.end.i:                                         ; preds = %if.end281
  %ibss_ps_enable.i = getelementptr inbounds %struct.ath6kl, ptr %94, i32 0, i32 29
  %97 = ptrtoint ptr %ibss_ps_enable.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %ibss_ps_enable.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool.not.i = icmp eq i8 %98, 0
  br i1 %tobool.not.i, label %if.end.i.ath6kl_tx_clear_node_map.exit_crit_edge, label %if.end4.i

if.end.i.ath6kl_tx_clear_node_map.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_tx_clear_node_map.exit

if.end4.i:                                        ; preds = %if.end.i
  %ctrl_ep.i = getelementptr inbounds %struct.ath6kl, ptr %94, i32 0, i32 42
  %99 = ptrtoint ptr %ctrl_ep.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %ctrl_ep.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %21)
  %cmp5.i = icmp eq i32 %100, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp9.i = icmp eq i32 %29, 0
  %or.cond.i = or i1 %cmp9.i, %cmp5.i
  br i1 %or.cond.i, label %if.end4.i.ath6kl_tx_clear_node_map.exit_crit_edge, label %if.end12.i

if.end4.i.ath6kl_tx_clear_node_map.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_tx_clear_node_map.exit

if.end12.i:                                       ; preds = %if.end4.i
  %dec.i = add i32 %29, -1
  %tx_pend.i = getelementptr %struct.ath6kl, ptr %94, i32 0, i32 28, i32 %dec.i, i32 2
  %101 = ptrtoint ptr %tx_pend.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %tx_pend.i, align 1
  %dec13.i = add i8 %102, -1
  store i8 %dec13.i, ptr %tx_pend.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec13.i)
  %tobool17.not.i = icmp eq i8 %dec13.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end12.i.ath6kl_tx_clear_node_map.exit_crit_edge

if.end12.i.ath6kl_tx_clear_node_map.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_tx_clear_node_map.exit

if.end19.i:                                       ; preds = %if.end12.i
  %node_num.i = getelementptr inbounds %struct.ath6kl, ptr %94, i32 0, i32 31
  %103 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %node_num.i, align 1
  %conv20.i = zext i8 %104 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv20.i)
  %cmp21.not.i = icmp ne i32 %29, %conv20.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %cmp27.not59.i = icmp eq i8 %104, 0
  %or.cond61.i = or i1 %cmp27.not59.i, %cmp21.not.i
  br i1 %or.cond61.i, label %if.end19.i.ath6kl_tx_clear_node_map.exit_crit_edge, label %if.end19.i.for.body.i_crit_edge

if.end19.i.for.body.i_crit_edge:                  ; preds = %if.end19.i
  br label %for.body.i

if.end19.i.ath6kl_tx_clear_node_map.exit_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_tx_clear_node_map.exit

for.body.i:                                       ; preds = %if.end35.i.for.body.i_crit_edge, %if.end19.i.for.body.i_crit_edge
  %i.060.i = phi i32 [ %sub30.i, %if.end35.i.for.body.i_crit_edge ], [ %29, %if.end19.i.for.body.i_crit_edge ]
  %sub30.i = add nsw i32 %i.060.i, -1
  %tx_pend32.i = getelementptr %struct.ath6kl, ptr %94, i32 0, i32 28, i32 %sub30.i, i32 2
  %105 = ptrtoint ptr %tx_pend32.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %tx_pend32.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool33.not.i = icmp eq i8 %106, 0
  br i1 %tobool33.not.i, label %if.end35.i, label %for.body.i.ath6kl_tx_clear_node_map.exit_crit_edge

for.body.i.ath6kl_tx_clear_node_map.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_tx_clear_node_map.exit

if.end35.i:                                       ; preds = %for.body.i
  %arrayidx31.i = getelementptr %struct.ath6kl, ptr %94, i32 0, i32 28, i32 %sub30.i
  %107 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_storeN_noabort(i32 %107, i32 8)
  store i64 0, ptr %arrayidx31.i, align 1
  %108 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %node_num.i, align 1
  %dec40.i = add i8 %109, -1
  store i8 %dec40.i, ptr %node_num.i, align 1
  %cmp27.not.i = icmp eq i32 %sub30.i, 0
  br i1 %cmp27.not.i, label %if.end35.i.ath6kl_tx_clear_node_map.exit_crit_edge, label %if.end35.i.for.body.i_crit_edge

if.end35.i.for.body.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end35.i.ath6kl_tx_clear_node_map.exit_crit_edge: ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_tx_clear_node_map.exit

ath6kl_tx_clear_node_map.exit:                    ; preds = %if.end35.i.ath6kl_tx_clear_node_map.exit_crit_edge, %for.body.i.ath6kl_tx_clear_node_map.exit_crit_edge, %if.end19.i.ath6kl_tx_clear_node_map.exit_crit_edge, %if.end12.i.ath6kl_tx_clear_node_map.exit_crit_edge, %if.end4.i.ath6kl_tx_clear_node_map.exit_crit_edge, %if.end.i.ath6kl_tx_clear_node_map.exit_crit_edge, %if.end281.ath6kl_tx_clear_node_map.exit_crit_edge
  call void @ath6kl_free_cookie(ptr noundef %3, ptr noundef nonnull %23) #10
  %flags = getelementptr inbounds %struct.ath6kl_vif, ptr %call254, i32 0, i32 6
  %110 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %flags, align 4
  %112 = and i32 %111, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool283.not = icmp eq i32 %112, 0
  br i1 %tobool283.not, label %ath6kl_tx_clear_node_map.exit.while.cond.backedge_crit_edge, label %if.then284

ath6kl_tx_clear_node_map.exit.while.cond.backedge_crit_edge: ; preds = %ath6kl_tx_clear_node_map.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.then284:                                       ; preds = %ath6kl_tx_clear_node_map.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @_clear_bit(i32 noundef 3, ptr noundef %flags) #10
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  %wake_event.0.off0.lcssa = phi i1 [ false, %entry.while.end_crit_edge ], [ %wake_event.0.off0.be, %while.cond.backedge.while.end_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %113 = ptrtoint ptr %skb_queue to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %skb_queue, align 4
  %cmp.i.i2.i = icmp eq ptr %114, %skb_queue
  %tobool.not.i13.i = icmp eq ptr %114, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %while.end.__skb_queue_purge.exit_crit_edge, label %while.end.while.body.i_crit_edge

while.end.while.body.i_crit_edge:                 ; preds = %while.end
  br label %while.body.i

while.end.__skb_queue_purge.exit_crit_edge:       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_queue_purge.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.end.while.body.i_crit_edge
  %115 = phi ptr [ %125, %while.body.i.while.body.i_crit_edge ], [ %114, %while.end.while.body.i_crit_edge ]
  %116 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i.i = add i32 %117, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i, align 4
  %118 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %115, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon, ptr %115, i32 0, i32 1
  %120 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %115, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon, ptr %119, i32 0, i32 1
  %122 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %121, ptr %prev17.i.i.i, align 4
  %123 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile ptr %119, ptr %121, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %115, i32 noundef 0) #10
  %124 = ptrtoint ptr %skb_queue to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %skb_queue, align 4
  %cmp.i.i.i = icmp eq ptr %125, %skb_queue
  %tobool.not.i1.i = icmp eq ptr %125, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i, label %while.body.i.__skb_queue_purge.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.__skb_queue_purge.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_queue_purge.exit

__skb_queue_purge.exit:                           ; preds = %while.body.i.__skb_queue_purge.exit_crit_edge, %while.end.__skb_queue_purge.exit_crit_edge
  %list_lock = getelementptr inbounds %struct.ath6kl, ptr %3, i32 0, i32 14
  call void @_raw_spin_lock_bh(ptr noundef %list_lock) #10
  %vif_list = getelementptr inbounds %struct.ath6kl, ptr %3, i32 0, i32 13
  %126 = ptrtoint ptr %vif_list to i32
  call void @__asan_load4_noabort(i32 %126)
  %vif.0430 = load ptr, ptr %vif_list, align 4
  %cmp294.not431 = icmp eq ptr %vif.0430, %vif_list
  br i1 %cmp294.not431, label %__skb_queue_purge.exit.for.end_crit_edge, label %__skb_queue_purge.exit.for.body_crit_edge

__skb_queue_purge.exit.for.body_crit_edge:        ; preds = %__skb_queue_purge.exit
  br label %for.body

__skb_queue_purge.exit.for.end_crit_edge:         ; preds = %__skb_queue_purge.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %__skb_queue_purge.exit.for.body_crit_edge
  %vif.0432 = phi ptr [ %vif.0, %for.inc.for.body_crit_edge ], [ %vif.0430, %__skb_queue_purge.exit.for.body_crit_edge ]
  %flags297 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0432, i32 0, i32 6
  %127 = ptrtoint ptr %flags297 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %flags297, align 4
  %and1.i418 = and i32 %128, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i418)
  %tobool299.not = icmp eq i32 %and1.i418, 0
  br i1 %tobool299.not, label %for.body.for.inc_crit_edge, label %land.lhs.true300

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true300:                                 ; preds = %for.body
  %fw_vif_idx = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0432, i32 0, i32 5
  %129 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %fw_vif_idx, align 8
  %idxprom301 = zext i8 %130 to i32
  %arrayidx302 = getelementptr [3 x i8], ptr %flushing, i32 0, i32 %idxprom301
  %131 = ptrtoint ptr %arrayidx302 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx302, align 1, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool303.not = icmp eq i8 %132, 0
  br i1 %tobool303.not, label %if.then304, label %land.lhs.true300.for.inc_crit_edge

land.lhs.true300.for.inc_crit_edge:               ; preds = %land.lhs.true300
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then304:                                       ; preds = %land.lhs.true300
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock_bh(ptr noundef %list_lock) #10
  %ndev306 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0432, i32 0, i32 2
  %133 = ptrtoint ptr %ndev306 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ndev306, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %134, i32 0, i32 103
  %135 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %_tx.i.i, align 128
  call void @netif_tx_wake_queue(ptr noundef %136) #10
  call void @_raw_spin_lock_bh(ptr noundef %list_lock) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then304, %land.lhs.true300.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %137 = ptrtoint ptr %vif.0432 to i32
  call void @__asan_load4_noabort(i32 %137)
  %vif.0 = load ptr, ptr %vif.0432, align 4
  %cmp294.not = icmp eq ptr %vif.0, %vif_list
  br i1 %cmp294.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %__skb_queue_purge.exit.for.end_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %list_lock) #10
  br i1 %wake_event.0.off0.lcssa, label %if.then316, label %for.end.if.end317_crit_edge

for.end.if.end317_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end317

if.then316:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %event_wq = getelementptr inbounds %struct.ath6kl, ptr %3, i32 0, i32 72
  call void @__wake_up(ptr noundef %event_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end317

if.end317:                                        ; preds = %if.then316, %for.end.if.end317_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %flushing) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %skb_queue) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_free_cookie(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath6kl_get_vif_by_index(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_tx_data_cleanup(ptr nocapture noundef readonly %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %htc_target = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 10
  %0 = ptrtoint ptr %htc_target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htc_target, align 4
  %arrayidx = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 36, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %dev.i = getelementptr inbounds %struct.htc_target, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %ar.i = getelementptr inbounds %struct.ath6kl_device, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ar.i, align 4
  %htc_ops.i = getelementptr inbounds %struct.ath6kl, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %htc_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %htc_ops.i, align 4
  %flush_txep.i = getelementptr inbounds %struct.ath6kl_htc_ops, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %flush_txep.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %flush_txep.i, align 4
  tail call void %11(ptr noundef %1, i32 noundef %3, i16 noundef zeroext 11) #10
  %12 = ptrtoint ptr %htc_target to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %htc_target, align 4
  %arrayidx.1 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 36, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.1, align 4
  %dev.i.1 = getelementptr inbounds %struct.htc_target, ptr %13, i32 0, i32 10
  %16 = ptrtoint ptr %dev.i.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i.1, align 4
  %ar.i.1 = getelementptr inbounds %struct.ath6kl_device, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %ar.i.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ar.i.1, align 4
  %htc_ops.i.1 = getelementptr inbounds %struct.ath6kl, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %htc_ops.i.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %htc_ops.i.1, align 4
  %flush_txep.i.1 = getelementptr inbounds %struct.ath6kl_htc_ops, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %flush_txep.i.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %flush_txep.i.1, align 4
  tail call void %23(ptr noundef %13, i32 noundef %15, i16 noundef zeroext 11) #10
  %24 = ptrtoint ptr %htc_target to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %htc_target, align 4
  %arrayidx.2 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 36, i32 2
  %26 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.2, align 4
  %dev.i.2 = getelementptr inbounds %struct.htc_target, ptr %25, i32 0, i32 10
  %28 = ptrtoint ptr %dev.i.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i.2, align 4
  %ar.i.2 = getelementptr inbounds %struct.ath6kl_device, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %ar.i.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ar.i.2, align 4
  %htc_ops.i.2 = getelementptr inbounds %struct.ath6kl, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %htc_ops.i.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %htc_ops.i.2, align 4
  %flush_txep.i.2 = getelementptr inbounds %struct.ath6kl_htc_ops, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %flush_txep.i.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %flush_txep.i.2, align 4
  tail call void %35(ptr noundef %25, i32 noundef %27, i16 noundef zeroext 11) #10
  %36 = ptrtoint ptr %htc_target to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %htc_target, align 4
  %arrayidx.3 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 36, i32 3
  %38 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.3, align 4
  %dev.i.3 = getelementptr inbounds %struct.htc_target, ptr %37, i32 0, i32 10
  %40 = ptrtoint ptr %dev.i.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i.3, align 4
  %ar.i.3 = getelementptr inbounds %struct.ath6kl_device, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %ar.i.3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ar.i.3, align 4
  %htc_ops.i.3 = getelementptr inbounds %struct.ath6kl, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %htc_ops.i.3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %htc_ops.i.3, align 4
  %flush_txep.i.3 = getelementptr inbounds %struct.ath6kl_htc_ops, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %flush_txep.i.3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %flush_txep.i.3, align 4
  tail call void %47(ptr noundef %37, i32 noundef %39, i16 noundef zeroext 11) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_rx_refill(ptr nocapture noundef readonly %target, i32 noundef %endpoint) local_unnamed_addr #0 align 64 {
entry:
  %queue = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 10
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %ar1 = getelementptr inbounds %struct.ath6kl_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ar1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %queue) #10
  %4 = getelementptr inbounds %struct.list_head, ptr %queue, i32 0, i32 1
  %htc_target = getelementptr inbounds %struct.ath6kl, ptr %3, i32 0, i32 10
  %5 = ptrtoint ptr %htc_target to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %htc_target, align 4
  %dev.i = getelementptr inbounds %struct.htc_target, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %ar.i = getelementptr inbounds %struct.ath6kl_device, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ar.i, align 4
  %htc_ops.i = getelementptr inbounds %struct.ath6kl, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %htc_ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %htc_ops.i, align 4
  %get_rxbuf_num.i = getelementptr inbounds %struct.ath6kl_htc_ops, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %get_rxbuf_num.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_rxbuf_num.i, align 4
  %call.i = tail call i32 %14(ptr noundef %6, i32 noundef %endpoint) #10
  %sub = sub i32 16, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp = icmp slt i32 %sub, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %15 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %queue, ptr %queue, align 4
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %queue, ptr %4, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.ath6kl_rx_refill, i32 noundef %sub, i32 noundef %endpoint) #10
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.body.preheader
  %rx_buf.049 = phi i32 [ %inc, %list_add_tail.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call3 = call ptr @ath6kl_buf_alloc(i32 noundef 1664) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %if.end5

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end5:                                          ; preds = %for.body
  %head = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 18
  %17 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 19
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %21 = ptrtoint ptr %20 to i32
  %and = and i32 %21, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp6 = icmp eq i32 %and, 0
  br i1 %cmp6, label %if.end5.if.end12_crit_edge, label %if.then7

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 6
  %22 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 7
  %24 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %23, %25
  %add.ptr = getelementptr i8, ptr %20, i32 -4
  %26 = ptrtoint ptr %add.ptr to i32
  %add = add i32 %26, 3
  %and10 = and i32 %add, -4
  %27 = inttoptr i32 %and10 to ptr
  %28 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 %sub.i
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 16
  %29 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr.i, ptr %tail.i, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end5.if.end12_crit_edge
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %pkt_cntxt.i = getelementptr inbounds %struct.htc_packet, ptr %18, i32 0, i32 1
  %32 = ptrtoint ptr %pkt_cntxt.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call3, ptr %pkt_cntxt.i, align 4
  %buf1.i = getelementptr inbounds %struct.htc_packet, ptr %18, i32 0, i32 3
  %33 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %31, ptr %buf1.i, align 4
  %buf_start.i = getelementptr inbounds %struct.htc_packet, ptr %18, i32 0, i32 2
  %34 = ptrtoint ptr %buf_start.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %buf_start.i, align 4
  %buf_len.i = getelementptr inbounds %struct.htc_packet, ptr %18, i32 0, i32 4
  %35 = ptrtoint ptr %buf_len.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1664, ptr %buf_len.i, align 4
  %endpoint.i = getelementptr inbounds %struct.htc_packet, ptr %18, i32 0, i32 6
  %36 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %endpoint, ptr %endpoint.i, align 4
  %skb14 = getelementptr inbounds %struct.htc_packet, ptr %18, i32 0, i32 11
  %37 = ptrtoint ptr %skb14 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call3, ptr %skb14, align 4
  %38 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %4, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %18, ptr noundef %39, ptr noundef nonnull %queue) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end12.list_add_tail.exit_crit_edge

if.end12.list_add_tail.exit_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %18, ptr %4, align 4
  %41 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %queue, ptr %18, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %42 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev3.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %18, ptr %39, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end12.list_add_tail.exit_crit_edge
  %inc = add nuw nsw i32 %rx_buf.049, 1
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %list_add_tail.exit.for.end_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_add_tail.exit.for.end_crit_edge, %for.body.for.end_crit_edge
  %44 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %45, %queue
  br i1 %cmp.i.not, label %for.end.cleanup_crit_edge, label %if.then17

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then17:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %htc_target to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %htc_target, align 4
  %dev.i44 = getelementptr inbounds %struct.htc_target, ptr %47, i32 0, i32 10
  %48 = ptrtoint ptr %dev.i44 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i44, align 4
  %ar.i45 = getelementptr inbounds %struct.ath6kl_device, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %ar.i45 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ar.i45, align 4
  %htc_ops.i46 = getelementptr inbounds %struct.ath6kl, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %htc_ops.i46 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %htc_ops.i46, align 4
  %add_rxbuf_multiple.i = getelementptr inbounds %struct.ath6kl_htc_ops, ptr %53, i32 0, i32 11
  %54 = ptrtoint ptr %add_rxbuf_multiple.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add_rxbuf_multiple.i, align 4
  %call.i47 = call i32 %55(ptr noundef %47, ptr noundef nonnull %queue) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %queue) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath6kl_buf_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_refill_amsdu_rxbufs(ptr noundef %ar, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not26 = icmp eq i32 %count, 0
  br i1 %tobool.not26, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %lock = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 21
  %amsdu_rx_buffer_queue = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 60
  %prev.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 60, i32 1
  br label %while.body

while.body:                                       ; preds = %list_add_tail.exit.while.body_crit_edge, %while.body.lr.ph
  %count.addr.027 = phi i32 [ %count, %while.body.lr.ph ], [ %dec, %list_add_tail.exit.while.body_crit_edge ]
  %call = tail call ptr @ath6kl_buf_alloc(i32 noundef 3996) #10
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %while.body.cleanup_crit_edge, label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %while.body
  %head = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 18
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  %and = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.end.if.end7_crit_edge, label %if.then2

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %5 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 7
  %7 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %6, %8
  %add.ptr = getelementptr i8, ptr %3, i32 -4
  %9 = ptrtoint ptr %add.ptr to i32
  %add = add i32 %9, 3
  %and5 = and i32 %add, -4
  %10 = inttoptr i32 %and5 to ptr
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %sub.i
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr.i, ptr %tail.i, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %if.end.if.end7_crit_edge
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %pkt_cntxt.i = getelementptr inbounds %struct.htc_packet, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %pkt_cntxt.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call, ptr %pkt_cntxt.i, align 4
  %buf1.i = getelementptr inbounds %struct.htc_packet, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %buf1.i, align 4
  %buf_start.i = getelementptr inbounds %struct.htc_packet, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %buf_start.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %buf_start.i, align 4
  %buf_len.i = getelementptr inbounds %struct.htc_packet, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %buf_len.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3996, ptr %buf_len.i, align 4
  %endpoint.i = getelementptr inbounds %struct.htc_packet, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %endpoint.i, align 4
  %skb9 = getelementptr inbounds %struct.htc_packet, ptr %1, i32 0, i32 11
  %20 = ptrtoint ptr %skb9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call, ptr %skb9, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %22, ptr noundef %amsdu_rx_buffer_queue) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end7.list_add_tail.exit_crit_edge

if.end7.list_add_tail.exit_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %1, ptr %prev.i, align 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %amsdu_rx_buffer_queue, ptr %1, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %1, ptr %22, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end7.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %dec = add i32 %count.addr.027, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %list_add_tail.exit.cleanup_crit_edge, label %list_add_tail.exit.while.body_crit_edge

list_add_tail.exit.while.body_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ath6kl_alloc_amsdu_rxbuf(ptr nocapture noundef readonly %target, i32 noundef %endpoint, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 10
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %ar1 = getelementptr inbounds %struct.ath6kl_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ar1, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.ath6kl_alloc_amsdu_rxbuf, i32 noundef %endpoint, i32 noundef %len) #10
  %4 = add i32 %len, -3997
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2332, i32 %4)
  %5 = icmp ult i32 %4, -2332
  br i1 %5, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.ath6kl, ptr %3, i32 0, i32 21
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %amsdu_rx_buffer_queue = getelementptr inbounds %struct.ath6kl, ptr %3, i32 0, i32 60
  %6 = ptrtoint ptr %amsdu_rx_buffer_queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %amsdu_rx_buffer_queue, align 4
  %cmp.i.not = icmp eq ptr %7, %amsdu_rx_buffer_queue
  br i1 %cmp.i.not, label %refill_buf.thread, label %if.end5

refill_buf.thread:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %if.then16

if.end5:                                          ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end5.list_del.exit_crit_edge

if.end5.list_del.exit_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end5.list_del.exit_crit_edge
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %list_del.exit
  %pkt_pos.0.in = phi ptr [ %amsdu_rx_buffer_queue, %list_del.exit ], [ %pkt_pos.0, %for.cond.for.cond_crit_edge ]
  %depth.0 = phi i32 [ 0, %list_del.exit ], [ %inc, %for.cond.for.cond_crit_edge ]
  %16 = ptrtoint ptr %pkt_pos.0.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %pkt_pos.0 = load ptr, ptr %pkt_pos.0.in, align 4
  %cmp.i37.not = icmp eq ptr %pkt_pos.0, %amsdu_rx_buffer_queue
  %inc = add i32 %depth.0, 1
  br i1 %cmp.i37.not, label %refill_buf, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

refill_buf:                                       ; preds = %for.cond
  %sub = sub i32 4, %depth.0
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %endpoint14 = getelementptr inbounds %struct.htc_packet, ptr %7, i32 0, i32 6
  %17 = ptrtoint ptr %endpoint14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %endpoint, ptr %endpoint14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub)
  %cmp15 = icmp sgt i32 %sub, 2
  br i1 %cmp15, label %refill_buf.if.then16_crit_edge, label %refill_buf.cleanup_crit_edge

refill_buf.cleanup_crit_edge:                     ; preds = %refill_buf
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

refill_buf.if.then16_crit_edge:                   ; preds = %refill_buf
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

if.then16:                                        ; preds = %refill_buf.if.then16_crit_edge, %refill_buf.thread
  %refill_cnt.043 = phi i32 [ 4, %refill_buf.thread ], [ %sub, %refill_buf.if.then16_crit_edge ]
  %packet.042 = phi ptr [ null, %refill_buf.thread ], [ %7, %refill_buf.if.then16_crit_edge ]
  tail call void @ath6kl_refill_amsdu_rxbufs(ptr noundef %3, i32 noundef %refill_cnt.043)
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %refill_buf.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %packet.042, %if.then16 ], [ %7, %refill_buf.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_rx(ptr nocapture noundef readonly %target, ptr nocapture noundef readonly %packet) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 10
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %ar1 = getelementptr inbounds %struct.ath6kl_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ar1, align 4
  %pkt_cntxt = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 1
  %4 = ptrtoint ptr %pkt_cntxt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pkt_cntxt, align 4
  %status2 = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 7
  %6 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status2, align 4
  %endpoint = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 6
  %8 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %endpoint, align 4
  %buf = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 3
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buf, align 4
  %act_len = getelementptr inbounds %struct.htc_packet, ptr %packet, i32 0, i32 5
  %12 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %act_len, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.ath6kl_rx, ptr noundef %3, i32 noundef %9, ptr noundef %5, ptr noundef %11, i32 noundef %13, i32 noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %14 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %act_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %15)
  %cmp = icmp ult i32 %15, 6
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @consume_skb(ptr noundef %5) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add = add i32 %15, 6
  %call = tail call ptr @skb_put(ptr noundef %5, i32 noundef %add) #10
  %call5 = tail call ptr @skb_pull(ptr noundef %5, i32 noundef 6) #10
  %data = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 19
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 6
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  tail call void @ath6kl_dbg_dump(i32 noundef 16384, ptr noundef nonnull @__func__.ath6kl_rx, ptr noundef nonnull @.str.20, ptr noundef %17, i32 noundef %19) #10
  %ctrl_ep = getelementptr inbounds %struct.ath6kl, ptr %3, i32 0, i32 42
  %20 = ptrtoint ptr %ctrl_ep to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ctrl_ep, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %21)
  %cmp6 = icmp eq i32 %9, %21
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %flag = getelementptr inbounds %struct.ath6kl, ptr %3, i32 0, i32 75
  %22 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flag, align 4
  %and1.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool9.not = icmp eq i32 %and1.i, 0
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ath6kl_check_wow_status(ptr noundef %3) #10
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %3, i32 0, i32 7
  %24 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wmi, align 4
  %call11 = tail call i32 @ath6kl_wmi_control_rx(ptr noundef %25, ptr noundef %5) #10
  br label %cleanup

if.end12:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %info1.i = getelementptr inbounds %struct.wmi_cmd_hdr, ptr %27, i32 0, i32 1
  br label %if.end17

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %info3.i = getelementptr inbounds %struct.wmi_data_hdr, ptr %29, i32 0, i32 3
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end12
  %info3.i.sink = phi ptr [ %info3.i, %if.else ], [ %info1.i, %if.end12 ]
  %30 = ptrtoint ptr %info3.i.sink to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %info3.i.sink, align 1
  %32 = lshr i16 %31, 8
  %33 = trunc i16 %32 to i8
  %if_idx.0 = and i8 %33, 15
  %call18 = tail call ptr @ath6kl_get_vif_by_index(ptr noundef %3, i8 noundef zeroext %if_idx.0) #10
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef %5) #10
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %if_lock = getelementptr inbounds %struct.ath6kl_vif, ptr %call18, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %if_lock) #10
  %ndev = getelementptr inbounds %struct.ath6kl_vif, ptr %call18, i32 0, i32 2
  %34 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ndev, align 4
  %stats = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 36
  %36 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %stats, align 8
  %inc = add i32 %37, 1
  store i32 %inc, ptr %stats, align 8
  %38 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %act_len, align 4
  %40 = load ptr, ptr %ndev, align 4
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 36, i32 2
  %41 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rx_bytes, align 8
  %add25 = add i32 %42, %39
  store i32 %add25, ptr %rx_bytes, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %if_lock) #10
  %43 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ndev, align 4
  %45 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 2
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %44, ptr %45, align 8
  %flag28 = getelementptr inbounds %struct.ath6kl, ptr %3, i32 0, i32 75
  %47 = ptrtoint ptr %flag28 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %flag28, align 4
  %and1.i485 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i485)
  %tobool30.not = icmp eq i32 %and1.i485, 0
  br i1 %tobool30.not, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.end21
  %call32 = tail call ptr @skb_pull(ptr noundef %5, i32 noundef 2) #10
  %49 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ndev, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then31.cleanup_crit_edge, label %if.end.i

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.then31
  %51 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %45, align 8
  %flags.i = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 14
  %52 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef nonnull %5) #10
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %5, ptr noundef %50) #10
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 15, i32 0, i32 18
  %54 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %call.i, ptr %protocol.i, align 8
  %call4.i = tail call i32 @netif_rx_ni(ptr noundef nonnull %5) #10
  br label %cleanup

if.end34:                                         ; preds = %if.end21
  tail call void @ath6kl_check_wow_status(ptr noundef %3) #10
  %55 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data, align 4
  %nw_type = getelementptr inbounds %struct.ath6kl_vif, ptr %call18, i32 0, i32 17
  %57 = ptrtoint ptr %nw_type to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %nw_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %58)
  %cmp36.not = icmp eq i8 %58, 16
  br i1 %cmp36.not, label %if.then59, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end34
  %59 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %act_len, align 4
  %61 = add i32 %60, -3869
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3841, i32 %61)
  %62 = icmp ult i32 %61, -3841
  br i1 %62, label %if.then45, label %if.end52

if.then45:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @ath6kl_info(ptr noundef nonnull @.str.21) #10
  %63 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ndev, align 4
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %64, i32 0, i32 36, i32 4
  %65 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rx_errors, align 8
  %inc48 = add i32 %66, 1
  store i32 %inc48, ptr %rx_errors, align 8
  %67 = load ptr, ptr %ndev, align 4
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %67, i32 0, i32 36, i32 10
  %68 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rx_length_errors, align 8
  %inc51 = add i32 %69, 1
  store i32 %inc51, ptr %rx_length_errors, align 8
  tail call void @consume_skb(ptr noundef %5) #10
  br label %cleanup

if.end52:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %info3 = getelementptr inbounds %struct.wmi_data_hdr, ptr %56, i32 0, i32 3
  %70 = ptrtoint ptr %info3 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %71 = load i16, ptr %info3, align 1
  br label %if.end192

if.then59:                                        ; preds = %if.end34
  %info3494 = getelementptr inbounds %struct.wmi_data_hdr, ptr %56, i32 0, i32 3
  %72 = ptrtoint ptr %info3494 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 2)
  %73 = load i16, ptr %info3494, align 1
  %info2.i = getelementptr inbounds %struct.wmi_data_hdr, ptr %56, i32 0, i32 2
  %74 = ptrtoint ptr %info2.i to i32
  call void @__asan_loadN_noabort(i32 %74, i32 2)
  %75 = load i16, ptr %info2.i, align 1
  %info = getelementptr inbounds %struct.wmi_data_hdr, ptr %56, i32 0, i32 1
  %76 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %info, align 1
  %78 = and i16 %73, 255
  %narrow = add nuw nsw i16 %78, 6
  %79 = and i16 %73, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %tobool72.not = icmp eq i16 %79, 0
  %80 = lshr i16 %75, 5
  %trunc503 = trunc i16 %80 to i3
  %81 = zext i3 %trunc503 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.37)
  switch i3 %trunc503, label %if.then59.sw.epilog_crit_edge [
    i3 2, label %sw.bb80
    i3 1, label %sw.bb
  ]

if.then59.sw.epilog_crit_edge:                    ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  %narrow481 = add nuw nsw i16 %78, 12
  br label %sw.epilog

sw.bb80:                                          ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  %narrow482 = add nuw nsw i16 %78, 9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb80, %sw.bb, %if.then59.sw.epilog_crit_edge
  %offset.0 = phi i16 [ %narrow, %if.then59.sw.epilog_crit_edge ], [ %narrow481, %sw.bb ], [ %narrow482, %sw.bb80 ]
  %conv85 = zext i16 %offset.0 to i32
  %add.ptr = getelementptr i8, ptr %56, i32 %conv85
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr, i32 0, i32 1
  %call86 = tail call ptr @ath6kl_find_sta(ptr noundef nonnull %call18, ptr noundef %h_source) #10
  %tobool87.not = icmp eq ptr %call86, null
  br i1 %tobool87.not, label %if.then88, label %if.end89

if.then88:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef %5) #10
  br label %cleanup

if.end89:                                         ; preds = %sw.epilog
  %82 = ptrtoint ptr %call86 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %call86, align 4
  %and104 = and i16 %83, -3
  %84 = lshr i8 %77, 4
  %85 = and i8 %84, 2
  %86 = zext i8 %85 to i16
  %storemerge = or i16 %and104, %86
  store i16 %storemerge, ptr %call86, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool110.not = icmp eq i8 %85, 0
  %brmerge = select i1 %tobool110.not, i1 true, i1 %tobool72.not
  br i1 %brmerge, label %if.end89.if.end115_crit_edge, label %if.then114

if.end89.if.end115_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115

if.then114:                                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ath6kl_uapsd_trigger_frame_rx(ptr noundef nonnull %call18, ptr noundef nonnull %call86)
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %if.end89.if.end115_crit_edge
  %87 = lshr i16 %83, 1
  %88 = and i16 %87, 1
  %89 = ptrtoint ptr %call86 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %call86, align 4
  %91 = and i16 %90, 2
  %.lobit = lshr exact i16 %91, 1
  call void @__sanitizer_cov_trace_cmp2(i16 %88, i16 %.lobit)
  %tobool124.not = icmp ne i16 %88, %.lobit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %tobool121.not = icmp eq i16 %91, 0
  %or.cond483 = and i1 %tobool121.not, %tobool124.not
  br i1 %or.cond483, label %if.then130, label %if.end115.if.end182_crit_edge

if.end115.if.end182_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end182

if.then130:                                       ; preds = %if.end115
  %psq_lock = getelementptr inbounds %struct.ath6kl_sta, ptr %call86, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %psq_lock) #10
  %mgmt_psq_len = getelementptr inbounds %struct.ath6kl_sta, ptr %call86, i32 0, i32 10
  %92 = ptrtoint ptr %mgmt_psq_len to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %mgmt_psq_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp131.not504 = icmp eq i32 %93, 0
  br i1 %cmp131.not504, label %if.then130.while.end_crit_edge, label %while.body.lr.ph

if.then130.while.end_crit_edge:                   ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.then130
  %mgmt_psq = getelementptr inbounds %struct.ath6kl_sta, ptr %call86, i32 0, i32 9
  %fw_vif_idx = getelementptr inbounds %struct.ath6kl_vif, ptr %call18, i32 0, i32 5
  %wmi136 = getelementptr inbounds %struct.ath6kl, ptr %3, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %while.body.lr.ph
  %94 = ptrtoint ptr %mgmt_psq to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mgmt_psq, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %95) #10
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %prev.i.i, align 4
  %98 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %95, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %97, ptr %prev1.i.i.i, align 4
  %101 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %99, ptr %97, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %102 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr inttoptr (i32 256 to ptr), ptr %95, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %95, i32 0, i32 1
  %103 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %104 = ptrtoint ptr %mgmt_psq_len to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %mgmt_psq_len, align 4
  %dec = add i32 %105, -1
  store i32 %dec, ptr %mgmt_psq_len, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %psq_lock) #10
  %106 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %fw_vif_idx, align 8
  %108 = ptrtoint ptr %wmi136 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %wmi136, align 4
  %id = getelementptr inbounds %struct.ath6kl_mgmt_buff, ptr %95, i32 0, i32 3
  %110 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %id, align 4
  %freq = getelementptr inbounds %struct.ath6kl_mgmt_buff, ptr %95, i32 0, i32 1
  %112 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %freq, align 4
  %wait = getelementptr inbounds %struct.ath6kl_mgmt_buff, ptr %95, i32 0, i32 2
  %114 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %wait, align 4
  %buf137 = getelementptr inbounds %struct.ath6kl_mgmt_buff, ptr %95, i32 0, i32 6
  %len139 = getelementptr inbounds %struct.ath6kl_mgmt_buff, ptr %95, i32 0, i32 5
  %116 = ptrtoint ptr %len139 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %len139, align 4
  %conv140 = trunc i32 %117 to i16
  %no_cck = getelementptr inbounds %struct.ath6kl_mgmt_buff, ptr %95, i32 0, i32 4
  %118 = ptrtoint ptr %no_cck to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %no_cck, align 4, !range !113
  %120 = zext i8 %119 to i32
  %call143 = tail call i32 @ath6kl_wmi_send_mgmt_cmd(ptr noundef %109, i8 noundef zeroext %107, i32 noundef %111, i32 noundef %113, i32 noundef %115, ptr noundef %buf137, i16 noundef zeroext %conv140, i32 noundef %120) #10
  tail call void @kfree(ptr noundef %95) #10
  tail call void @_raw_spin_lock_bh(ptr noundef %psq_lock) #10
  %121 = ptrtoint ptr %mgmt_psq_len to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %mgmt_psq_len, align 4
  %cmp131.not = icmp eq i32 %122, 0
  br i1 %cmp131.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %if.then130.while.end_crit_edge
  %123 = ptrtoint ptr %mgmt_psq_len to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %mgmt_psq_len, align 4
  %psq = getelementptr inbounds %struct.ath6kl_sta, ptr %call86, i32 0, i32 7
  %call147505 = tail call ptr @skb_dequeue(ptr noundef %psq) #10
  %tobool148.not506 = icmp eq ptr %call147505, null
  br i1 %tobool148.not506, label %while.end.while.end154_crit_edge, label %while.end.while.body149_crit_edge

while.end.while.body149_crit_edge:                ; preds = %while.end
  br label %while.body149

while.end.while.end154_crit_edge:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end154

while.body149:                                    ; preds = %while.body149.while.body149_crit_edge, %while.end.while.body149_crit_edge
  %call147507 = phi ptr [ %call147, %while.body149.while.body149_crit_edge ], [ %call147505, %while.end.while.body149_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %psq_lock) #10
  %124 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ndev, align 4
  %call152 = tail call i32 @ath6kl_data_tx(ptr noundef nonnull %call147507, ptr noundef %125)
  tail call void @_raw_spin_lock_bh(ptr noundef %psq_lock) #10
  %call147 = tail call ptr @skb_dequeue(ptr noundef %psq) #10
  %tobool148.not = icmp eq ptr %call147, null
  br i1 %tobool148.not, label %while.body149.while.end154_crit_edge, label %while.body149.while.body149_crit_edge

while.body149.while.body149_crit_edge:            ; preds = %while.body149
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body149

while.body149.while.end154_crit_edge:             ; preds = %while.body149
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end154

while.end154:                                     ; preds = %while.body149.while.end154_crit_edge, %while.end.while.end154_crit_edge
  %apsdq = getelementptr inbounds %struct.ath6kl_sta, ptr %call86, i32 0, i32 12
  %126 = ptrtoint ptr %apsdq to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %apsdq, align 4
  %cmp.i.not = icmp eq ptr %127, %apsdq
  %call160508 = tail call ptr @skb_dequeue(ptr noundef %apsdq) #10
  %tobool161.not509 = icmp eq ptr %call160508, null
  br i1 %tobool161.not509, label %while.end154.while.end167_crit_edge, label %while.end154.while.body162_crit_edge

while.end154.while.body162_crit_edge:             ; preds = %while.end154
  br label %while.body162

while.end154.while.end167_crit_edge:              ; preds = %while.end154
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end167

while.body162:                                    ; preds = %while.body162.while.body162_crit_edge, %while.end154.while.body162_crit_edge
  %call160510 = phi ptr [ %call160, %while.body162.while.body162_crit_edge ], [ %call160508, %while.end154.while.body162_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %psq_lock) #10
  %128 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ndev, align 4
  %call165 = tail call i32 @ath6kl_data_tx(ptr noundef nonnull %call160510, ptr noundef %129)
  tail call void @_raw_spin_lock_bh(ptr noundef %psq_lock) #10
  %call160 = tail call ptr @skb_dequeue(ptr noundef %apsdq) #10
  %tobool161.not = icmp eq ptr %call160, null
  br i1 %tobool161.not, label %while.body162.while.end167_crit_edge, label %while.body162.while.body162_crit_edge

while.body162.while.body162_crit_edge:            ; preds = %while.body162
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body162

while.body162.while.end167_crit_edge:             ; preds = %while.body162
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end167

while.end167:                                     ; preds = %while.body162.while.end167_crit_edge, %while.end154.while.end167_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %psq_lock) #10
  br i1 %cmp.i.not, label %while.end167.if.end175_crit_edge, label %if.then170

while.end167.if.end175_crit_edge:                 ; preds = %while.end167
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end175

if.then170:                                       ; preds = %while.end167
  call void @__sanitizer_cov_trace_pc() #12
  %wmi171 = getelementptr inbounds %struct.ath6kl, ptr %3, i32 0, i32 7
  %130 = ptrtoint ptr %wmi171 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %wmi171, align 4
  %fw_vif_idx172 = getelementptr inbounds %struct.ath6kl_vif, ptr %call18, i32 0, i32 5
  %132 = ptrtoint ptr %fw_vif_idx172 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %fw_vif_idx172, align 8
  %aid = getelementptr inbounds %struct.ath6kl_sta, ptr %call86, i32 0, i32 2
  %134 = ptrtoint ptr %aid to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %aid, align 4
  %conv173 = zext i8 %135 to i16
  %call174 = tail call i32 @ath6kl_wmi_set_apsd_bfrd_traf(ptr noundef %131, i8 noundef zeroext %133, i16 noundef zeroext %conv173, i16 noundef zeroext 0, i32 noundef 0) #10
  br label %if.end175

if.end175:                                        ; preds = %if.then170, %while.end167.if.end175_crit_edge
  %wmi176 = getelementptr inbounds %struct.ath6kl, ptr %3, i32 0, i32 7
  %136 = ptrtoint ptr %wmi176 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %wmi176, align 4
  %fw_vif_idx177 = getelementptr inbounds %struct.ath6kl_vif, ptr %call18, i32 0, i32 5
  %138 = ptrtoint ptr %fw_vif_idx177 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %fw_vif_idx177, align 8
  %aid178 = getelementptr inbounds %struct.ath6kl_sta, ptr %call86, i32 0, i32 2
  %140 = ptrtoint ptr %aid178 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %aid178, align 4
  %conv179 = zext i8 %141 to i16
  %call180 = tail call i32 @ath6kl_wmi_set_pvb_cmd(ptr noundef %137, i8 noundef zeroext %139, i16 noundef zeroext %conv179, i1 noundef zeroext false) #10
  br label %if.end182

if.end182:                                        ; preds = %if.end175, %if.end115.if.end182_crit_edge
  %142 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %act_len, align 4
  %144 = add i32 %143, -3869
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3841, i32 %144)
  %145 = icmp ult i32 %144, -3841
  br i1 %145, label %if.then190, label %if.end182.if.end192_crit_edge

if.end182.if.end192_crit_edge:                    ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end192

if.then190:                                       ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef %5) #10
  br label %cleanup

if.end192:                                        ; preds = %if.end182.if.end192_crit_edge, %if.end52
  %146 = phi i16 [ %73, %if.end182.if.end192_crit_edge ], [ %71, %if.end52 ]
  %info2.i487 = getelementptr inbounds %struct.wmi_data_hdr, ptr %56, i32 0, i32 2
  %147 = ptrtoint ptr %info2.i487 to i32
  call void @__asan_loadN_noabort(i32 %147, i32 2)
  %148 = load i16, ptr %info2.i487, align 1
  %149 = and i16 %148, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %149)
  %tobool195 = icmp ne i16 %149, 0
  %info.i = getelementptr inbounds %struct.wmi_data_hdr, ptr %56, i32 0, i32 1
  %150 = ptrtoint ptr %info.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %info.i, align 1
  %152 = lshr i8 %151, 2
  %153 = and i8 %152, 7
  %154 = and i16 %148, -241
  %155 = tail call i16 @llvm.bswap.i16(i16 %154) #10
  %.mask.i = and i8 %151, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %.mask.i)
  %cmp.i492.not = icmp eq i8 %.mask.i, 64
  %call202 = tail call ptr @skb_pull(ptr noundef %5, i32 noundef 6) #10
  %156 = lshr i16 %148, 5
  %trunc = trunc i16 %156 to i3
  %157 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %157, ptr @__sancov_gen_cov_switch_values.38)
  switch i3 %trunc, label %if.end192.sw.epilog216_crit_edge [
    i3 1, label %if.end192.sw.epilog216.sink.split_crit_edge
    i3 2, label %sw.bb206
  ]

if.end192.sw.epilog216.sink.split_crit_edge:      ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog216.sink.split

if.end192.sw.epilog216_crit_edge:                 ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog216

sw.bb206:                                         ; preds = %if.end192
  %158 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %data, align 4
  %csum_flags = getelementptr inbounds %struct.wmi_rx_meta_v2, ptr %159, i32 0, i32 1
  %160 = ptrtoint ptr %csum_flags to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %csum_flags, align 1
  %162 = and i8 %161, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool210.not = icmp eq i8 %162, 0
  br i1 %tobool210.not, label %sw.bb206.sw.epilog216.sink.split_crit_edge, label %if.then211

sw.bb206.sw.epilog216.sink.split_crit_edge:       ; preds = %sw.bb206
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog216.sink.split

if.then211:                                       ; preds = %sw.bb206
  call void @__sanitizer_cov_trace_pc() #12
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 15
  %163 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %163)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  %bf.set = or i16 %bf.clear, 1024
  store i16 %bf.set, ptr %ip_summed, align 8
  %164 = ptrtoint ptr %159 to i32
  call void @__asan_loadN_noabort(i32 %164, i32 2)
  %165 = load i16, ptr %159, align 1
  %conv212 = zext i16 %165 to i32
  %166 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 15, i32 0, i32 5
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %conv212, ptr %166, align 8
  br label %sw.epilog216.sink.split

sw.epilog216.sink.split:                          ; preds = %if.then211, %sw.bb206.sw.epilog216.sink.split_crit_edge, %if.end192.sw.epilog216.sink.split_crit_edge
  %.sink = phi i32 [ 6, %if.end192.sw.epilog216.sink.split_crit_edge ], [ 3, %if.then211 ], [ 3, %sw.bb206.sw.epilog216.sink.split_crit_edge ]
  %call214 = tail call ptr @skb_pull(ptr noundef %5, i32 noundef %.sink) #10
  br label %sw.epilog216

sw.epilog216:                                     ; preds = %sw.epilog216.sink.split, %if.end192.sw.epilog216_crit_edge
  %conv54.mask = and i16 %146, 255
  %conv217 = zext i16 %conv54.mask to i32
  %call218 = tail call ptr @skb_pull(ptr noundef %5, i32 noundef %conv217) #10
  br i1 %cmp.i492.not, label %if.then220, label %if.else223

if.then220:                                       ; preds = %sw.epilog216
  call void @__sanitizer_cov_trace_pc() #12
  %wmi221 = getelementptr inbounds %struct.ath6kl, ptr %3, i32 0, i32 7
  %168 = ptrtoint ptr %wmi221 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %wmi221, align 4
  %call222 = tail call i32 @ath6kl_wmi_dot11_hdr_remove(ptr noundef %169, ptr noundef %5) #10
  br label %if.end228

if.else223:                                       ; preds = %sw.epilog216
  br i1 %tobool195, label %if.else223.if.end231_crit_edge, label %if.then225

if.else223.if.end231_crit_edge:                   ; preds = %if.else223
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end231

if.then225:                                       ; preds = %if.else223
  call void @__sanitizer_cov_trace_pc() #12
  %call226 = tail call i32 @ath6kl_wmi_dot3_2_dix(ptr noundef %5) #10
  br label %if.end228

if.end228:                                        ; preds = %if.then225, %if.then220
  %status.0 = phi i32 [ %call222, %if.then220 ], [ %call226, %if.then225 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %tobool229.not = icmp eq i32 %status.0, 0
  br i1 %tobool229.not, label %if.end228.if.end231_crit_edge, label %if.then230

if.end228.if.end231_crit_edge:                    ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end231

if.then230:                                       ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef %5) #10
  br label %cleanup

if.end231:                                        ; preds = %if.end228.if.end231_crit_edge, %if.else223.if.end231_crit_edge
  %170 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %ndev, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %171, i32 0, i32 14
  %172 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %flags, align 8
  %and233 = and i32 %173, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and233)
  %tobool234.not = icmp eq i32 %and233, 0
  br i1 %tobool234.not, label %if.then235, label %if.end236

if.then235:                                       ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef %5) #10
  br label %cleanup

if.end236:                                        ; preds = %if.end231
  %174 = ptrtoint ptr %nw_type to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %nw_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %175)
  %cmp239 = icmp eq i8 %175, 16
  br i1 %cmp239, label %if.then241, label %if.end236.if.end274_crit_edge

if.end236.if.end274_crit_edge:                    ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end274

if.then241:                                       ; preds = %if.end236
  %176 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %data, align 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %177, align 4
  %180 = and i32 %179, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool.i.not = icmp eq i32 %180, 0
  br i1 %tobool.i.not, label %if.else247, label %if.then245

if.then245:                                       ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #12
  %call246 = tail call ptr @skb_copy(ptr noundef %5, i32 noundef 2592) #10
  br label %if.end264

if.else247:                                       ; preds = %if.then241
  %call250 = tail call ptr @ath6kl_find_sta(ptr noundef nonnull %call18, ptr noundef %177) #10
  %tobool251.not = icmp eq ptr %call250, null
  br i1 %tobool251.not, label %if.else247.if.end269_crit_edge, label %land.lhs.true252

if.else247.if.end269_crit_edge:                   ; preds = %if.else247
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end269

land.lhs.true252:                                 ; preds = %if.else247
  %intra_bss = getelementptr inbounds %struct.ath6kl, ptr %3, i32 0, i32 57
  %181 = ptrtoint ptr %intra_bss to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %intra_bss, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %182)
  %tobool254.not = icmp eq i8 %182, 0
  br i1 %tobool254.not, label %if.end269.thread, label %land.lhs.true252.if.end264_crit_edge

land.lhs.true252.if.end264_crit_edge:             ; preds = %land.lhs.true252
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end264

if.end269.thread:                                 ; preds = %land.lhs.true252
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef %5) #10
  br label %cleanup

if.end264:                                        ; preds = %land.lhs.true252.if.end264_crit_edge, %if.then245
  %skb1.0 = phi ptr [ %call246, %if.then245 ], [ %5, %land.lhs.true252.if.end264_crit_edge ]
  %skb.0 = phi ptr [ %5, %if.then245 ], [ null, %land.lhs.true252.if.end264_crit_edge ]
  %tobool265.not = icmp eq ptr %skb1.0, null
  br i1 %tobool265.not, label %if.end264.if.end269_crit_edge, label %if.then266

if.end264.if.end269_crit_edge:                    ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end269

if.then266:                                       ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #12
  %183 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %ndev, align 4
  %call268 = tail call i32 @ath6kl_data_tx(ptr noundef nonnull %skb1.0, ptr noundef %184)
  br label %if.end269

if.end269:                                        ; preds = %if.then266, %if.end264.if.end269_crit_edge, %if.else247.if.end269_crit_edge
  %skb.0500 = phi ptr [ %skb.0, %if.then266 ], [ %skb.0, %if.end264.if.end269_crit_edge ], [ %5, %if.else247.if.end269_crit_edge ]
  %cmp270 = icmp eq ptr %skb.0500, null
  br i1 %cmp270, label %if.end269.cleanup_crit_edge, label %if.end269.if.end274_crit_edge

if.end269.if.end274_crit_edge:                    ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end274

if.end269.cleanup_crit_edge:                      ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end274:                                        ; preds = %if.end269.if.end274_crit_edge, %if.end236.if.end274_crit_edge
  %skb.1 = phi ptr [ %skb.0500, %if.end269.if.end274_crit_edge ], [ %5, %if.end236.if.end274_crit_edge ]
  %data275 = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 19
  %185 = ptrtoint ptr %data275 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %data275, align 4
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %186, align 4
  %189 = and i32 %188, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %tobool.i.not.i = icmp eq i32 %189, 0
  br i1 %tobool.i.not.i, label %if.then279, label %if.else299

if.then279:                                       ; preds = %if.end274
  %190 = ptrtoint ptr %nw_type to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %nw_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %191)
  %cmp282 = icmp eq i8 %191, 16
  br i1 %cmp282, label %if.then284, label %if.else292

if.then284:                                       ; preds = %if.then279
  %h_source285 = getelementptr inbounds %struct.ethhdr, ptr %186, i32 0, i32 1
  %call287 = tail call ptr @ath6kl_find_sta(ptr noundef nonnull %call18, ptr noundef %h_source285) #10
  %tobool288.not = icmp eq ptr %call287, null
  br i1 %tobool288.not, label %if.then284.cleanup_crit_edge, label %if.end290

if.then284.cleanup_crit_edge:                     ; preds = %if.then284
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end290:                                        ; preds = %if.then284
  call void @__sanitizer_cov_trace_pc() #12
  %aggr_conn291 = getelementptr inbounds %struct.ath6kl_sta, ptr %call287, i32 0, i32 13
  br label %if.end294

if.else292:                                       ; preds = %if.then279
  call void @__sanitizer_cov_trace_pc() #12
  %aggr_cntxt = getelementptr inbounds %struct.ath6kl_vif, ptr %call18, i32 0, i32 24
  %192 = ptrtoint ptr %aggr_cntxt to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %aggr_cntxt, align 8
  br label %if.end294

if.end294:                                        ; preds = %if.else292, %if.end290
  %aggr_conn.0.in = phi ptr [ %aggr_conn291, %if.end290 ], [ %193, %if.else292 ]
  %194 = ptrtoint ptr %aggr_conn.0.in to i32
  call void @__asan_load4_noabort(i32 %194)
  %aggr_conn.0 = load ptr, ptr %aggr_conn.0.in, align 4
  %call296 = tail call fastcc zeroext i1 @aggr_process_recv_frm(ptr noundef %aggr_conn.0, i8 noundef zeroext %153, i16 noundef zeroext %155, i1 noundef zeroext %tobool195, ptr noundef %skb.1)
  br i1 %call296, label %if.end294.cleanup_crit_edge, label %if.end294.if.end308_crit_edge

if.end294.if.end308_crit_edge:                    ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end308

if.end294.cleanup_crit_edge:                      ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else299:                                       ; preds = %if.end274
  %195 = ptrtoint ptr %186 to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %186, align 2
  %add.ptr1.i = getelementptr i8, ptr %186, i32 2
  %197 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %198, %196
  %add.ptr3.i = getelementptr i8, ptr %186, i32 4
  %199 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %200
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i493 = icmp eq i16 %and510.i, -1
  br i1 %cmp.i493, label %if.else299.if.end308_crit_edge, label %if.then303

if.else299.if.end308_crit_edge:                   ; preds = %if.else299
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end308

if.then303:                                       ; preds = %if.else299
  call void @__sanitizer_cov_trace_pc() #12
  %201 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %ndev, align 4
  %multicast = getelementptr inbounds %struct.net_device, ptr %202, i32 0, i32 36, i32 8
  %203 = ptrtoint ptr %multicast to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %multicast, align 8
  %inc306 = add i32 %204, 1
  store i32 %inc306, ptr %multicast, align 8
  br label %if.end308

if.end308:                                        ; preds = %if.then303, %if.else299.if.end308_crit_edge, %if.end294.if.end308_crit_edge
  %205 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %ndev, align 4
  tail call fastcc void @ath6kl_deliver_frames_to_nw_stack(ptr noundef %206, ptr noundef %skb.1)
  br label %cleanup

cleanup:                                          ; preds = %if.end308, %if.end294.cleanup_crit_edge, %if.then284.cleanup_crit_edge, %if.end269.cleanup_crit_edge, %if.end269.thread, %if.then235, %if.then230, %if.then190, %if.then88, %if.then45, %if.end3.i, %if.then2.i, %if.then31.cleanup_crit_edge, %if.then20, %if.then10, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_check_wow_status(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_control_rx(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath6kl_deliver_frames_to_nw_stack(ptr noundef %dev, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %0, align 8
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef nonnull %skb) #10
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %skb, ptr noundef %dev) #10
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %4 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %call, ptr %protocol, align 8
  %call4 = tail call i32 @netif_rx_ni(ptr noundef nonnull %skb) #10
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_info(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath6kl_find_sta(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath6kl_uapsd_trigger_frame_rx(ptr nocapture noundef readonly %vif, ptr noundef %conn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ar1 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 3
  %0 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar1, align 8
  %apsd_info = getelementptr inbounds %struct.ath6kl_sta, ptr %conn, i32 0, i32 11
  %2 = ptrtoint ptr %apsd_info to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %apsd_info, align 4
  %4 = lshr i8 %3, 4
  %5 = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %3)
  %tobool.not = icmp ult i8 %3, 16
  %spec.store.select = select i1 %tobool.not, i32 65535, i32 %5
  %psq_lock = getelementptr inbounds %struct.ath6kl_sta, ptr %conn, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %psq_lock) #10
  %apsdq = getelementptr inbounds %struct.ath6kl_sta, ptr %conn, i32 0, i32 12
  %6 = ptrtoint ptr %apsdq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %apsdq, align 4
  %cmp.i = icmp eq ptr %7, %apsdq
  tail call void @_raw_spin_unlock_bh(ptr noundef %psq_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %tobool7.not67 = icmp eq i32 %spec.store.select, 0
  %or.cond68 = select i1 %cmp.i, i1 true, i1 %tobool7.not67
  br i1 %or.cond68, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %ndev = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %num_frames_to_deliver.069 = phi i32 [ %spec.store.select, %while.body.lr.ph ], [ %dec, %while.body.while.body_crit_edge ]
  tail call void @_raw_spin_lock_bh(ptr noundef %psq_lock) #10
  %call10 = tail call ptr @skb_dequeue(ptr noundef %apsdq) #10
  %8 = ptrtoint ptr %apsdq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %apsdq, align 4
  %cmp.i65 = icmp eq ptr %9, %apsdq
  tail call void @_raw_spin_unlock_bh(ptr noundef %psq_lock) #10
  %10 = ptrtoint ptr %conn to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %conn, align 4
  %dec = add nsw i32 %num_frames_to_deliver.069, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool20.not = icmp eq i32 %dec, 0
  %or.cond64 = select i1 %cmp.i65, i1 true, i1 %tobool20.not
  %spec.select.v = select i1 %or.cond64, i16 24, i16 8
  %spec.select = or i16 %11, %spec.select.v
  %12 = ptrtoint ptr %conn to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %spec.select, ptr %conn, align 4
  %13 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ndev, align 4
  %call27 = tail call i32 @ath6kl_data_tx(ptr noundef %call10, ptr noundef %14)
  %15 = ptrtoint ptr %conn to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %conn, align 4
  %17 = and i16 %16, -25
  store i16 %17, ptr %conn, align 4
  br i1 %or.cond64, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %is_apsdq_empty.0.in.lcssa = phi i1 [ %cmp.i, %entry.while.end_crit_edge ], [ %cmp.i65, %while.body.while.end_crit_edge ]
  br i1 %is_apsdq_empty.0.in.lcssa, label %if.then37, label %while.end.if.end43_crit_edge

while.end.if.end43_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then37:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %. = zext i1 %cmp.i to i32
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wmi, align 4
  %fw_vif_idx = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 5
  %20 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %fw_vif_idx, align 8
  %aid = getelementptr inbounds %struct.ath6kl_sta, ptr %conn, i32 0, i32 2
  %22 = ptrtoint ptr %aid to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %aid, align 4
  %conv41 = zext i8 %23 to i16
  %call42 = tail call i32 @ath6kl_wmi_set_apsd_bfrd_traf(ptr noundef %19, i8 noundef zeroext %21, i16 noundef zeroext %conv41, i16 noundef zeroext 0, i32 noundef %.) #10
  br label %if.end43

if.end43:                                         ; preds = %if.then37, %while.end.if.end43_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_send_mgmt_cmd(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_set_apsd_bfrd_traf(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_set_pvb_cmd(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_dot11_hdr_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_dot3_2_dix(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @aggr_process_recv_frm(ptr noundef %agg_conn, i8 noundef zeroext %tid, i16 noundef zeroext %seq_no, i1 noundef zeroext %is_amsdu, ptr noundef %frame) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %is_amsdu to i8
  %idxprom = zext i8 %tid to i32
  %arrayidx = getelementptr %struct.aggr_info_conn, ptr %agg_conn, i32 0, i32 4, i32 %idxprom
  %arrayidx2 = getelementptr %struct.aggr_info_conn, ptr %agg_conn, i32 0, i32 5, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx2, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %arrayidx2, align 4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 4, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  br i1 %is_amsdu, label %if.then4, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then4:                                         ; preds = %if.then
  %aggr_info = getelementptr inbounds %struct.aggr_info_conn, ptr %agg_conn, i32 0, i32 6
  %4 = ptrtoint ptr %aggr_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aggr_info, align 4
  tail call fastcc void @aggr_slice_amsdu(ptr noundef %5, ptr noundef %arrayidx, ptr noundef %frame)
  %num_amsdu = getelementptr %struct.aggr_info_conn, ptr %agg_conn, i32 0, i32 5, i32 %idxprom, i32 4
  %6 = ptrtoint ptr %num_amsdu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_amsdu, align 4
  %inc5 = add i32 %7, 1
  store i32 %inc5, ptr %num_amsdu, align 4
  %q = getelementptr %struct.aggr_info_conn, ptr %agg_conn, i32 0, i32 4, i32 %idxprom, i32 6
  %call265 = tail call ptr @skb_dequeue(ptr noundef %q) #10
  %tobool6.not266 = icmp eq ptr %call265, null
  br i1 %tobool6.not266, label %if.then4.cleanup_crit_edge, label %if.end.i.lr.ph

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.lr.ph:                                   ; preds = %if.then4
  %dev = getelementptr inbounds %struct.aggr_info_conn, ptr %agg_conn, i32 0, i32 3
  br label %if.end.i

if.end.i:                                         ; preds = %ath6kl_deliver_frames_to_nw_stack.exit.if.end.i_crit_edge, %if.end.i.lr.ph
  %call267 = phi ptr [ %call265, %if.end.i.lr.ph ], [ %call, %ath6kl_deliver_frames_to_nw_stack.exit.if.end.i_crit_edge ]
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = getelementptr inbounds %struct.anon, ptr %call267, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %10, align 8
  %flags.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 14
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef nonnull %call267) #10
  br label %ath6kl_deliver_frames_to_nw_stack.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call267, ptr noundef %9) #10
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call267, i32 0, i32 15, i32 0, i32 18
  %14 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %call.i, ptr %protocol.i, align 8
  %call4.i = tail call i32 @netif_rx_ni(ptr noundef nonnull %call267) #10
  br label %ath6kl_deliver_frames_to_nw_stack.exit

ath6kl_deliver_frames_to_nw_stack.exit:           ; preds = %if.end3.i, %if.then2.i
  %call = tail call ptr @skb_dequeue(ptr noundef %q) #10
  %tobool6.not = icmp eq ptr %call, null
  br i1 %tobool6.not, label %ath6kl_deliver_frames_to_nw_stack.exit.cleanup_crit_edge, label %ath6kl_deliver_frames_to_nw_stack.exit.if.end.i_crit_edge

ath6kl_deliver_frames_to_nw_stack.exit.if.end.i_crit_edge: ; preds = %ath6kl_deliver_frames_to_nw_stack.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

ath6kl_deliver_frames_to_nw_stack.exit.cleanup_crit_edge: ; preds = %ath6kl_deliver_frames_to_nw_stack.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %entry
  %seq_next = getelementptr %struct.aggr_info_conn, ptr %agg_conn, i32 0, i32 4, i32 %idxprom, i32 3
  %15 = ptrtoint ptr %seq_next to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %seq_next, align 4
  %hold_q_sz = getelementptr %struct.aggr_info_conn, ptr %agg_conn, i32 0, i32 4, i32 %idxprom, i32 4
  %17 = ptrtoint ptr %hold_q_sz to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hold_q_sz, align 4
  %19 = trunc i32 %18 to i16
  %20 = add i16 %19, 4095
  %21 = add i16 %20, %16
  %conv9 = and i16 %21, 4095
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %conv9)
  %cmp = icmp ult i16 %16, %conv9
  br i1 %cmp, label %land.lhs.true, label %if.end8.lor.lhs.false21_crit_edge

if.end8.lor.lhs.false21_crit_edge:                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false21

land.lhs.true:                                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %seq_no)
  %cmp15 = icmp ugt i16 %16, %seq_no
  call void @__sanitizer_cov_trace_cmp2(i16 %conv9, i16 %seq_no)
  %cmp19 = icmp ult i16 %conv9, %seq_no
  %or.cond = select i1 %cmp15, i1 true, i1 %cmp19
  br i1 %or.cond, label %land.lhs.true.if.then36_crit_edge, label %land.lhs.true.lor.lhs.false21_crit_edge

land.lhs.true.lor.lhs.false21_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false21

land.lhs.true.if.then36_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

lor.lhs.false21:                                  ; preds = %land.lhs.true.lor.lhs.false21_crit_edge, %if.end8.lor.lhs.false21_crit_edge
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %conv9)
  %cmp24 = icmp ugt i16 %16, %conv9
  call void @__sanitizer_cov_trace_cmp2(i16 %conv9, i16 %seq_no)
  %cmp29 = icmp ult i16 %conv9, %seq_no
  %or.cond254 = and i1 %cmp24, %cmp29
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %seq_no)
  %cmp34 = icmp ugt i16 %16, %seq_no
  %or.cond255 = and i1 %cmp34, %or.cond254
  br i1 %or.cond255, label %lor.lhs.false21.if.then36_crit_edge, label %lor.lhs.false21.if.end116_crit_edge

lor.lhs.false21.if.end116_crit_edge:              ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116

lor.lhs.false21.if.then36_crit_edge:              ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

if.then36:                                        ; preds = %lor.lhs.false21.if.then36_crit_edge, %land.lhs.true.if.then36_crit_edge
  %22 = add i16 %20, %21
  %conv42 = and i16 %22, 4095
  call void @__sanitizer_cov_trace_cmp2(i16 %conv9, i16 %conv42)
  %cmp45 = icmp ult i16 %conv9, %conv42
  br i1 %cmp45, label %land.lhs.true47, label %if.then36.lor.lhs.false57_crit_edge

if.then36.lor.lhs.false57_crit_edge:              ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false57

land.lhs.true47:                                  ; preds = %if.then36
  call void @__sanitizer_cov_trace_cmp2(i16 %conv9, i16 %seq_no)
  %cmp50 = icmp ugt i16 %conv9, %seq_no
  call void @__sanitizer_cov_trace_cmp2(i16 %conv42, i16 %seq_no)
  %cmp55 = icmp ult i16 %conv42, %seq_no
  %or.cond256 = select i1 %cmp50, i1 true, i1 %cmp55
  br i1 %or.cond256, label %land.lhs.true47.if.then72_crit_edge, label %land.lhs.true47.lor.lhs.false57_crit_edge

land.lhs.true47.lor.lhs.false57_crit_edge:        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false57

land.lhs.true47.if.then72_crit_edge:              ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then72

lor.lhs.false57:                                  ; preds = %land.lhs.true47.lor.lhs.false57_crit_edge, %if.then36.lor.lhs.false57_crit_edge
  call void @__sanitizer_cov_trace_cmp2(i16 %conv9, i16 %conv42)
  %cmp60 = icmp ugt i16 %conv9, %conv42
  call void @__sanitizer_cov_trace_cmp2(i16 %conv42, i16 %seq_no)
  %cmp65 = icmp ult i16 %conv42, %seq_no
  %or.cond257 = and i1 %cmp60, %cmp65
  call void @__sanitizer_cov_trace_cmp2(i16 %conv9, i16 %seq_no)
  %cmp70 = icmp ugt i16 %conv9, %seq_no
  %or.cond258 = and i1 %cmp70, %or.cond257
  br i1 %or.cond258, label %lor.lhs.false57.if.then72_crit_edge, label %if.else94

lor.lhs.false57.if.then72_crit_edge:              ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then72

if.then72:                                        ; preds = %lor.lhs.false57.if.then72_crit_edge, %land.lhs.true47.if.then72_crit_edge
  tail call fastcc void @aggr_deque_frms(ptr noundef %agg_conn, i8 noundef zeroext %tid, i16 noundef zeroext 0, i8 noundef zeroext 0)
  %lock = getelementptr %struct.aggr_info_conn, ptr %agg_conn, i32 0, i32 4, i32 %idxprom, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %conv73 = zext i16 %seq_no to i32
  %23 = ptrtoint ptr %hold_q_sz to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hold_q_sz, align 4
  %sub75 = add i32 %24, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub75, i32 %conv73)
  %cmp76.not = icmp ugt i32 %sub75, %conv73
  %25 = trunc i32 %24 to i16
  %26 = add i16 %seq_no, 4097
  %conv90 = sub i16 %26, %25
  %27 = trunc i32 %sub75 to i16
  %conv83 = sub i16 %seq_no, %27
  %storemerge = select i1 %cmp76.not, i16 %conv90, i16 %conv83
  %28 = ptrtoint ptr %seq_next to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %storemerge, ptr %seq_next, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %if.end114

if.else94:                                        ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #12
  %conv95 = zext i16 %seq_no to i32
  %sub97 = add i32 %18, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub97, i32 %conv95)
  %cmp98.not = icmp ugt i32 %sub97, %conv95
  %29 = trunc i32 %sub97 to i16
  %conv105 = sub i16 %seq_no, %29
  %30 = add i16 %seq_no, 4097
  %conv112 = sub i16 %30, %19
  %st.0 = select i1 %cmp98.not, i16 %conv112, i16 %conv105
  tail call fastcc void @aggr_deque_frms(ptr noundef %agg_conn, i8 noundef zeroext %tid, i16 noundef zeroext %st.0, i8 noundef zeroext 0)
  br label %if.end114

if.end114:                                        ; preds = %if.else94, %if.then72
  %num_oow = getelementptr %struct.aggr_info_conn, ptr %agg_conn, i32 0, i32 5, i32 %idxprom, i32 2
  %31 = ptrtoint ptr %num_oow to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_oow, align 4
  %inc115 = add i32 %32, 1
  store i32 %inc115, ptr %num_oow, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.end114, %lor.lhs.false21.if.end116_crit_edge
  %conv117 = zext i16 %seq_no to i32
  %33 = ptrtoint ptr %hold_q_sz to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hold_q_sz, align 4
  %rem = urem i32 %conv117, %34
  %hold_q = getelementptr %struct.aggr_info_conn, ptr %agg_conn, i32 0, i32 4, i32 %idxprom, i32 5
  %35 = ptrtoint ptr %hold_q to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hold_q, align 4
  %arrayidx121 = getelementptr %struct.skb_hold_q, ptr %36, i32 %rem
  %lock122 = getelementptr %struct.aggr_info_conn, ptr %agg_conn, i32 0, i32 4, i32 %idxprom, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %lock122) #10
  %37 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx121, align 4
  tail call void @consume_skb(ptr noundef %38) #10
  %num_dups = getelementptr %struct.aggr_info_conn, ptr %agg_conn, i32 0, i32 5, i32 %idxprom, i32 1
  %39 = ptrtoint ptr %num_dups to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_dups, align 4
  %inc124 = add i32 %40, 1
  store i32 %inc124, ptr %num_dups, align 4
  %41 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %frame, ptr %arrayidx121, align 4
  %is_amsdu127 = getelementptr %struct.skb_hold_q, ptr %36, i32 %rem, i32 1
  %42 = ptrtoint ptr %is_amsdu127 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %frombool, ptr %is_amsdu127, align 4
  %seq_no129 = getelementptr %struct.skb_hold_q, ptr %36, i32 %rem, i32 2
  %43 = ptrtoint ptr %seq_no129 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %seq_no, ptr %seq_no129, align 2
  %num_mpdu = getelementptr %struct.aggr_info_conn, ptr %agg_conn, i32 0, i32 5, i32 %idxprom, i32 3
  %num_amsdu133 = getelementptr %struct.aggr_info_conn, ptr %agg_conn, i32 0, i32 5, i32 %idxprom, i32 4
  %num_mpdu.sink268 = select i1 %is_amsdu, ptr %num_amsdu133, ptr %num_mpdu
  %44 = ptrtoint ptr %num_mpdu.sink268 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_mpdu.sink268, align 4
  %inc136 = add i32 %45, 1
  store i32 %inc136, ptr %num_mpdu.sink268, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock122) #10
  tail call fastcc void @aggr_deque_frms(ptr noundef %agg_conn, i8 noundef zeroext %tid, i16 noundef zeroext 0, i8 noundef zeroext 1)
  %timer_scheduled = getelementptr inbounds %struct.aggr_info_conn, ptr %agg_conn, i32 0, i32 1
  %46 = ptrtoint ptr %timer_scheduled to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %timer_scheduled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool139.not = icmp eq i8 %47, 0
  br i1 %tobool139.not, label %if.end142, label %if.end116.cleanup_crit_edge

if.end116.cleanup_crit_edge:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end142:                                        ; preds = %if.end116
  tail call void @_raw_spin_lock_bh(ptr noundef %lock122) #10
  %48 = ptrtoint ptr %hold_q_sz to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %hold_q_sz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp146262.not = icmp eq i32 %49, 0
  br i1 %cmp146262.not, label %if.end142.for.end_crit_edge, label %for.body.lr.ph

if.end142.for.end_crit_edge:                      ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end142
  %50 = ptrtoint ptr %hold_q to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hold_q, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc158 = add i16 %idx.0263, 1
  %conv144 = zext i16 %inc158 to i32
  %cmp146 = icmp ugt i32 %49, %conv144
  br i1 %cmp146, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %conv144264 = phi i32 [ 0, %for.body.lr.ph ], [ %conv144, %for.cond.for.body_crit_edge ]
  %idx.0263 = phi i16 [ 0, %for.body.lr.ph ], [ %inc158, %for.cond.for.body_crit_edge ]
  %arrayidx150 = getelementptr %struct.skb_hold_q, ptr %51, i32 %conv144264
  %52 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx150, align 4
  %tobool152.not = icmp eq ptr %53, null
  br i1 %tobool152.not, label %for.cond, label %if.then153

if.then153:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %timer_scheduled to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %timer_scheduled, align 1
  %timer = getelementptr inbounds %struct.aggr_info_conn, ptr %agg_conn, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %55 = load volatile i32, ptr @jiffies, align 128
  %add155 = add i32 %55, 10
  %call156 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add155) #10
  %timer_mon = getelementptr %struct.aggr_info_conn, ptr %agg_conn, i32 0, i32 4, i32 %idxprom, i32 1
  %56 = ptrtoint ptr %timer_mon to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %timer_mon, align 1
  br label %for.end

for.end:                                          ; preds = %if.then153, %for.cond.for.end_crit_edge, %if.end142.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock122) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end116.cleanup_crit_edge, %ath6kl_deliver_frames_to_nw_stack.exit.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %for.end ], [ false, %if.then.cleanup_crit_edge ], [ true, %if.end116.cleanup_crit_edge ], [ true, %if.then4.cleanup_crit_edge ], [ true, %ath6kl_deliver_frames_to_nw_stack.exit.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aggr_recv_addba_req_evt(ptr nocapture noundef readonly %vif, i8 noundef zeroext %tid_mux, i16 noundef zeroext %seq_no, i8 noundef zeroext %win_sz) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nw_type = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 17
  %0 = ptrtoint ptr %nw_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nw_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %1)
  %cmp = icmp eq i8 %1, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = lshr i8 %tid_mux, 4
  %ar = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 3
  %3 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ar, align 8
  %call2 = tail call ptr @ath6kl_find_sta_by_aid(ptr noundef %4, i8 noundef zeroext %2) #10
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %aggr_conn4 = getelementptr inbounds %struct.ath6kl_sta, ptr %call2, i32 0, i32 13
  br label %if.end6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %aggr_cntxt = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 24
  %5 = ptrtoint ptr %aggr_cntxt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %aggr_cntxt, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %aggr_conn.0.in = phi ptr [ %aggr_conn4, %if.then3 ], [ %6, %if.else ]
  %7 = ptrtoint ptr %aggr_conn.0.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %aggr_conn.0 = load ptr, ptr %aggr_conn.0.in, align 4
  %tobool7.not = icmp eq ptr %aggr_conn.0, null
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %8 = and i8 %tid_mux, 15
  %conv11 = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %8)
  %cmp12 = icmp ugt i8 %8, 7
  br i1 %cmp12, label %if.end9.cleanup_crit_edge, label %if.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %arrayidx = getelementptr %struct.aggr_info_conn, ptr %aggr_conn.0, i32 0, i32 4, i32 %conv11
  %conv16 = zext i8 %win_sz to i32
  %9 = add i8 %win_sz, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -7, i8 %9)
  %10 = icmp ult i8 %9, -7
  br i1 %10, label %if.then22, label %if.end15.if.end25_crit_edge

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then22:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.aggr_recv_addba_req_evt, i32 noundef %conv16, i32 noundef %conv11) #10
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end15.if.end25_crit_edge
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 4, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool26.not = icmp eq i8 %12, 0
  br i1 %tobool26.not, label %if.end25.if.end28_crit_edge, label %aggr_delete_tid_state.exit

if.end25.if.end28_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

aggr_delete_tid_state.exit:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx3.i = getelementptr %struct.aggr_info_conn, ptr %aggr_conn.0, i32 0, i32 5, i32 %conv11
  tail call fastcc void @aggr_deque_frms(ptr noundef nonnull %aggr_conn.0, i8 noundef zeroext %8, i16 noundef zeroext 0, i8 noundef zeroext 0) #10
  %hold_q_sz.i = getelementptr %struct.aggr_info_conn, ptr %aggr_conn.0, i32 0, i32 4, i32 %conv11, i32 4
  %13 = ptrtoint ptr %hold_q_sz.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %hold_q_sz.i, align 4
  %hold_q.i = getelementptr %struct.aggr_info_conn, ptr %aggr_conn.0, i32 0, i32 4, i32 %conv11, i32 5
  %14 = call ptr @memset(ptr %arrayidx, i32 0, i32 6)
  %15 = ptrtoint ptr %hold_q.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hold_q.i, align 4
  tail call void @kfree(ptr noundef %16) #10
  %17 = ptrtoint ptr %hold_q.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %hold_q.i, align 4
  %18 = call ptr @memset(ptr %arrayidx3.i, i32 0, i32 36)
  br label %if.end28

if.end28:                                         ; preds = %aggr_delete_tid_state.exit, %if.end25.if.end28_crit_edge
  %seq_next = getelementptr %struct.aggr_info_conn, ptr %aggr_conn.0, i32 0, i32 4, i32 %conv11, i32 3
  %19 = ptrtoint ptr %seq_next to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %seq_no, ptr %seq_next, align 4
  %conv30 = shl nuw nsw i32 %conv16, 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv30, i32 noundef 3520) #14
  %hold_q = getelementptr %struct.aggr_info_conn, ptr %aggr_conn.0, i32 0, i32 4, i32 %conv11, i32 5
  %20 = ptrtoint ptr %hold_q to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call9.i.i, ptr %hold_q, align 4
  %tobool34.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool34.not, label %if.end28.cleanup_crit_edge, label %if.end36

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end36:                                         ; preds = %if.end28
  %shl = shl nuw nsw i32 %conv16, 1
  %conv37 = zext i8 %win_sz to i16
  %win_sz38 = getelementptr %struct.aggr_info_conn, ptr %aggr_conn.0, i32 0, i32 4, i32 %conv11, i32 2
  %21 = ptrtoint ptr %win_sz38 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv37, ptr %win_sz38, align 2
  %hold_q_sz = getelementptr %struct.aggr_info_conn, ptr %aggr_conn.0, i32 0, i32 4, i32 %conv11, i32 4
  %22 = ptrtoint ptr %hold_q_sz to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shl, ptr %hold_q_sz, align 4
  %q = getelementptr %struct.aggr_info_conn, ptr %aggr_conn.0, i32 0, i32 4, i32 %conv11, i32 6
  %23 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %q, align 4
  %cmp.i72.not = icmp eq ptr %24, %q
  br i1 %cmp.i72.not, label %if.end44, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end44:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.end36.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath6kl_find_sta_by_aid(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aggr_conn_init(ptr nocapture noundef readonly %vif, ptr noundef %aggr_info, ptr noundef %aggr_conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %aggr_conn to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 8, ptr %aggr_conn, align 4
  %ndev = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 2
  %1 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ndev, align 4
  %dev = getelementptr inbounds %struct.aggr_info_conn, ptr %aggr_conn, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %dev, align 4
  %timer = getelementptr inbounds %struct.aggr_info_conn, ptr %aggr_conn, i32 0, i32 2
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @aggr_timeout, i32 noundef 0, ptr noundef nonnull @.str.23, ptr noundef nonnull @aggr_conn_init.__key) #10
  %aggr_info1 = getelementptr inbounds %struct.aggr_info_conn, ptr %aggr_conn, i32 0, i32 6
  %4 = ptrtoint ptr %aggr_info1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %aggr_info, ptr %aggr_info1, align 4
  %timer_scheduled = getelementptr inbounds %struct.aggr_info_conn, ptr %aggr_conn, i32 0, i32 1
  %5 = ptrtoint ptr %timer_scheduled to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %timer_scheduled, align 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.aggr_info_conn, ptr %aggr_conn, i32 0, i32 4, i32 %indvars.iv
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 4
  %timer_mon = getelementptr %struct.aggr_info_conn, ptr %aggr_conn, i32 0, i32 4, i32 %indvars.iv, i32 1
  %7 = ptrtoint ptr %timer_mon to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %timer_mon, align 1
  %q = getelementptr %struct.aggr_info_conn, ptr %aggr_conn, i32 0, i32 4, i32 %indvars.iv, i32 6
  %lock.i = getelementptr %struct.aggr_info_conn, ptr %aggr_conn, i32 0, i32 4, i32 %indvars.iv, i32 6, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %8 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %q, ptr %q, align 4
  %prev.i.i = getelementptr inbounds %struct.anon.52, ptr %q, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %q, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr %struct.aggr_info_conn, ptr %aggr_conn, i32 0, i32 4, i32 %indvars.iv, i32 6, i32 1
  %10 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %qlen.i.i, align 4
  %lock = getelementptr %struct.aggr_info_conn, ptr %aggr_conn, i32 0, i32 4, i32 %indvars.iv, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.25, ptr noundef nonnull @aggr_conn_init.__key.24, i16 noundef signext 3) #10
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aggr_timeout(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -4
  %rx_tid = getelementptr i8, ptr %t, i32 52
  %stat = getelementptr i8, ptr %t, i32 980
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x %struct.rxtid], ptr %rx_tid, i32 0, i32 %indvars.iv
  %arrayidx3 = getelementptr [8 x %struct.rxtid_stats], ptr %stat, i32 0, i32 %indvars.iv
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 4, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %timer_mon = getelementptr inbounds %struct.rxtid, ptr %arrayidx, i32 0, i32 1
  %2 = ptrtoint ptr %timer_mon to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %timer_mon, align 1, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %lor.lhs.false.for.inc_crit_edge, label %if.end

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %num_timeouts = getelementptr inbounds %struct.rxtid_stats, ptr %arrayidx3, i32 0, i32 6
  %4 = ptrtoint ptr %num_timeouts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_timeouts, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %num_timeouts, align 4
  %seq_next = getelementptr inbounds %struct.rxtid, ptr %arrayidx, i32 0, i32 3
  %6 = ptrtoint ptr %seq_next to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %seq_next, align 4
  %conv5 = zext i16 %7 to i32
  %hold_q_sz = getelementptr inbounds %struct.rxtid, ptr %arrayidx, i32 0, i32 4
  %8 = ptrtoint ptr %hold_q_sz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hold_q_sz, align 4
  %add = add nuw nsw i32 %conv5, 4095
  %sub = add i32 %add, %9
  %and = and i32 %sub, 4095
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 32768, ptr noundef nonnull @.str.35, i32 noundef %conv5, i32 noundef %and) #10
  %10 = trunc i32 %indvars.iv to i8
  tail call fastcc void @aggr_deque_frms(ptr noundef %add.ptr, i8 noundef zeroext %10, i16 noundef zeroext 0, i8 noundef zeroext 0)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  %timer_scheduled = getelementptr i8, ptr %t, i32 -3
  %11 = ptrtoint ptr %timer_scheduled to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %timer_scheduled, align 1
  br label %for.body13

for.body13:                                       ; preds = %for.inc48.for.body13_crit_edge, %for.end
  %indvars.iv99 = phi i32 [ 0, %for.end ], [ %indvars.iv.next100, %for.inc48.for.body13_crit_edge ]
  %arrayidx16 = getelementptr [8 x %struct.rxtid], ptr %rx_tid, i32 0, i32 %indvars.iv99
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx16, align 4, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool18.not = icmp eq i8 %13, 0
  br i1 %tobool18.not, label %for.body13.for.inc48_crit_edge, label %land.lhs.true

for.body13.for.inc48_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc48

land.lhs.true:                                    ; preds = %for.body13
  %hold_q = getelementptr inbounds %struct.rxtid, ptr %arrayidx16, i32 0, i32 5
  %14 = ptrtoint ptr %hold_q to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hold_q, align 4
  %tobool20.not = icmp eq ptr %15, null
  br i1 %tobool20.not, label %land.lhs.true.for.inc48_crit_edge, label %if.then21

land.lhs.true.for.inc48_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc48

if.then21:                                        ; preds = %land.lhs.true
  %lock = getelementptr inbounds %struct.rxtid, ptr %arrayidx16, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %hold_q_sz24 = getelementptr inbounds %struct.rxtid, ptr %arrayidx16, i32 0, i32 4
  %16 = ptrtoint ptr %hold_q_sz24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hold_q_sz24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp2593.not = icmp eq i32 %17, 0
  br i1 %cmp2593.not, label %if.then21.for.end38_crit_edge, label %for.body27.lr.ph

if.then21.for.end38_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end38

for.body27.lr.ph:                                 ; preds = %if.then21
  %18 = ptrtoint ptr %hold_q to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hold_q, align 4
  br label %for.body27

for.cond22:                                       ; preds = %for.body27
  %inc37 = add i8 %j.094, 1
  %conv23 = zext i8 %inc37 to i32
  %cmp25 = icmp ugt i32 %17, %conv23
  br i1 %cmp25, label %for.cond22.for.body27_crit_edge, label %for.cond22.for.end38_crit_edge

for.cond22.for.end38_crit_edge:                   ; preds = %for.cond22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end38

for.cond22.for.body27_crit_edge:                  ; preds = %for.cond22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body27

for.body27:                                       ; preds = %for.cond22.for.body27_crit_edge, %for.body27.lr.ph
  %conv2395 = phi i32 [ 0, %for.body27.lr.ph ], [ %conv23, %for.cond22.for.body27_crit_edge ]
  %j.094 = phi i8 [ 0, %for.body27.lr.ph ], [ %inc37, %for.cond22.for.body27_crit_edge ]
  %arrayidx30 = getelementptr %struct.skb_hold_q, ptr %19, i32 %conv2395
  %20 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx30, align 4
  %tobool31.not = icmp eq ptr %21, null
  br i1 %tobool31.not, label %for.cond22, label %if.then32

if.then32:                                        ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %timer_scheduled to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %timer_scheduled, align 1
  %timer_mon34 = getelementptr inbounds %struct.rxtid, ptr %arrayidx16, i32 0, i32 1
  %23 = ptrtoint ptr %timer_mon34 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %timer_mon34, align 1
  br label %for.end38

for.end38:                                        ; preds = %if.then32, %for.cond22.for.end38_crit_edge, %if.then21.for.end38_crit_edge
  %conv2390 = phi i32 [ %conv2395, %if.then32 ], [ 0, %if.then21.for.end38_crit_edge ], [ %conv23, %for.cond22.for.end38_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %24 = ptrtoint ptr %hold_q_sz24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hold_q_sz24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv2390)
  %cmp42.not = icmp ugt i32 %25, %conv2390
  br i1 %cmp42.not, label %for.end38.for.inc48_crit_edge, label %if.then44

for.end38.for.inc48_crit_edge:                    ; preds = %for.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc48

if.then44:                                        ; preds = %for.end38
  call void @__sanitizer_cov_trace_pc() #12
  %timer_mon45 = getelementptr inbounds %struct.rxtid, ptr %arrayidx16, i32 0, i32 1
  %26 = ptrtoint ptr %timer_mon45 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %timer_mon45, align 1
  br label %for.inc48

for.inc48:                                        ; preds = %if.then44, %for.end38.for.inc48_crit_edge, %land.lhs.true.for.inc48_crit_edge, %for.body13.for.inc48_crit_edge
  %indvars.iv.next100 = add nuw nsw i32 %indvars.iv99, 1
  %exitcond101.not = icmp eq i32 %indvars.iv.next100, 8
  br i1 %exitcond101.not, label %for.end50, label %for.inc48.for.body13_crit_edge

for.inc48.for.body13_crit_edge:                   ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body13

for.end50:                                        ; preds = %for.inc48
  %27 = ptrtoint ptr %timer_scheduled to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %timer_scheduled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool52.not = icmp eq i8 %28, 0
  br i1 %tobool52.not, label %for.end50.if.end56_crit_edge, label %if.then53

for.end50.if.end56_crit_edge:                     ; preds = %for.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then53:                                        ; preds = %for.end50
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %add54 = add i32 %29, 10
  %call55 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add54) #10
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %for.end50.if.end56_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aggr_init(ptr nocapture noundef readonly %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 60) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.26) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1276) #15
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i16, ptr %call7.i.i, align 8
  %tobool3.not = icmp eq ptr %call7.i.i16, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.27) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call7.i.i16 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 8, ptr %call7.i.i16, align 8
  %ndev.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 2
  %4 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev.i, align 4
  %dev.i = getelementptr inbounds %struct.aggr_info_conn, ptr %call7.i.i16, i32 0, i32 3
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %dev.i, align 4
  %timer.i = getelementptr inbounds %struct.aggr_info_conn, ptr %call7.i.i16, i32 0, i32 2
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @aggr_timeout, i32 noundef 0, ptr noundef nonnull @.str.23, ptr noundef nonnull @aggr_conn_init.__key) #10
  %aggr_info1.i = getelementptr inbounds %struct.aggr_info_conn, ptr %call7.i.i16, i32 0, i32 6
  %7 = ptrtoint ptr %aggr_info1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %aggr_info1.i, align 8
  %timer_scheduled.i = getelementptr inbounds %struct.aggr_info_conn, ptr %call7.i.i16, i32 0, i32 1
  %8 = ptrtoint ptr %timer_scheduled.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %timer_scheduled.i, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end5
  %indvars.iv.i = phi i32 [ 0, %if.end5 ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.aggr_info_conn, ptr %call7.i.i16, i32 0, i32 4, i32 %indvars.iv.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx.i, align 4
  %timer_mon.i = getelementptr %struct.aggr_info_conn, ptr %call7.i.i16, i32 0, i32 4, i32 %indvars.iv.i, i32 1
  %10 = ptrtoint ptr %timer_mon.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %timer_mon.i, align 1
  %q.i = getelementptr %struct.aggr_info_conn, ptr %call7.i.i16, i32 0, i32 4, i32 %indvars.iv.i, i32 6
  %lock.i.i = getelementptr %struct.aggr_info_conn, ptr %call7.i.i16, i32 0, i32 4, i32 %indvars.iv.i, i32 6, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %11 = ptrtoint ptr %q.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %q.i, ptr %q.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.anon.52, ptr %q.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %q.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr %struct.aggr_info_conn, ptr %call7.i.i16, i32 0, i32 4, i32 %indvars.iv.i, i32 6, i32 1
  %13 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %qlen.i.i.i, align 4
  %lock.i = getelementptr %struct.aggr_info_conn, ptr %call7.i.i16, i32 0, i32 4, i32 %indvars.iv.i, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @aggr_conn_init.__key.24, i16 noundef signext 3) #10
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 8
  br i1 %exitcond.not.i, label %aggr_conn_init.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

aggr_conn_init.exit:                              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %rx_amsdu_freeq = getelementptr inbounds %struct.aggr_info, ptr %call7.i.i, i32 0, i32 1
  %lock.i17 = getelementptr inbounds %struct.aggr_info, ptr %call7.i.i, i32 0, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i17, ptr noundef nonnull @.str.31, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %14 = ptrtoint ptr %rx_amsdu_freeq to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %rx_amsdu_freeq, ptr %rx_amsdu_freeq, align 4
  %prev.i.i = getelementptr inbounds %struct.aggr_info, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %rx_amsdu_freeq, ptr %prev.i.i, align 8
  %qlen.i.i = getelementptr inbounds %struct.aggr_info, ptr %call7.i.i, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %qlen.i.i, align 4
  tail call fastcc void @ath6kl_alloc_netbufs(ptr noundef %rx_amsdu_freeq)
  br label %cleanup

cleanup:                                          ; preds = %aggr_conn_init.exit, %if.then4, %if.then
  %retval.0 = phi ptr [ %call7.i.i, %aggr_conn_init.exit ], [ null, %if.then4 ], [ null, %if.then ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath6kl_alloc_netbufs(ptr noundef %q) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ath6kl_buf_alloc(i32 noundef 1664) #10
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %entry.if.then_crit_edge, label %if.end

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %if.end.14.if.then_crit_edge, %if.end.13.if.then_crit_edge, %if.end.12.if.then_crit_edge, %if.end.11.if.then_crit_edge, %if.end.10.if.then_crit_edge, %if.end.9.if.then_crit_edge, %if.end.8.if.then_crit_edge, %if.end.7.if.then_crit_edge, %if.end.6.if.then_crit_edge, %if.end.5.if.then_crit_edge, %if.end.4.if.then_crit_edge, %if.end.3.if.then_crit_edge, %if.end.2.if.then_crit_edge, %if.end.1.if.then_crit_edge, %if.end.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.36) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @skb_queue_tail(ptr noundef %q, ptr noundef nonnull %call) #10
  %call.1 = tail call ptr @ath6kl_buf_alloc(i32 noundef 1664) #10
  %tobool1.not.1 = icmp eq ptr %call.1, null
  br i1 %tobool1.not.1, label %if.end.if.then_crit_edge, label %if.end.1

if.end.if.then_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.1:                                         ; preds = %if.end
  tail call void @skb_queue_tail(ptr noundef %q, ptr noundef nonnull %call.1) #10
  %call.2 = tail call ptr @ath6kl_buf_alloc(i32 noundef 1664) #10
  %tobool1.not.2 = icmp eq ptr %call.2, null
  br i1 %tobool1.not.2, label %if.end.1.if.then_crit_edge, label %if.end.2

if.end.1.if.then_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.2:                                         ; preds = %if.end.1
  tail call void @skb_queue_tail(ptr noundef %q, ptr noundef nonnull %call.2) #10
  %call.3 = tail call ptr @ath6kl_buf_alloc(i32 noundef 1664) #10
  %tobool1.not.3 = icmp eq ptr %call.3, null
  br i1 %tobool1.not.3, label %if.end.2.if.then_crit_edge, label %if.end.3

if.end.2.if.then_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.3:                                         ; preds = %if.end.2
  tail call void @skb_queue_tail(ptr noundef %q, ptr noundef nonnull %call.3) #10
  %call.4 = tail call ptr @ath6kl_buf_alloc(i32 noundef 1664) #10
  %tobool1.not.4 = icmp eq ptr %call.4, null
  br i1 %tobool1.not.4, label %if.end.3.if.then_crit_edge, label %if.end.4

if.end.3.if.then_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.4:                                         ; preds = %if.end.3
  tail call void @skb_queue_tail(ptr noundef %q, ptr noundef nonnull %call.4) #10
  %call.5 = tail call ptr @ath6kl_buf_alloc(i32 noundef 1664) #10
  %tobool1.not.5 = icmp eq ptr %call.5, null
  br i1 %tobool1.not.5, label %if.end.4.if.then_crit_edge, label %if.end.5

if.end.4.if.then_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.5:                                         ; preds = %if.end.4
  tail call void @skb_queue_tail(ptr noundef %q, ptr noundef nonnull %call.5) #10
  %call.6 = tail call ptr @ath6kl_buf_alloc(i32 noundef 1664) #10
  %tobool1.not.6 = icmp eq ptr %call.6, null
  br i1 %tobool1.not.6, label %if.end.5.if.then_crit_edge, label %if.end.6

if.end.5.if.then_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.6:                                         ; preds = %if.end.5
  tail call void @skb_queue_tail(ptr noundef %q, ptr noundef nonnull %call.6) #10
  %call.7 = tail call ptr @ath6kl_buf_alloc(i32 noundef 1664) #10
  %tobool1.not.7 = icmp eq ptr %call.7, null
  br i1 %tobool1.not.7, label %if.end.6.if.then_crit_edge, label %if.end.7

if.end.6.if.then_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.7:                                         ; preds = %if.end.6
  tail call void @skb_queue_tail(ptr noundef %q, ptr noundef nonnull %call.7) #10
  %call.8 = tail call ptr @ath6kl_buf_alloc(i32 noundef 1664) #10
  %tobool1.not.8 = icmp eq ptr %call.8, null
  br i1 %tobool1.not.8, label %if.end.7.if.then_crit_edge, label %if.end.8

if.end.7.if.then_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.8:                                         ; preds = %if.end.7
  tail call void @skb_queue_tail(ptr noundef %q, ptr noundef nonnull %call.8) #10
  %call.9 = tail call ptr @ath6kl_buf_alloc(i32 noundef 1664) #10
  %tobool1.not.9 = icmp eq ptr %call.9, null
  br i1 %tobool1.not.9, label %if.end.8.if.then_crit_edge, label %if.end.9

if.end.8.if.then_crit_edge:                       ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.9:                                         ; preds = %if.end.8
  tail call void @skb_queue_tail(ptr noundef %q, ptr noundef nonnull %call.9) #10
  %call.10 = tail call ptr @ath6kl_buf_alloc(i32 noundef 1664) #10
  %tobool1.not.10 = icmp eq ptr %call.10, null
  br i1 %tobool1.not.10, label %if.end.9.if.then_crit_edge, label %if.end.10

if.end.9.if.then_crit_edge:                       ; preds = %if.end.9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.10:                                        ; preds = %if.end.9
  tail call void @skb_queue_tail(ptr noundef %q, ptr noundef nonnull %call.10) #10
  %call.11 = tail call ptr @ath6kl_buf_alloc(i32 noundef 1664) #10
  %tobool1.not.11 = icmp eq ptr %call.11, null
  br i1 %tobool1.not.11, label %if.end.10.if.then_crit_edge, label %if.end.11

if.end.10.if.then_crit_edge:                      ; preds = %if.end.10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.11:                                        ; preds = %if.end.10
  tail call void @skb_queue_tail(ptr noundef %q, ptr noundef nonnull %call.11) #10
  %call.12 = tail call ptr @ath6kl_buf_alloc(i32 noundef 1664) #10
  %tobool1.not.12 = icmp eq ptr %call.12, null
  br i1 %tobool1.not.12, label %if.end.11.if.then_crit_edge, label %if.end.12

if.end.11.if.then_crit_edge:                      ; preds = %if.end.11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.12:                                        ; preds = %if.end.11
  tail call void @skb_queue_tail(ptr noundef %q, ptr noundef nonnull %call.12) #10
  %call.13 = tail call ptr @ath6kl_buf_alloc(i32 noundef 1664) #10
  %tobool1.not.13 = icmp eq ptr %call.13, null
  br i1 %tobool1.not.13, label %if.end.12.if.then_crit_edge, label %if.end.13

if.end.12.if.then_crit_edge:                      ; preds = %if.end.12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.13:                                        ; preds = %if.end.12
  tail call void @skb_queue_tail(ptr noundef %q, ptr noundef nonnull %call.13) #10
  %call.14 = tail call ptr @ath6kl_buf_alloc(i32 noundef 1664) #10
  %tobool1.not.14 = icmp eq ptr %call.14, null
  br i1 %tobool1.not.14, label %if.end.13.if.then_crit_edge, label %if.end.14

if.end.13.if.then_crit_edge:                      ; preds = %if.end.13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.14:                                        ; preds = %if.end.13
  tail call void @skb_queue_tail(ptr noundef %q, ptr noundef nonnull %call.14) #10
  %call.15 = tail call ptr @ath6kl_buf_alloc(i32 noundef 1664) #10
  %tobool1.not.15 = icmp eq ptr %call.15, null
  br i1 %tobool1.not.15, label %if.end.14.if.then_crit_edge, label %if.end.15

if.end.14.if.then_crit_edge:                      ; preds = %if.end.14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.15:                                        ; preds = %if.end.14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @skb_queue_tail(ptr noundef %q, ptr noundef nonnull %call.15) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.15, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aggr_recv_delba_req_evt(ptr nocapture noundef readonly %vif, i8 noundef zeroext %tid_mux) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nw_type = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 17
  %0 = ptrtoint ptr %nw_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nw_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %1)
  %cmp = icmp eq i8 %1, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = lshr i8 %tid_mux, 4
  %ar = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 3
  %3 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ar, align 8
  %call2 = tail call ptr @ath6kl_find_sta_by_aid(ptr noundef %4, i8 noundef zeroext %2) #10
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %aggr_conn4 = getelementptr inbounds %struct.ath6kl_sta, ptr %call2, i32 0, i32 13
  br label %if.end6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %aggr_cntxt = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 24
  %5 = ptrtoint ptr %aggr_cntxt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %aggr_cntxt, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %aggr_conn.0.in = phi ptr [ %aggr_conn4, %if.then3 ], [ %6, %if.else ]
  %7 = ptrtoint ptr %aggr_conn.0.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %aggr_conn.0 = load ptr, ptr %aggr_conn.0.in, align 4
  %tobool7.not = icmp eq ptr %aggr_conn.0, null
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %8 = and i8 %tid_mux, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %8)
  %cmp12 = icmp ugt i8 %8, 7
  br i1 %cmp12, label %if.end9.cleanup_crit_edge, label %if.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %conv11 = zext i8 %8 to i32
  %arrayidx = getelementptr %struct.aggr_info_conn, ptr %aggr_conn.0, i32 0, i32 4, i32 %conv11
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 4, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool16.not = icmp eq i8 %10, 0
  br i1 %tobool16.not, label %if.end15.cleanup_crit_edge, label %aggr_delete_tid_state.exit

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

aggr_delete_tid_state.exit:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx3.i = getelementptr %struct.aggr_info_conn, ptr %aggr_conn.0, i32 0, i32 5, i32 %conv11
  tail call fastcc void @aggr_deque_frms(ptr noundef nonnull %aggr_conn.0, i8 noundef zeroext %8, i16 noundef zeroext 0, i8 noundef zeroext 0) #10
  %hold_q_sz.i = getelementptr %struct.aggr_info_conn, ptr %aggr_conn.0, i32 0, i32 4, i32 %conv11, i32 4
  %11 = ptrtoint ptr %hold_q_sz.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %hold_q_sz.i, align 4
  %hold_q.i = getelementptr %struct.aggr_info_conn, ptr %aggr_conn.0, i32 0, i32 4, i32 %conv11, i32 5
  %12 = call ptr @memset(ptr %arrayidx, i32 0, i32 6)
  %13 = ptrtoint ptr %hold_q.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hold_q.i, align 4
  tail call void @kfree(ptr noundef %14) #10
  %15 = ptrtoint ptr %hold_q.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %hold_q.i, align 4
  %16 = call ptr @memset(ptr %arrayidx3.i, i32 0, i32 36)
  br label %cleanup

cleanup:                                          ; preds = %aggr_delete_tid_state.exit, %if.end15.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aggr_reset_state(ptr noundef %aggr_conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %aggr_conn, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %timer_scheduled = getelementptr inbounds %struct.aggr_info_conn, ptr %aggr_conn, i32 0, i32 1
  %0 = ptrtoint ptr %timer_scheduled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %timer_scheduled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end.if.end.i.preheader_crit_edge, label %if.then2

if.end.if.end.i.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.preheader

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %timer = getelementptr inbounds %struct.aggr_info_conn, ptr %aggr_conn, i32 0, i32 2
  %call = tail call i32 @del_timer(ptr noundef %timer) #10
  %2 = ptrtoint ptr %timer_scheduled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %timer_scheduled, align 1
  br label %if.end.i.preheader

if.end.i.preheader:                               ; preds = %if.then2, %if.end.if.end.i.preheader_crit_edge
  br label %if.end.i

if.end.i:                                         ; preds = %aggr_delete_tid_state.exit.if.end.i_crit_edge, %if.end.i.preheader
  %indvars.iv = phi i32 [ %indvars.iv.next, %aggr_delete_tid_state.exit.if.end.i_crit_edge ], [ 0, %if.end.i.preheader ]
  %arrayidx.i = getelementptr %struct.aggr_info_conn, ptr %aggr_conn, i32 0, i32 4, i32 %indvars.iv
  %arrayidx3.i = getelementptr %struct.aggr_info_conn, ptr %aggr_conn, i32 0, i32 5, i32 %indvars.iv
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 4, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool4.not.i = icmp eq i8 %4, 0
  br i1 %tobool4.not.i, label %if.end.i.aggr_delete_tid_state.exit_crit_edge, label %if.then5.i

if.end.i.aggr_delete_tid_state.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aggr_delete_tid_state.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %5 = trunc i32 %indvars.iv to i8
  tail call fastcc void @aggr_deque_frms(ptr noundef nonnull %aggr_conn, i8 noundef zeroext %5, i16 noundef zeroext 0, i8 noundef zeroext 0) #10
  br label %aggr_delete_tid_state.exit

aggr_delete_tid_state.exit:                       ; preds = %if.then5.i, %if.end.i.aggr_delete_tid_state.exit_crit_edge
  %hold_q_sz.i = getelementptr %struct.aggr_info_conn, ptr %aggr_conn, i32 0, i32 4, i32 %indvars.iv, i32 4
  %6 = ptrtoint ptr %hold_q_sz.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %hold_q_sz.i, align 4
  %hold_q.i = getelementptr %struct.aggr_info_conn, ptr %aggr_conn, i32 0, i32 4, i32 %indvars.iv, i32 5
  %7 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 6)
  %8 = ptrtoint ptr %hold_q.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hold_q.i, align 4
  tail call void @kfree(ptr noundef %9) #10
  %10 = ptrtoint ptr %hold_q.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %hold_q.i, align 4
  %11 = call ptr @memset(ptr %arrayidx3.i, i32 0, i32 36)
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 8
  br i1 %exitcond.not, label %aggr_delete_tid_state.exit.cleanup_crit_edge, label %aggr_delete_tid_state.exit.if.end.i_crit_edge

aggr_delete_tid_state.exit.if.end.i_crit_edge:    ; preds = %aggr_delete_tid_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

aggr_delete_tid_state.exit.cleanup_crit_edge:     ; preds = %aggr_delete_tid_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %aggr_delete_tid_state.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_cleanup_amsdu_rxbufs(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 21
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %amsdu_rx_buffer_queue = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 60
  %0 = ptrtoint ptr %amsdu_rx_buffer_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %amsdu_rx_buffer_queue, align 4
  %cmp.i.not = icmp eq ptr %1, %amsdu_rx_buffer_queue
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %packet.031 = phi ptr [ %tmp_pkt.0, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %packet.031 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp_pkt.0 = load ptr, ptr %packet.031, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %packet.031) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %packet.031, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %packet.031 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %packet.031, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %packet.031 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %packet.031, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %packet.031, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %pkt_cntxt = getelementptr inbounds %struct.htc_packet, ptr %packet.031, i32 0, i32 1
  %11 = ptrtoint ptr %pkt_cntxt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pkt_cntxt, align 4
  tail call void @consume_skb(ptr noundef %12) #10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %cmp.not = icmp eq ptr %tmp_pkt.0, %amsdu_rx_buffer_queue
  br i1 %cmp.not, label %list_del.exit.cleanup_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aggr_module_destroy(ptr noundef %aggr_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %aggr_info, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %aggr_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aggr_info, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.aggr_reset_state.exit_crit_edge, label %if.end.i

if.end.aggr_reset_state.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %aggr_reset_state.exit

if.end.i:                                         ; preds = %if.end
  %timer_scheduled.i = getelementptr inbounds %struct.aggr_info_conn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %timer_scheduled.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %timer_scheduled.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not.i = icmp eq i8 %3, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end.i.i.preheader_crit_edge, label %if.then2.i

if.end.i.if.end.i.i.preheader_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.preheader

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %timer.i = getelementptr inbounds %struct.aggr_info_conn, ptr %1, i32 0, i32 2
  %call.i = tail call i32 @del_timer(ptr noundef %timer.i) #10
  %4 = ptrtoint ptr %timer_scheduled.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %timer_scheduled.i, align 1
  br label %if.end.i.i.preheader

if.end.i.i.preheader:                             ; preds = %if.then2.i, %if.end.i.if.end.i.i.preheader_crit_edge
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %aggr_delete_tid_state.exit.i.if.end.i.i_crit_edge, %if.end.i.i.preheader
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %aggr_delete_tid_state.exit.i.if.end.i.i_crit_edge ], [ 0, %if.end.i.i.preheader ]
  %arrayidx.i.i = getelementptr %struct.aggr_info_conn, ptr %1, i32 0, i32 4, i32 %indvars.iv.i
  %arrayidx3.i.i = getelementptr %struct.aggr_info_conn, ptr %1, i32 0, i32 5, i32 %indvars.iv.i
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i.i, align 4, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not.i.i = icmp eq i8 %6, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.aggr_delete_tid_state.exit.i_crit_edge, label %if.then5.i.i

if.end.i.i.aggr_delete_tid_state.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aggr_delete_tid_state.exit.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %7 = trunc i32 %indvars.iv.i to i8
  tail call fastcc void @aggr_deque_frms(ptr noundef nonnull %1, i8 noundef zeroext %7, i16 noundef zeroext 0, i8 noundef zeroext 0) #10
  br label %aggr_delete_tid_state.exit.i

aggr_delete_tid_state.exit.i:                     ; preds = %if.then5.i.i, %if.end.i.i.aggr_delete_tid_state.exit.i_crit_edge
  %hold_q_sz.i.i = getelementptr %struct.aggr_info_conn, ptr %1, i32 0, i32 4, i32 %indvars.iv.i, i32 4
  %8 = ptrtoint ptr %hold_q_sz.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %hold_q_sz.i.i, align 4
  %hold_q.i.i = getelementptr %struct.aggr_info_conn, ptr %1, i32 0, i32 4, i32 %indvars.iv.i, i32 5
  %9 = call ptr @memset(ptr %arrayidx.i.i, i32 0, i32 6)
  %10 = ptrtoint ptr %hold_q.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hold_q.i.i, align 4
  tail call void @kfree(ptr noundef %11) #10
  %12 = ptrtoint ptr %hold_q.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %hold_q.i.i, align 4
  %13 = call ptr @memset(ptr %arrayidx3.i.i, i32 0, i32 36)
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 8
  br i1 %exitcond.not.i, label %aggr_delete_tid_state.exit.i.aggr_reset_state.exit_crit_edge, label %aggr_delete_tid_state.exit.i.if.end.i.i_crit_edge

aggr_delete_tid_state.exit.i.if.end.i.i_crit_edge: ; preds = %aggr_delete_tid_state.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

aggr_delete_tid_state.exit.i.aggr_reset_state.exit_crit_edge: ; preds = %aggr_delete_tid_state.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aggr_reset_state.exit

aggr_reset_state.exit:                            ; preds = %aggr_delete_tid_state.exit.i.aggr_reset_state.exit_crit_edge, %if.end.aggr_reset_state.exit_crit_edge
  %rx_amsdu_freeq = getelementptr inbounds %struct.aggr_info, ptr %aggr_info, i32 0, i32 1
  tail call void @skb_queue_purge(ptr noundef %rx_amsdu_freeq) #10
  %14 = ptrtoint ptr %aggr_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %aggr_info, align 4
  tail call void @kfree(ptr noundef %15) #10
  tail call void @kfree(ptr noundef nonnull %aggr_info) #10
  br label %return

return:                                           ; preds = %aggr_reset_state.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ath6kl_wmi_cmd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ath6kl_wmi_determine_user_priority(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ath6kl_wmi_get_traffic_class(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aggr_slice_amsdu(ptr noundef %p_aggr, ptr noundef %rxtid, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %conv2 = add i32 %1, 65522
  %conv367 = and i32 %conv2, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %conv367)
  %cmp68 = icmp ugt i32 %conv367, 14
  br i1 %cmp68, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 14
  %rx_amsdu_freeq.i = getelementptr inbounds %struct.aggr_info, ptr %p_aggr, i32 0, i32 1
  %qlen.i.i = getelementptr inbounds %struct.aggr_info, ptr %p_aggr, i32 0, i32 1, i32 1
  %q = getelementptr inbounds %struct.rxtid, ptr %rxtid, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %if.end32.while.body_crit_edge, %while.body.lr.ph
  %conv370 = phi i32 [ %conv367, %while.body.lr.ph ], [ %conv3, %if.end32.while.body_crit_edge ]
  %framep.069 = phi ptr [ %add.ptr, %while.body.lr.ph ], [ %add.ptr37, %if.end32.while.body_crit_edge ]
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %framep.069, i32 0, i32 2
  %4 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %h_proto, align 1
  %6 = add i16 %5, -1509
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1463, i16 %6)
  %7 = icmp ult i16 %6, -1463
  br i1 %7, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %conv6 = zext i16 %5 to i32
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.32, i32 noundef %conv6) #10
  br label %while.end

if.end:                                           ; preds = %while.body
  %8 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp.i = icmp ult i32 %9, 4
  br i1 %cmp.i, label %if.then.i, label %if.end.aggr_get_free_skb.exit_crit_edge

if.end.aggr_get_free_skb.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %aggr_get_free_skb.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ath6kl_alloc_netbufs(ptr noundef %rx_amsdu_freeq.i) #10
  br label %aggr_get_free_skb.exit

aggr_get_free_skb.exit:                           ; preds = %if.then.i, %if.end.aggr_get_free_skb.exit_crit_edge
  %call3.i = tail call ptr @skb_dequeue(ptr noundef %rx_amsdu_freeq.i) #10
  %tobool.not = icmp eq ptr %call3.i, null
  br i1 %tobool.not, label %if.then16, label %if.end17

if.then16:                                        ; preds = %aggr_get_free_skb.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.33) #10
  br label %while.end

if.end17:                                         ; preds = %aggr_get_free_skb.exit
  %add = add nuw nsw i16 %5, 14
  %data18 = getelementptr inbounds %struct.sk_buff, ptr %call3.i, i32 0, i32 19
  %10 = ptrtoint ptr %data18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data18, align 4
  %conv19 = zext i16 %add to i32
  %12 = call ptr @memcpy(ptr %11, ptr %framep.069, i32 %conv19)
  %call21 = tail call ptr @skb_put(ptr noundef nonnull %call3.i, i32 noundef %conv19) #10
  %call22 = tail call i32 @ath6kl_wmi_dot3_2_dix(ptr noundef nonnull %call3.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.34) #10
  tail call void @consume_skb(ptr noundef nonnull %call3.i) #10
  br label %while.end

if.end25:                                         ; preds = %if.end17
  tail call void @skb_queue_tail(ptr noundef %q, ptr noundef nonnull %call3.i) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %conv370, i32 %conv19)
  %cmp29 = icmp eq i32 %conv370, %conv19
  br i1 %cmp29, label %if.end25.while.end_crit_edge, label %if.end32

if.end25.while.end_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end32:                                         ; preds = %if.end25
  %add34 = add nuw nsw i16 %5, 17
  %and = and i16 %add34, -4
  %conv36 = zext i16 %and to i32
  %add.ptr37 = getelementptr i8, ptr %framep.069, i32 %conv36
  %sub40 = sub nsw i32 %conv370, %conv36
  %conv3 = and i32 %sub40, 65535
  %cmp = icmp ugt i32 %conv3, 14
  br i1 %cmp, label %if.end32.while.body_crit_edge, label %if.end32.while.end_crit_edge

if.end32.while.end_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end32.while.body_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %if.end32.while.end_crit_edge, %if.end25.while.end_crit_edge, %if.then24, %if.then16, %if.then, %entry.while.end_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aggr_deque_frms(ptr noundef %agg_conn, i8 noundef zeroext %tid, i16 noundef zeroext %seq_no, i8 noundef zeroext %order) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %tid to i32
  %arrayidx = getelementptr %struct.aggr_info_conn, ptr %agg_conn, i32 0, i32 4, i32 %idxprom
  %lock = getelementptr %struct.aggr_info_conn, ptr %agg_conn, i32 0, i32 4, i32 %idxprom, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %seq_next = getelementptr %struct.aggr_info_conn, ptr %agg_conn, i32 0, i32 4, i32 %idxprom, i32 3
  %0 = ptrtoint ptr %seq_next to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %seq_next, align 4
  %conv = zext i16 %1 to i32
  %hold_q_sz = getelementptr %struct.aggr_info_conn, ptr %agg_conn, i32 0, i32 4, i32 %idxprom, i32 4
  %2 = ptrtoint ptr %hold_q_sz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hold_q_sz, align 4
  %rem = urem i32 %conv, %3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %seq_no)
  %tobool.not = icmp eq i16 %seq_no, 0
  %.seq_no = select i1 %tobool.not, i16 %1, i16 %seq_no
  %conv9 = zext i16 %.seq_no to i32
  %rem11 = urem i32 %conv9, %3
  %hold_q = getelementptr %struct.aggr_info_conn, ptr %agg_conn, i32 0, i32 4, i32 %idxprom, i32 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %order)
  %cmp = icmp eq i8 %order, 1
  %num_hole = getelementptr %struct.aggr_info_conn, ptr %agg_conn, i32 0, i32 5, i32 %idxprom, i32 7
  %aggr_info = getelementptr inbounds %struct.aggr_info_conn, ptr %agg_conn, i32 0, i32 6
  %q = getelementptr %struct.aggr_info_conn, ptr %agg_conn, i32 0, i32 4, i32 %idxprom, i32 6
  br label %do.body

do.body:                                          ; preds = %if.end29.do.body_crit_edge, %entry
  %idx.0 = phi i32 [ %rem, %entry ], [ %rem37, %if.end29.do.body_crit_edge ]
  %4 = ptrtoint ptr %hold_q to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hold_q, align 4
  %arrayidx14 = getelementptr %struct.skb_hold_q, ptr %5, i32 %idx.0
  %6 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx14, align 4
  %tobool18.not = icmp eq ptr %7, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  br i1 %tobool18.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true.if.then21_crit_edge

land.lhs.true.if.then21_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end:                                           ; preds = %do.body
  br i1 %tobool18.not, label %if.else28, label %if.end.if.then21_crit_edge

if.end.if.then21_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

if.then21:                                        ; preds = %if.end.if.then21_crit_edge, %land.lhs.true.if.then21_crit_edge
  %is_amsdu = getelementptr %struct.skb_hold_q, ptr %5, i32 %idx.0, i32 1
  %8 = ptrtoint ptr %is_amsdu to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_amsdu, align 4, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool22.not = icmp eq i8 %9, 0
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %aggr_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %aggr_info, align 4
  tail call fastcc void @aggr_slice_amsdu(ptr noundef %11, ptr noundef %arrayidx, ptr noundef nonnull %7)
  br label %if.end26

if.else:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @skb_queue_tail(ptr noundef %q, ptr noundef nonnull %7) #10
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then23
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx14, align 4
  br label %if.end29

if.else28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %num_hole to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_hole, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %num_hole, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.else28, %if.end26
  %15 = ptrtoint ptr %seq_next to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %seq_next, align 4
  %17 = add i16 %16, 1
  %18 = and i16 %17, 4095
  store i16 %18, ptr %seq_next, align 4
  %conv35 = zext i16 %18 to i32
  %19 = ptrtoint ptr %hold_q_sz to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hold_q_sz, align 4
  %rem37 = urem i32 %conv35, %20
  %cmp41.not = icmp eq i32 %rem37, %rem11
  br i1 %cmp41.not, label %if.end29.do.end_crit_edge, label %if.end29.do.body_crit_edge

if.end29.do.body_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end29.do.end_crit_edge:                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %if.end29.do.end_crit_edge, %land.lhs.true.do.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %qlen.i = getelementptr %struct.aggr_info_conn, ptr %agg_conn, i32 0, i32 4, i32 %idxprom, i32 6, i32 1
  %21 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %qlen.i, align 4
  %num_delivered = getelementptr %struct.aggr_info_conn, ptr %agg_conn, i32 0, i32 5, i32 %idxprom, i32 5
  %23 = ptrtoint ptr %num_delivered to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_delivered, align 4
  %add45 = add i32 %24, %22
  store i32 %add45, ptr %num_delivered, align 4
  %call4776 = tail call ptr @skb_dequeue(ptr noundef %q) #10
  %tobool48.not77 = icmp eq ptr %call4776, null
  br i1 %tobool48.not77, label %do.end.while.end_crit_edge, label %if.end.i.lr.ph

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end.i.lr.ph:                                   ; preds = %do.end
  %dev = getelementptr inbounds %struct.aggr_info_conn, ptr %agg_conn, i32 0, i32 3
  br label %if.end.i

if.end.i:                                         ; preds = %ath6kl_deliver_frames_to_nw_stack.exit.if.end.i_crit_edge, %if.end.i.lr.ph
  %call4778 = phi ptr [ %call4776, %if.end.i.lr.ph ], [ %call47, %ath6kl_deliver_frames_to_nw_stack.exit.if.end.i_crit_edge ]
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %27 = getelementptr inbounds %struct.anon, ptr %call4778, i32 0, i32 2
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %26, ptr %27, align 8
  %flags.i = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 14
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef nonnull %call4778) #10
  br label %ath6kl_deliver_frames_to_nw_stack.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call4778, ptr noundef %26) #10
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call4778, i32 0, i32 15, i32 0, i32 18
  %31 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %call.i, ptr %protocol.i, align 8
  %call4.i = tail call i32 @netif_rx_ni(ptr noundef nonnull %call4778) #10
  br label %ath6kl_deliver_frames_to_nw_stack.exit

ath6kl_deliver_frames_to_nw_stack.exit:           ; preds = %if.end3.i, %if.then2.i
  %call47 = tail call ptr @skb_dequeue(ptr noundef %q) #10
  %tobool48.not = icmp eq ptr %call47, null
  br i1 %tobool48.not, label %ath6kl_deliver_frames_to_nw_stack.exit.while.end_crit_edge, label %ath6kl_deliver_frames_to_nw_stack.exit.if.end.i_crit_edge

ath6kl_deliver_frames_to_nw_stack.exit.if.end.i_crit_edge: ; preds = %ath6kl_deliver_frames_to_nw_stack.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

ath6kl_deliver_frames_to_nw_stack.exit.while.end_crit_edge: ; preds = %ath6kl_deliver_frames_to_nw_stack.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %ath6kl_deliver_frames_to_nw_stack.exit.while.end_crit_edge, %do.end.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !68, !70, !71, !73, !75, !77, !78, !79, !80, !82, !83, !85, !86, !88, !90, !92, !94}
!llvm.named.register.sp = !{!96}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 295, i32 6}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 300, i32 6}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 309, i32 6}
!7 = !{ptr @__func__.ath6kl_control_tx, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 309, i32 42}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 318, i32 14}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 374, i32 6}
!13 = !{ptr @__func__.ath6kl_data_tx, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 374, i32 45}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 381, i32 6}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 409, i32 15}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 433, i32 16}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 461, i32 14}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 504, i32 50}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 602, i32 14}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 707, i32 7}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 712, i32 7}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 720, i32 7}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 728, i32 7}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 768, i32 17}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 771, i32 8}
!39 = !{ptr @__func__.ath6kl_tx_complete, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 772, i32 8}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 773, i32 13}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 778, i32 13}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 892, i32 6}
!47 = !{ptr @__func__.ath6kl_rx_refill, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 893, i32 6}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 956, i32 33}
!51 = !{ptr @__func__.ath6kl_alloc_amsdu_rxbuf, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 957, i32 6}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 1323, i32 6}
!55 = !{ptr @__func__.ath6kl_rx, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 1324, i32 6}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 1335, i32 50}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 1392, i32 15}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 1726, i32 34}
!63 = !{ptr @__func__.aggr_recv_addba_req_evt, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 1727, i32 7}
!65 = !{ptr @aggr_conn_init.__key, !66, !"__key", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 1754, i32 2}
!67 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @aggr_conn_init.__key.24, !69, !"__key", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 1764, i32 3}
!70 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 1774, i32 14}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 1780, i32 14}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/ath/ath6kl/trace.h", i32 39, i32 1}
!77 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!78 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!79 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!80 = distinct !{null, !81, !"__already_done", i1 false, i1 false}
!81 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!82 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @skb_queue_head_init.__key, !84, !"__key", i1 false, i1 false}
!84 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!85 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 1008, i32 15}
!88 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 1016, i32 15}
!90 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 1023, i32 15}
!92 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 1639, i32 7}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/ath/ath6kl/txrx.c", i32 852, i32 15}
!96 = !{!"sp"}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{!"branch_weights", i32 2000, i32 1}
!107 = !{i64 2148919955, i64 2148919960, i64 2148919973, i64 2148920017, i64 2148920051, i64 2148920072}
!108 = !{i64 2157305325}
!109 = !{i64 2157305540}
!110 = !{i64 2149743336}
!111 = !{i64 2149744372}
!112 = !{!"auto-init"}
!113 = !{i8 0, i8 2}
