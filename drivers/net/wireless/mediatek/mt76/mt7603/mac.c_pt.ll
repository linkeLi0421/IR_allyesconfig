; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt7603/mac.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt7603/mac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.92 }
%struct.atomic_t = type { i32 }
%union.anon.92 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.143, ptr, %union.anon.144, [20 x i8] }
%struct.mt76_phy = type { ptr, ptr, ptr, i32, [7 x ptr], %struct.cfg80211_chan_def, ptr, ptr, i64, %struct.mt76_hw_cap, %struct.mt76_sband, %struct.mt76_sband, %struct.mt76_sband, [6 x i8], i32, i8, i16, %struct.mt76_testmode_data, %struct.delayed_work, i8, [5 x %struct.anon.135], ptr }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.mt76_hw_cap = type { i8, i8, i8 }
%struct.mt76_sband = type { %struct.ieee80211_supported_band, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.mt76_testmode_data = type { i32, [1 x i32], ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, [4 x i8], i8, [3 x [6 x i8]], i32, i32, i16, i32, %struct.anon.134 }
%struct.anon.134 = type { [5 x i64], [5 x i64] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.135 = type { ptr, ptr, i16 }
%struct.mt76_rx_status = type <{ %union.anon.136, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.136 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mt76_mcu = type { %struct.mutex, i32, i32, %struct.sk_buff_head, %struct.wait_queue_head }
%struct.sk_buff_head = type { %union.anon.62, i32, %struct.spinlock }
%union.anon.62 = type { %struct.anon.63 }
%struct.anon.63 = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.106, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.127, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.106 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.127 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.mt76_queue = type { ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, i16, i16, i16, i32, i32, i32, i8, i8, i8, i8, i8, i32, ptr, %struct.page_frag_cache }
%struct.page_frag_cache = type { ptr, i16, i16, i32, i8 }
%struct.mt76_worker = type { ptr, ptr, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.mt76_wcid = type { [16 x ptr], %struct.atomic_t, i32, %struct.ewma_signal, i32, %struct.rate_info, i16, i8, i8, i8, i8, [17 x [6 x i8]], i16, i32, i8, %struct.list_head, %struct.idr }
%struct.ewma_signal = type { i32 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.140, i32 }
%union.anon.140 = type { ptr }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.mt76_rate_power = type { %union.anon.141 }
%union.anon.141 = type { %struct.anon.142 }
%struct.anon.142 = type { [4 x i8], [8 x i8], [10 x i8], [16 x i8], [10 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.143 = type { ptr, i32 }
%union.anon.144 = type { %struct.mt76_usb }
%struct.mt76_usb = type { %struct.mutex, ptr, i16, %struct.mt76_worker, %struct.mt76_worker, %struct.work_struct, [6 x i8], [2 x i8], i8, %struct.mt76u_mcu }
%struct.mt76u_mcu = type { ptr, ptr, i32, i32, i8 }
%struct.mt7603_dev = type { %union.anon, ptr, i32, %struct.list_head, %struct.spinlock, %struct.mt7603_sta, i32, i32, i32, i32, i32, i32, i32, [3 x i8], i8, i16, i8, i64, %struct.spinlock, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i16], i16, i32, [7 x i32], [12 x i8] }
%union.anon = type { %struct.mt76_dev }
%struct.mt7603_sta = type { %struct.mt76_wcid, ptr, %struct.list_head, [4 x i32], %struct.sk_buff_head, [4 x %struct.ieee80211_tx_rate], [2 x %struct.mt7603_rate_set], i32, i8, i8, i8, i8, i8 }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.mt7603_rate_set = type { %struct.ieee80211_tx_rate, [4 x %struct.ieee80211_tx_rate] }
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mt76_channel_state = type { i64, i64, i64, i64, i64, i8 }
%struct.sk_buff = type { %union.anon.41, %union.anon.44, %union.anon.45, [48 x i8], %union.anon.46, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.48, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { ptr, ptr, %union.anon.43 }
%union.anon.43 = type { ptr }
%union.anon.44 = type { ptr }
%union.anon.45 = type { i64 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { i32, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.50, i32, i32, i32, i16, i16, %union.anon.52, i32, %union.anon.53, %union.anon.54, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.50 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { i16 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.131, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.131 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.130, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.130 = type { i64, i64, i8 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.mt76_tx_info = type { [32 x %struct.mt76_queue_buf], ptr, i32, i32 }
%struct.mt76_queue_buf = type { i32, i16, i8 }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.138, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.138 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.139] }
%struct.anon.139 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.ieee80211_bar = type { i16, i16, [6 x i8], [6 x i8], i16, i16 }
%struct.ieee80211_tx_status = type { ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_tx_info = type { i32, i32, %union.anon.146 }
%union.anon.146 = type { %struct.anon.150, [32 x i8] }
%struct.anon.150 = type { i64 }
%struct.mt76_queue_entry = type { %union.anon.132, %union.anon.133, [2 x i32], [2 x i16], i16, i8 }
%union.anon.132 = type { ptr }
%union.anon.133 = type { ptr }
%struct.mt76_queue_regs = type { i32, i32, i32, i32 }
%struct.mt76_queue_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mt7603_filter_tx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/wireless/mediatek/mt76/mt7603/mac.c\00", [48 x i8] zeroinitializer }, align 32
@mt7603_mac_add_txs.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@mt7603_rx_get_wcid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_mac_txdone = external dso_local global %struct.tracepoint, align 4
@.str.5 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/wireless/mediatek/mt76/mt7603/../trace.h\00", [43 x i8] zeroinitializer }, align 32
@trace_mac_txdone.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 3, i64 4, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.7 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.8 = internal global [6 x i64] [i64 4, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077]
@__sancov_gen_cov_switch_values.9 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 3, i64 4]
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 208, i32 2 }
@___asan_gen_.15 = private constant [51 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7603/mac.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 1269, i32 9 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 695, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 723, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [56 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7603/../trace.h\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 99, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 108, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7603_mac_reset_counters(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 %3(ptr noundef %dev, i32 noundef 180392) #7
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call.1 = tail call i32 %7(ptr noundef %dev, i32 noundef 180396) #7
  %aggr_stats = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 40
  %8 = call ptr @memset(ptr %aggr_stats, i32 0, i32 128)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7603_mac_set_timing(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %coverage_class = getelementptr inbounds %struct.mt7603_dev, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %coverage_class to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %coverage_class, align 4
  %conv = sext i16 %1 to i32
  %mul = mul nsw i32 %conv, 3
  %and78 = and i32 %mul, 65535
  %shl101 = mul i32 %conv, 196608
  %or103 = or i32 %and78, %shl101
  %chandef = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chandef, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmw, align 4
  %call = tail call i32 %9(ptr noundef %dev, i32 noundef 136320, i32 noundef 0, i32 noundef 768) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #7
  %11 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wr, align 4
  %add = add i32 %or103, 3145959
  tail call void %14(ptr noundef %dev, i32 noundef 136848, i32 noundef %add) #7
  %15 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus, align 4
  %wr110 = getelementptr inbounds %struct.mt76_bus_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %wr110 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wr110, align 4
  %add111 = add i32 %or103, 1572924
  tail call void %18(ptr noundef %dev, i32 noundef 136852, i32 noundef %add111) #7
  %slottime = getelementptr inbounds %struct.mt7603_dev, ptr %dev, i32 0, i32 14
  %19 = ptrtoint ptr %slottime to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %slottime, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  %21 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus, align 4
  %wr113 = getelementptr inbounds %struct.mt76_bus_ops, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %wr113 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wr113, align 4
  %conv197 = zext i8 %20 to i32
  %shl198 = shl nuw i32 %conv197, 24
  %and199 = and i32 %shl198, 2130706432
  %or171 = select i1 %cmp, i32 1050984, i32 657768
  %or200 = or i32 %or171, %and199
  tail call void %24(ptr noundef %dev, i32 noundef 136868, i32 noundef %or200) #7
  %25 = ptrtoint ptr %slottime to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %slottime, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %26)
  %cmp203 = icmp ult i8 %26, 20
  %brmerge = select i1 %cmp203, i1 true, i1 %cmp
  %val.0 = select i1 %brmerge, i32 1680, i32 48
  %27 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus, align 4
  %rmw211 = getelementptr inbounds %struct.mt76_bus_ops, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %rmw211 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmw211, align 4
  %call236 = tail call i32 %30(ptr noundef %dev, i32 noundef 135792, i32 noundef 65520, i32 noundef %val.0) #7
  %31 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus, align 4
  %rmw238 = getelementptr inbounds %struct.mt76_bus_ops, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %rmw238 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmw238, align 4
  %call239 = tail call i32 %34(ptr noundef %dev, i32 noundef 136320, i32 noundef 768, i32 noundef 0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7603_wtbl_init(ptr noundef %dev, i32 noundef %idx, i32 noundef %vif, ptr noundef readonly %mac_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mac_addr, null
  br i1 %tobool.not, label %entry.do.end54_crit_edge, label %do.end12

entry.do.end54_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end54

do.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %mac_addr, i32 4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %add.ptr, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1) #7
  %conv = zext i16 %2 to i32
  %3 = ptrtoint ptr %mac_addr to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %mac_addr, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  br label %do.end54

do.end54:                                         ; preds = %do.end12, %entry.do.end54_crit_edge
  %w0.0 = phi i32 [ %conv, %do.end12 ], [ 0, %entry.do.end54_crit_edge ]
  %w1.0 = phi i32 [ %5, %do.end12 ], [ 0, %entry.do.end54_crit_edge ]
  %mul.i = shl i32 %idx, 5
  %add.i = add i32 %mul.i, 163840
  %6 = tail call i32 @llvm.smax.i32(i32 %vif, i32 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vif)
  %cmp = icmp slt i32 %vif, 0
  %or = or i32 %w0.0, 4194304
  %w0.1 = select i1 %cmp, i32 %w0.0, i32 %or
  %shl56 = shl i32 %6, 16
  %and57 = and i32 %shl56, 4128768
  %or58 = or i32 %w0.1, %and57
  %call59 = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef 143360, i32 noundef 65536, i32 noundef 0, i32 noundef 5000) #7
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %7 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmw, align 4
  %call60 = tail call i32 %10(ptr noundef %dev, i32 noundef %add.i, i32 noundef 0, i32 noundef %or58) #7
  %11 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus, align 4
  %rmw62 = getelementptr inbounds %struct.mt76_bus_ops, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %rmw62 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmw62, align 4
  %add63 = add i32 %mul.i, 163844
  %call64 = tail call i32 %14(ptr noundef %dev, i32 noundef %add63, i32 noundef 0, i32 noundef %w1.0) #7
  %15 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus, align 4
  %rmw66 = getelementptr inbounds %struct.mt76_bus_ops, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %rmw66 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmw66, align 4
  %add67 = add i32 %mul.i, 163848
  %call68 = tail call i32 %18(ptr noundef %dev, i32 noundef %add67, i32 noundef 0, i32 noundef 1073741824) #7
  %19 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus, align 4
  %rmw.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmw.i, align 4
  %call1.i = tail call i32 %22(ptr noundef %dev, i32 noundef 136464, i32 noundef 0, i32 noundef 998895) #7
  %mul.i138 = shl i32 %idx, 6
  %add.i139 = add i32 %mul.i138, 262144
  %23 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wr, align 4
  tail call void %26(ptr noundef %dev, i32 noundef %add.i139, i32 noundef 0) #7
  %27 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus, align 4
  %wr.1 = getelementptr inbounds %struct.mt76_bus_ops, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %wr.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wr.1, align 4
  %add73.1 = add i32 %mul.i138, 262148
  tail call void %30(ptr noundef %dev, i32 noundef %add73.1, i32 noundef 0) #7
  %31 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus, align 4
  %wr.2 = getelementptr inbounds %struct.mt76_bus_ops, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %wr.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wr.2, align 4
  %add73.2 = add i32 %mul.i138, 262152
  tail call void %34(ptr noundef %dev, i32 noundef %add73.2, i32 noundef 0) #7
  %35 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus, align 4
  %wr.3 = getelementptr inbounds %struct.mt76_bus_ops, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %wr.3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wr.3, align 4
  %add73.3 = add i32 %mul.i138, 262156
  tail call void %38(ptr noundef %dev, i32 noundef %add73.3, i32 noundef 0) #7
  %39 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus, align 4
  %wr.4 = getelementptr inbounds %struct.mt76_bus_ops, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %wr.4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wr.4, align 4
  %add73.4 = add i32 %mul.i138, 262160
  tail call void %42(ptr noundef %dev, i32 noundef %add73.4, i32 noundef 0) #7
  %43 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus, align 4
  %wr.5 = getelementptr inbounds %struct.mt76_bus_ops, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %wr.5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wr.5, align 4
  %add73.5 = add i32 %mul.i138, 262164
  tail call void %46(ptr noundef %dev, i32 noundef %add73.5, i32 noundef 0) #7
  %47 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bus, align 4
  %wr.6 = getelementptr inbounds %struct.mt76_bus_ops, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %wr.6 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %wr.6, align 4
  %add73.6 = add i32 %mul.i138, 262168
  tail call void %50(ptr noundef %dev, i32 noundef %add73.6, i32 noundef 0) #7
  %51 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bus, align 4
  %wr.7 = getelementptr inbounds %struct.mt76_bus_ops, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %wr.7 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %wr.7, align 4
  %add73.7 = add i32 %mul.i138, 262172
  tail call void %54(ptr noundef %dev, i32 noundef %add73.7, i32 noundef 0) #7
  %55 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bus, align 4
  %wr.8 = getelementptr inbounds %struct.mt76_bus_ops, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %wr.8 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wr.8, align 4
  %add73.8 = add i32 %mul.i138, 262176
  tail call void %58(ptr noundef %dev, i32 noundef %add73.8, i32 noundef 0) #7
  %59 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bus, align 4
  %wr.9 = getelementptr inbounds %struct.mt76_bus_ops, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %wr.9 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %wr.9, align 4
  %add73.9 = add i32 %mul.i138, 262180
  tail call void %62(ptr noundef %dev, i32 noundef %add73.9, i32 noundef 0) #7
  %63 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bus, align 4
  %wr.10 = getelementptr inbounds %struct.mt76_bus_ops, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %wr.10 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %wr.10, align 4
  %add73.10 = add i32 %mul.i138, 262184
  tail call void %66(ptr noundef %dev, i32 noundef %add73.10, i32 noundef 0) #7
  %67 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bus, align 4
  %wr.11 = getelementptr inbounds %struct.mt76_bus_ops, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %wr.11 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %wr.11, align 4
  %add73.11 = add i32 %mul.i138, 262188
  tail call void %70(ptr noundef %dev, i32 noundef %add73.11, i32 noundef 0) #7
  %71 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bus, align 4
  %wr.12 = getelementptr inbounds %struct.mt76_bus_ops, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %wr.12 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %wr.12, align 4
  %add73.12 = add i32 %mul.i138, 262192
  tail call void %74(ptr noundef %dev, i32 noundef %add73.12, i32 noundef 0) #7
  %75 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bus, align 4
  %wr.13 = getelementptr inbounds %struct.mt76_bus_ops, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %wr.13 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %wr.13, align 4
  %add73.13 = add i32 %mul.i138, 262196
  tail call void %78(ptr noundef %dev, i32 noundef %add73.13, i32 noundef 0) #7
  %79 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bus, align 4
  %wr.14 = getelementptr inbounds %struct.mt76_bus_ops, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %wr.14 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %wr.14, align 4
  %add73.14 = add i32 %mul.i138, 262200
  tail call void %82(ptr noundef %dev, i32 noundef %add73.14, i32 noundef 0) #7
  %83 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bus, align 4
  %wr.15 = getelementptr inbounds %struct.mt76_bus_ops, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %wr.15 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %wr.15, align 4
  %add73.15 = add i32 %mul.i138, 262204
  tail call void %86(ptr noundef %dev, i32 noundef %add73.15, i32 noundef 0) #7
  %87 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %bus, align 4
  %rmw.i141 = getelementptr inbounds %struct.mt76_bus_ops, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %rmw.i141 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rmw.i141, align 4
  %and9.i = and i32 %idx, 255
  %or.i = or i32 %and9.i, 2048
  %call.i = tail call i32 %90(ptr noundef %dev, i32 noundef 143360, i32 noundef 255, i32 noundef %or.i) #7
  %call10.i = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef 143360, i32 noundef 65536, i32 noundef 0, i32 noundef 5000) #7
  %91 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %bus, align 4
  %rmw.i143 = getelementptr inbounds %struct.mt76_bus_ops, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %rmw.i143 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rmw.i143, align 4
  %call1.i144 = tail call i32 %94(ptr noundef %dev, i32 noundef 136448, i32 noundef 0, i32 noundef 998895) #7
  %add.i146 = add i32 %mul.i138, 270336
  %95 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bus, align 4
  %wr81 = getelementptr inbounds %struct.mt76_bus_ops, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %wr81 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %wr81, align 4
  tail call void %98(ptr noundef %dev, i32 noundef %add.i146, i32 noundef 0) #7
  %99 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %bus, align 4
  %wr81.1 = getelementptr inbounds %struct.mt76_bus_ops, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %wr81.1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %wr81.1, align 4
  %add82.1 = add i32 %mul.i138, 270340
  tail call void %102(ptr noundef %dev, i32 noundef %add82.1, i32 noundef 0) #7
  %103 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %bus, align 4
  %wr81.2 = getelementptr inbounds %struct.mt76_bus_ops, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %wr81.2 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %wr81.2, align 4
  %add82.2 = add i32 %mul.i138, 270344
  tail call void %106(ptr noundef %dev, i32 noundef %add82.2, i32 noundef 0) #7
  %107 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %bus, align 4
  %wr81.3 = getelementptr inbounds %struct.mt76_bus_ops, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %wr81.3 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %wr81.3, align 4
  %add82.3 = add i32 %mul.i138, 270348
  tail call void %110(ptr noundef %dev, i32 noundef %add82.3, i32 noundef 0) #7
  %111 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %bus, align 4
  %wr81.4 = getelementptr inbounds %struct.mt76_bus_ops, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %wr81.4 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %wr81.4, align 4
  %add82.4 = add i32 %mul.i138, 270352
  tail call void %114(ptr noundef %dev, i32 noundef %add82.4, i32 noundef 0) #7
  %115 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %bus, align 4
  %wr81.5 = getelementptr inbounds %struct.mt76_bus_ops, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %wr81.5 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %wr81.5, align 4
  %add82.5 = add i32 %mul.i138, 270356
  tail call void %118(ptr noundef %dev, i32 noundef %add82.5, i32 noundef 0) #7
  %119 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %bus, align 4
  %wr81.6 = getelementptr inbounds %struct.mt76_bus_ops, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %wr81.6 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %wr81.6, align 4
  %add82.6 = add i32 %mul.i138, 270360
  tail call void %122(ptr noundef %dev, i32 noundef %add82.6, i32 noundef 0) #7
  %123 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %bus, align 4
  %wr81.7 = getelementptr inbounds %struct.mt76_bus_ops, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %wr81.7 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %wr81.7, align 4
  %add82.7 = add i32 %mul.i138, 270364
  tail call void %126(ptr noundef %dev, i32 noundef %add82.7, i32 noundef 0) #7
  %127 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %bus, align 4
  %wr81.8 = getelementptr inbounds %struct.mt76_bus_ops, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %wr81.8 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %wr81.8, align 4
  %add82.8 = add i32 %mul.i138, 270368
  tail call void %130(ptr noundef %dev, i32 noundef %add82.8, i32 noundef 0) #7
  %131 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %bus, align 4
  %wr81.9 = getelementptr inbounds %struct.mt76_bus_ops, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %wr81.9 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %wr81.9, align 4
  %add82.9 = add i32 %mul.i138, 270372
  tail call void %134(ptr noundef %dev, i32 noundef %add82.9, i32 noundef 0) #7
  %135 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %bus, align 4
  %wr81.10 = getelementptr inbounds %struct.mt76_bus_ops, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %wr81.10 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %wr81.10, align 4
  %add82.10 = add i32 %mul.i138, 270376
  tail call void %138(ptr noundef %dev, i32 noundef %add82.10, i32 noundef 0) #7
  %139 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %bus, align 4
  %wr81.11 = getelementptr inbounds %struct.mt76_bus_ops, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %wr81.11 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %wr81.11, align 4
  %add82.11 = add i32 %mul.i138, 270380
  tail call void %142(ptr noundef %dev, i32 noundef %add82.11, i32 noundef 0) #7
  %143 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %bus, align 4
  %wr81.12 = getelementptr inbounds %struct.mt76_bus_ops, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %wr81.12 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %wr81.12, align 4
  %add82.12 = add i32 %mul.i138, 270384
  tail call void %146(ptr noundef %dev, i32 noundef %add82.12, i32 noundef 0) #7
  %147 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %bus, align 4
  %wr81.13 = getelementptr inbounds %struct.mt76_bus_ops, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %wr81.13 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %wr81.13, align 4
  %add82.13 = add i32 %mul.i138, 270388
  tail call void %150(ptr noundef %dev, i32 noundef %add82.13, i32 noundef 0) #7
  %151 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %bus, align 4
  %wr81.14 = getelementptr inbounds %struct.mt76_bus_ops, ptr %152, i32 0, i32 1
  %153 = ptrtoint ptr %wr81.14 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %wr81.14, align 4
  %add82.14 = add i32 %mul.i138, 270392
  tail call void %154(ptr noundef %dev, i32 noundef %add82.14, i32 noundef 0) #7
  %155 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %bus, align 4
  %wr81.15 = getelementptr inbounds %struct.mt76_bus_ops, ptr %156, i32 0, i32 1
  %157 = ptrtoint ptr %wr81.15 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %wr81.15, align 4
  %add82.15 = add i32 %mul.i138, 270396
  tail call void %158(ptr noundef %dev, i32 noundef %add82.15, i32 noundef 0) #7
  %add.i148 = add i32 %mul.i, 278528
  %159 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %bus, align 4
  %wr92 = getelementptr inbounds %struct.mt76_bus_ops, ptr %160, i32 0, i32 1
  %161 = ptrtoint ptr %wr92 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %wr92, align 4
  tail call void %162(ptr noundef %dev, i32 noundef %add.i148, i32 noundef 0) #7
  %163 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %bus, align 4
  %wr92.1 = getelementptr inbounds %struct.mt76_bus_ops, ptr %164, i32 0, i32 1
  %165 = ptrtoint ptr %wr92.1 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %wr92.1, align 4
  %add93.1 = add i32 %mul.i, 278532
  tail call void %166(ptr noundef %dev, i32 noundef %add93.1, i32 noundef 0) #7
  %167 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %bus, align 4
  %wr92.2 = getelementptr inbounds %struct.mt76_bus_ops, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %wr92.2 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %wr92.2, align 4
  %add93.2 = add i32 %mul.i, 278536
  tail call void %170(ptr noundef %dev, i32 noundef %add93.2, i32 noundef 0) #7
  %171 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %bus, align 4
  %wr92.3 = getelementptr inbounds %struct.mt76_bus_ops, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %wr92.3 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %wr92.3, align 4
  %add93.3 = add i32 %mul.i, 278540
  tail call void %174(ptr noundef %dev, i32 noundef %add93.3, i32 noundef 0) #7
  %175 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %bus, align 4
  %wr92.4 = getelementptr inbounds %struct.mt76_bus_ops, ptr %176, i32 0, i32 1
  %177 = ptrtoint ptr %wr92.4 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %wr92.4, align 4
  %add93.4 = add i32 %mul.i, 278544
  tail call void %178(ptr noundef %dev, i32 noundef %add93.4, i32 noundef 0) #7
  %179 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %bus, align 4
  %wr92.5 = getelementptr inbounds %struct.mt76_bus_ops, ptr %180, i32 0, i32 1
  %181 = ptrtoint ptr %wr92.5 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %wr92.5, align 4
  %add93.5 = add i32 %mul.i, 278548
  tail call void %182(ptr noundef %dev, i32 noundef %add93.5, i32 noundef 0) #7
  %183 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %bus, align 4
  %wr92.6 = getelementptr inbounds %struct.mt76_bus_ops, ptr %184, i32 0, i32 1
  %185 = ptrtoint ptr %wr92.6 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %wr92.6, align 4
  %add93.6 = add i32 %mul.i, 278552
  tail call void %186(ptr noundef %dev, i32 noundef %add93.6, i32 noundef 0) #7
  %187 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %bus, align 4
  %wr92.7 = getelementptr inbounds %struct.mt76_bus_ops, ptr %188, i32 0, i32 1
  %189 = ptrtoint ptr %wr92.7 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %wr92.7, align 4
  %add93.7 = add i32 %mul.i, 278556
  tail call void %190(ptr noundef %dev, i32 noundef %add93.7, i32 noundef 0) #7
  %191 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %bus, align 4
  %rmw.i152 = getelementptr inbounds %struct.mt76_bus_ops, ptr %192, i32 0, i32 2
  %193 = ptrtoint ptr %rmw.i152 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %rmw.i152, align 4
  %or.i154 = or i32 %and9.i, 4096
  %call.i155 = tail call i32 %194(ptr noundef %dev, i32 noundef 143360, i32 noundef 255, i32 noundef %or.i154) #7
  %call10.i156 = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef 143360, i32 noundef 65536, i32 noundef 0, i32 noundef 5000) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mt76_poll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7603_filter_tx(ptr noundef %dev, i32 noundef %idx, i1 noundef zeroext %abort) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mul.i.i = shl i32 %idx, 5
  %bus.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.i = add i32 %mul.i.i, 163852
  %call1.i = tail call i32 %3(ptr noundef %dev, i32 noundef %add.i) #7
  %or.i = or i32 %call1.i, -2147483648
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 4
  %wr.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wr.i, align 4
  tail call void %7(ptr noundef %dev, i32 noundef %add.i, i32 noundef %or.i) #7
  %.195 = select i1 %abort, i32 12582912, i32 0
  %. = select i1 %abort, i32 134217728, i32 16777216
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wr, align 4
  %shl = shl i32 %idx, 8
  %and16 = and i32 %shl, 65280
  %or = or i32 %and16, 1
  tail call void %11(ptr noundef %dev, i32 noundef 136500, i32 noundef %or) #7
  %and42 = and i32 %idx, 255
  %or43 = or i32 %and42, %.195
  %or68 = or i32 %or43, %.
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 4
  %wr18 = getelementptr inbounds %struct.mt76_bus_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %wr18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wr18, align 4
  %or118 = or i32 %or68, -2147483648
  tail call void %15(ptr noundef %dev, i32 noundef 138248, i32 noundef %or118) #7
  %call = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef 138248, i32 noundef -2147483648, i32 noundef 0, i32 noundef 15000) #7
  %16 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i, align 4
  %wr18.1 = getelementptr inbounds %struct.mt76_bus_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %wr18.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wr18.1, align 4
  %or118.1 = or i32 %or68, -2147418112
  tail call void %19(ptr noundef %dev, i32 noundef 138248, i32 noundef %or118.1) #7
  %call.1 = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef 138248, i32 noundef -2147483648, i32 noundef 0, i32 noundef 15000) #7
  %20 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i, align 4
  %wr18.2 = getelementptr inbounds %struct.mt76_bus_ops, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %wr18.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wr18.2, align 4
  %or118.2 = or i32 %or68, -2147352576
  tail call void %23(ptr noundef %dev, i32 noundef 138248, i32 noundef %or118.2) #7
  %call.2 = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef 138248, i32 noundef -2147483648, i32 noundef 0, i32 noundef 15000) #7
  %24 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus.i, align 4
  %wr18.3 = getelementptr inbounds %struct.mt76_bus_ops, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %wr18.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wr18.3, align 4
  %or118.3 = or i32 %or68, -2147287040
  tail call void %27(ptr noundef %dev, i32 noundef 138248, i32 noundef %or118.3) #7
  %call.3 = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef 138248, i32 noundef -2147483648, i32 noundef 0, i32 noundef 15000) #7
  %28 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %call120 = tail call i32 %31(ptr noundef %dev, i32 noundef 138248) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call120)
  %tobool122.not = icmp sgt i32 %call120, -1
  br i1 %tobool122.not, label %entry.if.end157_crit_edge, label %land.rhs

entry.if.end157_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end157

land.rhs:                                         ; preds = %entry
  %.b194 = load i1, ptr @mt7603_filter_tx.__already_done, align 1
  br i1 %.b194, label %land.rhs.if.end157_crit_edge, label %if.then131, !prof !34

land.rhs.if.end157_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end157

if.then131:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mt7603_filter_tx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 208, i32 noundef 9, ptr noundef null) #7
  br label %if.end157

if.end157:                                        ; preds = %if.then131, %land.rhs.if.end157_crit_edge, %entry.if.end157_crit_edge
  %32 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus.i, align 4
  %wr166 = getelementptr inbounds %struct.mt76_bus_ops, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %wr166 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wr166, align 4
  tail call void %35(ptr noundef %dev, i32 noundef 136500, i32 noundef 0) #7
  %36 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %call1.i203 = tail call i32 %39(ptr noundef %dev, i32 noundef %add.i) #7
  %and.i204 = and i32 %call1.i203, 2147483647
  %40 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus.i, align 4
  %wr.i205 = getelementptr inbounds %struct.mt76_bus_ops, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %wr.i205 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wr.i205, align 4
  tail call void %43(ptr noundef %dev, i32 noundef %add.i, i32 noundef %and.i204) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7603_wtbl_set_smps(ptr noundef %dev, ptr nocapture noundef %sta, i1 noundef zeroext %enabled) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enabled to i8
  %smps = getelementptr inbounds %struct.mt7603_sta, ptr %sta, i32 0, i32 11
  %0 = ptrtoint ptr %smps to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %smps, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %frombool)
  %cmp = icmp eq i8 %1, %frombool
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %idx = getelementptr inbounds %struct.mt76_wcid, ptr %sta, i32 0, i32 6
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %idx, align 2
  %conv = zext i16 %3 to i32
  %mul.i = shl nuw nsw i32 %conv, 5
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmw, align 4
  %add = add nuw nsw i32 %mul.i, 163848
  %shl = select i1 %enabled, i32 524288, i32 0
  %call25 = tail call i32 %7(ptr noundef %dev, i32 noundef %add, i32 noundef 524288, i32 noundef %shl) #7
  %8 = ptrtoint ptr %smps to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %smps, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7603_wtbl_set_ps(ptr noundef %dev, ptr nocapture noundef %sta, i1 noundef zeroext %enabled) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enabled to i8
  %idx1 = getelementptr inbounds %struct.mt76_wcid, ptr %sta, i32 0, i32 6
  %0 = ptrtoint ptr %idx1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %idx1, align 2
  %conv = zext i16 %1 to i32
  %ps_lock = getelementptr inbounds %struct.mt7603_dev, ptr %dev, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %ps_lock) #7
  %ps = getelementptr inbounds %struct.mt7603_sta, ptr %sta, i32 0, i32 12
  %2 = ptrtoint ptr %ps to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ps, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %frombool)
  %cmp = icmp eq i8 %3, %frombool
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wr, align 4
  %shl = shl nuw nsw i32 %conv, 8
  %and20 = and i32 %shl, 65280
  %or53 = select i1 %enabled, i32 -2147417983, i32 -2147418111
  %or85 = or i32 %or53, %and20
  tail call void %7(ptr noundef %dev, i32 noundef 33172, i32 noundef %or85) #7
  %call = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef 33172, i32 noundef -2147483648, i32 noundef 0, i32 noundef 5000) #7
  br i1 %enabled, label %if.then87, label %if.end.if.end88_crit_edge

if.end.if.end88_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.then87:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mt7603_filter_tx(ptr noundef %dev, i32 noundef %conv, i1 noundef zeroext false)
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %if.end.if.end88_crit_edge
  %mul = phi i32 [ 1073741824, %if.then87 ], [ 0, %if.end.if.end88_crit_edge ]
  %mul.i = shl nuw nsw i32 %conv, 5
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmw, align 4
  %call91 = tail call i32 %11(ptr noundef %dev, i32 noundef 172800, i32 noundef 0, i32 noundef -2147483648) #7
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus, align 4
  %rmw93 = getelementptr inbounds %struct.mt76_bus_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %rmw93 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmw93, align 4
  %add = add nuw nsw i32 %mul.i, 163852
  %call96 = tail call i32 %15(ptr noundef %dev, i32 noundef %add, i32 noundef 1073741824, i32 noundef %mul) #7
  %16 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus, align 4
  %rmw98 = getelementptr inbounds %struct.mt76_bus_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %rmw98 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmw98, align 4
  %call99 = tail call i32 %19(ptr noundef %dev, i32 noundef 172800, i32 noundef -2147483648, i32 noundef 0) #7
  %20 = ptrtoint ptr %ps to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool, ptr %ps, align 4
  br label %out

out:                                              ; preds = %if.end88, %entry.out_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %ps_lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7603_wtbl_clear(ptr noundef %dev, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i32 %idx, 2
  %0 = mul i32 %div, 2
  %rem.decomposed = sub i32 %idx, %0
  %add = add nsw i32 %div, 64
  %div3 = sdiv i32 %idx, 4
  %1 = mul i32 %div3, 4
  %rem5.decomposed = sub i32 %idx, %1
  %mul6 = shl i32 %idx, 5
  %add7 = add i32 %mul6, 163840
  %call = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef 143360, i32 noundef 65536, i32 noundef 0, i32 noundef 5000) #7
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wr, align 4
  tail call void %5(ptr noundef %dev, i32 noundef %add7, i32 noundef 809500672) #7
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 4
  %wr10 = getelementptr inbounds %struct.mt76_bus_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %wr10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wr10, align 4
  %add11 = add i32 %mul6, 163844
  tail call void %9(ptr noundef %dev, i32 noundef %add11, i32 noundef 0) #7
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus, align 4
  %wr13 = getelementptr inbounds %struct.mt76_bus_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %wr13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wr13, align 4
  %add14 = add i32 %mul6, 163848
  tail call void %13(ptr noundef %dev, i32 noundef %add14, i32 noundef 0) #7
  %14 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmw, align 4
  %call16 = tail call i32 %17(ptr noundef %dev, i32 noundef 172800, i32 noundef 0, i32 noundef -2147483648) #7
  %18 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus, align 4
  %wr18 = getelementptr inbounds %struct.mt76_bus_ops, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %wr18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wr18, align 4
  %add19 = add i32 %mul6, 163852
  %and32 = and i32 %div, 2047
  %shl55 = shl nsw i32 %rem.decomposed, 11
  %and56 = and i32 %shl55, 63488
  %add4 = shl i32 %div3, 16
  %shl79 = add i32 %add4, 8388608
  %and80 = and i32 %shl79, 134152192
  %or = or i32 %and32, %and56
  %or81 = or i32 %or, %and80
  %or83 = or i32 %or81, 805306368
  tail call void %21(ptr noundef %dev, i32 noundef %add19, i32 noundef %or83) #7
  %22 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus, align 4
  %wr85 = getelementptr inbounds %struct.mt76_bus_ops, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %wr85 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wr85, align 4
  %add86 = add i32 %mul6, 163856
  %and110 = and i32 %add, 2047
  %shl133 = shl nsw i32 %rem.decomposed, 12
  %and134 = and i32 %shl133, 126976
  %or135 = or i32 %and110, %and134
  %shl158 = shl nsw i32 %rem5.decomposed, 17
  %and159 = and i32 %shl158, 8257536
  %or160 = or i32 %or135, %and159
  tail call void %25(ptr noundef %dev, i32 noundef %add86, i32 noundef %or160) #7
  %26 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus, align 4
  %rmw162 = getelementptr inbounds %struct.mt76_bus_ops, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %rmw162 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmw162, align 4
  %call163 = tail call i32 %29(ptr noundef %dev, i32 noundef 172800, i32 noundef -2147483648, i32 noundef 0) #7
  %mul.i = shl i32 %idx, 6
  %30 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus, align 4
  %wr166 = getelementptr inbounds %struct.mt76_bus_ops, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %wr166 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wr166, align 4
  %add167 = add i32 %mul.i, 262204
  tail call void %33(ptr noundef %dev, i32 noundef %add167, i32 noundef 0) #7
  %34 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus, align 4
  %rmw.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rmw.i, align 4
  %call1.i = tail call i32 %37(ptr noundef %dev, i32 noundef 136464, i32 noundef 0, i32 noundef 998895) #7
  %38 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bus, align 4
  %wr169 = getelementptr inbounds %struct.mt76_bus_ops, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %wr169 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wr169, align 4
  %add171 = add i32 %mul.i, 262152
  tail call void %41(ptr noundef %dev, i32 noundef %add171, i32 noundef 0) #7
  %42 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bus, align 4
  %wr169.1 = getelementptr inbounds %struct.mt76_bus_ops, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %wr169.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %wr169.1, align 4
  %add171.1 = add i32 %mul.i, 262156
  tail call void %45(ptr noundef %dev, i32 noundef %add171.1, i32 noundef 0) #7
  %46 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bus, align 4
  %wr169.2 = getelementptr inbounds %struct.mt76_bus_ops, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %wr169.2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %wr169.2, align 4
  %add171.2 = add i32 %mul.i, 262160
  tail call void %49(ptr noundef %dev, i32 noundef %add171.2, i32 noundef 0) #7
  %50 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bus, align 4
  %rmw.i241 = getelementptr inbounds %struct.mt76_bus_ops, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %rmw.i241 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rmw.i241, align 4
  %and9.i = and i32 %idx, 255
  %or.i = or i32 %and9.i, 2048
  %call.i = tail call i32 %53(ptr noundef %dev, i32 noundef 143360, i32 noundef 255, i32 noundef %or.i) #7
  %call10.i = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef 143360, i32 noundef 65536, i32 noundef 0, i32 noundef 5000) #7
  %54 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bus, align 4
  %rmw.i243 = getelementptr inbounds %struct.mt76_bus_ops, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %rmw.i243 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rmw.i243, align 4
  %call1.i244 = tail call i32 %57(ptr noundef %dev, i32 noundef 136448, i32 noundef 0, i32 noundef 998895) #7
  %58 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bus, align 4
  %rmw.i248 = getelementptr inbounds %struct.mt76_bus_ops, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %rmw.i248 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rmw.i248, align 4
  %or.i250 = or i32 %and9.i, 32768
  %call.i251 = tail call i32 %61(ptr noundef %dev, i32 noundef 143360, i32 noundef 255, i32 noundef %or.i250) #7
  %call10.i252 = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef 143360, i32 noundef 65536, i32 noundef 0, i32 noundef 5000) #7
  %62 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bus, align 4
  %rmw.i257 = getelementptr inbounds %struct.mt76_bus_ops, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %rmw.i257 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rmw.i257, align 4
  %or.i259 = or i32 %and9.i, 16384
  %call.i260 = tail call i32 %65(ptr noundef %dev, i32 noundef 143360, i32 noundef 255, i32 noundef %or.i259) #7
  %call10.i261 = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef 143360, i32 noundef 65536, i32 noundef 0, i32 noundef 5000) #7
  %66 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bus, align 4
  %rmw.i266 = getelementptr inbounds %struct.mt76_bus_ops, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %rmw.i266 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rmw.i266, align 4
  %or.i268 = or i32 %and9.i, 4096
  %call.i269 = tail call i32 %69(ptr noundef %dev, i32 noundef 143360, i32 noundef 255, i32 noundef %or.i268) #7
  %call10.i270 = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef 143360, i32 noundef 65536, i32 noundef 0, i32 noundef 5000) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7603_wtbl_update_cap(ptr noundef %dev, ptr nocapture noundef readonly %sta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idx1 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 2
  %0 = ptrtoint ptr %idx1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %idx1, align 2
  %conv = zext i16 %1 to i32
  %mul.i = shl nuw nsw i32 %conv, 5
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add = add nuw nsw i32 %mul.i, 163848
  %call5 = tail call i32 %5(ptr noundef %dev, i32 noundef %add) #7
  %ampdu_factor = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %ampdu_factor to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ampdu_factor, align 1
  %ampdu_density2 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %ampdu_density2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ampdu_density2, align 4
  %conv27 = zext i8 %7 to i32
  %shl = shl nuw nsw i32 %conv27, 11
  %and28 = and i32 %shl, 14336
  %and = and i32 %call5, 1073741944
  %ht_cap = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %10 = and i8 %9, 7
  %and60 = zext i8 %10 to i32
  %or = or i32 %and, %and28
  %or61 = or i32 %or, %and60
  %11 = ptrtoint ptr %ht_cap to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ht_cap, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool64.not = icmp eq i16 %12, 0
  %spec.select.v = select i1 %tobool64.not, i32 1048576, i32 269484032
  %spec.select = or i32 %or61, %spec.select.v
  %cap68 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %cap68 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cap68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool69.not = icmp eq i32 %14, 0
  %or71 = or i32 %spec.select, 536870912
  %val.1 = select i1 %tobool69.not, i32 %spec.select, i32 %or71
  %15 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wr, align 4
  tail call void %18(ptr noundef %dev, i32 noundef %add, i32 noundef %val.1) #7
  %mul.i132 = shl nuw nsw i32 %conv, 6
  %19 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %add78 = add nuw nsw i32 %mul.i132, 262180
  %call79 = tail call i32 %22(ptr noundef %dev, i32 noundef %add78) #7
  %and80 = and i32 %call79, -458753
  %23 = ptrtoint ptr %ht_cap to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ht_cap, align 4
  %25 = and i16 %24, 32
  %26 = zext i16 %25 to i32
  %27 = shl nuw nsw i32 %26, 11
  %28 = or i32 %27, %and80
  %29 = and i16 %24, 64
  %30 = zext i16 %29 to i32
  %31 = shl nuw nsw i32 %30, 11
  %32 = or i32 %28, %31
  %33 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bus, align 4
  %wr98 = getelementptr inbounds %struct.mt76_bus_ops, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %wr98 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wr98, align 4
  tail call void %36(ptr noundef %dev, i32 noundef %add78, i32 noundef %32) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7603_mac_rx_ba_reset(ptr noundef %dev, ptr nocapture noundef readonly %addr, i8 noundef zeroext %tid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wr, align 4
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %addr, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #7
  tail call void %3(ptr noundef %dev, i32 noundef 137320, i32 noundef %6) #7
  %add.ptr = getelementptr i8, ptr %addr, i32 4
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %add.ptr, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #7
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus, align 4
  %wr2 = getelementptr inbounds %struct.mt76_bus_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %wr2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wr2, align 4
  %conv = zext i16 %9 to i32
  %conv13 = zext i8 %tid to i32
  %shl = shl nuw nsw i32 %conv13, 16
  %and14 = and i32 %shl, 983040
  %or = or i32 %and14, %conv
  %or15 = or i32 %or, 4194304
  tail call void %13(ptr noundef %dev, i32 noundef 137324, i32 noundef %or15) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7603_mac_tx_ba_reset(ptr noundef %dev, i32 noundef %wcid, i32 noundef %tid, i32 noundef %ba_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shl15 = shl i32 16777216, %tid
  %mul = mul i32 %tid, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ba_size)
  %cmp = icmp slt i32 %ba_size, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %ba_size)
  %cmp24.not = icmp slt i32 %ba_size, 32
  br i1 %cmp24.not, label %for.cond.1, label %for.cond.do.end49_crit_edge

for.cond.do.end49_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end49

for.cond.1:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %ba_size)
  %cmp24.not.1 = icmp slt i32 %ba_size, 28
  br i1 %cmp24.not.1, label %for.cond.2, label %for.cond.1.do.end49_crit_edge

for.cond.1.do.end49_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end49

for.cond.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %ba_size)
  %cmp24.not.2 = icmp slt i32 %ba_size, 24
  br i1 %cmp24.not.2, label %for.cond.3, label %for.cond.2.do.end49_crit_edge

for.cond.2.do.end49_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end49

for.cond.3:                                       ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %ba_size)
  %cmp24.not.3 = icmp slt i32 %ba_size, 20
  br i1 %cmp24.not.3, label %for.cond.4, label %for.cond.3.do.end49_crit_edge

for.cond.3.do.end49_crit_edge:                    ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end49

for.cond.4:                                       ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %ba_size)
  %cmp24.not.4 = icmp slt i32 %ba_size, 16
  br i1 %cmp24.not.4, label %for.cond.5, label %for.cond.4.do.end49_crit_edge

for.cond.4.do.end49_crit_edge:                    ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end49

for.cond.5:                                       ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %ba_size)
  %cmp24.not.5 = icmp slt i32 %ba_size, 12
  br i1 %cmp24.not.5, label %for.cond.6, label %for.cond.5.do.end49_crit_edge

for.cond.5.do.end49_crit_edge:                    ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end49

for.cond.6:                                       ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %ba_size)
  %cmp24.not.6 = icmp slt i32 %ba_size, 8
  %spec.select = select i1 %cmp24.not.6, i32 0, i32 1
  br label %do.end49

do.end49:                                         ; preds = %for.cond.6, %for.cond.5.do.end49_crit_edge, %for.cond.4.do.end49_crit_edge, %for.cond.3.do.end49_crit_edge, %for.cond.2.do.end49_crit_edge, %for.cond.1.do.end49_crit_edge, %for.cond.do.end49_crit_edge
  %i.0.lcssa = phi i32 [ 7, %for.cond.do.end49_crit_edge ], [ 6, %for.cond.1.do.end49_crit_edge ], [ 5, %for.cond.2.do.end49_crit_edge ], [ 4, %for.cond.3.do.end49_crit_edge ], [ 3, %for.cond.4.do.end49_crit_edge ], [ 2, %for.cond.5.do.end49_crit_edge ], [ %spec.select, %for.cond.6 ]
  %shl55 = shl i32 %i.0.lcssa, %mul
  %or56 = or i32 %shl55, %shl15
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %entry.cleanup_crit_edge
  %or56.sink = phi i32 [ %or56, %do.end49 ], [ 0, %entry.cleanup_crit_edge ]
  %shl17 = shl i32 7, %mul
  %or = or i32 %shl15, %shl17
  %mul.i = shl i32 %wcid, 6
  %bus57 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus57 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus57, align 4
  %rmw58 = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rmw58 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmw58, align 4
  %add59 = add i32 %mul.i, 262204
  %call60 = tail call i32 %3(ptr noundef %dev, i32 noundef %add59, i32 noundef %or, i32 noundef %or56.sink) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7603_mac_sta_poll(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %airtime = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %airtime) #7
  %0 = getelementptr inbounds [4 x i32], ptr %airtime, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i32], ptr %airtime, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i32], ptr %airtime, i32 0, i32 3
  %3 = getelementptr inbounds i8, ptr %airtime, i32 12
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !24) #7
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !35
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %sta_poll_lock = getelementptr inbounds %struct.mt7603_dev, ptr %dev, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_poll_lock) #7
  %sta_poll_list = getelementptr inbounds %struct.mt7603_dev, ptr %dev, i32 0, i32 3
  %9 = ptrtoint ptr %sta_poll_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %sta_poll_list, align 4
  %cmp.i.not130 = icmp eq ptr %10, %sta_poll_list
  br i1 %cmp.i.not130, label %rcu_read_lock.exit.while.end_crit_edge, label %if.end.lr.ph

rcu_read_lock.exit.while.end_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end.lr.ph:                                     ; preds = %rcu_read_lock.exit
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %arrayidx40 = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 0
  %arrayidx40.1 = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 1
  %arrayidx40.2 = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 2
  %arrayidx40.3 = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 3
  br label %if.end

if.end:                                           ; preds = %cleanup52.if.end_crit_edge, %if.end.lr.ph
  %11 = phi ptr [ %10, %if.end.lr.ph ], [ %91, %cleanup52.if.end_crit_edge ]
  %total_airtime.0131 = phi i32 [ 0, %if.end.lr.ph ], [ %add15.3, %cleanup52.if.end_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %11) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
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
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %11, ptr %11, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %11, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_poll_lock) #7
  %idx = getelementptr i8, ptr %11, i32 -190
  %20 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %idx, align 2
  %conv = zext i16 %21 to i32
  %mul.i = shl nuw nsw i32 %conv, 5
  %add.i = add nuw nsw i32 %mul.i, 278528
  %tx_airtime_ac = getelementptr i8, ptr %11, i32 8
  %22 = ptrtoint ptr %tx_airtime_ac to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_airtime_ac, align 4
  %24 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %call6 = tail call i32 %27(ptr noundef %dev, i32 noundef %add.i) #7
  %28 = ptrtoint ptr %tx_airtime_ac to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call6, ptr %tx_airtime_ac, align 4
  %sub = sub i32 %call6, %23
  %mul13 = shl i32 %sub, 5
  %29 = ptrtoint ptr %airtime to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %mul13, ptr %airtime, align 4
  %add15 = add i32 %mul13, %total_airtime.0131
  %and = and i32 %call6, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp ne i32 %and, 0
  %arrayidx.1 = getelementptr i8, ptr %11, i32 12
  %30 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.1, align 4
  %32 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %add.1 = add nuw nsw i32 %mul.i, 278536
  %call6.1 = tail call i32 %35(ptr noundef %dev, i32 noundef %add.1) #7
  %36 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call6.1, ptr %arrayidx.1, align 4
  %sub.1 = sub i32 %call6.1, %31
  %mul13.1 = shl i32 %sub.1, 5
  %37 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %mul13.1, ptr %0, align 4
  %add15.1 = add i32 %mul13.1, %add15
  %and.1 = and i32 %call6.1, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool18.not.1 = icmp ne i32 %and.1, 0
  %arrayidx.2 = getelementptr i8, ptr %11, i32 16
  %38 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.2, align 4
  %40 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %add.2 = add nuw nsw i32 %mul.i, 278544
  %call6.2 = tail call i32 %43(ptr noundef %dev, i32 noundef %add.2) #7
  %44 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call6.2, ptr %arrayidx.2, align 4
  %sub.2 = sub i32 %call6.2, %39
  %mul13.2 = shl i32 %sub.2, 5
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %mul13.2, ptr %1, align 4
  %add15.2 = add i32 %mul13.2, %add15.1
  %and.2 = and i32 %call6.2, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool18.not.2 = icmp ne i32 %and.2, 0
  %arrayidx.3 = getelementptr i8, ptr %11, i32 20
  %46 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.3, align 4
  %48 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %add.3 = add nuw nsw i32 %mul.i, 278552
  %call6.3 = tail call i32 %51(ptr noundef %dev, i32 noundef %add.3) #7
  %52 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call6.3, ptr %arrayidx.3, align 4
  %sub.3 = sub i32 %call6.3, %47
  %mul13.3 = shl i32 %sub.3, 5
  %53 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %mul13.3, ptr %2, align 4
  %add15.3 = add i32 %mul13.3, %add15.2
  %and.3 = and i32 %call6.3, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool18.not.3 = icmp ne i32 %and.3, 0
  %54 = select i1 %tobool18.not.3, i1 true, i1 %tobool18.not.2
  %55 = select i1 %54, i1 true, i1 %tobool18.not.1
  %spec.select.3 = select i1 %55, i1 true, i1 %tobool18.not
  br i1 %spec.select.3, label %mt7603_wtbl_update.exit, label %list_del_init.exit.if.end27_crit_edge

list_del_init.exit.if.end27_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

mt7603_wtbl_update.exit:                          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %idx, align 2
  %58 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bus, align 4
  %rmw.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rmw.i, align 4
  %62 = and i16 %57, 255
  %63 = or i16 %62, 4096
  %or.i = zext i16 %63 to i32
  %call.i108 = tail call i32 %61(ptr noundef %dev, i32 noundef 143360, i32 noundef 255, i32 noundef %or.i) #7
  %call10.i = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef 143360, i32 noundef 65536, i32 noundef 0, i32 noundef 5000) #7
  %64 = call ptr @memset(ptr %tx_airtime_ac, i32 0, i32 16)
  br label %if.end27

if.end27:                                         ; preds = %mt7603_wtbl_update.exit, %list_del_init.exit.if.end27_crit_edge
  %sta29 = getelementptr i8, ptr %11, i32 -186
  %65 = ptrtoint ptr %sta29 to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load = load i8, ptr %sta29, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool30.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool30.not, label %if.end27.cleanup52_crit_edge, label %if.end32

if.end27.cleanup52_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup52

if.end32:                                         ; preds = %if.end27
  %add.ptr35 = getelementptr i8, ptr %11, i32 -548
  %66 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx40, align 4
  %hw_idx = getelementptr inbounds %struct.mt76_queue, ptr %67, i32 0, i32 14
  %68 = ptrtoint ptr %hw_idx to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %hw_idx, align 1
  %idxprom = zext i8 %69 to i32
  %arrayidx42 = getelementptr [4 x i32], ptr %airtime, i32 0, i32 %idxprom
  %70 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool43.not = icmp eq i32 %71, 0
  br i1 %tobool43.not, label %if.end32.cleanup_crit_edge, label %if.end45

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end45:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ieee80211_sta_register_airtime(ptr noundef %add.ptr35, i8 noundef zeroext 6, i32 noundef %71, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.end32.cleanup_crit_edge
  %72 = ptrtoint ptr %arrayidx40.1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx40.1, align 4
  %hw_idx.1 = getelementptr inbounds %struct.mt76_queue, ptr %73, i32 0, i32 14
  %74 = ptrtoint ptr %hw_idx.1 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %hw_idx.1, align 1
  %idxprom.1 = zext i8 %75 to i32
  %arrayidx42.1 = getelementptr [4 x i32], ptr %airtime, i32 0, i32 %idxprom.1
  %76 = ptrtoint ptr %arrayidx42.1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx42.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool43.not.1 = icmp eq i32 %77, 0
  br i1 %tobool43.not.1, label %cleanup.cleanup.1_crit_edge, label %if.end45.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.1

if.end45.1:                                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ieee80211_sta_register_airtime(ptr noundef %add.ptr35, i8 noundef zeroext 4, i32 noundef %77, i32 noundef 0) #7
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end45.1, %cleanup.cleanup.1_crit_edge
  %78 = ptrtoint ptr %arrayidx40.2 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx40.2, align 4
  %hw_idx.2 = getelementptr inbounds %struct.mt76_queue, ptr %79, i32 0, i32 14
  %80 = ptrtoint ptr %hw_idx.2 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %hw_idx.2, align 1
  %idxprom.2 = zext i8 %81 to i32
  %arrayidx42.2 = getelementptr [4 x i32], ptr %airtime, i32 0, i32 %idxprom.2
  %82 = ptrtoint ptr %arrayidx42.2 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx42.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool43.not.2 = icmp eq i32 %83, 0
  br i1 %tobool43.not.2, label %cleanup.1.cleanup.2_crit_edge, label %if.end45.2

cleanup.1.cleanup.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.2

if.end45.2:                                       ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ieee80211_sta_register_airtime(ptr noundef %add.ptr35, i8 noundef zeroext 0, i32 noundef %83, i32 noundef 0) #7
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.end45.2, %cleanup.1.cleanup.2_crit_edge
  %84 = ptrtoint ptr %arrayidx40.3 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx40.3, align 4
  %hw_idx.3 = getelementptr inbounds %struct.mt76_queue, ptr %85, i32 0, i32 14
  %86 = ptrtoint ptr %hw_idx.3 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %hw_idx.3, align 1
  %idxprom.3 = zext i8 %87 to i32
  %arrayidx42.3 = getelementptr [4 x i32], ptr %airtime, i32 0, i32 %idxprom.3
  %88 = ptrtoint ptr %arrayidx42.3 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx42.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool43.not.3 = icmp eq i32 %89, 0
  br i1 %tobool43.not.3, label %cleanup.2.cleanup52_crit_edge, label %if.end45.3

cleanup.2.cleanup52_crit_edge:                    ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup52

if.end45.3:                                       ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ieee80211_sta_register_airtime(ptr noundef %add.ptr35, i8 noundef zeroext 1, i32 noundef %89, i32 noundef 0) #7
  br label %cleanup52

cleanup52:                                        ; preds = %if.end45.3, %cleanup.2.cleanup52_crit_edge, %if.end27.cleanup52_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_poll_lock) #7
  %90 = ptrtoint ptr %sta_poll_list to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile ptr, ptr %sta_poll_list, align 4
  %cmp.i.not = icmp eq ptr %91, %sta_poll_list
  br i1 %cmp.i.not, label %cleanup52.while.end_crit_edge, label %cleanup52.if.end_crit_edge

cleanup52.if.end_crit_edge:                       ; preds = %cleanup52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cleanup52.while.end_crit_edge:                    ; preds = %cleanup52
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %cleanup52.while.end_crit_edge, %rcu_read_lock.exit.while.end_crit_edge
  %total_airtime.0.lcssa = phi i32 [ 0, %rcu_read_lock.exit.while.end_crit_edge ], [ %add15.3, %cleanup52.while.end_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_poll_lock) #7
  %call.i109 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i109, label %while.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i112

while.end.rcu_read_unlock.exit_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i112:                               ; preds = %while.end
  %call1.i110 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i110)
  %tobool.not.i111 = icmp eq i32 %call1.i110, 0
  br i1 %tobool.not.i111, label %land.lhs.true.i112.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i114

land.lhs.true.i112.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i112
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i114:                              ; preds = %land.lhs.true.i112
  %.b4.i113 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i113, label %land.lhs.true2.i114.rcu_read_unlock.exit_crit_edge, label %if.then.i115

land.lhs.true2.i114.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i114
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i115:                                     ; preds = %land.lhs.true2.i114
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i115, %land.lhs.true2.i114.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i112.rcu_read_unlock.exit_crit_edge, %while.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !36
  %92 = tail call i32 @llvm.read_register.i32(metadata !24) #7
  %and.i.i.i.i.i116 = and i32 %92, -16384
  %93 = inttoptr i32 %and.i.i.i.i.i116 to ptr
  %preempt_count.i.i.i.i117 = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %preempt_count.i.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %preempt_count.i.i.i.i117, align 4
  %sub.i.i.i = add i32 %95, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i117, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %total_airtime.0.lcssa)
  %tobool55.not = icmp eq i32 %total_airtime.0.lcssa, 0
  br i1 %tobool55.not, label %rcu_read_unlock.exit.cleanup61_crit_edge, label %if.end57

rcu_read_unlock.exit.cleanup61_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup61

if.end57:                                         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %cc_lock = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %cc_lock) #7
  %conv58 = zext i32 %total_airtime.0.lcssa to i64
  %chan_state = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 7
  %96 = ptrtoint ptr %chan_state to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %chan_state, align 4
  %cc_tx = getelementptr inbounds %struct.mt76_channel_state, ptr %97, i32 0, i32 4
  %98 = ptrtoint ptr %cc_tx to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %cc_tx, align 8
  %add59 = add i64 %99, %conv58
  store i64 %add59, ptr %cc_tx, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %cc_lock) #7
  br label %cleanup61

cleanup61:                                        ; preds = %if.end57, %rcu_read_unlock.exit.cleanup61_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %airtime) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_register_airtime(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7603_mac_fill_rx(ptr noundef %dev, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %arrayidx1 = getelementptr i32, ptr %1, i32 1
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx1, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %arrayidx2 = getelementptr i32, ptr %1, i32 2
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %11 = call ptr @memset(ptr %cb, i32 0, i32 44)
  %and15 = lshr i32 %7, 9
  %shr = and i32 %and15, 127
  %12 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool17.not = icmp eq i32 %12, 0
  %sband_5g = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 11
  %sband_2g = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 10
  %cond = select i1 %tobool17.not, ptr %sband_2g, ptr %sband_5g
  %13 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i.not = icmp eq i32 %13, 0
  br i1 %cmp.i.not, label %if.end.i, label %entry.mt7603_rx_get_wcid.exit_crit_edge

entry.mt7603_rx_get_wcid.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7603_rx_get_wcid.exit

if.end.i:                                         ; preds = %entry
  %conv.i = and i32 %10, 255
  %arrayidx.i = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 37, i32 %conv.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.i.do.end11.i_crit_edge

if.end.i.do.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.do.end11.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.do.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b36.i = load i1, ptr @mt7603_rx_get_wcid.__warned, align 1
  br i1 %.b36.i, label %land.lhs.true6.i.do.end11.i_crit_edge, label %if.then8.i

land.lhs.true6.i.do.end11.i_crit_edge:            ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11.i

if.then8.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mt7603_rx_get_wcid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 480, ptr noundef nonnull @.str.1) #7
  br label %do.end11.i

do.end11.i:                                       ; preds = %if.then8.i, %land.lhs.true6.i.do.end11.i_crit_edge, %land.lhs.true.i.do.end11.i_crit_edge, %if.end.i.do.end11.i_crit_edge
  %tobool15.not.i = icmp eq ptr %15, null
  %or.cond.i = select i1 %tobool, i1 true, i1 %tobool15.not.i
  br i1 %or.cond.i, label %do.end11.i.mt7603_rx_get_wcid.exit_crit_edge, label %if.end17.i

do.end11.i.mt7603_rx_get_wcid.exit_crit_edge:     ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7603_rx_get_wcid.exit

if.end17.i:                                       ; preds = %do.end11.i
  %sta18.i = getelementptr inbounds %struct.mt76_wcid, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %sta18.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i = load i8, ptr %sta18.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool19.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool19.not.i, label %if.end17.i.mt7603_rx_get_wcid.exit_crit_edge, label %if.end21.i

if.end17.i.mt7603_rx_get_wcid.exit_crit_edge:     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7603_rx_get_wcid.exit

if.end21.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %vif.i = getelementptr inbounds %struct.mt7603_sta, ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vif.i, align 4
  br label %mt7603_rx_get_wcid.exit

mt7603_rx_get_wcid.exit:                          ; preds = %if.end21.i, %if.end17.i.mt7603_rx_get_wcid.exit_crit_edge, %do.end11.i.mt7603_rx_get_wcid.exit_crit_edge, %entry.mt7603_rx_get_wcid.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.mt7603_rx_get_wcid.exit_crit_edge ], [ %15, %do.end11.i.mt7603_rx_get_wcid.exit_crit_edge ], [ null, %if.end17.i.mt7603_rx_get_wcid.exit_crit_edge ], [ %18, %if.end21.i ]
  %19 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %retval.0.i, ptr %cb, align 4
  %band = getelementptr inbounds %struct.ieee80211_supported_band, ptr %cond, i32 0, i32 2
  %20 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %band, align 4
  %conv40 = trunc i32 %21 to i8
  %band41 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %22 = ptrtoint ptr %band41 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv40, ptr %band41, align 1
  %n_channels = getelementptr inbounds %struct.ieee80211_supported_band, ptr %cond, i32 0, i32 3
  %23 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %24)
  %cmp = icmp slt i32 %shr, %24
  br i1 %cmp, label %if.then, label %mt7603_rx_get_wcid.exit.if.end_crit_edge

mt7603_rx_get_wcid.exit.if.end_crit_edge:         ; preds = %mt7603_rx_get_wcid.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %mt7603_rx_get_wcid.exit
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cond, align 4
  %center_freq = getelementptr %struct.ieee80211_channel, ptr %26, i32 %shr, i32 1
  %27 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %center_freq, align 4
  %conv44 = trunc i32 %28 to i16
  %freq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %29 = ptrtoint ptr %freq to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv44, ptr %freq, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %mt7603_rx_get_wcid.exit.if.end_crit_edge
  %and45 = and i32 %10, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end.if.end48_crit_edge, label %if.then47

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then47:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %flag = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %30 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flag, align 4
  %or = or i32 %31, 32
  store i32 %or, ptr %flag, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end.if.end48_crit_edge
  %and49 = and i32 %10, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end48.if.end54_crit_edge, label %if.then51

if.end48.if.end54_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %flag52 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %32 = ptrtoint ptr %flag52 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flag52, align 4
  %or53 = or i32 %33, 1
  store i32 %or53, ptr %flag52, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.end48.if.end54_crit_edge
  %and55 = and i32 %10, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end54.do.end75_crit_edge, label %if.then57

if.end54.do.end75_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end75

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  %flag58 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %34 = ptrtoint ptr %flag58 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flag58, align 4
  %or59 = or i32 %35, 131072
  store i32 %or59, ptr %flag58, align 4
  br label %do.end75

do.end75:                                         ; preds = %if.then57, %if.end54.do.end75_crit_edge
  %and77 = lshr i32 %10, 12
  %shr78 = and i32 %and77, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr78)
  %cmp79.not = icmp ne i32 %shr78, 0
  %and81 = and i32 %10, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  %or.cond = select i1 %cmp79.not, i1 %tobool82.not, i1 false
  br i1 %or.cond, label %if.then83, label %do.end75.if.end90_crit_edge

do.end75.if.end90_crit_edge:                      ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

if.then83:                                        ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #9
  %flag84 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %36 = ptrtoint ptr %flag84 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flag84, align 4
  %or89 = or i32 %37, 2097178
  store i32 %or89, ptr %flag84, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then83, %do.end75.if.end90_crit_edge
  %and94 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.end97, label %if.end90.cleanup476_crit_edge

if.end90.cleanup476_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup476

if.end97:                                         ; preds = %if.end90
  %38 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cond, align 4
  %tobool99.not = icmp eq ptr %39, null
  br i1 %tobool99.not, label %if.end97.cleanup476_crit_edge, label %if.end101

if.end97.cleanup476_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup476

if.end101:                                        ; preds = %if.end97
  %add.ptr = getelementptr i32, ptr %1, i32 4
  %and102 = and i32 %4, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.end101.if.end111_crit_edge, label %if.then104

if.end101.if.end111_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

if.then104:                                       ; preds = %if.end101
  %add.ptr105 = getelementptr i32, ptr %1, i32 8
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr105 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %41 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %42 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub, i32 %43)
  %cmp107.not = icmp ult i32 %sub.ptr.sub, %43
  br i1 %cmp107.not, label %if.then104.if.end111_crit_edge, label %if.then104.cleanup476_crit_edge

if.then104.cleanup476_crit_edge:                  ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup476

if.then104.if.end111_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

if.end111:                                        ; preds = %if.then104.if.end111_crit_edge, %if.end101.if.end111_crit_edge
  %rxd.0 = phi ptr [ %add.ptr105, %if.then104.if.end111_crit_edge ], [ %add.ptr, %if.end101.if.end111_crit_edge ]
  %and112 = and i32 %4, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %if.end111.if.end187_crit_edge, label %if.then114

if.end111.if.end187_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end187

if.then114:                                       ; preds = %if.end111
  %flag116 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %44 = ptrtoint ptr %flag116 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flag116, align 4
  %and117 = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %if.then114.if.end176_crit_edge, label %do.end134

if.then114.if.end176_crit_edge:                   ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end176

do.end134:                                        ; preds = %if.then114
  %46 = zext i32 %shr78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr78, label %do.end134.if.end176_crit_edge [
    i32 4, label %do.end134.do.end152_crit_edge
    i32 9, label %do.end134.do.end152_crit_edge620
    i32 10, label %do.end134.do.end152_crit_edge621
    i32 2, label %do.end134.sw.bb158_crit_edge
    i32 3, label %do.end134.sw.bb158_crit_edge622
    i32 11, label %do.end134.sw.bb158_crit_edge623
    i32 12, label %do.end134.sw.bb158_crit_edge624
  ]

do.end134.sw.bb158_crit_edge624:                  ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb158

do.end134.sw.bb158_crit_edge623:                  ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb158

do.end134.sw.bb158_crit_edge622:                  ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb158

do.end134.sw.bb158_crit_edge:                     ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb158

do.end134.do.end152_crit_edge621:                 ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end152

do.end134.do.end152_crit_edge620:                 ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end152

do.end134.do.end152_crit_edge:                    ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end152

do.end134.if.end176_crit_edge:                    ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end176

do.end152:                                        ; preds = %do.end134.do.end152_crit_edge, %do.end134.do.end152_crit_edge620, %do.end134.do.end152_crit_edge621
  %47 = and i32 %10, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool156 = icmp ne i32 %47, 0
  br label %sw.bb158

sw.bb158:                                         ; preds = %do.end152, %do.end134.sw.bb158_crit_edge, %do.end134.sw.bb158_crit_edge622, %do.end134.sw.bb158_crit_edge623, %do.end134.sw.bb158_crit_edge624
  %insert_ccmp_hdr.0 = phi i1 [ false, %do.end134.sw.bb158_crit_edge ], [ false, %do.end134.sw.bb158_crit_edge622 ], [ false, %do.end134.sw.bb158_crit_edge623 ], [ false, %do.end134.sw.bb158_crit_edge624 ], [ %tobool156, %do.end152 ]
  %arrayidx159 = getelementptr i8, ptr %rxd.0, i32 5
  %48 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx159, align 1
  %iv = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %50 = ptrtoint ptr %iv to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %iv, align 4
  %arrayidx161 = getelementptr i8, ptr %rxd.0, i32 4
  %51 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx161, align 1
  %arrayidx163 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 17
  %53 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %arrayidx163, align 1
  %arrayidx164 = getelementptr i8, ptr %rxd.0, i32 3
  %54 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx164, align 1
  %arrayidx166 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 18
  %56 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %arrayidx166, align 2
  %arrayidx167 = getelementptr i8, ptr %rxd.0, i32 2
  %57 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx167, align 1
  %arrayidx169 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 19
  %59 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %arrayidx169, align 1
  %arrayidx170 = getelementptr i8, ptr %rxd.0, i32 1
  %60 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx170, align 1
  %arrayidx172 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %62 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %arrayidx172, align 4
  %63 = ptrtoint ptr %rxd.0 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %rxd.0, align 1
  %arrayidx175 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 21
  %65 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %arrayidx175, align 1
  br label %if.end176

if.end176:                                        ; preds = %sw.bb158, %do.end134.if.end176_crit_edge, %if.then114.if.end176_crit_edge
  %insert_ccmp_hdr.1 = phi i1 [ false, %do.end134.if.end176_crit_edge ], [ %insert_ccmp_hdr.0, %sw.bb158 ], [ false, %if.then114.if.end176_crit_edge ]
  %add.ptr177 = getelementptr i32, ptr %rxd.0, i32 4
  %66 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast179 = ptrtoint ptr %add.ptr177 to i32
  %sub.ptr.rhs.cast180 = ptrtoint ptr %67 to i32
  %sub.ptr.sub181 = sub i32 %sub.ptr.lhs.cast179, %sub.ptr.rhs.cast180
  %len182 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %68 = ptrtoint ptr %len182 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %len182, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub181, i32 %69)
  %cmp183.not = icmp ult i32 %sub.ptr.sub181, %69
  br i1 %cmp183.not, label %if.end176.if.end187_crit_edge, label %if.end176.cleanup476_crit_edge

if.end176.cleanup476_crit_edge:                   ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup476

if.end176.if.end187_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end187

if.end187:                                        ; preds = %if.end176.if.end187_crit_edge, %if.end111.if.end187_crit_edge
  %insert_ccmp_hdr.2.off0 = phi i1 [ %insert_ccmp_hdr.1, %if.end176.if.end187_crit_edge ], [ false, %if.end111.if.end187_crit_edge ]
  %rxd.1 = phi ptr [ %add.ptr177, %if.end176.if.end187_crit_edge ], [ %rxd.0, %if.end111.if.end187_crit_edge ]
  %and188 = and i32 %4, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and188)
  %tobool189.not = icmp eq i32 %and188, 0
  br i1 %tobool189.not, label %if.end187.if.end224_crit_edge, label %if.then190

if.end187.if.end224_crit_edge:                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end224

if.then190:                                       ; preds = %if.end187
  %70 = ptrtoint ptr %rxd.1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rxd.1, align 4
  %72 = tail call i32 @llvm.bswap.i32(i32 %71)
  %timestamp = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %73 = ptrtoint ptr %timestamp to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %timestamp, align 4
  %flag192 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %74 = ptrtoint ptr %flag192 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flag192, align 4
  %or193 = or i32 %75, 128
  store i32 %or193, ptr %flag192, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %10)
  %tobool195.not = icmp ult i32 %10, 1073741824
  br i1 %tobool195.not, label %if.then196, label %if.then190.if.end213_crit_edge

if.then190.if.end213_crit_edge:                   ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end213

if.then196:                                       ; preds = %if.then190
  %or198 = or i32 %75, 640
  %76 = ptrtoint ptr %flag192 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %or198, ptr %flag192, align 4
  %rx_ampdu_ts = getelementptr inbounds %struct.mt7603_dev, ptr %dev, i32 0, i32 12
  %77 = ptrtoint ptr %rx_ampdu_ts to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rx_ampdu_ts, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %72)
  %cmp200.not = icmp eq i32 %78, %72
  br i1 %cmp200.not, label %if.then196.if.end208_crit_edge, label %if.then202

if.then196.if.end208_crit_edge:                   ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end208

if.then202:                                       ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #9
  %ampdu_ref = getelementptr inbounds %struct.mt7603_dev, ptr %dev, i32 0, i32 11
  %79 = ptrtoint ptr %ampdu_ref to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %ampdu_ref, align 16
  %inc = add i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %tobool203.not = icmp eq i32 %inc, 0
  %spec.store.select = select i1 %tobool203.not, i32 1, i32 %inc
  %81 = ptrtoint ptr %ampdu_ref to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %spec.store.select, ptr %ampdu_ref, align 16
  br label %if.end208

if.end208:                                        ; preds = %if.then202, %if.then196.if.end208_crit_edge
  %82 = ptrtoint ptr %timestamp to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %timestamp, align 4
  %84 = ptrtoint ptr %rx_ampdu_ts to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %rx_ampdu_ts, align 4
  %ampdu_ref211 = getelementptr inbounds %struct.mt7603_dev, ptr %dev, i32 0, i32 11
  %85 = ptrtoint ptr %ampdu_ref211 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %ampdu_ref211, align 16
  %ampdu_ref212 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %87 = ptrtoint ptr %ampdu_ref212 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %ampdu_ref212, align 4
  br label %if.end213

if.end213:                                        ; preds = %if.end208, %if.then190.if.end213_crit_edge
  %add.ptr214 = getelementptr i32, ptr %rxd.1, i32 2
  %88 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast216 = ptrtoint ptr %add.ptr214 to i32
  %sub.ptr.rhs.cast217 = ptrtoint ptr %89 to i32
  %sub.ptr.sub218 = sub i32 %sub.ptr.lhs.cast216, %sub.ptr.rhs.cast217
  %len219 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %90 = ptrtoint ptr %len219 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %len219, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub218, i32 %91)
  %cmp220.not = icmp ult i32 %sub.ptr.sub218, %91
  br i1 %cmp220.not, label %if.end213.if.end224_crit_edge, label %if.end213.cleanup476_crit_edge

if.end213.cleanup476_crit_edge:                   ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup476

if.end213.if.end224_crit_edge:                    ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end224

if.end224:                                        ; preds = %if.end213.if.end224_crit_edge, %if.end187.if.end224_crit_edge
  %rxd.2 = phi ptr [ %add.ptr214, %if.end213.if.end224_crit_edge ], [ %rxd.1, %if.end187.if.end224_crit_edge ]
  %and225 = and i32 %4, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and225)
  %tobool226.not = icmp eq i32 %and225, 0
  br i1 %tobool226.not, label %if.end224.cleanup476_crit_edge, label %if.then227

if.end224.cleanup476_crit_edge:                   ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup476

if.then227:                                       ; preds = %if.end224
  %92 = ptrtoint ptr %rxd.2 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %rxd.2, align 4
  %94 = tail call i32 @llvm.bswap.i32(i32 %93)
  %arrayidx229 = getelementptr i32, ptr %rxd.2, i32 3
  %95 = ptrtoint ptr %arrayidx229 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx229, align 4
  %97 = tail call i32 @llvm.bswap.i32(i32 %96)
  %and246 = and i32 %94, 127
  %and264 = lshr i32 %94, 12
  %shr265 = and i32 %and264, 7
  %98 = zext i32 %shr265 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %shr265, label %if.then227.cleanup476_crit_edge [
    i32 0, label %sw.bb266
    i32 1, label %if.then227.sw.bb267_crit_edge
    i32 3, label %if.then227.sw.bb270_crit_edge
    i32 2, label %if.then227.sw.bb270_crit_edge625
  ]

if.then227.sw.bb270_crit_edge625:                 ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb270

if.then227.sw.bb270_crit_edge:                    ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb270

if.then227.sw.bb267_crit_edge:                    ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb267

if.then227.cleanup476_crit_edge:                  ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup476

sw.bb266:                                         ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb267

sw.bb267:                                         ; preds = %sw.bb266, %if.then227.sw.bb267_crit_edge
  %cck.0.off0 = phi i1 [ false, %if.then227.sw.bb267_crit_edge ], [ true, %sw.bb266 ]
  %call269 = tail call i32 @mt76_get_rate(ptr noundef %dev, ptr noundef %cond, i32 noundef %and246, i1 noundef zeroext %cck.0.off0) #7
  br label %sw.epilog276

sw.bb270:                                         ; preds = %if.then227.sw.bb270_crit_edge, %if.then227.sw.bb270_crit_edge625
  %encoding = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 33
  %99 = ptrtoint ptr %encoding to i32
  call void @__asan_loadN_noabort(i32 %99, i32 2)
  %bf.load = load i16, ptr %encoding, align 1
  %bf.clear = and i16 %bf.load, 16383
  %bf.set = or i16 %bf.clear, 16384
  store i16 %bf.set, ptr %encoding, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and246)
  %cmp271 = icmp ugt i32 %and246, 15
  br i1 %cmp271, label %sw.bb270.cleanup476_crit_edge, label %sw.bb270.sw.epilog276_crit_edge

sw.bb270.sw.epilog276_crit_edge:                  ; preds = %sw.bb270
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog276

sw.bb270.cleanup476_crit_edge:                    ; preds = %sw.bb270
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup476

sw.epilog276:                                     ; preds = %sw.bb270.sw.epilog276_crit_edge, %sw.bb267
  %i.0 = phi i32 [ %and246, %sw.bb270.sw.epilog276_crit_edge ], [ %call269, %sw.bb267 ]
  %and277 = and i32 %94, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and277)
  %tobool278.not = icmp eq i32 %and277, 0
  br i1 %tobool278.not, label %sw.epilog276.if.end283_crit_edge, label %if.then279

sw.epilog276.if.end283_crit_edge:                 ; preds = %sw.epilog276
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end283

if.then279:                                       ; preds = %sw.epilog276
  call void @__sanitizer_cov_trace_pc() #9
  %enc_flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %100 = ptrtoint ptr %enc_flags to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %enc_flags, align 4
  %102 = or i8 %101, 4
  store i8 %102, ptr %enc_flags, align 4
  br label %if.end283

if.end283:                                        ; preds = %if.then279, %sw.epilog276.if.end283_crit_edge
  %and284 = and i32 %94, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and284)
  %tobool285.not = icmp eq i32 %and284, 0
  br i1 %tobool285.not, label %if.end283.do.end306_crit_edge, label %if.then286

if.end283.do.end306_crit_edge:                    ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end306

if.then286:                                       ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #9
  %enc_flags287 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %103 = ptrtoint ptr %enc_flags287 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %enc_flags287, align 4
  %105 = or i8 %104, 64
  store i8 %105, ptr %enc_flags287, align 4
  br label %do.end306

do.end306:                                        ; preds = %if.then286, %if.end283.do.end306_crit_edge
  %and308 = lshr i32 %94, 7
  %enc_flags310 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %106 = ptrtoint ptr %enc_flags310 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %enc_flags310, align 4
  %108 = trunc i32 %and308 to i8
  %109 = and i8 %108, 3
  %110 = mul nuw i8 %109, 48
  %conv313 = or i8 %107, %110
  store i8 %conv313, ptr %enc_flags310, align 4
  %conv314 = trunc i32 %i.0 to i8
  %rate_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 35
  %111 = ptrtoint ptr %rate_idx to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv314, ptr %rate_idx, align 1
  %antenna_mask = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 15
  %112 = ptrtoint ptr %antenna_mask to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %antenna_mask, align 8
  %chains = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 39
  %114 = ptrtoint ptr %chains to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %113, ptr %chains, align 1
  %rssi_offset = getelementptr inbounds %struct.mt7603_dev, ptr %dev, i32 0, i32 13
  %115 = ptrtoint ptr %rssi_offset to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %rssi_offset, align 8
  %117 = trunc i32 %97 to i8
  %conv335 = add i8 %116, %117
  %chain_signal = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 40
  %118 = ptrtoint ptr %chain_signal to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv335, ptr %chain_signal, align 4
  %and353 = lshr i32 %97, 20
  %arrayidx356 = getelementptr %struct.mt7603_dev, ptr %dev, i32 0, i32 13, i32 1
  %119 = ptrtoint ptr %arrayidx356 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx356, align 1
  %121 = trunc i32 %and353 to i8
  %conv359 = add i8 %120, %121
  %arrayidx361 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 41
  %122 = ptrtoint ptr %arrayidx361 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv359, ptr %arrayidx361, align 1
  %signal = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 38
  %123 = and i8 %113, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool367.not = icmp eq i8 %123, 0
  %124 = tail call i8 @llvm.smax.i8(i8 %conv335, i8 %conv359)
  %spec.select = select i1 %tobool367.not, i8 %conv335, i8 %124
  %125 = ptrtoint ptr %signal to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %spec.select, ptr %signal, align 2
  %126 = and i32 %94, 98304
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %126)
  %cmp404 = icmp eq i32 %126, 32768
  br i1 %cmp404, label %if.then406, label %do.end306.cleanup421_crit_edge

do.end306.cleanup421_crit_edge:                   ; preds = %do.end306
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup421

if.then406:                                       ; preds = %do.end306
  call void @__sanitizer_cov_trace_pc() #9
  %bw = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 33
  %127 = ptrtoint ptr %bw to i32
  call void @__asan_loadN_noabort(i32 %127, i32 2)
  %bf.load407 = load i16, ptr %bw, align 1
  %bf.clear408 = and i16 %bf.load407, -14337
  %bf.set409 = or i16 %bf.clear408, 6144
  store i16 %bf.set409, ptr %bw, align 1
  br label %cleanup421

cleanup421:                                       ; preds = %if.then406, %do.end306.cleanup421_crit_edge
  %add.ptr411 = getelementptr i32, ptr %rxd.2, i32 6
  %128 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast413 = ptrtoint ptr %add.ptr411 to i32
  %sub.ptr.rhs.cast414 = ptrtoint ptr %129 to i32
  %sub.ptr.sub415 = sub i32 %sub.ptr.lhs.cast413, %sub.ptr.rhs.cast414
  %len416 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %130 = ptrtoint ptr %len416 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %len416, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub415, i32 %131)
  %cmp417.not = icmp ult i32 %sub.ptr.sub415, %131
  br i1 %cmp417.not, label %if.end426, label %cleanup421.cleanup476_crit_edge

cleanup421.cleanup476_crit_edge:                  ; preds = %cleanup421
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup476

if.end426:                                        ; preds = %cleanup421
  %132 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %data, align 4
  %sub.ptr.rhs.cast429 = ptrtoint ptr %133 to i32
  %134 = lshr i32 %7, 21
  %mul433 = and i32 %134, 2
  %sub.ptr.sub430 = add i32 %mul433, %sub.ptr.lhs.cast413
  %add434 = sub i32 %sub.ptr.sub430, %sub.ptr.rhs.cast429
  %call435 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %add434) #7
  br i1 %insert_ccmp_hdr.2.off0, label %if.then437, label %if.end426.if.end457_crit_edge

if.end426.if.end457_crit_edge:                    ; preds = %if.end426
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end457

if.then437:                                       ; preds = %if.end426
  call void @__sanitizer_cov_trace_pc() #9
  %135 = trunc i32 %7 to i8
  %136 = lshr i8 %135, 6
  tail call void @mt76_insert_ccmp_hdr(ptr noundef %skb, i8 noundef zeroext %136) #7
  br label %if.end457

if.end457:                                        ; preds = %if.then437, %if.end426.if.end457_crit_edge
  %137 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %data, align 4
  %139 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %cb, align 4
  %tobool459.not = icmp eq ptr %140, null
  br i1 %tobool459.not, label %if.end457.cleanup476_crit_edge, label %lor.lhs.false

if.end457.cleanup476_crit_edge:                   ; preds = %if.end457
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup476

lor.lhs.false:                                    ; preds = %if.end457
  %141 = ptrtoint ptr %138 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %138, align 2
  %143 = and i16 %142, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %143)
  %cmp.i615 = icmp eq i16 %143, -30720
  br i1 %cmp.i615, label %if.end462, label %lor.lhs.false.cleanup476_crit_edge

lor.lhs.false.cleanup476_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup476

if.end462:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %144 = and i16 %142, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -14336, i16 %144)
  %cmp.i616 = icmp eq i16 %144, -14336
  %phi.sel = select i1 %cmp.i616, i8 0, i8 64
  %145 = select i1 %tobool, i8 %phi.sel, i8 0
  %aggr = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 22
  %146 = ptrtoint ptr %aggr to i32
  call void @__asan_load1_noabort(i32 %146)
  %bf.load468 = load i8, ptr %aggr, align 2
  %bf.clear469 = and i8 %bf.load468, -65
  %bf.set470 = or i8 %bf.clear469, %145
  store i8 %bf.set470, ptr %aggr, align 2
  %147 = ptrtoint ptr %138 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %138, align 2
  %149 = and i16 %148, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %149)
  %cmp.i.i = icmp eq i16 %149, 3
  %retval.0.v.i = select i1 %cmp.i.i, i32 30, i32 24
  %retval.0.i617 = getelementptr i8, ptr %138, i32 %retval.0.v.i
  %150 = ptrtoint ptr %retval.0.i617 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %retval.0.i617, align 1
  %qos_ctl = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 23
  %152 = ptrtoint ptr %qos_ctl to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %151, ptr %qos_ctl, align 1
  %seq_ctrl = getelementptr inbounds %struct.ieee80211_hdr, ptr %138, i32 0, i32 5
  %153 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %seq_ctrl, align 2
  %155 = and i16 %154, -3841
  %156 = tail call i16 @llvm.bswap.i16(i16 %155)
  %157 = lshr exact i16 %156, 4
  %seqno = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %158 = ptrtoint ptr %seqno to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %157, ptr %seqno, align 4
  br label %cleanup476

cleanup476:                                       ; preds = %if.end462, %lor.lhs.false.cleanup476_crit_edge, %if.end457.cleanup476_crit_edge, %cleanup421.cleanup476_crit_edge, %sw.bb270.cleanup476_crit_edge, %if.then227.cleanup476_crit_edge, %if.end224.cleanup476_crit_edge, %if.end213.cleanup476_crit_edge, %if.end176.cleanup476_crit_edge, %if.then104.cleanup476_crit_edge, %if.end97.cleanup476_crit_edge, %if.end90.cleanup476_crit_edge
  %retval.3 = phi i32 [ 0, %if.end462 ], [ -22, %cleanup421.cleanup476_crit_edge ], [ -22, %if.end176.cleanup476_crit_edge ], [ -22, %if.end90.cleanup476_crit_edge ], [ -22, %if.end97.cleanup476_crit_edge ], [ -22, %if.then104.cleanup476_crit_edge ], [ -22, %if.end213.cleanup476_crit_edge ], [ -22, %if.end224.cleanup476_crit_edge ], [ 0, %lor.lhs.false.cleanup476_crit_edge ], [ 0, %if.end457.cleanup476_crit_edge ], [ -22, %sw.bb270.cleanup476_crit_edge ], [ -22, %if.then227.cleanup476_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_get_rate(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_insert_ccmp_hdr(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7603_wtbl_set_rates(ptr noundef %dev, ptr nocapture noundef %sta, ptr noundef readonly %probe_rate, ptr nocapture noundef %rates) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.mt76_wcid, ptr %sta, i32 0, i32 6
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %idx, align 2
  %conv = zext i16 %1 to i32
  %mul.i = shl nuw nsw i32 %conv, 6
  %n_rates2 = getelementptr inbounds %struct.mt7603_sta, ptr %sta, i32 0, i32 9
  %2 = ptrtoint ptr %n_rates2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %n_rates2, align 1
  %conv3 = zext i8 %3 to i32
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %add = add nuw nsw i32 %mul.i, 262180
  %call4 = tail call i32 %7(ptr noundef %dev, i32 noundef %add) #7
  %call5 = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef 143360, i32 noundef 65536, i32 noundef 0, i32 noundef 5000) #7
  br i1 %call5, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp963 = icmp ult i8 %3, 4
  br i1 %cmp963, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sub = add nsw i32 %conv3, -1
  %arrayidx7 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 %sub
  %arrayidx = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 %conv3
  %8 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx7, i32 3)
  %inc = add nuw nsw i32 %conv3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.body.lr.ph.for.end_crit_edge, label %for.body.1

for.body.lr.ph.for.end_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.1:                                       ; preds = %for.body.lr.ph
  %arrayidx.1 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 %inc
  %9 = call ptr @memcpy(ptr %arrayidx.1, ptr %arrayidx7, i32 3)
  %inc.1 = add nuw nsw i32 %conv3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc.1)
  %exitcond.not.1 = icmp eq i32 %inc.1, 4
  br i1 %exitcond.not.1, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  %arrayidx.2 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 %inc.1
  %10 = call ptr @memcpy(ptr %arrayidx.2, ptr %arrayidx7, i32 3)
  %inc.2 = add nuw nsw i32 %conv3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc.2)
  %exitcond.not.2 = icmp eq i32 %inc.2, 4
  br i1 %exitcond.not.2, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.3 = getelementptr %struct.ieee80211_tx_rate, ptr %rates, i32 %inc.2
  %11 = call ptr @memcpy(ptr %arrayidx.3, ptr %arrayidx7, i32 3)
  br label %for.end

for.end:                                          ; preds = %for.body.3, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.lr.ph.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %rate_set_tsf = getelementptr inbounds %struct.mt7603_sta, ptr %sta, i32 0, i32 7
  %12 = ptrtoint ptr %rate_set_tsf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rate_set_tsf, align 4
  %and = and i32 %13, 1
  %14 = xor i32 %and, 1
  %arrayidx10 = getelementptr %struct.mt7603_sta, ptr %sta, i32 0, i32 6, i32 %14
  %rates11 = getelementptr %struct.mt7603_sta, ptr %sta, i32 0, i32 6, i32 %14, i32 1
  %15 = call ptr @memcpy(ptr %rates11, ptr %rates, i32 12)
  %tobool12.not = icmp eq ptr %probe_rate, null
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = call ptr @memcpy(ptr %arrayidx10, ptr %probe_rate, i32 3)
  br label %if.end36

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %arrayidx10, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then13
  %ref.0 = phi ptr [ %arrayidx10, %if.then13 ], [ %rates11, %if.else ]
  %flags = getelementptr inbounds %struct.ieee80211_tx_rate, ptr %ref.0, i32 0, i32 1
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %bf.load = load i16, ptr %flags, align 1
  %flags49 = getelementptr %struct.ieee80211_tx_rate, ptr %rates11, i32 0, i32 1
  %19 = ptrtoint ptr %flags49 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %bf.load50 = load i16, ptr %flags49, align 1
  %xor724 = xor i16 %bf.load50, %bf.load
  %20 = and i16 %xor724, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool54.not = icmp eq i16 %20, 0
  br i1 %tobool54.not, label %if.end36.for.inc105_crit_edge, label %if.then55

if.end36.for.inc105_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

if.then55:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %bf.set = xor i16 %bf.load50, 128
  %21 = ptrtoint ptr %flags49 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 %bf.set, ptr %flags49, align 1
  br label %for.inc105

for.inc105:                                       ; preds = %if.then55, %if.end36.for.inc105_crit_edge
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %bf.load.1 = load i16, ptr %flags, align 1
  %arrayidx48.1 = getelementptr %struct.ieee80211_tx_rate, ptr %rates11, i32 1
  %flags49.1 = getelementptr %struct.ieee80211_tx_rate, ptr %rates11, i32 1, i32 1
  %23 = ptrtoint ptr %flags49.1 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %bf.load50.1 = load i16, ptr %flags49.1, align 1
  %xor724.1 = xor i16 %bf.load50.1, %bf.load.1
  %24 = and i16 %xor724.1, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool54.not.1 = icmp eq i16 %24, 0
  br i1 %tobool54.not.1, label %for.inc105.for.body69.preheader.1_crit_edge, label %if.then55.1

for.inc105.for.body69.preheader.1_crit_edge:      ; preds = %for.inc105
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body69.preheader.1

if.then55.1:                                      ; preds = %for.inc105
  call void @__sanitizer_cov_trace_pc() #9
  %bf.set.1 = xor i16 %bf.load50.1, 128
  %25 = ptrtoint ptr %flags49.1 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 %bf.set.1, ptr %flags49.1, align 1
  br label %for.body69.preheader.1

for.body69.preheader.1:                           ; preds = %if.then55.1, %for.inc105.for.body69.preheader.1_crit_edge
  %26 = ptrtoint ptr %arrayidx48.1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx48.1, align 1
  %28 = ptrtoint ptr %rates11 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %rates11, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %29)
  %cmp76.not.1 = icmp eq i8 %27, %29
  br i1 %cmp76.not.1, label %if.end79.1, label %for.body69.preheader.1.for.inc105.1_crit_edge

for.body69.preheader.1.for.inc105.1_crit_edge:    ; preds = %for.body69.preheader.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105.1

if.end79.1:                                       ; preds = %for.body69.preheader.1
  %30 = ptrtoint ptr %flags49.1 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %bf.load82.1 = load i16, ptr %flags49.1, align 1
  %31 = ptrtoint ptr %flags49 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %bf.load87.1 = load i16, ptr %flags49, align 1
  %bf.clear83726.1 = xor i16 %bf.load87.1, %bf.load82.1
  %32 = and i16 %bf.clear83726.1, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool92.not.1 = icmp ne i16 %32, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool97.not.1 = icmp eq i8 %27, 0
  %or.cond.1 = select i1 %tobool92.not.1, i1 true, i1 %tobool97.not.1
  br i1 %or.cond.1, label %if.end79.1.for.inc105.1_crit_edge, label %if.end99.1

if.end79.1.for.inc105.1_crit_edge:                ; preds = %if.end79.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105.1

if.end99.1:                                       ; preds = %if.end79.1
  call void @__sanitizer_cov_trace_pc() #9
  %dec.1 = add i8 %27, -1
  %33 = ptrtoint ptr %arrayidx48.1 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %dec.1, ptr %arrayidx48.1, align 1
  br label %for.inc105.1

for.inc105.1:                                     ; preds = %if.end99.1, %if.end79.1.for.inc105.1_crit_edge, %for.body69.preheader.1.for.inc105.1_crit_edge
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %bf.load.2 = load i16, ptr %flags, align 1
  %arrayidx48.2 = getelementptr %struct.ieee80211_tx_rate, ptr %rates11, i32 2
  %flags49.2 = getelementptr %struct.ieee80211_tx_rate, ptr %rates11, i32 2, i32 1
  %35 = ptrtoint ptr %flags49.2 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %bf.load50.2 = load i16, ptr %flags49.2, align 1
  %xor724.2 = xor i16 %bf.load50.2, %bf.load.2
  %36 = and i16 %xor724.2, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool54.not.2 = icmp eq i16 %36, 0
  br i1 %tobool54.not.2, label %for.inc105.1.for.body69.preheader.2_crit_edge, label %if.then55.2

for.inc105.1.for.body69.preheader.2_crit_edge:    ; preds = %for.inc105.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body69.preheader.2

if.then55.2:                                      ; preds = %for.inc105.1
  call void @__sanitizer_cov_trace_pc() #9
  %bf.set.2 = xor i16 %bf.load50.2, 128
  %37 = ptrtoint ptr %flags49.2 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 %bf.set.2, ptr %flags49.2, align 1
  br label %for.body69.preheader.2

for.body69.preheader.2:                           ; preds = %if.then55.2, %for.inc105.1.for.body69.preheader.2_crit_edge
  %38 = ptrtoint ptr %arrayidx48.2 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx48.2, align 1
  %40 = ptrtoint ptr %rates11 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %rates11, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %41)
  %cmp76.not.2 = icmp eq i8 %39, %41
  br i1 %cmp76.not.2, label %if.end79.2, label %for.body69.preheader.2.for.inc102.2_crit_edge

for.body69.preheader.2.for.inc102.2_crit_edge:    ; preds = %for.body69.preheader.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc102.2

if.end79.2:                                       ; preds = %for.body69.preheader.2
  %42 = ptrtoint ptr %flags49.2 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %bf.load82.2 = load i16, ptr %flags49.2, align 1
  %43 = ptrtoint ptr %flags49 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %bf.load87.2 = load i16, ptr %flags49, align 1
  %bf.clear83726.2 = xor i16 %bf.load87.2, %bf.load82.2
  %44 = and i16 %bf.clear83726.2, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool92.not.2 = icmp ne i16 %44, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool97.not.2 = icmp eq i8 %39, 0
  %or.cond.2 = select i1 %tobool92.not.2, i1 true, i1 %tobool97.not.2
  br i1 %or.cond.2, label %if.end79.2.for.inc102.2_crit_edge, label %if.end99.2

if.end79.2.for.inc102.2_crit_edge:                ; preds = %if.end79.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc102.2

if.end99.2:                                       ; preds = %if.end79.2
  call void @__sanitizer_cov_trace_pc() #9
  %dec.2 = add i8 %39, -1
  %45 = ptrtoint ptr %arrayidx48.2 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %dec.2, ptr %arrayidx48.2, align 1
  br label %for.inc102.2

for.inc102.2:                                     ; preds = %if.end99.2, %if.end79.2.for.inc102.2_crit_edge, %for.body69.preheader.2.for.inc102.2_crit_edge
  %46 = ptrtoint ptr %arrayidx48.2 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx48.2, align 1
  %48 = ptrtoint ptr %arrayidx48.1 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx48.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %47, i8 %49)
  %cmp76.not.2.1 = icmp eq i8 %47, %49
  br i1 %cmp76.not.2.1, label %if.end79.2.1, label %for.inc102.2.for.inc105.2_crit_edge

for.inc102.2.for.inc105.2_crit_edge:              ; preds = %for.inc102.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105.2

if.end79.2.1:                                     ; preds = %for.inc102.2
  %50 = ptrtoint ptr %flags49.2 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %bf.load82.2.1 = load i16, ptr %flags49.2, align 1
  %51 = ptrtoint ptr %flags49.1 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %bf.load87.2.1 = load i16, ptr %flags49.1, align 1
  %bf.clear83726.2.1 = xor i16 %bf.load87.2.1, %bf.load82.2.1
  %52 = and i16 %bf.clear83726.2.1, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool92.not.2.1 = icmp ne i16 %52, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool97.not.2.1 = icmp eq i8 %47, 0
  %or.cond.2.1 = select i1 %tobool92.not.2.1, i1 true, i1 %tobool97.not.2.1
  br i1 %or.cond.2.1, label %if.end79.2.1.for.inc105.2_crit_edge, label %if.end99.2.1

if.end79.2.1.for.inc105.2_crit_edge:              ; preds = %if.end79.2.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105.2

if.end99.2.1:                                     ; preds = %if.end79.2.1
  call void @__sanitizer_cov_trace_pc() #9
  %dec.2.1 = add i8 %47, -1
  %53 = ptrtoint ptr %arrayidx48.2 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %dec.2.1, ptr %arrayidx48.2, align 1
  br label %for.inc105.2

for.inc105.2:                                     ; preds = %if.end99.2.1, %if.end79.2.1.for.inc105.2_crit_edge, %for.inc102.2.for.inc105.2_crit_edge
  %54 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %bf.load.3 = load i16, ptr %flags, align 1
  %arrayidx48.3 = getelementptr %struct.ieee80211_tx_rate, ptr %rates11, i32 3
  %flags49.3 = getelementptr %struct.ieee80211_tx_rate, ptr %rates11, i32 3, i32 1
  %55 = ptrtoint ptr %flags49.3 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %bf.load50.3 = load i16, ptr %flags49.3, align 1
  %xor724.3 = xor i16 %bf.load50.3, %bf.load.3
  %56 = and i16 %xor724.3, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool54.not.3 = icmp eq i16 %56, 0
  br i1 %tobool54.not.3, label %for.inc105.2.for.body69.preheader.3_crit_edge, label %if.then55.3

for.inc105.2.for.body69.preheader.3_crit_edge:    ; preds = %for.inc105.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body69.preheader.3

if.then55.3:                                      ; preds = %for.inc105.2
  call void @__sanitizer_cov_trace_pc() #9
  %bf.set.3 = xor i16 %bf.load50.3, 128
  %57 = ptrtoint ptr %flags49.3 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 2)
  store i16 %bf.set.3, ptr %flags49.3, align 1
  br label %for.body69.preheader.3

for.body69.preheader.3:                           ; preds = %if.then55.3, %for.inc105.2.for.body69.preheader.3_crit_edge
  %58 = ptrtoint ptr %arrayidx48.3 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx48.3, align 1
  %60 = ptrtoint ptr %rates11 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %rates11, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %59, i8 %61)
  %cmp76.not.3 = icmp eq i8 %59, %61
  br i1 %cmp76.not.3, label %if.end79.3, label %for.body69.preheader.3.for.inc102.3_crit_edge

for.body69.preheader.3.for.inc102.3_crit_edge:    ; preds = %for.body69.preheader.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc102.3

if.end79.3:                                       ; preds = %for.body69.preheader.3
  %62 = ptrtoint ptr %flags49.3 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 2)
  %bf.load82.3 = load i16, ptr %flags49.3, align 1
  %63 = ptrtoint ptr %flags49 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %bf.load87.3 = load i16, ptr %flags49, align 1
  %bf.clear83726.3 = xor i16 %bf.load87.3, %bf.load82.3
  %64 = and i16 %bf.clear83726.3, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool92.not.3 = icmp ne i16 %64, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool97.not.3 = icmp eq i8 %59, 0
  %or.cond.3 = select i1 %tobool92.not.3, i1 true, i1 %tobool97.not.3
  br i1 %or.cond.3, label %if.end79.3.for.inc102.3_crit_edge, label %if.end99.3

if.end79.3.for.inc102.3_crit_edge:                ; preds = %if.end79.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc102.3

if.end99.3:                                       ; preds = %if.end79.3
  call void @__sanitizer_cov_trace_pc() #9
  %dec.3 = add i8 %59, -1
  %65 = ptrtoint ptr %arrayidx48.3 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %dec.3, ptr %arrayidx48.3, align 1
  br label %for.inc102.3

for.inc102.3:                                     ; preds = %if.end99.3, %if.end79.3.for.inc102.3_crit_edge, %for.body69.preheader.3.for.inc102.3_crit_edge
  %66 = ptrtoint ptr %arrayidx48.3 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx48.3, align 1
  %68 = ptrtoint ptr %arrayidx48.1 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx48.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %67, i8 %69)
  %cmp76.not.3.1 = icmp eq i8 %67, %69
  br i1 %cmp76.not.3.1, label %if.end79.3.1, label %for.inc102.3.for.inc102.3.1_crit_edge

for.inc102.3.for.inc102.3.1_crit_edge:            ; preds = %for.inc102.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc102.3.1

if.end79.3.1:                                     ; preds = %for.inc102.3
  %70 = ptrtoint ptr %flags49.3 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %bf.load82.3.1 = load i16, ptr %flags49.3, align 1
  %71 = ptrtoint ptr %flags49.1 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 2)
  %bf.load87.3.1 = load i16, ptr %flags49.1, align 1
  %bf.clear83726.3.1 = xor i16 %bf.load87.3.1, %bf.load82.3.1
  %72 = and i16 %bf.clear83726.3.1, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %tobool92.not.3.1 = icmp ne i16 %72, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool97.not.3.1 = icmp eq i8 %67, 0
  %or.cond.3.1 = select i1 %tobool92.not.3.1, i1 true, i1 %tobool97.not.3.1
  br i1 %or.cond.3.1, label %if.end79.3.1.for.inc102.3.1_crit_edge, label %if.end99.3.1

if.end79.3.1.for.inc102.3.1_crit_edge:            ; preds = %if.end79.3.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc102.3.1

if.end99.3.1:                                     ; preds = %if.end79.3.1
  call void @__sanitizer_cov_trace_pc() #9
  %dec.3.1 = add i8 %67, -1
  %73 = ptrtoint ptr %arrayidx48.3 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %dec.3.1, ptr %arrayidx48.3, align 1
  br label %for.inc102.3.1

for.inc102.3.1:                                   ; preds = %if.end99.3.1, %if.end79.3.1.for.inc102.3.1_crit_edge, %for.inc102.3.for.inc102.3.1_crit_edge
  %74 = ptrtoint ptr %arrayidx48.3 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx48.3, align 1
  %76 = ptrtoint ptr %arrayidx48.2 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx48.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %75, i8 %77)
  %cmp76.not.3.2 = icmp eq i8 %75, %77
  br i1 %cmp76.not.3.2, label %if.end79.3.2, label %for.inc102.3.1.for.inc105.3_crit_edge

for.inc102.3.1.for.inc105.3_crit_edge:            ; preds = %for.inc102.3.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105.3

if.end79.3.2:                                     ; preds = %for.inc102.3.1
  %78 = ptrtoint ptr %flags49.3 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 2)
  %bf.load82.3.2 = load i16, ptr %flags49.3, align 1
  %79 = ptrtoint ptr %flags49.2 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %bf.load87.3.2 = load i16, ptr %flags49.2, align 1
  %bf.clear83726.3.2 = xor i16 %bf.load87.3.2, %bf.load82.3.2
  %80 = and i16 %bf.clear83726.3.2, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %tobool92.not.3.2 = icmp ne i16 %80, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool97.not.3.2 = icmp eq i8 %75, 0
  %or.cond.3.2 = select i1 %tobool92.not.3.2, i1 true, i1 %tobool97.not.3.2
  br i1 %or.cond.3.2, label %if.end79.3.2.for.inc105.3_crit_edge, label %if.end99.3.2

if.end79.3.2.for.inc105.3_crit_edge:              ; preds = %if.end79.3.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105.3

if.end99.3.2:                                     ; preds = %if.end79.3.2
  call void @__sanitizer_cov_trace_pc() #9
  %dec.3.2 = add i8 %75, -1
  %81 = ptrtoint ptr %arrayidx48.3 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %dec.3.2, ptr %arrayidx48.3, align 1
  br label %for.inc105.3

for.inc105.3:                                     ; preds = %if.end99.3.2, %if.end79.3.2.for.inc105.3_crit_edge, %for.inc102.3.1.for.inc105.3_crit_edge
  %and108 = and i32 %call4, 458752
  %82 = ptrtoint ptr %flags49 to i32
  call void @__asan_loadN_noabort(i32 %82, i32 2)
  %bf.load.i = load i16, ptr %flags49, align 1
  %bf.clear.i = and i16 %bf.load.i, 2047
  %conv.i = zext i16 %bf.clear.i to i32
  %and.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.inc105.3
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %rates11 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %rates11, align 1
  %and8.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  %spec.store.select.i = select i1 %tobool9.not.i, i8 2, i8 3
  %85 = trunc i16 %bf.load.i to i8
  %86 = lshr i8 %85, 5
  %87 = and i8 %86, 1
  br label %mt7603_mac_tx_rate_val.exit

if.else.i:                                        ; preds = %for.inc105.3
  call void @__sanitizer_cov_trace_pc() #9
  %chandef.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 5
  %88 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %chandef.i, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %89, align 4
  %92 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev, align 128
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %wiphy.i, align 8
  %arrayidx.i = getelementptr %struct.wiphy, ptr %95, i32 0, i32 53, i32 %91
  %96 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.i, align 4
  %bitrates.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %bitrates.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %bitrates.i, align 4
  %100 = ptrtoint ptr %rates11 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %rates11, align 1
  %idxprom.i = sext i8 %101 to i32
  %and26.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  %hw_value_short.i = getelementptr %struct.ieee80211_rate, ptr %99, i32 %idxprom.i, i32 3
  %hw_value.i = getelementptr %struct.ieee80211_rate, ptr %99, i32 %idxprom.i, i32 2
  %val.0.in.i = select i1 %tobool27.not.i, ptr %hw_value.i, ptr %hw_value_short.i
  %102 = ptrtoint ptr %val.0.in.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %val.0.i = load i16, ptr %val.0.in.i, align 2
  %103 = lshr i16 %val.0.i, 8
  %conv33.i = trunc i16 %103 to i8
  %conv36.i = trunc i16 %val.0.i to i8
  br label %mt7603_mac_tx_rate_val.exit

mt7603_mac_tx_rate_val.exit:                      ; preds = %if.else.i, %if.then.i
  %bw.0 = phi i8 [ 0, %if.else.i ], [ %87, %if.then.i ]
  %rate_idx.0.i = phi i8 [ %conv36.i, %if.else.i ], [ %84, %if.then.i ]
  %phy.0.i = phi i8 [ %conv33.i, %if.else.i ], [ %spec.store.select.i, %if.then.i ]
  %104 = and i8 %rate_idx.0.i, 63
  %and56.i = zext i8 %104 to i16
  %conv80.i = zext i8 %phy.0.i to i16
  %shl81.i = shl nuw nsw i16 %conv80.i, 6
  %and82.i = and i16 %shl81.i, 448
  %or.i = or i16 %and82.i, %and56.i
  br i1 %tobool12.not, label %mt7603_mac_tx_rate_val.exit.do.end164_crit_edge, label %if.then114

mt7603_mac_tx_rate_val.exit.do.end164_crit_edge:  ; preds = %mt7603_mac_tx_rate_val.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end164

if.then114:                                       ; preds = %mt7603_mac_tx_rate_val.exit
  %flags.i755 = getelementptr inbounds %struct.ieee80211_tx_rate, ptr %probe_rate, i32 0, i32 1
  %105 = ptrtoint ptr %flags.i755 to i32
  call void @__asan_loadN_noabort(i32 %105, i32 2)
  %bf.load.i756 = load i16, ptr %flags.i755, align 1
  %bf.clear.i757 = and i16 %bf.load.i756, 2047
  %conv.i758 = zext i16 %bf.clear.i757 to i32
  %and.i759 = and i32 %conv.i758, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i759)
  %tobool.not.i760 = icmp eq i32 %and.i759, 0
  br i1 %tobool.not.i760, label %if.else.i782, label %if.then.i767

if.then.i767:                                     ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #9
  %106 = ptrtoint ptr %probe_rate to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %probe_rate, align 1
  %and8.i762 = and i32 %conv.i758, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i762)
  %tobool9.not.i763 = icmp eq i32 %and8.i762, 0
  %spec.store.select.i764 = select i1 %tobool9.not.i763, i8 2, i8 3
  %108 = trunc i16 %bf.load.i756 to i8
  %109 = lshr i8 %108, 5
  %110 = and i8 %109, 1
  br label %mt7603_mac_tx_rate_val.exit802

if.else.i782:                                     ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #9
  %chandef.i769 = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 5
  %111 = ptrtoint ptr %chandef.i769 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %chandef.i769, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %112, align 4
  %115 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev, align 128
  %wiphy.i770 = getelementptr inbounds %struct.ieee80211_hw, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %wiphy.i770 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %wiphy.i770, align 8
  %arrayidx.i771 = getelementptr %struct.wiphy, ptr %118, i32 0, i32 53, i32 %114
  %119 = ptrtoint ptr %arrayidx.i771 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx.i771, align 4
  %bitrates.i772 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %bitrates.i772 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %bitrates.i772, align 4
  %123 = ptrtoint ptr %probe_rate to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %probe_rate, align 1
  %idxprom.i773 = sext i8 %124 to i32
  %and26.i774 = and i32 %conv.i758, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i774)
  %tobool27.not.i775 = icmp eq i32 %and26.i774, 0
  %hw_value_short.i776 = getelementptr %struct.ieee80211_rate, ptr %122, i32 %idxprom.i773, i32 3
  %hw_value.i777 = getelementptr %struct.ieee80211_rate, ptr %122, i32 %idxprom.i773, i32 2
  %val.0.in.i778 = select i1 %tobool27.not.i775, ptr %hw_value.i777, ptr %hw_value_short.i776
  %125 = ptrtoint ptr %val.0.in.i778 to i32
  call void @__asan_load2_noabort(i32 %125)
  %val.0.i779 = load i16, ptr %val.0.in.i778, align 2
  %126 = lshr i16 %val.0.i779, 8
  %conv33.i780 = trunc i16 %126 to i8
  %conv36.i781 = trunc i16 %val.0.i779 to i8
  br label %mt7603_mac_tx_rate_val.exit802

mt7603_mac_tx_rate_val.exit802:                   ; preds = %if.else.i782, %if.then.i767
  %bw.1 = phi i8 [ 0, %if.else.i782 ], [ %110, %if.then.i767 ]
  %rate_idx.0.i783 = phi i8 [ %conv36.i781, %if.else.i782 ], [ %107, %if.then.i767 ]
  %phy.0.i785 = phi i8 [ %conv33.i780, %if.else.i782 ], [ %spec.store.select.i764, %if.then.i767 ]
  %127 = and i8 %rate_idx.0.i783, 63
  %and56.i796 = zext i8 %127 to i16
  %conv80.i797 = zext i8 %phy.0.i785 to i16
  %shl81.i798 = shl nuw nsw i16 %conv80.i797, 6
  %and82.i799 = and i16 %shl81.i798, 448
  %or.i800 = or i16 %and82.i799, %and56.i796
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bw.1)
  %tobool117.not = icmp eq i8 %bw.1, 0
  %not.tobool117.not = xor i1 %tobool117.not, true
  %. = zext i1 %not.tobool117.not to i32
  %.727 = select i1 %tobool117.not, i8 0, i8 %bw.0
  br label %do.end164

do.end164:                                        ; preds = %mt7603_mac_tx_rate_val.exit802, %mt7603_mac_tx_rate_val.exit.do.end164_crit_edge
  %bw.2 = phi i8 [ %bw.0, %mt7603_mac_tx_rate_val.exit.do.end164_crit_edge ], [ %bw.1, %mt7603_mac_tx_rate_val.exit802 ]
  %probe_val.0 = phi i16 [ %or.i, %mt7603_mac_tx_rate_val.exit.do.end164_crit_edge ], [ %or.i800, %mt7603_mac_tx_rate_val.exit802 ]
  %bw_idx.0 = phi i32 [ 0, %mt7603_mac_tx_rate_val.exit.do.end164_crit_edge ], [ %., %mt7603_mac_tx_rate_val.exit802 ]
  %bw_prev.0 = phi i8 [ %bw.0, %mt7603_mac_tx_rate_val.exit.do.end164_crit_edge ], [ %.727, %mt7603_mac_tx_rate_val.exit802 ]
  %conv141 = zext i8 %bw.2 to i32
  %shl = shl nuw nsw i32 %conv141, 9
  %and142 = and i32 %shl, 1536
  %or = or i32 %and142, %and108
  %shl167 = shl nuw nsw i32 %conv141, 14
  %and168 = and i32 %shl167, 49152
  %or169 = or i32 %or, %and168
  %128 = ptrtoint ptr %flags49.1 to i32
  call void @__asan_loadN_noabort(i32 %128, i32 2)
  %bf.load.i804 = load i16, ptr %flags49.1, align 1
  %bf.clear.i805 = and i16 %bf.load.i804, 2047
  %conv.i806 = zext i16 %bf.clear.i805 to i32
  %and.i807 = and i32 %conv.i806, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i807)
  %tobool.not.i808 = icmp eq i32 %and.i807, 0
  br i1 %tobool.not.i808, label %if.else.i830, label %if.then.i815

if.then.i815:                                     ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #9
  %129 = ptrtoint ptr %arrayidx48.1 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx48.1, align 1
  %and8.i810 = and i32 %conv.i806, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i810)
  %tobool9.not.i811 = icmp eq i32 %and8.i810, 0
  %spec.store.select.i812 = select i1 %tobool9.not.i811, i32 2, i32 3
  %131 = trunc i16 %bf.load.i804 to i8
  %132 = lshr i8 %131, 5
  %133 = and i8 %132, 1
  br label %mt7603_mac_tx_rate_val.exit850

if.else.i830:                                     ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #9
  %chandef.i817 = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 5
  %134 = ptrtoint ptr %chandef.i817 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %chandef.i817, align 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %135, align 4
  %138 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev, align 128
  %wiphy.i818 = getelementptr inbounds %struct.ieee80211_hw, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %wiphy.i818 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %wiphy.i818, align 8
  %arrayidx.i819 = getelementptr %struct.wiphy, ptr %141, i32 0, i32 53, i32 %137
  %142 = ptrtoint ptr %arrayidx.i819 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx.i819, align 4
  %bitrates.i820 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %bitrates.i820 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %bitrates.i820, align 4
  %146 = ptrtoint ptr %arrayidx48.1 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx48.1, align 1
  %idxprom.i821 = sext i8 %147 to i32
  %and26.i822 = and i32 %conv.i806, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i822)
  %tobool27.not.i823 = icmp eq i32 %and26.i822, 0
  %hw_value_short.i824 = getelementptr %struct.ieee80211_rate, ptr %145, i32 %idxprom.i821, i32 3
  %hw_value.i825 = getelementptr %struct.ieee80211_rate, ptr %145, i32 %idxprom.i821, i32 2
  %val.0.in.i826 = select i1 %tobool27.not.i823, ptr %hw_value.i825, ptr %hw_value_short.i824
  %148 = ptrtoint ptr %val.0.in.i826 to i32
  call void @__asan_load2_noabort(i32 %148)
  %val.0.i827 = load i16, ptr %val.0.in.i826, align 2
  %149 = lshr i16 %val.0.i827, 8
  %conv33.i828 = zext i16 %149 to i32
  %conv36.i829 = trunc i16 %val.0.i827 to i8
  br label %mt7603_mac_tx_rate_val.exit850

mt7603_mac_tx_rate_val.exit850:                   ; preds = %if.else.i830, %if.then.i815
  %bw.3 = phi i8 [ 0, %if.else.i830 ], [ %133, %if.then.i815 ]
  %rate_idx.0.i831 = phi i8 [ %conv36.i829, %if.else.i830 ], [ %130, %if.then.i815 ]
  %phy.0.i833 = phi i32 [ %conv33.i828, %if.else.i830 ], [ %spec.store.select.i812, %if.then.i815 ]
  %150 = and i8 %rate_idx.0.i831, 63
  %and56.i844 = zext i8 %150 to i32
  %conv80.i845 = shl nuw nsw i32 %phy.0.i833, 6
  %and82.i847 = and i32 %conv80.i845, 448
  %or.i848 = or i32 %and82.i847, %and56.i844
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bw_prev.0)
  %tobool174.not = icmp eq i8 %bw_prev.0, 0
  %spec.select956 = select i1 %tobool174.not, i32 %bw_idx.0, i32 3
  %151 = ptrtoint ptr %flags49.2 to i32
  call void @__asan_loadN_noabort(i32 %151, i32 2)
  %bf.load.i852 = load i16, ptr %flags49.2, align 1
  %bf.clear.i853 = and i16 %bf.load.i852, 2047
  %conv.i854 = zext i16 %bf.clear.i853 to i32
  %and.i855 = and i32 %conv.i854, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i855)
  %tobool.not.i856 = icmp eq i32 %and.i855, 0
  br i1 %tobool.not.i856, label %if.else.i878, label %if.then.i863

if.then.i863:                                     ; preds = %mt7603_mac_tx_rate_val.exit850
  call void @__sanitizer_cov_trace_pc() #9
  %152 = ptrtoint ptr %arrayidx48.2 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx48.2, align 1
  %and8.i858 = and i32 %conv.i854, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i858)
  %tobool9.not.i859 = icmp eq i32 %and8.i858, 0
  %spec.store.select.i860 = select i1 %tobool9.not.i859, i32 2, i32 3
  %154 = trunc i16 %bf.load.i852 to i8
  %155 = lshr i8 %154, 5
  %156 = and i8 %155, 1
  br label %mt7603_mac_tx_rate_val.exit898

if.else.i878:                                     ; preds = %mt7603_mac_tx_rate_val.exit850
  call void @__sanitizer_cov_trace_pc() #9
  %chandef.i865 = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 5
  %157 = ptrtoint ptr %chandef.i865 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %chandef.i865, align 4
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %158, align 4
  %161 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dev, align 128
  %wiphy.i866 = getelementptr inbounds %struct.ieee80211_hw, ptr %162, i32 0, i32 1
  %163 = ptrtoint ptr %wiphy.i866 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %wiphy.i866, align 8
  %arrayidx.i867 = getelementptr %struct.wiphy, ptr %164, i32 0, i32 53, i32 %160
  %165 = ptrtoint ptr %arrayidx.i867 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %arrayidx.i867, align 4
  %bitrates.i868 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %166, i32 0, i32 1
  %167 = ptrtoint ptr %bitrates.i868 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %bitrates.i868, align 4
  %169 = ptrtoint ptr %arrayidx48.2 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx48.2, align 1
  %idxprom.i869 = sext i8 %170 to i32
  %and26.i870 = and i32 %conv.i854, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i870)
  %tobool27.not.i871 = icmp eq i32 %and26.i870, 0
  %hw_value_short.i872 = getelementptr %struct.ieee80211_rate, ptr %168, i32 %idxprom.i869, i32 3
  %hw_value.i873 = getelementptr %struct.ieee80211_rate, ptr %168, i32 %idxprom.i869, i32 2
  %val.0.in.i874 = select i1 %tobool27.not.i871, ptr %hw_value.i873, ptr %hw_value_short.i872
  %171 = ptrtoint ptr %val.0.in.i874 to i32
  call void @__asan_load2_noabort(i32 %171)
  %val.0.i875 = load i16, ptr %val.0.in.i874, align 2
  %172 = lshr i16 %val.0.i875, 8
  %conv33.i876 = zext i16 %172 to i32
  %conv36.i877 = trunc i16 %val.0.i875 to i8
  br label %mt7603_mac_tx_rate_val.exit898

mt7603_mac_tx_rate_val.exit898:                   ; preds = %if.else.i878, %if.then.i863
  %bw.4 = phi i8 [ 0, %if.else.i878 ], [ %156, %if.then.i863 ]
  %rate_idx.0.i879 = phi i8 [ %conv36.i877, %if.else.i878 ], [ %153, %if.then.i863 ]
  %phy.0.i881 = phi i32 [ %conv33.i876, %if.else.i878 ], [ %spec.store.select.i860, %if.then.i863 ]
  %173 = and i8 %rate_idx.0.i879, 63
  %and56.i892 = zext i8 %173 to i32
  %conv80.i893 = shl nuw nsw i32 %phy.0.i881, 6
  %and82.i895 = and i32 %conv80.i893, 448
  %or.i896 = or i32 %and82.i895, %and56.i892
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bw.3)
  %tobool181.not961 = icmp eq i8 %bw.3, 0
  %tobool181.not = select i1 %tobool174.not, i1 true, i1 %tobool181.not961
  %spec.select959 = select i1 %tobool181.not, i32 %spec.select956, i32 5
  %174 = ptrtoint ptr %flags49.3 to i32
  call void @__asan_loadN_noabort(i32 %174, i32 2)
  %bf.load.i900 = load i16, ptr %flags49.3, align 1
  %bf.clear.i901 = and i16 %bf.load.i900, 2047
  %conv.i902 = zext i16 %bf.clear.i901 to i32
  %and.i903 = and i32 %conv.i902, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i903)
  %tobool.not.i904 = icmp eq i32 %and.i903, 0
  br i1 %tobool.not.i904, label %if.else.i926, label %if.then.i911

if.then.i911:                                     ; preds = %mt7603_mac_tx_rate_val.exit898
  call void @__sanitizer_cov_trace_pc() #9
  %175 = ptrtoint ptr %arrayidx48.3 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx48.3, align 1
  %and8.i906 = and i32 %conv.i902, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i906)
  %tobool9.not.i907 = icmp eq i32 %and8.i906, 0
  %spec.store.select.i908 = select i1 %tobool9.not.i907, i32 2, i32 3
  br label %mt7603_mac_tx_rate_val.exit946

if.else.i926:                                     ; preds = %mt7603_mac_tx_rate_val.exit898
  call void @__sanitizer_cov_trace_pc() #9
  %chandef.i913 = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 5
  %177 = ptrtoint ptr %chandef.i913 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %chandef.i913, align 4
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %178, align 4
  %181 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %dev, align 128
  %wiphy.i914 = getelementptr inbounds %struct.ieee80211_hw, ptr %182, i32 0, i32 1
  %183 = ptrtoint ptr %wiphy.i914 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %wiphy.i914, align 8
  %arrayidx.i915 = getelementptr %struct.wiphy, ptr %184, i32 0, i32 53, i32 %180
  %185 = ptrtoint ptr %arrayidx.i915 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %arrayidx.i915, align 4
  %bitrates.i916 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %186, i32 0, i32 1
  %187 = ptrtoint ptr %bitrates.i916 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %bitrates.i916, align 4
  %189 = ptrtoint ptr %arrayidx48.3 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx48.3, align 1
  %idxprom.i917 = sext i8 %190 to i32
  %and26.i918 = and i32 %conv.i902, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i918)
  %tobool27.not.i919 = icmp eq i32 %and26.i918, 0
  %hw_value_short.i920 = getelementptr %struct.ieee80211_rate, ptr %188, i32 %idxprom.i917, i32 3
  %hw_value.i921 = getelementptr %struct.ieee80211_rate, ptr %188, i32 %idxprom.i917, i32 2
  %val.0.in.i922 = select i1 %tobool27.not.i919, ptr %hw_value.i921, ptr %hw_value_short.i920
  %191 = ptrtoint ptr %val.0.in.i922 to i32
  call void @__asan_load2_noabort(i32 %191)
  %val.0.i923 = load i16, ptr %val.0.in.i922, align 2
  %192 = lshr i16 %val.0.i923, 8
  %conv33.i924 = zext i16 %192 to i32
  %conv36.i925 = trunc i16 %val.0.i923 to i8
  br label %mt7603_mac_tx_rate_val.exit946

mt7603_mac_tx_rate_val.exit946:                   ; preds = %if.else.i926, %if.then.i911
  %rate_idx.0.i927 = phi i8 [ %conv36.i925, %if.else.i926 ], [ %176, %if.then.i911 ]
  %phy.0.i929 = phi i32 [ %conv33.i924, %if.else.i926 ], [ %spec.store.select.i908, %if.then.i911 ]
  %193 = and i8 %rate_idx.0.i927, 63
  %and56.i940 = zext i8 %193 to i32
  %conv80.i941 = shl nuw nsw i32 %phy.0.i929, 6
  %and82.i943 = and i32 %conv80.i941, 448
  %or.i944 = or i32 %and82.i943, %and56.i940
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bw.4)
  %tobool188.not962 = icmp eq i8 %bw.4, 0
  %tobool188.not = select i1 %tobool181.not, i1 true, i1 %tobool188.not962
  %spec.select = select i1 %tobool188.not, i32 %spec.select959, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool199.not = icmp eq i32 %spec.select, 0
  %sub202 = shl nuw nsw i32 %spec.select, 11
  %sub202.op = add nuw nsw i32 %sub202, 14336
  %sub202.op.op = and i32 %sub202.op, 14336
  %and236 = select i1 %tobool199.not, i32 14336, i32 %sub202.op.op
  %or237 = or i32 %or169, %and236
  %194 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %195, i32 0, i32 1
  %196 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %wr, align 4
  tail call void %197(ptr noundef %dev, i32 noundef 172544, i32 noundef %or237) #7
  %198 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %bus, align 4
  %wr240 = getelementptr inbounds %struct.mt76_bus_ops, ptr %199, i32 0, i32 1
  %200 = ptrtoint ptr %wr240 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %wr240, align 4
  %conv293 = zext i16 %or.i to i32
  %shl294 = shl nuw nsw i32 %conv293, 12
  %202 = and i16 %probe_val.0, 4095
  %and266 = zext i16 %202 to i32
  %or296 = or i32 %shl294, %and266
  %shl324 = shl i32 %or.i848, 24
  %or326 = or i32 %shl324, %or296
  tail call void %201(ptr noundef %dev, i32 noundef 172548, i32 noundef %or326) #7
  %203 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %bus, align 4
  %wr328 = getelementptr inbounds %struct.mt76_bus_ops, ptr %204, i32 0, i32 1
  %205 = ptrtoint ptr %wr328 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %wr328, align 4
  %207 = lshr i32 %and82.i847, 8
  %shl388 = shl nuw nsw i32 %or.i848, 4
  %or390 = or i32 %207, %shl388
  %shl418 = shl nuw nsw i32 %or.i896, 16
  %or420 = or i32 %shl418, %or390
  %shl448 = shl i32 %and56.i892, 28
  %or450 = or i32 %or420, %shl448
  tail call void %206(ptr noundef %dev, i32 noundef 172552, i32 noundef %or450) #7
  %208 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %bus, align 4
  %wr452 = getelementptr inbounds %struct.mt76_bus_ops, ptr %209, i32 0, i32 1
  %210 = ptrtoint ptr %wr452 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %wr452, align 4
  %212 = lshr i32 %or.i896, 4
  %shl513 = shl nuw nsw i32 %or.i944, 8
  %or515 = or i32 %shl513, %212
  %shl543 = shl nuw nsw i32 %or.i944, 20
  %or545 = or i32 %or515, %shl543
  tail call void %211(ptr noundef %dev, i32 noundef 172556, i32 noundef %or545) #7
  %213 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %214, i32 0, i32 2
  %215 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %rmw, align 4
  %call547 = tail call i32 %216(ptr noundef %dev, i32 noundef 147472, i32 noundef 0, i32 noundef 3) #7
  %217 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %bus, align 4
  %219 = ptrtoint ptr %218 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %218, align 4
  %call550 = tail call i32 %220(ptr noundef %dev, i32 noundef 147480) #7
  %and551 = and i32 %call550, -2
  %or554 = or i32 %and551, %14
  %221 = ptrtoint ptr %rate_set_tsf to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %or554, ptr %rate_set_tsf, align 4
  %222 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %bus, align 4
  %wr557 = getelementptr inbounds %struct.mt76_bus_ops, ptr %223, i32 0, i32 1
  %224 = ptrtoint ptr %wr557 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %wr557, align 4
  %and581 = and i32 %conv, 255
  %or583 = or i32 %and581, 24576
  tail call void %225(ptr noundef %dev, i32 noundef 143360, i32 noundef %or583) #7
  %tx_info = getelementptr inbounds %struct.mt76_wcid, ptr %sta, i32 0, i32 13
  %226 = ptrtoint ptr %tx_info to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %tx_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %227)
  %tobool586.not = icmp sgt i32 %227, -1
  br i1 %tobool586.not, label %if.then587, label %mt7603_mac_tx_rate_val.exit946.if.end589_crit_edge

mt7603_mac_tx_rate_val.exit946.if.end589_crit_edge: ; preds = %mt7603_mac_tx_rate_val.exit946
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end589

if.then587:                                       ; preds = %mt7603_mac_tx_rate_val.exit946
  call void @__sanitizer_cov_trace_pc() #9
  %call588 = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef 143360, i32 noundef 65536, i32 noundef 0, i32 noundef 5000) #7
  br label %if.end589

if.end589:                                        ; preds = %if.then587, %mt7603_mac_tx_rate_val.exit946.if.end589_crit_edge
  %mul = shl i8 %3, 2
  %rate_count = getelementptr inbounds %struct.mt7603_sta, ptr %sta, i32 0, i32 8
  %228 = ptrtoint ptr %rate_count to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %mul, ptr %rate_count, align 4
  %229 = ptrtoint ptr %tx_info to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %tx_info, align 4
  %or593 = or i32 %230, -2147483648
  store i32 %or593, ptr %tx_info, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end589, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7603_wtbl_set_key(ptr noundef %dev, i32 noundef %wcid, ptr noundef readonly %key) local_unnamed_addr #0 align 64 {
entry:
  %key_data = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mul.i = shl i32 %wcid, 6
  %add.i = add i32 %mul.i, 270336
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %key_data) #7
  %0 = getelementptr inbounds [32 x i8], ptr %key_data, i32 0, i32 16
  %1 = getelementptr inbounds [32 x i8], ptr %key_data, i32 0, i32 24
  %2 = call ptr @memset(ptr %key_data, i32 0, i32 32)
  %tobool.not.i = icmp eq ptr %key, null
  br i1 %tobool.not.i, label %entry.do.end26_crit_edge, label %if.end.i

entry.do.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end26

if.end.i:                                         ; preds = %entry
  %keylen.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 7
  %3 = ptrtoint ptr %keylen.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %keylen.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %4)
  %cmp.i = icmp ugt i8 %4, 32
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %conv.i = zext i8 %4 to i32
  %key4.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %5 = call ptr @memcpy(ptr %key_data, ptr %key4.i, i32 %conv.i)
  %cipher.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %6 = ptrtoint ptr %cipher.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cipher.i, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %7, label %if.end3.i.cleanup_crit_edge [
    i32 1027073, label %if.end3.i.if.then6_crit_edge
    i32 1027077, label %sw.bb7.i
    i32 1027074, label %sw.bb8.i
    i32 1027076, label %if.end3.i.do.end26_crit_edge
  ]

if.end3.i.do.end26_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end26

if.end3.i.if.then6_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb7.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

sw.bb8.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr11.i = getelementptr %struct.ieee80211_key_conf, ptr %key, i32 1, i32 8
  %9 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %add.ptr11.i, align 1
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %10, ptr %0, align 1
  %add.ptr15.i = getelementptr i8, ptr %key4.i, i32 16
  %12 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %add.ptr15.i, align 1
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %1, align 1
  br label %do.end26

if.then6:                                         ; preds = %sw.bb7.i, %if.end3.i.if.then6_crit_edge
  %retval.0.i.ph.ph = phi i32 [ 40, %sw.bb7.i ], [ 8, %if.end3.i.if.then6_crit_edge ]
  %keyidx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %15 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %keyidx, align 1
  %conv = sext i8 %16 to i32
  %mul = shl nsw i32 %conv, 4
  %add = add i32 %mul, %add.i
  br label %do.end26

do.end26:                                         ; preds = %if.then6, %sw.bb8.i, %if.end3.i.do.end26_crit_edge, %entry.do.end26_crit_edge
  %retval.0.i142 = phi i32 [ %retval.0.i.ph.ph, %if.then6 ], [ 0, %entry.do.end26_crit_edge ], [ 16, %sw.bb8.i ], [ 32, %if.end3.i.do.end26_crit_edge ]
  %key_len.0 = phi i32 [ 16, %if.then6 ], [ 32, %entry.do.end26_crit_edge ], [ 32, %sw.bb8.i ], [ 32, %if.end3.i.do.end26_crit_edge ]
  %addr.0 = phi i32 [ %add, %if.then6 ], [ %add.i, %entry.do.end26_crit_edge ], [ %add.i, %sw.bb8.i ], [ %add.i, %if.end3.i.do.end26_crit_edge ]
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %17 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus, align 4
  %write_copy = getelementptr inbounds %struct.mt76_bus_ops, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %write_copy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_copy, align 4
  call void %20(ptr noundef %dev, i32 noundef %addr.0, ptr noundef nonnull %key_data, i32 noundef %key_len.0) #7
  %mul.i136 = shl i32 %wcid, 5
  %add.i137 = add i32 %mul.i136, 163840
  %21 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rmw, align 4
  %add11 = add i32 %mul.i136, 163848
  %and27 = and i32 %retval.0.i142, 120
  %call28 = call i32 %24(ptr noundef %dev, i32 noundef %add11, i32 noundef 120, i32 noundef %and27) #7
  br i1 %tobool.not.i, label %do.end26.if.end63_crit_edge, label %do.end56

do.end26.if.end63_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

do.end56:                                         ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #9
  %keyidx40 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %25 = ptrtoint ptr %keyidx40 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %keyidx40, align 1
  %27 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus, align 4
  %rmw32 = getelementptr inbounds %struct.mt76_bus_ops, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %rmw32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmw32, align 4
  %conv59 = sext i8 %26 to i32
  %shl60 = shl nsw i32 %conv59, 23
  %and61 = and i32 %shl60, 25165824
  %call62 = call i32 %30(ptr noundef %dev, i32 noundef %add.i137, i32 noundef 25165824, i32 noundef %and61) #7
  br label %if.end63

if.end63:                                         ; preds = %do.end56, %do.end26.if.end63_crit_edge
  %shl100 = phi i32 [ 67108864, %do.end56 ], [ 0, %do.end26.if.end63_crit_edge ]
  %31 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus, align 4
  %rmw65 = getelementptr inbounds %struct.mt76_bus_ops, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %rmw65 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmw65, align 4
  %call102 = call i32 %34(ptr noundef %dev, i32 noundef %add.i137, i32 noundef 67108864, i32 noundef %shl100) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %if.end3.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end63 ], [ -95, %if.end3.i.cleanup_crit_edge ], [ -95, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %key_data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7603_tx_prepare_skb(ptr noundef %mdev, ptr nocapture noundef %txwi_ptr, i32 noundef %qid, ptr noundef %wcid, ptr noundef %sta, ptr nocapture noundef readonly %tx_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %skb = getelementptr inbounds %struct.mt76_tx_info, ptr %tx_info, i32 0, i32 1
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %2 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %hw_key = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  %3 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_key, align 4
  %tobool.not = icmp eq ptr %wcid, null
  %global_sta = getelementptr inbounds %struct.mt7603_dev, ptr %mdev, i32 0, i32 5
  %spec.select = select i1 %tobool.not, ptr %global_sta, ptr %wcid
  %tobool5.not = icmp eq ptr %sta, null
  br i1 %tobool5.not, label %entry.if.end14_crit_edge, label %if.then6

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then6:                                         ; preds = %entry
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %5 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cb.i, align 8
  %and = and i32 %6, 131080
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %if.then6.if.then11_crit_edge

if.then6.if.then11_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11

lor.lhs.false:                                    ; preds = %if.then6
  %flags8 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 32
  %7 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags8, align 8
  %and9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %lor.lhs.false.if.end12_crit_edge, label %lor.lhs.false.if.then11_crit_edge

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11

lor.lhs.false.if.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %if.then6.if.then11_crit_edge
  tail call void @mt7603_wtbl_set_ps(ptr noundef %mdev, ptr noundef %drv_priv, i1 noundef zeroext false)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %lor.lhs.false.if.end12_crit_edge
  %9 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %skb, align 4
  tail call void @mt76_tx_check_agg_ssn(ptr noundef nonnull %sta, ptr noundef %10) #7
  br label %if.end14

if.end14:                                         ; preds = %if.end12, %entry.if.end14_crit_edge
  %msta.0 = phi ptr [ %drv_priv, %if.end12 ], [ %wcid, %entry.if.end14_crit_edge ]
  %11 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skb, align 4
  %call16 = tail call i32 @mt76_tx_status_skb_add(ptr noundef %mdev, ptr noundef %spec.select, ptr noundef %12) #7
  %13 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cb.i, align 8
  %and18 = and i32 %14, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end14.if.end24_crit_edge, label %if.then20

if.end14.if.end24_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %lock = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  %rates21 = getelementptr inbounds %struct.mt7603_sta, ptr %msta.0, i32 0, i32 5
  tail call void @mt7603_wtbl_set_rates(ptr noundef %mdev, ptr noundef %msta.0, ptr noundef %2, ptr noundef %rates21)
  %rate_probe = getelementptr inbounds %struct.mt7603_sta, ptr %msta.0, i32 0, i32 10
  %15 = ptrtoint ptr %rate_probe to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %rate_probe, align 2
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.end14.if.end24_crit_edge
  %16 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %skb, align 4
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 3
  %18 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 3, i32 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 19
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i, align 4
  %vif2.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 3, i32 24
  %21 = ptrtoint ptr %vif2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vif2.i, align 8
  %arrayidx3.i = getelementptr %struct.mt76_phy, ptr %mdev, i32 0, i32 4, i32 %qid
  %23 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx3.i, align 4
  %call4.i = tail call i32 @ieee80211_get_hdrlen_from_skb(ptr noundef %17) #7
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %20, align 2
  %27 = lshr i16 %26, 8
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end24.if.end10.i_crit_edge, label %if.then.i

if.end24.if.end10.i_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %idx.i = getelementptr inbounds %struct.ieee80211_vif, ptr %22, i32 1, i32 1, i32 62, i32 0, i32 1
  %28 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool5.not.i = icmp ne i8 %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %qid)
  %cmp.i = icmp ugt i32 %qid, 4
  %or.cond.i = and i1 %cmp.i, %tobool5.not.i
  %add.i = add i8 %29, 16
  %spec.select23.i = select i1 %or.cond.i, i8 %add.i, i8 %29
  %phi.cast = zext i8 %spec.select23.i to i32
  %phi.bo = shl i32 %phi.cast, 26
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then.i, %if.end24.if.end10.i_crit_edge
  %vif_idx.0.i = phi i32 [ 0, %if.end24.if.end10.i_crit_edge ], [ %phi.bo, %if.then.i ]
  br i1 %tobool5.not, label %if.end10.i.if.end16.i_crit_edge, label %if.then12.i

if.end10.i.if.end16.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %rate_count.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 15
  %30 = ptrtoint ptr %rate_count.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %rate_count.i, align 4
  %conv15.i = zext i8 %31 to i32
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then12.i, %if.end10.i.if.end16.i_crit_edge
  %tx_count.0.i = phi i32 [ %conv15.i, %if.then12.i ], [ 8, %if.end10.i.if.end16.i_crit_edge ]
  %tobool17.not.i = icmp eq ptr %spec.select, null
  br i1 %tobool17.not.i, label %if.end16.i.if.end21.i_crit_edge, label %if.then18.i

if.end16.i.if.end21.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

if.then18.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %idx19.i = getelementptr inbounds %struct.mt76_wcid, ptr %spec.select, i32 0, i32 6
  %32 = ptrtoint ptr %idx19.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %idx19.i, align 2
  %34 = and i16 %33, 255
  %phi.bo49 = zext i16 %34 to i32
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then18.i, %if.end16.i.if.end21.i_crit_edge
  %wlan_idx.0.i = phi i32 [ %phi.bo49, %if.then18.i ], [ 127, %if.end16.i.if.end21.i_crit_edge ]
  %35 = trunc i16 %27 to i8
  %36 = lshr i8 %35, 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 6
  %37 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len.i, align 4
  %add32.i = add i32 %38, 32
  %hw_idx.i = getelementptr inbounds %struct.mt76_queue, ptr %24, i32 0, i32 14
  %39 = ptrtoint ptr %hw_idx.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %hw_idx.i, align 1
  %and49.i = and i32 %add32.i, 65535
  %conv75.i = zext i8 %40 to i32
  %shl76.i = shl i32 %conv75.i, 27
  %and77.i = and i32 %shl76.i, 2013265920
  %or.i = or i32 %and77.i, %and49.i
  %41 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %42 = ptrtoint ptr %txwi_ptr to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %txwi_ptr, align 4
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 15, i32 0, i32 6
  %43 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %priority.i, align 4
  %div.i = sdiv i32 %call4.i, 2
  %and132.i = shl i32 %44, 20
  %and134.i = and i32 %and132.i, 7340032
  %or105.i = or i32 %and134.i, %vif_idx.0.i
  %shl177.i = shl i32 %div.i, 8
  %and178.i = and i32 %shl177.i, 7936
  %or152.i = or i32 %or105.i, %and178.i
  %or179.i = or i32 %or152.i, %wlan_idx.0.i
  %tobool212.not.i = icmp eq ptr %4, null
  %shl239.i = select i1 %tobool212.not.i, i32 0, i32 8388608
  %or204.i = or i32 %or179.i, %shl239.i
  %or241.i = or i32 %or204.i, 49152
  %45 = tail call i32 @llvm.bswap.i32(i32 %or241.i) #7
  %arrayidx242.i = getelementptr i32, ptr %txwi_ptr, i32 1
  %46 = ptrtoint ptr %arrayidx242.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx242.i, align 4
  %47 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cb.i.i, align 8
  %and243.i = and i32 %48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and243.i)
  %tobool244.not.i = icmp eq i32 %and243.i, 0
  br i1 %tobool244.not.i, label %if.end21.i.do.body255.i_crit_edge, label %if.then245.i

if.end21.i.do.body255.i_crit_edge:                ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body255.i

if.then245.i:                                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  %or247.i = or i32 %45, 2048
  %49 = ptrtoint ptr %arrayidx242.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or247.i, ptr %arrayidx242.i, align 4
  br label %do.body255.i

do.body255.i:                                     ; preds = %if.then245.i, %if.end21.i.do.body255.i_crit_edge
  %50 = shl i8 %35, 2
  %51 = and i8 %50, 48
  %or3011.i = or i8 %51, %36
  %or301.i = zext i8 %or3011.i to i32
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %20, i32 0, i32 2
  %52 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %addr1.i, align 4
  %54 = lshr i32 %53, 14
  %55 = and i32 %54, 1024
  %or323.i = or i32 %55, %or301.i
  %56 = tail call i32 @llvm.bswap.i32(i32 %or323.i) #7
  %arrayidx324.i = getelementptr i32, ptr %txwi_ptr, i32 2
  %57 = ptrtoint ptr %arrayidx324.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %arrayidx324.i, align 4
  %58 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cb.i.i, align 8
  %and326.i = and i32 %59, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and326.i)
  %tobool327.not.i = icmp eq i32 %and326.i, 0
  br i1 %tobool327.not.i, label %if.then328.i, label %do.body255.i.if.end331.i_crit_edge

do.body255.i.if.end331.i_crit_edge:               ; preds = %do.body255.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end331.i

if.then328.i:                                     ; preds = %do.body255.i
  call void @__sanitizer_cov_trace_pc() #9
  %or330.i = or i32 %56, 32
  %60 = ptrtoint ptr %arrayidx324.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or330.i, ptr %arrayidx324.i, align 4
  br label %if.end331.i

if.end331.i:                                      ; preds = %if.then328.i, %do.body255.i.if.end331.i_crit_edge
  %arrayidx332.i = getelementptr i32, ptr %txwi_ptr, i32 4
  %61 = ptrtoint ptr %arrayidx332.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %arrayidx332.i, align 4
  %and356.i = and i32 %call16, 255
  %or357.i = or i32 %and356.i, 9216
  %62 = tail call i32 @llvm.bswap.i32(i32 %or357.i) #7
  %arrayidx358.i = getelementptr i32, ptr %txwi_ptr, i32 5
  %63 = ptrtoint ptr %arrayidx358.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %arrayidx358.i, align 4
  %arrayidx359.i = getelementptr i32, ptr %txwi_ptr, i32 6
  %64 = ptrtoint ptr %arrayidx359.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %arrayidx359.i, align 4
  %65 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %66)
  %cmp362.i = icmp sgt i8 %66, -1
  br i1 %cmp362.i, label %land.lhs.true364.i, label %if.end331.i.do.end483.i_crit_edge

if.end331.i.do.end483.i_crit_edge:                ; preds = %if.end331.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end483.i

land.lhs.true364.i:                               ; preds = %if.end331.i
  %count.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 3, i32 9
  %67 = ptrtoint ptr %count.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %bf.load.i = load i16, ptr %count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %bf.load.i)
  %tobool366.not.i = icmp ult i16 %bf.load.i, 2048
  br i1 %tobool366.not.i, label %land.lhs.true364.i.do.end483.i_crit_edge, label %land.lhs.true367.i

land.lhs.true364.i.do.end483.i_crit_edge:         ; preds = %land.lhs.true364.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end483.i

land.lhs.true367.i:                               ; preds = %land.lhs.true364.i
  %68 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cb.i.i, align 8
  %and369.i = and i32 %69, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and369.i)
  %tobool370.not.i = icmp eq i32 %and369.i, 0
  br i1 %tobool370.not.i, label %if.then371.i, label %land.lhs.true367.i.do.end483.i_crit_edge

land.lhs.true367.i.do.end483.i_crit_edge:         ; preds = %land.lhs.true367.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end483.i

if.then371.i:                                     ; preds = %land.lhs.true367.i
  %and373.i = and i32 %69, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and373.i)
  %tobool374.i = icmp ne i32 %and373.i, 0
  %bf.clear.i.i = and i16 %bf.load.i, 2047
  %conv.i.i = zext i16 %bf.clear.i.i to i32
  %and.i.i = and i32 %conv.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then371.i
  call void @__sanitizer_cov_trace_pc() #9
  %and8.i.i = and i32 %conv.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  %spec.store.select.i.i = select i1 %tobool9.not.i.i, i8 2, i8 3
  %70 = shl i16 %bf.load.i, 3
  %71 = and i16 %70, 256
  %72 = or i16 %71, 1024
  %phi.bo.i = zext i16 %72 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %66)
  %phi.cmp = icmp ult i8 %66, 8
  br label %do.end400.i

if.else.i.i:                                      ; preds = %if.then371.i
  call void @__sanitizer_cov_trace_pc() #9
  %chandef.i.i = getelementptr inbounds %struct.mt76_phy, ptr %mdev, i32 0, i32 5
  %73 = ptrtoint ptr %chandef.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %chandef.i.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 4
  %77 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mdev, align 128
  %wiphy.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %wiphy.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %wiphy.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.wiphy, ptr %80, i32 0, i32 53, i32 %76
  %81 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx.i.i, align 4
  %bitrates.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %bitrates.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bitrates.i.i, align 4
  %idxprom.i27.i = zext i8 %66 to i32
  %and26.i.i = and i32 %conv.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i.i)
  %tobool27.not.i.i = icmp eq i32 %and26.i.i, 0
  %hw_value_short.i.i = getelementptr %struct.ieee80211_rate, ptr %84, i32 %idxprom.i27.i, i32 3
  %hw_value.i.i = getelementptr %struct.ieee80211_rate, ptr %84, i32 %idxprom.i27.i, i32 2
  %val.0.in.i.i = select i1 %tobool27.not.i.i, ptr %hw_value.i.i, ptr %hw_value_short.i.i
  %85 = ptrtoint ptr %val.0.in.i.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %val.0.i.i = load i16, ptr %val.0.in.i.i, align 2
  %86 = lshr i16 %val.0.i.i, 8
  %conv33.i.i = trunc i16 %86 to i8
  %conv36.i.i = trunc i16 %val.0.i.i to i8
  br label %do.end400.i

do.end400.i:                                      ; preds = %if.else.i.i, %if.then.i.i
  %bw.0.i = phi i32 [ 1024, %if.else.i.i ], [ %phi.bo.i, %if.then.i.i ]
  %rate_idx.0.i.i = phi i8 [ %conv36.i.i, %if.else.i.i ], [ %66, %if.then.i.i ]
  %nss.0.shrunk.i.i = phi i1 [ true, %if.else.i.i ], [ %phi.cmp, %if.then.i.i ]
  %phy.0.i.i = phi i8 [ %conv33.i.i, %if.else.i.i ], [ %spec.store.select.i.i, %if.then.i.i ]
  %87 = ptrtoint ptr %arrayidx324.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx324.i, align 4
  %or378.i = or i32 %88, 128
  store i32 %or378.i, ptr %arrayidx324.i, align 4
  %or.cond110.i.i = select i1 %tobool374.i, i1 %nss.0.shrunk.i.i, i1 false
  %conv80.i.i = zext i8 %phy.0.i.i to i16
  %shl81.i.i = shl nuw nsw i16 %conv80.i.i, 6
  %and82.i.i = and i16 %shl81.i.i, 448
  %89 = and i8 %rate_idx.0.i.i, 63
  %and56.i.i = zext i8 %89 to i16
  %or.i.i = or i16 %and82.i.i, %and56.i.i
  %90 = or i16 %or.i.i, 2048
  %rateval.0.i.i = select i1 %or.cond110.i.i, i16 %90, i16 %or.i.i
  %conv429.i = zext i16 %rateval.0.i.i to i32
  %shl430.i = shl nuw nsw i32 %conv429.i, 18
  %and431.i = and i32 %shl430.i, 1073479680
  %or432.i = or i32 %and431.i, %bw.0.i
  %91 = tail call i32 @llvm.bswap.i32(i32 %or432.i) #7
  %92 = ptrtoint ptr %arrayidx359.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %arrayidx359.i, align 4
  %93 = ptrtoint ptr %count.i to i32
  call void @__asan_loadN_noabort(i32 %93, i32 2)
  %bf.load436.i = load i16, ptr %count.i, align 1
  %94 = and i16 %bf.load436.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %94)
  %tobool439.not.i = icmp eq i16 %94, 0
  br i1 %tobool439.not.i, label %do.end400.i.if.end443.i_crit_edge, label %if.then440.i

do.end400.i.if.end443.i_crit_edge:                ; preds = %do.end400.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end443.i

if.then440.i:                                     ; preds = %do.end400.i
  call void @__sanitizer_cov_trace_pc() #9
  %or442.i = or i32 %91, 128
  %95 = ptrtoint ptr %arrayidx359.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %or442.i, ptr %arrayidx359.i, align 4
  br label %if.end443.i

if.end443.i:                                      ; preds = %if.then440.i, %do.end400.i.if.end443.i_crit_edge
  %96 = ptrtoint ptr %count.i to i32
  call void @__asan_loadN_noabort(i32 %96, i32 2)
  %bf.load445.i = load i16, ptr %count.i, align 1
  %97 = and i16 %bf.load445.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %tobool449.not.i = icmp eq i16 %97, 0
  br i1 %tobool449.not.i, label %if.then450.i, label %if.end443.i.if.end453.i_crit_edge

if.end443.i.if.end453.i_crit_edge:                ; preds = %if.end443.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end453.i

if.then450.i:                                     ; preds = %if.end443.i
  call void @__sanitizer_cov_trace_pc() #9
  %or452.i = or i32 %88, 160
  %98 = ptrtoint ptr %arrayidx324.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %or452.i, ptr %arrayidx324.i, align 4
  br label %if.end453.i

if.end453.i:                                      ; preds = %if.then450.i, %if.end443.i.if.end453.i_crit_edge
  %99 = ptrtoint ptr %count.i to i32
  call void @__asan_loadN_noabort(i32 %99, i32 2)
  %bf.load455.i = load i16, ptr %count.i, align 1
  %bf.lshr456.i = lshr i16 %bf.load455.i, 11
  %conv457.i = zext i16 %bf.lshr456.i to i32
  br label %do.end483.i

do.end483.i:                                      ; preds = %if.end453.i, %land.lhs.true367.i.do.end483.i_crit_edge, %land.lhs.true364.i.do.end483.i_crit_edge, %if.end331.i.do.end483.i_crit_edge
  %tx_count.1.i = phi i32 [ %tx_count.0.i, %land.lhs.true367.i.do.end483.i_crit_edge ], [ %conv457.i, %if.end453.i ], [ %tx_count.0.i, %land.lhs.true364.i.do.end483.i_crit_edge ], [ %tx_count.0.i, %if.end331.i.do.end483.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %qid)
  %cmp459.i = icmp ugt i32 %qid, 4
  %tx_count.1.i.op = shl nuw nsw i32 %tx_count.1.i, 11
  %tx_count.1.i.op.op = and i32 %tx_count.1.i.op, 63488
  %and486.i = select i1 %cmp459.i, i32 63488, i32 %tx_count.1.i.op.op
  %or487.i = or i32 %and486.i, -2147483648
  %100 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %20, align 2
  %102 = and i16 %101, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %102)
  %cmp.i24.i = icmp eq i16 %102, -30720
  br i1 %cmp.i24.i, label %if.then490.i, label %if.else491.i

if.then490.i:                                     ; preds = %do.end483.i
  call void @__sanitizer_cov_trace_pc() #9
  %seq_ctrl.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %20, i32 0, i32 5
  %103 = ptrtoint ptr %seq_ctrl.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %seq_ctrl.i, align 2
  %105 = tail call i16 @llvm.bswap.i16(i16 %104) #7
  br label %do.body505.i

if.else491.i:                                     ; preds = %do.end483.i
  %106 = and i16 %101, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31744, i16 %106)
  %cmp.i25.i = icmp eq i16 %106, -31744
  br i1 %cmp.i25.i, label %if.then494.i, label %if.else491.i.do.body505.i_crit_edge

if.else491.i.do.body505.i_crit_edge:              ; preds = %if.else491.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body505.i

if.then494.i:                                     ; preds = %if.else491.i
  call void @__sanitizer_cov_trace_pc() #9
  %start_seq_num.i = getelementptr inbounds %struct.ieee80211_bar, ptr %20, i32 0, i32 5
  %107 = ptrtoint ptr %start_seq_num.i to i32
  call void @__asan_loadN_noabort(i32 %107, i32 2)
  %108 = load i16, ptr %start_seq_num.i, align 1
  %109 = tail call i16 @llvm.bswap.i16(i16 %108) #7
  br label %do.body505.i

do.body505.i:                                     ; preds = %if.then494.i, %if.else491.i.do.body505.i_crit_edge, %if.then490.i
  %val.0.i = phi i32 [ %or487.i, %if.then490.i ], [ %or487.i, %if.then494.i ], [ %and486.i, %if.else491.i.do.body505.i_crit_edge ]
  %seqno.0.i = phi i16 [ %105, %if.then490.i ], [ %109, %if.then494.i ], [ 0, %if.else491.i.do.body505.i_crit_edge ]
  %110 = lshr i16 %seqno.0.i, 4
  %111 = zext i16 %110 to i32
  %shl527.i = shl nuw nsw i32 %111, 16
  %or529.i = or i32 %shl527.i, %val.0.i
  %112 = tail call i32 @llvm.bswap.i32(i32 %or529.i) #7
  %arrayidx530.i = getelementptr i32, ptr %txwi_ptr, i32 3
  %113 = ptrtoint ptr %arrayidx530.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %arrayidx530.i, align 4
  br i1 %tobool212.not.i, label %do.body505.i.mt7603_mac_write_txwi.exit_crit_edge, label %if.then532.i

do.body505.i.mt7603_mac_write_txwi.exit_crit_edge: ; preds = %do.body505.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7603_mac_write_txwi.exit

if.then532.i:                                     ; preds = %do.body505.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %4, i32 noundef 8) #7
  %call.i2.i.i = tail call i64 @generic_atomic64_add_return(i64 noundef 1, ptr noundef nonnull %4) #7
  %114 = ptrtoint ptr %arrayidx530.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx530.i, align 4
  %or535.i = or i32 %115, 64
  store i32 %or535.i, ptr %arrayidx530.i, align 4
  %conv537.i = trunc i64 %call.i2.i.i to i32
  %116 = tail call i32 @llvm.bswap.i32(i32 %conv537.i) #7
  %117 = ptrtoint ptr %arrayidx332.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %arrayidx332.i, align 4
  %shr546.i = lshr i64 %call.i2.i.i, 32
  %conv564.i = trunc i64 %shr546.i to i32
  %118 = tail call i32 @llvm.bswap.i32(i32 %conv564.i) #7
  %119 = lshr i32 %118, 16
  %120 = ptrtoint ptr %arrayidx358.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx358.i, align 4
  %or568.i = or i32 %121, %119
  store i32 %or568.i, ptr %arrayidx358.i, align 4
  br label %mt7603_mac_write_txwi.exit

mt7603_mac_write_txwi.exit:                       ; preds = %if.then532.i, %do.body505.i.mt7603_mac_write_txwi.exit_crit_edge
  %arrayidx570.i = getelementptr i32, ptr %txwi_ptr, i32 7
  %122 = ptrtoint ptr %arrayidx570.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %arrayidx570.i, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_tx_check_agg_ssn(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_tx_status_skb_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7603_mac_add_txs(ptr noundef %dev, ptr nocapture noundef readonly %data) local_unnamed_addr #0 align 64 {
entry:
  %status.i = alloca %struct.ieee80211_tx_status, align 4
  %list.i = alloca %struct.sk_buff_head, align 4
  %info = alloca %struct.ieee80211_tx_info, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %info) #7
  %0 = call ptr @memset(ptr %info, i32 0, i32 48)
  %arrayidx = getelementptr i32, ptr %data, i32 4
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %3 = and i32 %2, 12599040
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %shr = lshr exact i32 %4, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx13 = getelementptr i32, ptr %data, i32 3
  %5 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx13, align 4
  %conv35 = and i32 %6, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %conv35)
  %cmp36 = icmp ugt i32 %conv35, 127
  br i1 %cmp36, label %if.end.cleanup_crit_edge, label %if.end39

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end39:                                         ; preds = %if.end
  %7 = tail call i32 @llvm.read_register.i32(metadata !24) #7
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !35
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %if.end39.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end39.rcu_read_lock.exit_crit_edge:            ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end39
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end39.rcu_read_lock.exit_crit_edge
  %arrayidx45 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 37, i32 %conv35
  %11 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %arrayidx45, align 4
  %call = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end54_crit_edge

rcu_read_lock.exit.do.end54_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end54

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call47 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %land.lhs.true.do.end54_crit_edge, label %land.lhs.true49

land.lhs.true.do.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end54

land.lhs.true49:                                  ; preds = %land.lhs.true
  %.b106 = load i1, ptr @mt7603_mac_add_txs.__warned, align 1
  br i1 %.b106, label %land.lhs.true49.do.end54_crit_edge, label %if.then51

land.lhs.true49.do.end54_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end54

if.then51:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mt7603_mac_add_txs.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1269, ptr noundef nonnull @.str.1) #7
  br label %do.end54

do.end54:                                         ; preds = %if.then51, %land.lhs.true49.do.end54_crit_edge, %land.lhs.true.do.end54_crit_edge, %rcu_read_lock.exit.do.end54_crit_edge
  %tobool56.not = icmp eq ptr %12, null
  br i1 %tobool56.not, label %do.end54.out_crit_edge, label %wcid_to_sta.exit

do.end54.out_crit_edge:                           ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

wcid_to_sta.exit:                                 ; preds = %do.end54
  %sta.i = getelementptr inbounds %struct.mt76_wcid, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %sta.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i = load i8, ptr %sta.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool1.not.i = icmp sgt i8 %bf.load.i, -1
  %add.ptr.i = getelementptr i8, ptr %12, i32 -268
  %spec.select.i = select i1 %tobool1.not.i, ptr null, ptr %add.ptr.i
  %poll_list = getelementptr inbounds %struct.mt7603_sta, ptr %12, i32 0, i32 2
  %14 = ptrtoint ptr %poll_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %poll_list, align 4
  %cmp.i.not = icmp eq ptr %15, %poll_list
  br i1 %cmp.i.not, label %if.then63, label %wcid_to_sta.exit.if.end66_crit_edge

wcid_to_sta.exit.if.end66_crit_edge:              ; preds = %wcid_to_sta.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.then63:                                        ; preds = %wcid_to_sta.exit
  %sta_poll_lock = getelementptr inbounds %struct.mt7603_dev, ptr %dev, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_poll_lock) #7
  %sta_poll_list = getelementptr inbounds %struct.mt7603_dev, ptr %dev, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.mt7603_dev, ptr %dev, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %poll_list, ptr noundef %17, ptr noundef %sta_poll_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then63.list_add_tail.exit_crit_edge

if.then63.list_add_tail.exit_crit_edge:           ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %poll_list, ptr %prev.i, align 4
  %19 = ptrtoint ptr %poll_list to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %sta_poll_list, ptr %poll_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.mt7603_sta, ptr %12, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %poll_list, ptr %17, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then63.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_poll_lock) #7
  br label %if.end66

if.end66:                                         ; preds = %list_add_tail.exit, %wcid_to_sta.exit.if.end66_crit_edge
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %list.i) #7
  %22 = call ptr @memset(ptr %list.i, i32 255, i32 56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %4)
  %cmp.i109 = icmp ult i32 %4, 32768
  br i1 %cmp.i109, label %if.end66.mt7603_mac_add_txs_skb.exit_crit_edge, label %if.end.i

if.end66.mt7603_mac_add_txs_skb.exit_crit_edge:   ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7603_mac_add_txs_skb.exit

if.end.i:                                         ; preds = %if.end66
  %idx.i = getelementptr inbounds %struct.mt76_wcid, ptr %12, i32 0, i32 6
  %23 = ptrtoint ptr %idx.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %idx.i, align 2
  %conv.i110 = trunc i16 %24 to i8
  %conv1.i = trunc i32 %shr to i8
  tail call fastcc void @trace_mac_txdone(ptr noundef %dev, i8 noundef zeroext %conv.i110, i8 noundef zeroext %conv1.i) #7
  call void @mt76_tx_status_lock(ptr noundef %dev, ptr noundef nonnull %list.i) #7
  %call.i111 = call ptr @mt76_tx_status_skb_get(ptr noundef %dev, ptr noundef nonnull %12, i32 noundef %shr, ptr noundef nonnull %list.i) #7
  %tobool.i = icmp ne ptr %call.i111, null
  br i1 %tobool.i, label %if.then3.i, label %if.end.i.if.end11.i_crit_edge

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then3.i:                                       ; preds = %if.end.i
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i111, i32 0, i32 3
  %call5.i = call fastcc zeroext i1 @mt7603_fill_txs(ptr noundef %dev, ptr noundef nonnull %12, ptr noundef %cb.i.i, ptr noundef %data) #7
  br i1 %call5.i, label %if.then3.i.if.end10.i_crit_edge, label %if.then6.i

if.then3.i.if.end10.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then6.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = getelementptr inbounds %struct.sk_buff, ptr %call.i111, i32 0, i32 3, i32 8
  %count.i = getelementptr inbounds %struct.sk_buff, ptr %call.i111, i32 0, i32 3, i32 9
  %26 = ptrtoint ptr %count.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %bf.load.i112 = load i16, ptr %count.i, align 1
  %bf.clear.i = and i16 %bf.load.i112, 2047
  store i16 %bf.clear.i, ptr %count.i, align 1
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %25, align 8
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then6.i, %if.then3.i.if.end10.i_crit_edge
  call void @mt76_tx_status_skb_done(ptr noundef %dev, ptr noundef nonnull %call.i111, ptr noundef nonnull %list.i) #7
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end10.i, %if.end.i.if.end11.i_crit_edge
  call void @mt76_tx_status_unlock(ptr noundef %dev, ptr noundef nonnull %list.i) #7
  br label %mt7603_mac_add_txs_skb.exit

mt7603_mac_add_txs_skb.exit:                      ; preds = %if.end11.i, %if.end66.mt7603_mac_add_txs_skb.exit_crit_edge
  %retval.0.i113 = phi i1 [ %tobool.i, %if.end11.i ], [ false, %if.end66.mt7603_mac_add_txs_skb.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %list.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 122, i32 %conv35)
  %cmp72 = icmp ugt i32 %conv35, 122
  %or.cond = select i1 %retval.0.i113, i1 true, i1 %cmp72
  %tobool74.not = icmp eq ptr %spec.select.i, null
  %or.cond107 = select i1 %or.cond, i1 true, i1 %tobool74.not
  br i1 %or.cond107, label %mt7603_mac_add_txs_skb.exit.out_crit_edge, label %if.end76

mt7603_mac_add_txs_skb.exit.out_crit_edge:        ; preds = %mt7603_mac_add_txs_skb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end76:                                         ; preds = %mt7603_mac_add_txs_skb.exit
  %call77 = call fastcc zeroext i1 @mt7603_fill_txs(ptr noundef %dev, ptr noundef nonnull %12, ptr noundef nonnull %info, ptr noundef %data)
  br i1 %call77, label %if.then78, label %if.end76.out_crit_edge

if.end76.out_crit_edge:                           ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then78:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 128
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %status.i) #7
  %30 = getelementptr inbounds %struct.ieee80211_tx_status, ptr %status.i, i32 0, i32 1
  %31 = getelementptr inbounds %struct.ieee80211_tx_status, ptr %status.i, i32 0, i32 2
  %32 = getelementptr inbounds %struct.ieee80211_tx_status, ptr %status.i, i32 0, i32 3
  %33 = getelementptr inbounds %struct.ieee80211_tx_status, ptr %status.i, i32 0, i32 4
  %34 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %spec.select.i, ptr %status.i, align 4
  %35 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %info, ptr %30, align 4
  %36 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %31, align 4
  %37 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %32, align 4
  %38 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %33, align 4
  call void @ieee80211_tx_status_ext(ptr noundef %29, ptr noundef nonnull %status.i) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %status.i) #7
  br label %out

out:                                              ; preds = %if.then78, %if.end76.out_crit_edge, %mt7603_mac_add_txs_skb.exit.out_crit_edge, %do.end54.out_crit_edge
  %call.i114 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i114, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i117

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i117:                               ; preds = %out
  %call1.i115 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i115)
  %tobool.not.i116 = icmp eq i32 %call1.i115, 0
  br i1 %tobool.not.i116, label %land.lhs.true.i117.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i119

land.lhs.true.i117.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i119:                              ; preds = %land.lhs.true.i117
  %.b4.i118 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i118, label %land.lhs.true2.i119.rcu_read_unlock.exit_crit_edge, label %if.then.i120

land.lhs.true2.i119.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i119
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i120:                                     ; preds = %land.lhs.true2.i119
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i120, %land.lhs.true2.i119.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i117.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !36
  %39 = call i32 @llvm.read_register.i32(metadata !24) #7
  %and.i.i.i.i.i121 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i121 to ptr
  %preempt_count.i.i.i.i122 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i122, align 4
  %sub.i.i.i = add i32 %42, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i122, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %info) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mt7603_fill_txs(ptr noundef %dev, ptr noundef %sta, ptr nocapture noundef %info, ptr nocapture noundef readonly %txs_data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2
  %count1 = getelementptr inbounds %struct.ieee80211_tx_rate, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %count1 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %bf.load = load i16, ptr %count1, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %bf.load)
  %tobool.not = icmp ult i16 %bf.load, 2048
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %info, align 8
  %and = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp ne i32 %and, 0
  %arrayidx5 = getelementptr i32, ptr %txs_data, i32 4
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx5, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %and7 = and i32 %6, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8 = icmp ne i32 %and7, 0
  %7 = select i1 %tobool.not, i1 %tobool8, i1 false
  %and22 = lshr i32 %6, 24
  %shr = and i32 %and22, 31
  %shr40 = lshr i32 %6, 29
  %8 = ptrtoint ptr %txs_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %txs_data, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %and64 = and i32 %10, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  %or.cond = select i1 %7, i1 true, i1 %tobool65.not
  %and66 = and i32 %10, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  %or.cond385 = select i1 %or.cond, i1 %tobool67.not, i1 false
  br i1 %or.cond385, label %if.end69, label %entry.cleanup287_crit_edge

entry.cleanup287_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup287

if.end69:                                         ; preds = %entry
  %and60 = and i32 %10, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.then71, label %if.end69.if.end73_crit_edge

if.end69.if.end73_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then71:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %3, 512
  %11 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or, ptr %info, align 8
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.end69.if.end73_crit_edge
  %ampdu_len = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2, i32 1, i32 9
  %12 = ptrtoint ptr %ampdu_len to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %ampdu_len, align 1
  %13 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %info, align 8
  %and75 = lshr i32 %14, 9
  %15 = trunc i32 %and75 to i8
  %16 = and i8 %15, 1
  %ampdu_ack_len = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2, i32 1, i32 8
  %17 = ptrtoint ptr %ampdu_ack_len to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %ampdu_ack_len, align 8
  %.not = xor i1 %7, true
  %and82 = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  %or.cond393 = select i1 %.not, i1 %tobool83.not, i1 false
  br i1 %or.cond393, label %if.end73.if.end87_crit_edge, label %if.then84

if.end73.if.end87_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

if.then84:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  %or86 = or i32 %14, 1088
  %18 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or86, ptr %info, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.then84, %if.end73.if.end87_crit_edge
  %19 = trunc i32 %shr to i8
  %div.neg.lhs.trunc = add nsw i8 %19, -1
  %div.neg390 = sdiv i8 %div.neg.lhs.trunc, -2
  %div.neg.sext = sext i8 %div.neg390 to i32
  %sub88 = add nsw i32 %shr40, %div.neg.sext
  %20 = tail call i32 @llvm.smax.i32(i32 %sub88, i32 0)
  %brmerge = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %brmerge, label %do.end104, label %if.then95

if.then95:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  %conv96 = trunc i32 %and22 to i16
  %bf.shl = shl i16 %conv96, 11
  %bf.clear = and i16 %bf.load, 2047
  %bf.set = or i16 %bf.shl, %bf.clear
  %21 = ptrtoint ptr %count1 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 %bf.set, ptr %count1, align 1
  br label %out

do.end104:                                        ; preds = %if.end87
  %rate_set_tsf106 = getelementptr inbounds %struct.mt7603_sta, ptr %sta, i32 0, i32 7
  %22 = ptrtoint ptr %rate_set_tsf106 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %rate_set_tsf106, align 4
  %arrayidx123 = getelementptr i32, ptr %txs_data, i32 1
  %24 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx123, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %sub126 = sub i32 %26, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999, i32 %sub126)
  %cmp127 = icmp ugt i32 %sub126, 999999
  %27 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %28 = icmp ne i32 %27, 0
  %tobool135 = xor i1 %28, %cmp127
  %idxprom = zext i1 %tobool135 to i32
  %arrayidx138 = getelementptr %struct.mt7603_sta, ptr %sta, i32 0, i32 6, i32 %idxprom
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub88)
  %tobool139.not = icmp slt i32 %sub88, 1
  br i1 %tobool139.not, label %land.lhs.true140, label %do.end104.if.else_crit_edge

do.end104.if.else_crit_edge:                      ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true140:                                 ; preds = %do.end104
  %29 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx138, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %30)
  %cmp143 = icmp sgt i8 %30, -1
  br i1 %cmp143, label %if.then145, label %land.lhs.true140.if.else_crit_edge

land.lhs.true140.if.else_crit_edge:               ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then145:                                       ; preds = %land.lhs.true140
  %31 = call ptr @memcpy(ptr %0, ptr %arrayidx138, i32 3)
  %lock = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  %rate_probe = getelementptr inbounds %struct.mt7603_sta, ptr %sta, i32 0, i32 10
  %32 = ptrtoint ptr %rate_probe to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %rate_probe, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool149.not = icmp eq i8 %33, 0
  br i1 %tobool149.not, label %if.then145.if.end153_crit_edge, label %if.then150

if.then145.if.end153_crit_edge:                   ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end153

if.then150:                                       ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #9
  %rates151 = getelementptr inbounds %struct.mt7603_sta, ptr %sta, i32 0, i32 5
  tail call void @mt7603_wtbl_set_rates(ptr noundef %dev, ptr noundef %sta, ptr noundef null, ptr noundef %rates151)
  %34 = ptrtoint ptr %rate_probe to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %rate_probe, align 2
  br label %if.end153

if.end153:                                        ; preds = %if.then150, %if.then145.if.end153_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  br label %if.end160

if.else:                                          ; preds = %land.lhs.true140.if.else_crit_edge, %do.end104.if.else_crit_edge
  %div158391392394 = lshr i32 %20, 1
  %arrayidx159 = getelementptr %struct.mt7603_sta, ptr %sta, i32 0, i32 6, i32 %idxprom, i32 1, i32 %div158391392394
  %35 = call ptr @memcpy(ptr %0, ptr %arrayidx159, i32 3)
  br label %if.end160

if.end160:                                        ; preds = %if.else, %if.end153
  %36 = ptrtoint ptr %count1 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %bf.load164 = load i16, ptr %count1, align 1
  %bf.clear165 = and i16 %bf.load164, 2047
  store i16 %bf.clear165, ptr %count1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool167.not395 = icmp eq i32 %shr, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %shr40)
  %cmp169.not396 = icmp ugt i32 %20, %shr40
  %or.cond384397 = select i1 %tobool167.not395, i1 true, i1 %cmp169.not396
  br i1 %or.cond384397, label %if.end160.out_crit_edge, label %if.end160.for.body_crit_edge

if.end160.for.body_crit_edge:                     ; preds = %if.end160
  br label %for.body

if.end160.out_crit_edge:                          ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end160.for.body_crit_edge
  %i.0400 = phi i32 [ %i.1, %for.inc.for.body_crit_edge ], [ 0, %if.end160.for.body_crit_edge ]
  %idx.0399 = phi i32 [ %inc233, %for.inc.for.body_crit_edge ], [ %20, %if.end160.for.body_crit_edge ]
  %count.0398 = phi i32 [ %sub182, %for.inc.for.body_crit_edge ], [ %shr, %if.end160.for.body_crit_edge ]
  %div173.udiv403 = lshr i32 %idx.0399, 1
  %arrayidx174 = getelementptr %struct.mt7603_sta, ptr %sta, i32 0, i32 6, i32 %idxprom, i32 1, i32 %div173.udiv403
  %37 = tail call i32 @llvm.smin.i32(i32 %count.0398, i32 2)
  %sub182 = sub i32 %count.0398, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.0399)
  %tobool183.not = icmp eq i32 %idx.0399, 0
  br i1 %tobool183.not, label %for.body.for.inc_crit_edge, label %land.lhs.true184

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true184:                                 ; preds = %for.body
  %38 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx174, align 1
  %arrayidx188 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %0, i32 0, i32 %i.0400
  %40 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx188, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %41)
  %cmp191.not = icmp eq i8 %39, %41
  br i1 %cmp191.not, label %lor.lhs.false193, label %land.lhs.true184.if.then206_crit_edge

land.lhs.true184.if.then206_crit_edge:            ; preds = %land.lhs.true184
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then206

lor.lhs.false193:                                 ; preds = %land.lhs.true184
  %flags194 = getelementptr %struct.mt7603_sta, ptr %sta, i32 0, i32 6, i32 %idxprom, i32 1, i32 %div173.udiv403, i32 1
  %42 = ptrtoint ptr %flags194 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %bf.load195 = load i16, ptr %flags194, align 1
  %flags200 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %0, i32 0, i32 %i.0400, i32 1
  %43 = ptrtoint ptr %flags200 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %bf.load201 = load i16, ptr %flags200, align 1
  %44 = xor i16 %bf.load201, %bf.load195
  %45 = and i16 %44, 2047
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %cmp204.not = icmp eq i16 %45, 0
  br i1 %cmp204.not, label %lor.lhs.false193.for.inc_crit_edge, label %lor.lhs.false193.if.then206_crit_edge

lor.lhs.false193.if.then206_crit_edge:            ; preds = %lor.lhs.false193
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then206

lor.lhs.false193.for.inc_crit_edge:               ; preds = %lor.lhs.false193
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then206:                                       ; preds = %lor.lhs.false193.if.then206_crit_edge, %land.lhs.true184.if.then206_crit_edge
  %inc = add i32 %i.0400, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc)
  %cmp207 = icmp eq i32 %inc, 4
  br i1 %cmp207, label %if.then206.out_crit_edge, label %if.end210

if.then206.out_crit_edge:                         ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end210:                                        ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx212 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %0, i32 0, i32 %inc
  %46 = call ptr @memcpy(ptr %arrayidx212, ptr %arrayidx174, i32 3)
  %count215 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %0, i32 0, i32 %inc, i32 1
  %47 = ptrtoint ptr %count215 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %bf.load216 = load i16, ptr %count215, align 1
  %bf.clear217 = and i16 %bf.load216, 2047
  store i16 %bf.clear217, ptr %count215, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end210, %lor.lhs.false193.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %i.1 = phi i32 [ %inc, %if.end210 ], [ %i.0400, %lor.lhs.false193.for.inc_crit_edge ], [ %i.0400, %for.body.for.inc_crit_edge ]
  %count222 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %0, i32 0, i32 %i.1, i32 1
  %48 = ptrtoint ptr %count222 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %bf.load223 = load i16, ptr %count222, align 1
  %49 = trunc i32 %37 to i16
  %conv226382 = shl i16 %49, 11
  %bf.lshr224383 = add i16 %bf.load223, %conv226382
  store i16 %bf.lshr224383, ptr %count222, align 1
  %inc233 = add nuw nsw i32 %idx.0399, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub182)
  %tobool167.not = icmp eq i32 %sub182, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.0399, i32 %shr40)
  %cmp169.not = icmp uge i32 %idx.0399, %shr40
  %or.cond384 = select i1 %tobool167.not, i1 true, i1 %cmp169.not
  br i1 %or.cond384, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %if.then206.out_crit_edge, %if.end160.out_crit_edge, %if.then95
  %i.3 = phi i32 [ 0, %if.then95 ], [ 0, %if.end160.out_crit_edge ], [ %i.1, %for.inc.out_crit_edge ], [ 3, %if.then206.out_crit_edge ]
  %arrayidx235 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %0, i32 0, i32 %i.3
  %flags236 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %0, i32 0, i32 %i.3, i32 1
  %and256 = lshr i32 %10, 6
  %shr257 = and i32 %and256, 7
  %50 = zext i32 %shr257 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %shr257, label %out.cleanup287_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %out.sw.bb258_crit_edge
    i32 3, label %out.sw.bb268_crit_edge
    i32 2, label %out.sw.bb268_crit_edge404
  ]

out.sw.bb268_crit_edge404:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb268

out.sw.bb268_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb268

out.sw.bb258_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb258

out.cleanup287_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup287

sw.bb:                                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb258

sw.bb258:                                         ; preds = %sw.bb, %out.sw.bb258_crit_edge
  %cck.0.off0 = phi i1 [ false, %out.sw.bb258_crit_edge ], [ true, %sw.bb ]
  %chandef = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 5
  %51 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %chandef, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp259 = icmp eq i32 %54, 1
  %sband_5g = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 11
  %sband_2g = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 10
  %sband.0 = select i1 %cmp259, ptr %sband_5g, ptr %sband_2g
  %and266 = and i32 %10, 63
  %call = tail call i32 @mt76_get_rate(ptr noundef %dev, ptr noundef %sband.0, i32 noundef %and266, i1 noundef zeroext %cck.0.off0) #7
  br label %sw.epilog

sw.bb268:                                         ; preds = %out.sw.bb268_crit_edge, %out.sw.bb268_crit_edge404
  %55 = ptrtoint ptr %flags236 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %bf.load237 = load i16, ptr %flags236, align 1
  %bf.clear238 = and i16 %bf.load237, 2039
  %56 = or i16 %bf.clear238, 8
  %and270 = and i32 %10, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and270)
  %cmp271 = icmp ugt i32 %and270, 15
  br i1 %cmp271, label %sw.bb268.cleanup287_crit_edge, label %sw.bb268.sw.epilog_crit_edge

sw.bb268.sw.epilog_crit_edge:                     ; preds = %sw.bb268
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb268.cleanup287_crit_edge:                    ; preds = %sw.bb268
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup287

sw.epilog:                                        ; preds = %sw.bb268.sw.epilog_crit_edge, %sw.bb258
  %final_rate_flags.0 = phi i16 [ %56, %sw.bb268.sw.epilog_crit_edge ], [ 0, %sw.bb258 ]
  %final_rate.0 = phi i32 [ %and270, %sw.bb268.sw.epilog_crit_edge ], [ %call, %sw.bb258 ]
  %conv275 = trunc i32 %final_rate.0 to i8
  %57 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv275, ptr %arrayidx235, align 1
  %58 = ptrtoint ptr %flags236 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %bf.load283 = load i16, ptr %flags236, align 1
  %bf.value284 = and i16 %final_rate_flags.0, 2047
  %bf.clear285 = and i16 %bf.load283, -2048
  %bf.set286 = or i16 %bf.clear285, %bf.value284
  store i16 %bf.set286, ptr %flags236, align 1
  br label %cleanup287

cleanup287:                                       ; preds = %sw.epilog, %sw.bb268.cleanup287_crit_edge, %out.cleanup287_crit_edge, %entry.cleanup287_crit_edge
  %retval.0 = phi i1 [ true, %sw.epilog ], [ false, %entry.cleanup287_crit_edge ], [ false, %sw.bb268.cleanup287_crit_edge ], [ false, %out.cleanup287_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7603_tx_complete_skb(ptr noundef %mdev, ptr nocapture noundef readonly %e) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %e, align 4
  %2 = getelementptr inbounds %struct.mt76_queue_entry, ptr %e, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__dev_kfree_skb_any(ptr noundef %1, i32 noundef 1) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tx_hang_check = getelementptr inbounds %struct.mt7603_dev, ptr %mdev, i32 0, i32 29
  %5 = ptrtoint ptr %tx_hang_check to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %tx_hang_check, align 2
  %wcid = getelementptr inbounds %struct.mt76_queue_entry, ptr %e, i32 0, i32 4
  %6 = ptrtoint ptr %wcid to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %wcid, align 4
  tail call void @__mt76_tx_complete_skb(ptr noundef %mdev, i16 noundef zeroext %7, ptr noundef %1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7603_mac_dma_start(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 4
  %rmw.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmw.i, align 4
  %call.i = tail call i32 %3(ptr noundef %dev, i32 noundef 136320, i32 noundef 768, i32 noundef 0) #7
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 4
  %wr.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wr.i, align 4
  tail call void %7(ptr noundef %dev, i32 noundef 136448, i32 noundef -1) #7
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 4
  %rmw3.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %rmw3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmw3.i, align 4
  %call4.i = tail call i32 %11(ptr noundef %dev, i32 noundef 136304, i32 noundef 0, i32 noundef 1) #7
  %call.i15 = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef 16904, i32 noundef 10, i32 noundef 0, i32 noundef 1000) #7
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #7
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmw, align 4
  %call10 = tail call i32 %15(ptr noundef %dev, i32 noundef 16904, i32 noundef 0, i32 noundef 117) #7
  tail call void @mt76_set_irq_mask(ptr noundef %dev, i32 noundef 16900, i32 noundef 0, i32 noundef 1048563) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7603_mac_start(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmw, align 4
  %call = tail call i32 %3(ptr noundef %dev, i32 noundef 136320, i32 noundef 768, i32 noundef 0) #7
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wr, align 4
  tail call void %7(ptr noundef %dev, i32 noundef 136448, i32 noundef -1) #7
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 4
  %rmw3 = getelementptr inbounds %struct.mt76_bus_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %rmw3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmw3, align 4
  %call4 = tail call i32 %11(ptr noundef %dev, i32 noundef 136304, i32 noundef 0, i32 noundef 1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7603_mac_stop(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmw, align 4
  %call = tail call i32 %3(ptr noundef %dev, i32 noundef 136320, i32 noundef 0, i32 noundef 768) #7
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wr, align 4
  tail call void %7(ptr noundef %dev, i32 noundef 136448, i32 noundef 0) #7
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 4
  %rmw3 = getelementptr inbounds %struct.mt76_bus_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %rmw3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmw3, align 4
  %call4 = tail call i32 %11(ptr noundef %dev, i32 noundef 136304, i32 noundef 1, i32 noundef 0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7603_pse_client_reset(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mt7603_reg_map(ptr noundef %dev, i32 noundef -2146697104) #7
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmw, align 4
  %call1 = tail call i32 %3(ptr noundef %dev, i32 noundef %call, i32 noundef 3342336, i32 noundef 0) #7
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %rmw3 = getelementptr inbounds %struct.mt76_bus_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %rmw3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmw3, align 4
  %call4 = tail call i32 %7(ptr noundef %dev, i32 noundef %call, i32 noundef 0, i32 noundef 65536) #7
  %call5 = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef %call, i32 noundef 1048576, i32 noundef 1048576, i32 noundef 500) #7
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 4
  %rmw7 = getelementptr inbounds %struct.mt76_bus_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %rmw7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmw7, align 4
  %call8 = tail call i32 %11(ptr noundef %dev, i32 noundef %call, i32 noundef 0, i32 noundef 131072) #7
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus, align 4
  %rmw10 = getelementptr inbounds %struct.mt76_bus_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %rmw10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmw10, align 4
  %call11 = tail call i32 %15(ptr noundef %dev, i32 noundef 16904, i32 noundef 0, i32 noundef 16777216) #7
  %call12 = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef %call, i32 noundef 2097152, i32 noundef 2097152, i32 noundef 500) #7
  %16 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus, align 4
  %rmw14 = getelementptr inbounds %struct.mt76_bus_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %rmw14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmw14, align 4
  %call15 = tail call i32 %19(ptr noundef %dev, i32 noundef %call, i32 noundef 196608, i32 noundef 0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7603_reg_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mt76_poll_msec(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7603_update_channel(ptr nocapture noundef readonly %mphy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mt76_phy, ptr %mphy, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %chan_state = getelementptr inbounds %struct.mt76_phy, ptr %mphy, i32 0, i32 7
  %2 = ptrtoint ptr %chan_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan_state, align 4
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call = tail call i32 %7(ptr noundef %1, i32 noundef 180268) #7
  %conv = zext i32 %call to i64
  %cc_busy = getelementptr inbounds %struct.mt76_channel_state, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %cc_busy to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %cc_busy, align 8
  %add = add i64 %9, %conv
  store i64 %add, ptr %cc_busy, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7603_edcca_set_strict(ptr noundef %dev, i1 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ed_strict_mode = getelementptr inbounds %struct.mt7603_dev, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %ed_strict_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ed_strict_mode, align 8
  %2 = zext i1 %val to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %2)
  %cmp = icmp eq i8 %1, %2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %ed_strict_mode to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %ed_strict_mode, align 8
  %ed_monitor = getelementptr inbounds %struct.mt7603_dev, ptr %dev, i32 0, i32 21
  %4 = ptrtoint ptr %ed_monitor to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ed_monitor, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not = icmp eq i8 %5, 0
  %. = select i1 %tobool6.not, i32 -674745344, i32 -674726656
  %or.cond.demorgan = or i1 %tobool6.not, %val
  %rxtd_6.1.v = select i1 %or.cond.demorgan, i32 16, i32 15
  %rxtd_6.1 = or i32 %rxtd_6.1.v, %.
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wr, align 4
  tail call void %9(ptr noundef %dev, i32 noundef 67096, i32 noundef %rxtd_6.1) #7
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmw, align 4
  %14 = ptrtoint ptr %ed_monitor to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ed_monitor, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool90.not = icmp eq i8 %15, 0
  br i1 %tobool90.not, label %if.end.land.end121_crit_edge, label %land.rhs117

if.end.land.end121_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end121

land.rhs117:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %ed_strict_mode to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ed_strict_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool119.not = icmp eq i8 %17, 0
  %phi.cast143 = zext i1 %tobool119.not to i32
  br label %land.end121

land.end121:                                      ; preds = %land.rhs117, %if.end.land.end121_crit_edge
  %18 = phi i32 [ 0, %if.end.land.end121_crit_edge ], [ %phi.cast143, %land.rhs117 ]
  %call = tail call i32 %13(ptr noundef %dev, i32 noundef 67124, i32 noundef 1, i32 noundef %18) #7
  br label %cleanup

cleanup:                                          ; preds = %land.end121, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7603_cca_stats_reset(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmw, align 4
  %call = tail call i32 %3(ptr noundef %dev, i32 noundef 82184, i32 noundef 0, i32 noundef 64) #7
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %rmw2 = getelementptr inbounds %struct.mt76_bus_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %rmw2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmw2, align 4
  %call3 = tail call i32 %7(ptr noundef %dev, i32 noundef 82184, i32 noundef 64, i32 noundef 0) #7
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 4
  %rmw5 = getelementptr inbounds %struct.mt76_bus_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %rmw5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmw5, align 4
  %call6 = tail call i32 %11(ptr noundef %dev, i32 noundef 82184, i32 noundef 0, i32 noundef 128) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7603_mac_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -560
  tail call void @mt76_tx_status_check(ptr noundef %add.ptr, i1 noundef zeroext false) #7
  %mutex = getelementptr i8, ptr %work, i32 320
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %mac_work_count = getelementptr i8, ptr %work, i32 100
  %0 = ptrtoint ptr %mac_work_count to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mac_work_count, align 4
  %inc = add i8 %1, 1
  store i8 %inc, ptr %mac_work_count, align 4
  tail call void @mt76_update_survey(ptr noundef %add.ptr) #7
  %bus.i = getelementptr i8, ptr %work, i32 412
  %2 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i = tail call i32 %5(ptr noundef %add.ptr, i32 noundef 66980) #7
  %ed_monitor.i = getelementptr i8, ptr %work, i32 11014
  %6 = ptrtoint ptr %ed_monitor.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ed_monitor.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.mt7603_edcca_check.exit_crit_edge, label %do.end12.i

entry.mt7603_edcca_check.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7603_edcca_check.exit

do.end12.i:                                       ; preds = %entry
  %and.i = lshr i32 %call.i, 16
  %shr.i = and i32 %and.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %shr.i)
  %cmp.i = icmp ugt i32 %shr.i, 128
  %masksel.i = select i1 %cmp.i, i32 -256, i32 0
  %spec.select.i = or i32 %masksel.i, %shr.i
  %antenna_mask.i = getelementptr i8, ptr %work, i32 -168
  %8 = ptrtoint ptr %antenna_mask.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %antenna_mask.i, align 8
  %10 = and i8 %9, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool16.not.i = icmp eq i8 %10, 0
  %and34.i = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %and34.i)
  %cmp36.i = icmp ugt i32 %and34.i, 128
  %masksel187.i = select i1 %cmp36.i, i32 -256, i32 0
  %spec.select168.i = or i32 %masksel187.i, %and34.i
  %rssi1.0.i = select i1 %tobool16.not.i, i32 %spec.select.i, i32 %spec.select168.i
  %11 = tail call i32 @llvm.smax.i32(i32 %spec.select.i, i32 %rssi1.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -41, i32 %11)
  %cmp45.i = icmp sgt i32 %11, -41
  br i1 %cmp45.i, label %land.lhs.true.i, label %do.end12.i.if.else52.i_crit_edge

do.end12.i.if.else52.i_crit_edge:                 ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else52.i

land.lhs.true.i:                                  ; preds = %do.end12.i
  %ed_strong_signal.i = getelementptr i8, ptr %work, i32 11017
  %12 = ptrtoint ptr %ed_strong_signal.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ed_strong_signal.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %13)
  %cmp48.i = icmp ult i8 %13, 10
  br i1 %cmp48.i, label %if.then50.i, label %land.lhs.true.i.if.else52.i_crit_edge

land.lhs.true.i.if.else52.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else52.i

if.then50.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i = add nuw nsw i8 %13, 1
  %14 = ptrtoint ptr %ed_strong_signal.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %inc.i, ptr %ed_strong_signal.i, align 1
  br label %if.end60.i

if.else52.i:                                      ; preds = %land.lhs.true.i.if.else52.i_crit_edge, %do.end12.i.if.else52.i_crit_edge
  %ed_strong_signal53.i = getelementptr i8, ptr %work, i32 11017
  %15 = ptrtoint ptr %ed_strong_signal53.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ed_strong_signal53.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp55.not.i = icmp eq i8 %16, 0
  br i1 %cmp55.not.i, label %if.else52.i.if.end60.i_crit_edge, label %if.then57.i

if.else52.i.if.end60.i_crit_edge:                 ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60.i

if.then57.i:                                      ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_pc() #9
  %dec.i = add i8 %16, -1
  %17 = ptrtoint ptr %ed_strong_signal53.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %dec.i, ptr %ed_strong_signal53.i, align 1
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then57.i, %if.else52.i.if.end60.i_crit_edge, %if.then50.i
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 1) #7
  %18 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %call64.i = tail call i32 %21(ptr noundef %add.ptr, i32 noundef 180304) #7
  %ed_time.i = getelementptr i8, ptr %work, i32 10960
  %22 = ptrtoint ptr %ed_time.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %ed_time.i, align 128
  %sub66.i = sub i64 %call.i.i, %23
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub66.i)
  %cmp8.i.i.i = icmp slt i64 %sub66.i, 0
  %24 = tail call i64 @llvm.abs.i64(i64 %sub66.i, i1 false) #7
  %25 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %24, i32 0) #10, !srcloc !37
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %25, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %25, 1
  %26 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %24, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #10, !srcloc !38
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %26, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %conv68.i = trunc i64 %cond213.i.i.i to i32
  %27 = ptrtoint ptr %ed_time.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %call.i.i, ptr %ed_time.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv68.i)
  %tobool70.not.i = icmp eq i32 %conv68.i, 0
  br i1 %tobool70.not.i, label %if.end60.i.mt7603_edcca_check.exit_crit_edge, label %if.end72.i

if.end60.i.mt7603_edcca_check.exit_crit_edge:     ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7603_edcca_check.exit

if.end72.i:                                       ; preds = %if.end60.i
  %and65.i = and i32 %call64.i, 16777215
  %mul.i = mul nuw nsw i32 %and65.i, 100
  %div.i = udiv i32 %mul.i, %conv68.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 90, i32 %div.i)
  %cmp73.i = icmp ugt i32 %div.i, 90
  %ed_trigger.i = getelementptr i8, ptr %work, i32 11015
  %28 = ptrtoint ptr %ed_trigger.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ed_trigger.i, align 1
  br i1 %cmp73.i, label %if.then75.i, label %if.else84.i

if.then75.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp77.i = icmp slt i8 %29, 0
  br i1 %cmp77.i, label %if.then75.i.if.end94.sink.split.i_crit_edge, label %if.then75.i.if.end94.i_crit_edge

if.then75.i.if.end94.i_crit_edge:                 ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94.i

if.then75.i.if.end94.sink.split.i_crit_edge:      ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94.sink.split.i

if.else84.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp87.i = icmp sgt i8 %29, 0
  br i1 %cmp87.i, label %if.else84.i.if.end94.sink.split.i_crit_edge, label %if.else84.i.if.end94.i_crit_edge

if.else84.i.if.end94.i_crit_edge:                 ; preds = %if.else84.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94.i

if.else84.i.if.end94.sink.split.i_crit_edge:      ; preds = %if.else84.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94.sink.split.i

if.end94.sink.split.i:                            ; preds = %if.else84.i.if.end94.sink.split.i_crit_edge, %if.then75.i.if.end94.sink.split.i_crit_edge
  %.sink188.ph.i = phi i8 [ 1, %if.then75.i.if.end94.sink.split.i_crit_edge ], [ -1, %if.else84.i.if.end94.sink.split.i_crit_edge ]
  %30 = ptrtoint ptr %ed_trigger.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %ed_trigger.i, align 1
  br label %if.end94.i

if.end94.i:                                       ; preds = %if.end94.sink.split.i, %if.else84.i.if.end94.i_crit_edge, %if.then75.i.if.end94.i_crit_edge
  %.sink188.i = phi i8 [ 1, %if.then75.i.if.end94.i_crit_edge ], [ -1, %if.else84.i.if.end94.i_crit_edge ], [ %.sink188.ph.i, %if.end94.sink.split.i ]
  %31 = ptrtoint ptr %ed_trigger.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ed_trigger.i, align 1
  %dec93.i = add i8 %32, %.sink188.i
  store i8 %dec93.i, ptr %ed_trigger.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %dec93.i)
  %cmp97.i = icmp sgt i8 %dec93.i, 10
  br i1 %cmp97.i, label %if.end94.i.if.then103.i_crit_edge, label %lor.lhs.false.i

if.end94.i.if.then103.i_crit_edge:                ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then103.i

lor.lhs.false.i:                                  ; preds = %if.end94.i
  %ed_strong_signal99.i = getelementptr i8, ptr %work, i32 11017
  %33 = ptrtoint ptr %ed_strong_signal99.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ed_strong_signal99.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %34)
  %cmp101.i = icmp ult i8 %34, 5
  br i1 %cmp101.i, label %lor.lhs.false.i.if.then103.i_crit_edge, label %if.else104.i

lor.lhs.false.i.if.then103.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then103.i

if.then103.i:                                     ; preds = %lor.lhs.false.i.if.then103.i_crit_edge, %if.end94.i.if.then103.i_crit_edge
  %ed_strict_mode.i.i = getelementptr i8, ptr %work, i32 11016
  %35 = ptrtoint ptr %ed_strict_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ed_strict_mode.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %36)
  %cmp.i.i = icmp eq i8 %36, 1
  br i1 %cmp.i.i, label %if.then103.i.if.end111.i_crit_edge, label %if.end.i.i

if.then103.i.if.end111.i_crit_edge:               ; preds = %if.then103.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111.i

if.end.i.i:                                       ; preds = %if.then103.i
  %37 = ptrtoint ptr %ed_strict_mode.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %ed_strict_mode.i.i, align 8
  %38 = ptrtoint ptr %ed_monitor.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ed_monitor.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool6.not.i.i = icmp eq i8 %39, 0
  %rxtd_6.1.i.i = select i1 %tobool6.not.i.i, i32 -674745328, i32 -674726640
  %40 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus.i, align 4
  %wr.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %wr.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wr.i.i, align 4
  tail call void %43(ptr noundef %add.ptr, i32 noundef 67096, i32 noundef %rxtd_6.1.i.i) #7
  %44 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bus.i, align 4
  %rmw.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rmw.i.i, align 4
  %48 = ptrtoint ptr %ed_monitor.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ed_monitor.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool90.not.i.i = icmp eq i8 %49, 0
  br i1 %tobool90.not.i.i, label %if.end.i.i.land.end121.i.i_crit_edge, label %land.rhs117.i.i

if.end.i.i.land.end121.i.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end121.i.i

land.rhs117.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %ed_strict_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ed_strict_mode.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool119.not.i.i = icmp eq i8 %51, 0
  %phi.cast143.i.i = zext i1 %tobool119.not.i.i to i32
  br label %land.end121.i.i

land.end121.i.i:                                  ; preds = %land.rhs117.i.i, %if.end.i.i.land.end121.i.i_crit_edge
  %52 = phi i32 [ 0, %if.end.i.i.land.end121.i.i_crit_edge ], [ %phi.cast143.i.i, %land.rhs117.i.i ]
  %call.i169.i = tail call i32 %47(ptr noundef %add.ptr, i32 noundef 67124, i32 noundef 1, i32 noundef %52) #7
  br label %if.end111.i

if.else104.i:                                     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -10, i8 %dec93.i)
  %cmp107.i = icmp slt i8 %dec93.i, -10
  br i1 %cmp107.i, label %if.then109.i, label %if.else104.i.if.end111.i_crit_edge

if.else104.i.if.end111.i_crit_edge:               ; preds = %if.else104.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111.i

if.then109.i:                                     ; preds = %if.else104.i
  %ed_strict_mode.i170.i = getelementptr i8, ptr %work, i32 11016
  %53 = ptrtoint ptr %ed_strict_mode.i170.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %ed_strict_mode.i170.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp.i171.i = icmp eq i8 %54, 0
  br i1 %cmp.i171.i, label %if.then109.i.if.end111.i_crit_edge, label %if.end.i180.i

if.then109.i.if.end111.i_crit_edge:               ; preds = %if.then109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111.i

if.end.i180.i:                                    ; preds = %if.then109.i
  %55 = ptrtoint ptr %ed_strict_mode.i170.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %ed_strict_mode.i170.i, align 8
  %56 = ptrtoint ptr %ed_monitor.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ed_monitor.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool6.not.i173.i = icmp eq i8 %57, 0
  %rxtd_6.1.i175.i = select i1 %tobool6.not.i173.i, i32 -674745328, i32 -674726641
  %58 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bus.i, align 4
  %wr.i177.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %wr.i177.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %wr.i177.i, align 4
  tail call void %61(ptr noundef %add.ptr, i32 noundef 67096, i32 noundef %rxtd_6.1.i175.i) #7
  %62 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bus.i, align 4
  %rmw.i178.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %rmw.i178.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rmw.i178.i, align 4
  %66 = ptrtoint ptr %ed_monitor.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %ed_monitor.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool90.not.i179.i = icmp eq i8 %67, 0
  br i1 %tobool90.not.i179.i, label %if.end.i180.i.land.end121.i185.i_crit_edge, label %land.rhs117.i183.i

if.end.i180.i.land.end121.i185.i_crit_edge:       ; preds = %if.end.i180.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end121.i185.i

land.rhs117.i183.i:                               ; preds = %if.end.i180.i
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %ed_strict_mode.i170.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %ed_strict_mode.i170.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool119.not.i181.i = icmp eq i8 %69, 0
  %phi.cast143.i182.i = zext i1 %tobool119.not.i181.i to i32
  br label %land.end121.i185.i

land.end121.i185.i:                               ; preds = %land.rhs117.i183.i, %if.end.i180.i.land.end121.i185.i_crit_edge
  %70 = phi i32 [ 0, %if.end.i180.i.land.end121.i185.i_crit_edge ], [ %phi.cast143.i182.i, %land.rhs117.i183.i ]
  %call.i184.i = tail call i32 %65(ptr noundef %add.ptr, i32 noundef 67124, i32 noundef 1, i32 noundef %70) #7
  br label %if.end111.i

if.end111.i:                                      ; preds = %land.end121.i185.i, %if.then109.i.if.end111.i_crit_edge, %if.else104.i.if.end111.i_crit_edge, %land.end121.i.i, %if.then103.i.if.end111.i_crit_edge
  %71 = ptrtoint ptr %ed_trigger.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %ed_trigger.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %72)
  %cmp114.i = icmp sgt i8 %72, 10
  br i1 %cmp114.i, label %if.end111.i.cleanup.sink.split.i_crit_edge, label %if.else118.i

if.end111.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.else118.i:                                     ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -10, i8 %72)
  %cmp121.i = icmp slt i8 %72, -10
  br i1 %cmp121.i, label %if.else118.i.cleanup.sink.split.i_crit_edge, label %if.else118.i.mt7603_edcca_check.exit_crit_edge

if.else118.i.mt7603_edcca_check.exit_crit_edge:   ; preds = %if.else118.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7603_edcca_check.exit

if.else118.i.cleanup.sink.split.i_crit_edge:      ; preds = %if.else118.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else118.i.cleanup.sink.split.i_crit_edge, %if.end111.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 10, %if.end111.i.cleanup.sink.split.i_crit_edge ], [ -10, %if.else118.i.cleanup.sink.split.i_crit_edge ]
  %73 = ptrtoint ptr %ed_trigger.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %.sink.i, ptr %ed_trigger.i, align 1
  br label %mt7603_edcca_check.exit

mt7603_edcca_check.exit:                          ; preds = %cleanup.sink.split.i, %if.else118.i.mt7603_edcca_check.exit_crit_edge, %if.end60.i.mt7603_edcca_check.exit_crit_edge, %entry.mt7603_edcca_check.exit_crit_edge
  %aggr_stats = getelementptr i8, ptr %work, i32 9536
  %74 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bus.i, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %call = tail call i32 %77(ptr noundef %add.ptr, i32 noundef 180392) #7
  %and = and i32 %call, 65535
  %78 = ptrtoint ptr %aggr_stats to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %aggr_stats, align 4
  %add3 = add i32 %79, %and
  store i32 %add3, ptr %aggr_stats, align 4
  %shr = lshr i32 %call, 16
  %arrayidx6 = getelementptr i8, ptr %work, i32 9540
  %80 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx6, align 4
  %add7 = add i32 %81, %shr
  store i32 %add7, ptr %arrayidx6, align 4
  %82 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bus.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %call.1 = tail call i32 %85(ptr noundef %add.ptr, i32 noundef 180396) #7
  %and.1 = and i32 %call.1, 65535
  %arrayidx.1 = getelementptr i8, ptr %work, i32 9544
  %86 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.1, align 4
  %add3.1 = add i32 %87, %and.1
  store i32 %add3.1, ptr %arrayidx.1, align 4
  %shr.1 = lshr i32 %call.1, 16
  %arrayidx6.1 = getelementptr i8, ptr %work, i32 9548
  %88 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx6.1, align 4
  %add7.1 = add i32 %89, %shr.1
  store i32 %add7.1, ptr %arrayidx6.1, align 4
  %90 = ptrtoint ptr %mac_work_count to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %mac_work_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %91)
  %cmp10 = icmp eq i8 %91, 10
  br i1 %cmp10, label %if.then, label %mt7603_edcca_check.exit.if.end_crit_edge

mt7603_edcca_check.exit.if.end_crit_edge:         ; preds = %mt7603_edcca_check.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %mt7603_edcca_check.exit
  %dynamic_sensitivity.i = getelementptr i8, ptr %work, i32 11018
  %92 = ptrtoint ptr %dynamic_sensitivity.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %dynamic_sensitivity.i, align 2, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool.not.i93 = icmp eq i8 %93, 0
  br i1 %tobool.not.i93, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %94 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %bus.i, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 4
  %call.i95 = tail call i32 %97(ptr noundef %add.ptr, i32 noundef 82188) #7
  %and.i96 = and i32 %call.i95, 65535
  %shr30.i = lshr i32 %call.i95, 16
  %98 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %bus.i, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  %call33.i = tail call i32 %101(ptr noundef %add.ptr, i32 noundef 82208) #7
  %and50.i = and i32 %call33.i, 65535
  %shr69.i = lshr i32 %call33.i, 16
  %sub.i = sub nsw i32 %shr30.i, %shr69.i
  %false_cca_ofdm.i = getelementptr i8, ptr %work, i32 10932
  %102 = ptrtoint ptr %false_cca_ofdm.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %sub.i, ptr %false_cca_ofdm.i, align 4
  %sub70.i = sub nsw i32 %and.i96, %and50.i
  %false_cca_cck.i = getelementptr i8, ptr %work, i32 10936
  %103 = ptrtoint ptr %false_cca_cck.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %sub70.i, ptr %false_cca_cck.i, align 8
  %104 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %bus.i, align 4
  %rmw.i.i97 = getelementptr inbounds %struct.mt76_bus_ops, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %rmw.i.i97 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %rmw.i.i97, align 4
  %call.i.i98 = tail call i32 %107(ptr noundef %add.ptr, i32 noundef 82184, i32 noundef 0, i32 noundef 64) #7
  %108 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %bus.i, align 4
  %rmw2.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %rmw2.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %rmw2.i.i, align 4
  %call3.i.i = tail call i32 %111(ptr noundef %add.ptr, i32 noundef 82184, i32 noundef 64, i32 noundef 0) #7
  %112 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %bus.i, align 4
  %rmw5.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %rmw5.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %rmw5.i.i, align 4
  %call6.i.i = tail call i32 %115(ptr noundef %add.ptr, i32 noundef 82184, i32 noundef 0, i32 noundef 128) #7
  %call71.i = tail call i32 @mt76_get_min_avg_rssi(ptr noundef %add.ptr, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %tobool72.not.i = icmp eq i32 %call71.i, 0
  br i1 %tobool72.not.i, label %if.then73.i, label %if.end74.i

if.then73.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %sensitivity.i = getelementptr i8, ptr %work, i32 11019
  %116 = ptrtoint ptr %sensitivity.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %sensitivity.i, align 1
  br label %out.sink.split.i

if.end74.i:                                       ; preds = %if.end.i
  %sub75.i = add i32 %call71.i, -15
  %117 = ptrtoint ptr %false_cca_ofdm.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %false_cca_ofdm.i, align 4
  %119 = ptrtoint ptr %false_cca_cck.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %false_cca_cck.i, align 8
  %add.i = add i32 %120, %118
  call void @__sanitizer_cov_trace_const_cmp4(i32 600, i32 %add.i)
  %cmp.i99 = icmp sgt i32 %add.i, 600
  br i1 %cmp.i99, label %land.lhs.true.i100, label %if.else94.i

land.lhs.true.i100:                               ; preds = %if.end74.i
  %sensitivity78.i = getelementptr i8, ptr %work, i32 11019
  %121 = ptrtoint ptr %sensitivity78.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %sensitivity78.i, align 1
  %conv.i = sext i8 %122 to i32
  %sensitivity_limit.i = getelementptr i8, ptr %work, i32 11020
  %123 = ptrtoint ptr %sensitivity_limit.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %sensitivity_limit.i, align 4
  %conv79.i = zext i8 %124 to i32
  %add80.i = add nsw i32 %conv79.i, -100
  call void @__sanitizer_cov_trace_cmp4(i32 %add80.i, i32 %conv.i)
  %cmp81.i = icmp sgt i32 %add80.i, %conv.i
  br i1 %cmp81.i, label %if.then83.i, label %land.lhs.true.i100.lor.lhs.false.i101_crit_edge

land.lhs.true.i100.lor.lhs.false.i101_crit_edge:  ; preds = %land.lhs.true.i100
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i101

if.then83.i:                                      ; preds = %land.lhs.true.i100
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool85.not.i = icmp eq i8 %122, 0
  %add90.i = add i8 %122, 2
  %storemerge.i = select i1 %tobool85.not.i, i8 -92, i8 %add90.i
  %125 = ptrtoint ptr %sensitivity78.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %storemerge.i, ptr %sensitivity78.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %126 = load volatile i32, ptr @jiffies, align 128
  %last_cca_adj93.i = getelementptr i8, ptr %work, i32 10940
  %127 = ptrtoint ptr %last_cca_adj93.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %last_cca_adj93.i, align 4
  br label %if.end113.i

if.else94.i:                                      ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %add.i)
  %cmp95.i = icmp slt i32 %add.i, 100
  br i1 %cmp95.i, label %if.else94.i.if.then102.i_crit_edge, label %if.else94.i.lor.lhs.false.i101_crit_edge

if.else94.i.lor.lhs.false.i101_crit_edge:         ; preds = %if.else94.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i101

if.else94.i.if.then102.i_crit_edge:               ; preds = %if.else94.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then102.i

lor.lhs.false.i101:                               ; preds = %if.else94.i.lor.lhs.false.i101_crit_edge, %land.lhs.true.i100.lor.lhs.false.i101_crit_edge
  %last_cca_adj97.i = getelementptr i8, ptr %work, i32 10940
  %128 = ptrtoint ptr %last_cca_adj97.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %last_cca_adj97.i, align 4
  %add98.i = add i32 %129, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %130 = load volatile i32, ptr @jiffies, align 128
  %sub99.i = sub i32 %add98.i, %130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub99.i)
  %cmp100.i = icmp slt i32 %sub99.i, 0
  br i1 %cmp100.i, label %lor.lhs.false.i101.if.then102.i_crit_edge, label %lor.lhs.false.i101.if.end113.i_crit_edge

lor.lhs.false.i101.if.end113.i_crit_edge:         ; preds = %lor.lhs.false.i101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113.i

lor.lhs.false.i101.if.then102.i_crit_edge:        ; preds = %lor.lhs.false.i101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then102.i

if.then102.i:                                     ; preds = %lor.lhs.false.i101.if.then102.i_crit_edge, %if.else94.i.if.then102.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %131 = load volatile i32, ptr @jiffies, align 128
  %last_cca_adj103.i = getelementptr i8, ptr %work, i32 10940
  %132 = ptrtoint ptr %last_cca_adj103.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %last_cca_adj103.i, align 4
  %sensitivity104.i = getelementptr i8, ptr %work, i32 11019
  %133 = ptrtoint ptr %sensitivity104.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %sensitivity104.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool105.not.i = icmp eq i8 %134, 0
  br i1 %tobool105.not.i, label %if.then102.i.out.i_crit_edge, label %if.end107.i

if.then102.i.out.i_crit_edge:                     ; preds = %if.then102.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end107.i:                                      ; preds = %if.then102.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub110.i = add i8 %134, -2
  %135 = ptrtoint ptr %sensitivity104.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %sub110.i, ptr %sensitivity104.i, align 1
  br label %if.end113.i

if.end113.i:                                      ; preds = %if.end107.i, %lor.lhs.false.i101.if.end113.i_crit_edge, %if.then83.i
  %sensitivity114.i = getelementptr i8, ptr %work, i32 11019
  %136 = ptrtoint ptr %sensitivity114.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %sensitivity114.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool116.not.i = icmp ne i8 %137, 0
  %conv115.i = sext i8 %137 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub75.i, i32 %conv115.i)
  %cmp120.i = icmp slt i32 %sub75.i, %conv115.i
  %or.cond.i = select i1 %tobool116.not.i, i1 %cmp120.i, i1 false
  br i1 %or.cond.i, label %if.then122.i, label %if.end113.i.out.i_crit_edge

if.end113.i.out.i_crit_edge:                      ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.then122.i:                                     ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv123.i = trunc i32 %sub75.i to i8
  %138 = ptrtoint ptr %sensitivity114.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %conv123.i, ptr %sensitivity114.i, align 1
  br label %out.sink.split.i

out.sink.split.i:                                 ; preds = %if.then122.i, %if.then73.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %139 = load volatile i32, ptr @jiffies, align 128
  %last_cca_adj125.i = getelementptr i8, ptr %work, i32 10940
  %140 = ptrtoint ptr %last_cca_adj125.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %last_cca_adj125.i, align 4
  br label %out.i

out.i:                                            ; preds = %out.sink.split.i, %if.end113.i.out.i_crit_edge, %if.then102.i.out.i_crit_edge
  %agc01.i.i = getelementptr i8, ptr %work, i32 10924
  %141 = ptrtoint ptr %agc01.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %agc01.i.i, align 4
  %agc32.i.i = getelementptr i8, ptr %work, i32 10928
  %143 = ptrtoint ptr %agc32.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %agc32.i.i, align 32
  %sensitivity.i.i = getelementptr i8, ptr %work, i32 11019
  %145 = ptrtoint ptr %sensitivity.i.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %sensitivity.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool.not.i.i = icmp eq i8 %146, 0
  br i1 %tobool.not.i.i, label %out.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i

out.i.if.then.i.i_crit_edge:                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %out.i
  %conv.i.i = sext i8 %146 to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -100, i8 %146)
  %cmp.i.i102 = icmp slt i8 %146, -100
  br i1 %cmp.i.i102, label %lor.lhs.false.i.i.if.then.i.i_crit_edge, label %if.else.i.i

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %out.i.if.then.i.i_crit_edge
  %147 = ptrtoint ptr %sensitivity.i.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 0, ptr %sensitivity.i.i, align 1
  br label %mt7603_adjust_sensitivity.exit.i

if.else.i.i:                                      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -83, i8 %146)
  %cmp8.i.i = icmp slt i8 %146, -83
  br i1 %cmp8.i.i, label %if.then10.i.i, label %if.else16.i.i

if.then10.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i.i = add nsw i16 %conv.i.i, 92
  %div100.i.i = sdiv i16 %add.i.i, 2
  %narrow104.i.i = add nsw i16 %div100.i.i, 7
  %add13.i.i = sext i16 %narrow104.i.i to i32
  %shl.i.i = shl nsw i32 %add13.i.i, 12
  %shl14.i.i = shl nsw i32 %add13.i.i, 16
  %or.i.i = or i32 %shl14.i.i, %shl.i.i
  %or15.i.i = or i32 %or.i.i, 1458571119
  br label %mt7603_adjust_sensitivity.exit.i

if.else16.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -71, i8 %146)
  %cmp19.i.i = icmp slt i8 %146, -71
  br i1 %cmp19.i.i, label %if.then21.i.i, label %if.else33.i.i

if.then21.i.i:                                    ; preds = %if.else16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %div25.lhs.trunc.i.i = add nsw i16 %conv.i.i, 80
  %div25101.i.i = sdiv i16 %div25.lhs.trunc.i.i, 2
  %narrow103.i.i = add nsw i16 %div25101.i.i, 7
  %add26.i.i = sext i16 %narrow103.i.i to i32
  %shl27.i.i = shl nsw i32 %add26.i.i, 8
  %shl29.i.i = shl nsw i32 %add26.i.i, 12
  %shl31.i.i = shl nsw i32 %add26.i.i, 16
  %or28.i.i = or i32 %shl29.i.i, %shl27.i.i
  %or30.i.i = or i32 %or28.i.i, %shl31.i.i
  %or32.i.i = or i32 %or30.i.i, 1794113647
  br label %mt7603_adjust_sensitivity.exit.i

if.else33.i.i:                                    ; preds = %if.else16.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -54, i8 %146)
  %cmp36.i.i = icmp sgt i8 %146, -54
  br i1 %cmp36.i.i, label %if.then38.i.i, label %if.else33.i.i.if.end.i.i103_crit_edge

if.else33.i.i.if.end.i.i103_crit_edge:            ; preds = %if.else33.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i103

if.then38.i.i:                                    ; preds = %if.else33.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %148 = ptrtoint ptr %sensitivity.i.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 -54, ptr %sensitivity.i.i, align 1
  br label %if.end.i.i103

if.end.i.i103:                                    ; preds = %if.then38.i.i, %if.else33.i.i.if.end.i.i103_crit_edge
  %149 = ptrtoint ptr %sensitivity.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %sensitivity.i.i, align 1
  %conv41.i.i = sext i8 %150 to i16
  %add42.i.i = add nsw i16 %conv41.i.i, 80
  %div43102.i.i = sdiv i16 %add42.i.i, 2
  %narrow.i.i = add nsw i16 %div43102.i.i, 7
  %add44.i.i = sext i16 %narrow.i.i to i32
  %shl45.i.i = shl nsw i32 %add44.i.i, 4
  %shl47.i.i = shl nsw i32 %add44.i.i, 8
  %shl49.i.i = shl nsw i32 %add44.i.i, 12
  %shl51.i.i = shl nsw i32 %add44.i.i, 16
  %or46.i.i = or i32 %shl47.i.i, %shl45.i.i
  %or48.i.i = or i32 %or46.i.i, %shl49.i.i
  %or50.i.i = or i32 %or48.i.i, %shl51.i.i
  %or52.i.i = or i32 %or50.i.i, 2146435087
  br label %mt7603_adjust_sensitivity.exit.i

mt7603_adjust_sensitivity.exit.i:                 ; preds = %if.end.i.i103, %if.then21.i.i, %if.then10.i.i, %if.then.i.i
  %agc0.0.i.i = phi i32 [ %142, %if.then.i.i ], [ %or15.i.i, %if.then10.i.i ], [ %or32.i.i, %if.then21.i.i ], [ %or52.i.i, %if.end.i.i103 ]
  %agc3.0.i.i = phi i32 [ %144, %if.then.i.i ], [ -2117020189, %if.then10.i.i ], [ -2122197533, %if.then21.i.i ], [ -2122219037, %if.end.i.i103 ]
  %151 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %bus.i, align 4
  %wr.i.i104 = getelementptr inbounds %struct.mt76_bus_ops, ptr %152, i32 0, i32 1
  %153 = ptrtoint ptr %wr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %wr.i.i104, align 4
  tail call void %154(ptr noundef %add.ptr, i32 noundef 66816, i32 noundef %agc0.0.i.i) #7
  %155 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %bus.i, align 4
  %wr57.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %156, i32 0, i32 1
  %157 = ptrtoint ptr %wr57.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %wr57.i.i, align 4
  tail call void %158(ptr noundef %add.ptr, i32 noundef 70912, i32 noundef %agc0.0.i.i) #7
  %159 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %bus.i, align 4
  %wr59.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %160, i32 0, i32 1
  %161 = ptrtoint ptr %wr59.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %wr59.i.i, align 4
  tail call void %162(ptr noundef %add.ptr, i32 noundef 66828, i32 noundef %agc3.0.i.i) #7
  %163 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %bus.i, align 4
  %wr61.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %164, i32 0, i32 1
  %165 = ptrtoint ptr %wr61.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %wr61.i.i, align 4
  tail call void %166(ptr noundef %add.ptr, i32 noundef 70924, i32 noundef %agc3.0.i.i) #7
  br label %if.end

if.end:                                           ; preds = %mt7603_adjust_sensitivity.exit.i, %if.then.if.end_crit_edge, %mt7603_edcca_check.exit.if.end_crit_edge
  %rx_pse_check = getelementptr i8, ptr %work, i32 11025
  %reset_test.i = getelementptr i8, ptr %work, i32 11044
  %167 = ptrtoint ptr %reset_test.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %reset_test.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %168)
  %cmp.i105 = icmp eq i32 %168, 5
  br i1 %cmp.i105, label %if.end.if.then48.sink.split.sink.split_crit_edge, label %if.end.i106

if.end.if.then48.sink.split.sink.split_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then48.sink.split.sink.split

if.end.i106:                                      ; preds = %if.end
  %169 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %bus.i, align 4
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %170, align 4
  %call.i199 = tail call i32 %172(ptr noundef %add.ptr, i32 noundef 33132) #7
  %and.i200 = and i32 %call.i199, 124
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i200)
  %tobool.not.i201 = icmp eq i32 %and.i200, 0
  br i1 %tobool.not.i201, label %if.end.i206, label %if.end.i106.if.end6.i_crit_edge

if.end.i106.if.end6.i_crit_edge:                  ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.end.i206:                                      ; preds = %if.end.i106
  %rev.i.i.i.i202 = getelementptr i8, ptr %work, i32 9532
  %173 = ptrtoint ptr %rev.i.i.i.i202 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %rev.i.i.i.i202, align 4
  %shr.i.mask.i.i.i203 = and i32 %174, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1982332928, i32 %shr.i.mask.i.i.i203)
  %cmp.i.i.i204 = icmp eq i32 %shr.i.mask.i.i.i203, 1982332928
  %175 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %bus.i, align 4
  %wr.i.i.i205 = getelementptr inbounds %struct.mt76_bus_ops, ptr %176, i32 0, i32 1
  %177 = ptrtoint ptr %wr.i.i.i205 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %wr.i.i.i205, align 4
  %..i.i = select i1 %cmp.i.i.i204, i32 -1744830464, i32 671088640
  %.14.i.i = select i1 %cmp.i.i.i204, i32 512, i32 256
  tail call void %178(ptr noundef %add.ptr, i32 noundef 16964, i32 noundef %..i.i) #7
  %179 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %bus.i, align 4
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %180, align 4
  %call.i9.i.i = tail call i32 %182(ptr noundef %add.ptr, i32 noundef 16964) #7
  %and3.i.i = and i32 %call.i9.i.i, %.14.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %retval.0.i.not.i = icmp eq i32 %and3.i.i, 0
  br i1 %retval.0.i.not.i, label %if.end3.i, label %if.end.i206.land.lhs.true.i108_crit_edge

if.end.i206.land.lhs.true.i108_crit_edge:         ; preds = %if.end.i206
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i108

if.end3.i:                                        ; preds = %if.end.i206
  %call4.i = tail call i32 @mt7603_reg_map(ptr noundef %add.ptr, i32 noundef -2146697108) #7
  %183 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %bus.i, align 4
  %wr.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %184, i32 0, i32 1
  %185 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %wr.i, align 4
  tail call void %186(ptr noundef %add.ptr, i32 noundef %call4.i, i32 noundef 3) #7
  %187 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %bus.i, align 4
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %188, align 4
  %call8.i = tail call i32 %190(ptr noundef %add.ptr, i32 noundef %call4.i) #7
  %191 = ptrtoint ptr %rev.i.i.i.i202 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %rev.i.i.i.i202, align 4
  %shr.i.mask.i.i = and i32 %192, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1982332928, i32 %shr.i.mask.i.i)
  %cmp.i.i207 = icmp eq i32 %shr.i.mask.i.i, 1982332928
  %193 = and i32 %call8.i, 1073807360
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073807360, i32 %193)
  %cmp.i208 = icmp eq i32 %193, 1073807360
  %or.cond.i209 = select i1 %cmp.i.i207, i1 %cmp.i208, i1 false
  %194 = and i32 %call8.i, -2147418112
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147418112, i32 %194)
  %cmp14.i = icmp eq i32 %194, -2147418112
  %or.cond = select i1 %or.cond.i209, i1 true, i1 %cmp14.i
  br i1 %or.cond, label %if.end3.i.if.end6.i_crit_edge, label %if.end3.i.land.lhs.true.i108_crit_edge

if.end3.i.land.lhs.true.i108_crit_edge:           ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i108

if.end3.i.if.end6.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

land.lhs.true.i108:                               ; preds = %if.end3.i.land.lhs.true.i108_crit_edge, %if.end.i206.land.lhs.true.i108_crit_edge
  %195 = ptrtoint ptr %rx_pse_check to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %rx_pse_check, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %196)
  %cmp3.i = icmp ult i8 %196, 10
  br i1 %cmp3.i, label %if.then5.i, label %land.lhs.true.i108.if.end6.i_crit_edge

land.lhs.true.i108.if.end6.i_crit_edge:           ; preds = %land.lhs.true.i108
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.then5.i:                                       ; preds = %land.lhs.true.i108
  call void @__sanitizer_cov_trace_pc() #9
  %197 = ptrtoint ptr %rx_pse_check to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 0, ptr %rx_pse_check, align 1
  br label %lor.lhs.false

if.end6.i:                                        ; preds = %land.lhs.true.i108.if.end6.i_crit_edge, %if.end3.i.if.end6.i_crit_edge, %if.end.i106.if.end6.i_crit_edge
  %198 = ptrtoint ptr %rx_pse_check to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %rx_pse_check, align 1
  %inc.i109 = add i8 %199, 1
  store i8 %inc.i109, ptr %rx_pse_check, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %inc.i109)
  %cmp9.i = icmp ult i8 %inc.i109, 10
  br i1 %cmp9.i, label %if.end6.i.lor.lhs.false_crit_edge, label %if.end6.i.if.then48.sink.split_crit_edge

if.end6.i.if.then48.sink.split_crit_edge:         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then48.sink.split

if.end6.i.lor.lhs.false_crit_edge:                ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6.i.lor.lhs.false_crit_edge, %if.then5.i
  %200 = ptrtoint ptr %reset_test.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %reset_test.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %201)
  %cmp.i111 = icmp eq i32 %201, 4
  br i1 %cmp.i111, label %lor.lhs.false.if.then48.sink.split.sink.split_crit_edge, label %if.end.i113

lor.lhs.false.if.then48.sink.split.sink.split_crit_edge: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then48.sink.split.sink.split

if.end.i113:                                      ; preds = %lor.lhs.false
  %beacon_check = getelementptr i8, ptr %work, i32 11021
  %202 = ptrtoint ptr %beacon_check to i32
  call void @__asan_load1_noabort(i32 %202)
  %.pr.i = load i8, ptr %beacon_check, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %.pr.i)
  %cmp9.i114 = icmp ult i8 %.pr.i, 10
  br i1 %cmp9.i114, label %lor.lhs.false16, label %if.end.i113.if.then48.sink.split_crit_edge

if.end.i113.if.then48.sink.split_crit_edge:       ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then48.sink.split

lor.lhs.false16:                                  ; preds = %if.end.i113
  %tx_hang_check = getelementptr i8, ptr %work, i32 11022
  %203 = ptrtoint ptr %reset_test.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %reset_test.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %204)
  %cmp.i122 = icmp eq i32 %204, 1
  br i1 %cmp.i122, label %lor.lhs.false16.if.then48.sink.split.sink.split_crit_edge, label %if.end.i124

lor.lhs.false16.if.then48.sink.split.sink.split_crit_edge: ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then48.sink.split.sink.split

if.end.i124:                                      ; preds = %lor.lhs.false16
  %arrayidx.i211 = getelementptr i8, ptr %work, i32 -544
  %205 = ptrtoint ptr %arrayidx.i211 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %arrayidx.i211, align 4
  %queued.i = getelementptr inbounds %struct.mt76_queue, ptr %206, i32 0, i32 9
  %207 = ptrtoint ptr %queued.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %queued.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %tobool.not.i212 = icmp eq i32 %208, 0
  br i1 %tobool.not.i212, label %if.end.i124.for.inc.i_crit_edge, label %if.end.i214

if.end.i124.for.inc.i_crit_edge:                  ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i214:                                      ; preds = %if.end.i124
  %arrayidx1.i = getelementptr i8, ptr %work, i32 11032
  %209 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %arrayidx1.i, align 2
  %conv.i213 = zext i16 %210 to i32
  %211 = ptrtoint ptr %206 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %206, align 4
  %dma_idx2.i = getelementptr inbounds %struct.mt76_queue_regs, ptr %212, i32 0, i32 3
  %213 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dma_idx2.i) #7, !srcloc !40
  %214 = tail call i32 @llvm.bswap.i32(i32 %213) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  %conv4.i = trunc i32 %214 to i16
  %215 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 %conv4.i, ptr %arrayidx1.i, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %214, i32 %conv.i213)
  %cmp7.i = icmp eq i32 %214, %conv.i213
  br i1 %cmp7.i, label %land.lhs.true.i215, label %if.end.i214.for.inc.i_crit_edge

if.end.i214.for.inc.i_crit_edge:                  ; preds = %if.end.i214
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i215:                               ; preds = %if.end.i214
  %216 = ptrtoint ptr %206 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %206, align 4
  %cpu_idx.i = getelementptr inbounds %struct.mt76_queue_regs, ptr %217, i32 0, i32 2
  %218 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cpu_idx.i) #7, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  call void @__sanitizer_cov_trace_cmp4(i32 %213, i32 %218)
  %cmp15.not.i = icmp eq i32 %213, %218
  br i1 %cmp15.not.i, label %land.lhs.true.i215.for.inc.i_crit_edge, label %land.lhs.true.i215.if.end6.i130_crit_edge

land.lhs.true.i215.if.end6.i130_crit_edge:        ; preds = %land.lhs.true.i215
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i130

land.lhs.true.i215.for.inc.i_crit_edge:           ; preds = %land.lhs.true.i215
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i215.for.inc.i_crit_edge, %if.end.i214.for.inc.i_crit_edge, %if.end.i124.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr i8, ptr %work, i32 -540
  %219 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %arrayidx.1.i, align 4
  %queued.1.i = getelementptr inbounds %struct.mt76_queue, ptr %220, i32 0, i32 9
  %221 = ptrtoint ptr %queued.1.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %queued.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %tobool.not.1.i = icmp eq i32 %222, 0
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

if.end.1.i:                                       ; preds = %for.inc.i
  %arrayidx1.1.i = getelementptr i8, ptr %work, i32 11034
  %223 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %arrayidx1.1.i, align 2
  %conv.1.i = zext i16 %224 to i32
  %225 = ptrtoint ptr %220 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %220, align 4
  %dma_idx2.1.i = getelementptr inbounds %struct.mt76_queue_regs, ptr %226, i32 0, i32 3
  %227 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dma_idx2.1.i) #7, !srcloc !40
  %228 = tail call i32 @llvm.bswap.i32(i32 %227) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  %conv4.1.i = trunc i32 %228 to i16
  %229 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store2_noabort(i32 %229)
  store i16 %conv4.1.i, ptr %arrayidx1.1.i, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %228, i32 %conv.1.i)
  %cmp7.1.i = icmp eq i32 %228, %conv.1.i
  br i1 %cmp7.1.i, label %land.lhs.true.1.i, label %if.end.1.i.for.inc.1.i_crit_edge

if.end.1.i.for.inc.1.i_crit_edge:                 ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %if.end.1.i
  %230 = ptrtoint ptr %220 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %220, align 4
  %cpu_idx.1.i = getelementptr inbounds %struct.mt76_queue_regs, ptr %231, i32 0, i32 2
  %232 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cpu_idx.1.i) #7, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  call void @__sanitizer_cov_trace_cmp4(i32 %227, i32 %232)
  %cmp15.not.1.i = icmp eq i32 %227, %232
  br i1 %cmp15.not.1.i, label %land.lhs.true.1.i.for.inc.1.i_crit_edge, label %land.lhs.true.1.i.if.end6.i130_crit_edge

land.lhs.true.1.i.if.end6.i130_crit_edge:         ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i130

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %land.lhs.true.1.i.for.inc.1.i_crit_edge, %if.end.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr i8, ptr %work, i32 -536
  %233 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %arrayidx.2.i, align 4
  %queued.2.i = getelementptr inbounds %struct.mt76_queue, ptr %234, i32 0, i32 9
  %235 = ptrtoint ptr %queued.2.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %queued.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %236)
  %tobool.not.2.i = icmp eq i32 %236, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

if.end.2.i:                                       ; preds = %for.inc.1.i
  %arrayidx1.2.i = getelementptr i8, ptr %work, i32 11036
  %237 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load2_noabort(i32 %237)
  %238 = load i16, ptr %arrayidx1.2.i, align 2
  %conv.2.i = zext i16 %238 to i32
  %239 = ptrtoint ptr %234 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %234, align 4
  %dma_idx2.2.i = getelementptr inbounds %struct.mt76_queue_regs, ptr %240, i32 0, i32 3
  %241 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dma_idx2.2.i) #7, !srcloc !40
  %242 = tail call i32 @llvm.bswap.i32(i32 %241) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  %conv4.2.i = trunc i32 %242 to i16
  %243 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store2_noabort(i32 %243)
  store i16 %conv4.2.i, ptr %arrayidx1.2.i, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %242, i32 %conv.2.i)
  %cmp7.2.i = icmp eq i32 %242, %conv.2.i
  br i1 %cmp7.2.i, label %land.lhs.true.2.i, label %if.end.2.i.for.inc.2.i_crit_edge

if.end.2.i.for.inc.2.i_crit_edge:                 ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

land.lhs.true.2.i:                                ; preds = %if.end.2.i
  %244 = ptrtoint ptr %234 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %234, align 4
  %cpu_idx.2.i = getelementptr inbounds %struct.mt76_queue_regs, ptr %245, i32 0, i32 2
  %246 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cpu_idx.2.i) #7, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  call void @__sanitizer_cov_trace_cmp4(i32 %241, i32 %246)
  %cmp15.not.2.i = icmp eq i32 %241, %246
  br i1 %cmp15.not.2.i, label %land.lhs.true.2.i.for.inc.2.i_crit_edge, label %land.lhs.true.2.i.if.end6.i130_crit_edge

land.lhs.true.2.i.if.end6.i130_crit_edge:         ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i130

land.lhs.true.2.i.for.inc.2.i_crit_edge:          ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %land.lhs.true.2.i.for.inc.2.i_crit_edge, %if.end.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %arrayidx.3.i = getelementptr i8, ptr %work, i32 -532
  %247 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %arrayidx.3.i, align 4
  %queued.3.i = getelementptr inbounds %struct.mt76_queue, ptr %248, i32 0, i32 9
  %249 = ptrtoint ptr %queued.3.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %queued.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250)
  %tobool.not.3.i = icmp eq i32 %250, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.land.lhs.true.i127_crit_edge, label %if.end.3.i

for.inc.2.i.land.lhs.true.i127_crit_edge:         ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i127

if.end.3.i:                                       ; preds = %for.inc.2.i
  %arrayidx1.3.i = getelementptr i8, ptr %work, i32 11038
  %251 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load2_noabort(i32 %251)
  %252 = load i16, ptr %arrayidx1.3.i, align 2
  %conv.3.i = zext i16 %252 to i32
  %253 = ptrtoint ptr %248 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %248, align 4
  %dma_idx2.3.i = getelementptr inbounds %struct.mt76_queue_regs, ptr %254, i32 0, i32 3
  %255 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dma_idx2.3.i) #7, !srcloc !40
  %256 = tail call i32 @llvm.bswap.i32(i32 %255) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  %conv4.3.i = trunc i32 %256 to i16
  %257 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_store2_noabort(i32 %257)
  store i16 %conv4.3.i, ptr %arrayidx1.3.i, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %256, i32 %conv.3.i)
  %cmp7.3.i = icmp eq i32 %256, %conv.3.i
  br i1 %cmp7.3.i, label %land.lhs.true.3.i, label %if.end.3.i.land.lhs.true.i127_crit_edge

if.end.3.i.land.lhs.true.i127_crit_edge:          ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i127

land.lhs.true.3.i:                                ; preds = %if.end.3.i
  %258 = ptrtoint ptr %248 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %248, align 4
  %cpu_idx.3.i = getelementptr inbounds %struct.mt76_queue_regs, ptr %259, i32 0, i32 2
  %260 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cpu_idx.3.i) #7, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  call void @__sanitizer_cov_trace_cmp4(i32 %255, i32 %260)
  %cmp15.not.3.i = icmp eq i32 %255, %260
  br i1 %cmp15.not.3.i, label %land.lhs.true.3.i.land.lhs.true.i127_crit_edge, label %land.lhs.true.3.i.if.end6.i130_crit_edge

land.lhs.true.3.i.if.end6.i130_crit_edge:         ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i130

land.lhs.true.3.i.land.lhs.true.i127_crit_edge:   ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i127

land.lhs.true.i127:                               ; preds = %land.lhs.true.3.i.land.lhs.true.i127_crit_edge, %if.end.3.i.land.lhs.true.i127_crit_edge, %for.inc.2.i.land.lhs.true.i127_crit_edge
  %261 = ptrtoint ptr %tx_hang_check to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %tx_hang_check, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %262)
  %cmp3.i126 = icmp ult i8 %262, 10
  br i1 %cmp3.i126, label %if.then5.i128, label %land.lhs.true.i127.if.end6.i130_crit_edge

land.lhs.true.i127.if.end6.i130_crit_edge:        ; preds = %land.lhs.true.i127
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i130

if.then5.i128:                                    ; preds = %land.lhs.true.i127
  call void @__sanitizer_cov_trace_pc() #9
  %263 = ptrtoint ptr %tx_hang_check to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 0, ptr %tx_hang_check, align 1
  br label %lor.lhs.false19

if.end6.i130:                                     ; preds = %land.lhs.true.i127.if.end6.i130_crit_edge, %land.lhs.true.3.i.if.end6.i130_crit_edge, %land.lhs.true.2.i.if.end6.i130_crit_edge, %land.lhs.true.1.i.if.end6.i130_crit_edge, %land.lhs.true.i215.if.end6.i130_crit_edge
  %264 = ptrtoint ptr %tx_hang_check to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %tx_hang_check, align 1
  %inc.i129 = add i8 %265, 1
  store i8 %inc.i129, ptr %tx_hang_check, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %inc.i129)
  %cmp9.i131 = icmp ult i8 %inc.i129, 10
  br i1 %cmp9.i131, label %if.end6.i130.lor.lhs.false19_crit_edge, label %if.end6.i130.if.then48.sink.split_crit_edge

if.end6.i130.if.then48.sink.split_crit_edge:      ; preds = %if.end6.i130
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then48.sink.split

if.end6.i130.lor.lhs.false19_crit_edge:           ; preds = %if.end6.i130
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.end6.i130.lor.lhs.false19_crit_edge, %if.then5.i128
  %tx_dma_check = getelementptr i8, ptr %work, i32 11023
  %266 = ptrtoint ptr %reset_test.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %reset_test.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %267)
  %cmp.i139 = icmp eq i32 %267, 2
  br i1 %cmp.i139, label %lor.lhs.false19.if.then48.sink.split.sink.split_crit_edge, label %if.end.i141

lor.lhs.false19.if.then48.sink.split.sink.split_crit_edge: ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then48.sink.split.sink.split

if.end.i141:                                      ; preds = %lor.lhs.false19
  %268 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %bus.i, align 4
  %270 = ptrtoint ptr %269 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %269, align 4
  %call.i217 = tail call i32 %271(ptr noundef %add.ptr, i32 noundef 16904) #7
  %and.i218 = and i32 %call.i217, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i218)
  %tobool.not.i219 = icmp eq i32 %and.i218, 0
  br i1 %tobool.not.i219, label %if.end.i141.land.lhs.true.i144_crit_edge, label %mt7603_tx_dma_busy.exit

if.end.i141.land.lhs.true.i144_crit_edge:         ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i144

mt7603_tx_dma_busy.exit:                          ; preds = %if.end.i141
  %272 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %bus.i, align 4
  %wr.i.i220 = getelementptr inbounds %struct.mt76_bus_ops, ptr %273, i32 0, i32 1
  %274 = ptrtoint ptr %wr.i.i220 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %wr.i.i220, align 4
  tail call void %275(ptr noundef %add.ptr, i32 noundef 16964, i32 noundef -1744830464) #7
  %276 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %bus.i, align 4
  %278 = ptrtoint ptr %277 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %277, align 4
  %call.i.i221 = tail call i32 %279(ptr noundef %add.ptr, i32 noundef 16964) #7
  %and2.i = and i32 %call.i.i221, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp ne i32 %and2.i, 0
  %and4.i = and i32 %call.i.i221, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and4.i)
  %cmp.i222 = icmp ne i32 %and4.i, 15
  %280 = and i1 %tobool3.not.i, %cmp.i222
  br i1 %280, label %mt7603_tx_dma_busy.exit.if.end6.i147_crit_edge, label %mt7603_tx_dma_busy.exit.land.lhs.true.i144_crit_edge

mt7603_tx_dma_busy.exit.land.lhs.true.i144_crit_edge: ; preds = %mt7603_tx_dma_busy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i144

mt7603_tx_dma_busy.exit.if.end6.i147_crit_edge:   ; preds = %mt7603_tx_dma_busy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i147

land.lhs.true.i144:                               ; preds = %mt7603_tx_dma_busy.exit.land.lhs.true.i144_crit_edge, %if.end.i141.land.lhs.true.i144_crit_edge
  %281 = ptrtoint ptr %tx_dma_check to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %tx_dma_check, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %282)
  %cmp3.i143 = icmp ult i8 %282, 10
  br i1 %cmp3.i143, label %if.then5.i145, label %land.lhs.true.i144.if.end6.i147_crit_edge

land.lhs.true.i144.if.end6.i147_crit_edge:        ; preds = %land.lhs.true.i144
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i147

if.then5.i145:                                    ; preds = %land.lhs.true.i144
  call void @__sanitizer_cov_trace_pc() #9
  %283 = ptrtoint ptr %tx_dma_check to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 0, ptr %tx_dma_check, align 1
  br label %lor.lhs.false22

if.end6.i147:                                     ; preds = %land.lhs.true.i144.if.end6.i147_crit_edge, %mt7603_tx_dma_busy.exit.if.end6.i147_crit_edge
  %284 = ptrtoint ptr %tx_dma_check to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %tx_dma_check, align 1
  %inc.i146 = add i8 %285, 1
  store i8 %inc.i146, ptr %tx_dma_check, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %inc.i146)
  %cmp9.i148 = icmp ult i8 %inc.i146, 10
  br i1 %cmp9.i148, label %if.end6.i147.lor.lhs.false22_crit_edge, label %if.end6.i147.if.then48.sink.split_crit_edge

if.end6.i147.if.then48.sink.split_crit_edge:      ; preds = %if.end6.i147
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then48.sink.split

if.end6.i147.lor.lhs.false22_crit_edge:           ; preds = %if.end6.i147
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %if.end6.i147.lor.lhs.false22_crit_edge, %if.then5.i145
  %rx_dma_check = getelementptr i8, ptr %work, i32 11024
  %286 = ptrtoint ptr %reset_test.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %reset_test.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %287)
  %cmp.i156 = icmp eq i32 %287, 3
  br i1 %cmp.i156, label %lor.lhs.false22.if.then48.sink.split.sink.split_crit_edge, label %if.end.i158

lor.lhs.false22.if.then48.sink.split.sink.split_crit_edge: ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then48.sink.split.sink.split

if.end.i158:                                      ; preds = %lor.lhs.false22
  %288 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %bus.i, align 4
  %290 = ptrtoint ptr %289 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %289, align 4
  %call.i226 = tail call i32 %291(ptr noundef %add.ptr, i32 noundef 16904) #7
  %and.i227 = and i32 %call.i226, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i227)
  %tobool.not.i228 = icmp eq i32 %and.i227, 0
  br i1 %tobool.not.i228, label %if.end.i158.land.lhs.true.i161_crit_edge, label %mt7603_rx_dma_busy.exit

if.end.i158.land.lhs.true.i161_crit_edge:         ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i161

mt7603_rx_dma_busy.exit:                          ; preds = %if.end.i158
  %rev.i.i.i.i229 = getelementptr i8, ptr %work, i32 9532
  %292 = ptrtoint ptr %rev.i.i.i.i229 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %rev.i.i.i.i229, align 4
  %shr.i.mask.i.i.i230 = and i32 %293, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1982332928, i32 %shr.i.mask.i.i.i230)
  %cmp.i.i.i231 = icmp eq i32 %shr.i.mask.i.i.i230, 1982332928
  %294 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %bus.i, align 4
  %wr.i.i.i232 = getelementptr inbounds %struct.mt76_bus_ops, ptr %295, i32 0, i32 1
  %296 = ptrtoint ptr %wr.i.i.i232 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %wr.i.i.i232, align 4
  %..i.i233 = select i1 %cmp.i.i.i231, i32 -1744830464, i32 671088640
  %.14.i.i234 = select i1 %cmp.i.i.i231, i32 512, i32 256
  tail call void %297(ptr noundef %add.ptr, i32 noundef 16964, i32 noundef %..i.i233) #7
  %298 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %bus.i, align 4
  %300 = ptrtoint ptr %299 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %299, align 4
  %call.i9.i.i235 = tail call i32 %301(ptr noundef %add.ptr, i32 noundef 16964) #7
  %and3.i.i236 = and i32 %call.i9.i.i235, %.14.i.i234
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i236)
  %retval.0.i.i.not = icmp eq i32 %and3.i.i236, 0
  br i1 %retval.0.i.i.not, label %mt7603_rx_dma_busy.exit.land.lhs.true.i161_crit_edge, label %mt7603_rx_dma_busy.exit.if.end6.i164_crit_edge

mt7603_rx_dma_busy.exit.if.end6.i164_crit_edge:   ; preds = %mt7603_rx_dma_busy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i164

mt7603_rx_dma_busy.exit.land.lhs.true.i161_crit_edge: ; preds = %mt7603_rx_dma_busy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i161

land.lhs.true.i161:                               ; preds = %mt7603_rx_dma_busy.exit.land.lhs.true.i161_crit_edge, %if.end.i158.land.lhs.true.i161_crit_edge
  %302 = ptrtoint ptr %rx_dma_check to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %rx_dma_check, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %303)
  %cmp3.i160 = icmp ult i8 %303, 10
  br i1 %cmp3.i160, label %if.then5.i162, label %land.lhs.true.i161.if.end6.i164_crit_edge

land.lhs.true.i161.if.end6.i164_crit_edge:        ; preds = %land.lhs.true.i161
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i164

if.then5.i162:                                    ; preds = %land.lhs.true.i161
  call void @__sanitizer_cov_trace_pc() #9
  %304 = ptrtoint ptr %rx_dma_check to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 0, ptr %rx_dma_check, align 1
  br label %lor.lhs.false25

if.end6.i164:                                     ; preds = %land.lhs.true.i161.if.end6.i164_crit_edge, %mt7603_rx_dma_busy.exit.if.end6.i164_crit_edge
  %305 = ptrtoint ptr %rx_dma_check to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %rx_dma_check, align 1
  %inc.i163 = add i8 %306, 1
  store i8 %inc.i163, ptr %rx_dma_check, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %inc.i163)
  %cmp9.i165 = icmp ult i8 %inc.i163, 10
  br i1 %cmp9.i165, label %if.end6.i164.lor.lhs.false25_crit_edge, label %if.end6.i164.if.then48.sink.split_crit_edge

if.end6.i164.if.then48.sink.split_crit_edge:      ; preds = %if.end6.i164
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then48.sink.split

if.end6.i164.lor.lhs.false25_crit_edge:           ; preds = %if.end6.i164
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %if.end6.i164.lor.lhs.false25_crit_edge, %if.then5.i162
  %307 = ptrtoint ptr %reset_test.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %reset_test.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %308)
  %cmp.i173 = icmp eq i32 %308, 6
  br i1 %cmp.i173, label %lor.lhs.false25.if.then48.sink.split.sink.split_crit_edge, label %if.end.i175

lor.lhs.false25.if.then48.sink.split.sink.split_crit_edge: ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then48.sink.split.sink.split

if.end.i175:                                      ; preds = %lor.lhs.false25
  %mcu_hang = getelementptr i8, ptr %work, i32 11026
  %309 = ptrtoint ptr %mcu_hang to i32
  call void @__asan_load1_noabort(i32 %309)
  %.pr.i176 = load i8, ptr %mcu_hang, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %.pr.i176)
  %cmp9.i177 = icmp ult i8 %.pr.i176, 10
  br i1 %cmp9.i177, label %lor.lhs.false28, label %if.end.i175.if.then48.sink.split_crit_edge

if.end.i175.if.then48.sink.split_crit_edge:       ; preds = %if.end.i175
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then48.sink.split

lor.lhs.false28:                                  ; preds = %if.end.i175
  %arrayidx29 = getelementptr i8, ptr %work, i32 11072
  %310 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %arrayidx29, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %311)
  %tobool.not = icmp eq i32 %311, 0
  br i1 %tobool.not, label %if.end38, label %lor.lhs.false28.if.then48_crit_edge

lor.lhs.false28.if.then48_crit_edge:              ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then48

if.end38:                                         ; preds = %lor.lhs.false28
  %312 = ptrtoint ptr %mac_work_count to i32
  call void @__asan_load1_noabort(i32 %312)
  %.pr = load i8, ptr %mac_work_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %.pr)
  %cmp41 = icmp ugt i8 %.pr, 9
  br i1 %cmp41, label %if.then43, label %if.end38.if.end45.thread_crit_edge

if.end38.if.end45.thread_crit_edge:               ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.thread

if.then43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %313 = ptrtoint ptr %mac_work_count to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 0, ptr %mac_work_count, align 4
  br label %if.end45.thread

if.end45.thread:                                  ; preds = %if.then43, %if.end38.if.end45.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %if.end49

if.then48.sink.split.sink.split:                  ; preds = %lor.lhs.false25.if.then48.sink.split.sink.split_crit_edge, %lor.lhs.false22.if.then48.sink.split.sink.split_crit_edge, %lor.lhs.false19.if.then48.sink.split.sink.split_crit_edge, %lor.lhs.false16.if.then48.sink.split.sink.split_crit_edge, %lor.lhs.false.if.then48.sink.split.sink.split_crit_edge, %if.end.if.then48.sink.split.sink.split_crit_edge
  %.sink258.ph = phi i32 [ 4, %if.end.if.then48.sink.split.sink.split_crit_edge ], [ 3, %lor.lhs.false.if.then48.sink.split.sink.split_crit_edge ], [ 0, %lor.lhs.false16.if.then48.sink.split.sink.split_crit_edge ], [ 1, %lor.lhs.false19.if.then48.sink.split.sink.split_crit_edge ], [ 2, %lor.lhs.false22.if.then48.sink.split.sink.split_crit_edge ], [ 5, %lor.lhs.false25.if.then48.sink.split.sink.split_crit_edge ]
  %.sink.ph = phi i32 [ 11064, %if.end.if.then48.sink.split.sink.split_crit_edge ], [ 11060, %lor.lhs.false.if.then48.sink.split.sink.split_crit_edge ], [ 11048, %lor.lhs.false16.if.then48.sink.split.sink.split_crit_edge ], [ 11052, %lor.lhs.false19.if.then48.sink.split.sink.split_crit_edge ], [ 11056, %lor.lhs.false22.if.then48.sink.split.sink.split_crit_edge ], [ 11068, %lor.lhs.false25.if.then48.sink.split.sink.split_crit_edge ]
  %314 = ptrtoint ptr %reset_test.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 0, ptr %reset_test.i, align 4
  br label %if.then48.sink.split

if.then48.sink.split:                             ; preds = %if.then48.sink.split.sink.split, %if.end.i175.if.then48.sink.split_crit_edge, %if.end6.i164.if.then48.sink.split_crit_edge, %if.end6.i147.if.then48.sink.split_crit_edge, %if.end6.i130.if.then48.sink.split_crit_edge, %if.end.i113.if.then48.sink.split_crit_edge, %if.end6.i.if.then48.sink.split_crit_edge
  %.sink258 = phi i32 [ 4, %if.end6.i.if.then48.sink.split_crit_edge ], [ 3, %if.end.i113.if.then48.sink.split_crit_edge ], [ 0, %if.end6.i130.if.then48.sink.split_crit_edge ], [ 1, %if.end6.i147.if.then48.sink.split_crit_edge ], [ 2, %if.end6.i164.if.then48.sink.split_crit_edge ], [ 5, %if.end.i175.if.then48.sink.split_crit_edge ], [ %.sink258.ph, %if.then48.sink.split.sink.split ]
  %.sink = phi i32 [ 11064, %if.end6.i.if.then48.sink.split_crit_edge ], [ 11060, %if.end.i113.if.then48.sink.split_crit_edge ], [ 11048, %if.end6.i130.if.then48.sink.split_crit_edge ], [ 11052, %if.end6.i147.if.then48.sink.split_crit_edge ], [ 11056, %if.end6.i164.if.then48.sink.split_crit_edge ], [ 11068, %if.end.i175.if.then48.sink.split_crit_edge ], [ %.sink.ph, %if.then48.sink.split.sink.split ]
  %cur_reset_cause.i = getelementptr i8, ptr %work, i32 11028
  %315 = ptrtoint ptr %cur_reset_cause.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 %.sink258, ptr %cur_reset_cause.i, align 4
  %arrayidx.i = getelementptr i8, ptr %work, i32 %.sink
  %316 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %arrayidx.i, align 4
  %inc13.i180 = add i32 %317, 1
  store i32 %inc13.i180, ptr %arrayidx.i, align 4
  br label %if.then48

if.then48:                                        ; preds = %if.then48.sink.split, %lor.lhs.false28.if.then48_crit_edge
  %beacon_check31 = getelementptr i8, ptr %work, i32 11021
  %rx_dma_idx = getelementptr i8, ptr %work, i32 11040
  %318 = call ptr @memset(ptr %beacon_check31, i32 0, i32 6)
  %319 = ptrtoint ptr %rx_dma_idx to i32
  call void @__asan_store2_noabort(i32 %319)
  store i16 -1, ptr %rx_dma_idx, align 16
  %tx_dma_idx = getelementptr i8, ptr %work, i32 11032
  %320 = ptrtoint ptr %tx_dma_idx to i32
  call void @__asan_store8_noabort(i32 %320)
  store i64 -1, ptr %tx_dma_idx, align 8
  %321 = ptrtoint ptr %mac_work_count to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 0, ptr %mac_work_count, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  %beacon_int1.i = getelementptr i8, ptr %work, i32 9688
  %322 = ptrtoint ptr %beacon_int1.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %beacon_int1.i, align 8
  %irqmask.i = getelementptr i8, ptr %work, i32 10276
  %324 = ptrtoint ptr %irqmask.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %irqmask.i, align 4
  %hw.i = getelementptr i8, ptr %work, i32 172
  %326 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %hw.i, align 4
  tail call void @ieee80211_stop_queues(ptr noundef %327) #7
  %state.i = getelementptr i8, ptr %work, i32 -548
  tail call void @_set_bit(i32 noundef 7, ptr noundef %state.i) #7
  tail call void @mt76_txq_schedule_all(ptr noundef %add.ptr) #7
  %tx_worker.i = getelementptr i8, ptr %work, i32 7576
  %328 = ptrtoint ptr %tx_worker.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %tx_worker.i, align 4
  %tobool.not.i.i184 = icmp eq ptr %329, null
  br i1 %tobool.not.i.i184, label %if.then48.mt76_worker_disable.exit.i_crit_edge, label %if.end.i.i186

if.then48.mt76_worker_disable.exit.i_crit_edge:   ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_worker_disable.exit.i

if.end.i.i186:                                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i185 = tail call i32 @kthread_park(ptr noundef nonnull %329) #7
  %state.i.i = getelementptr i8, ptr %work, i32 7584
  %330 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store volatile i32 0, ptr %state.i.i, align 4
  br label %mt76_worker_disable.exit.i

mt76_worker_disable.exit.i:                       ; preds = %if.end.i.i186, %if.then48.mt76_worker_disable.exit.i_crit_edge
  %pre_tbtt_tasklet.i = getelementptr i8, ptr %work, i32 9664
  %count.i.i.i = getelementptr i8, ptr %work, i32 9672
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %count.i.i.i, i32 1, i32 3, i32 1) #7
  %331 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i, ptr %count.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i) #7, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !44
  tail call void @tasklet_unlock_wait(ptr noundef %pre_tbtt_tasklet.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !45
  %napi.i = getelementptr i8, ptr %work, i32 5376
  tail call void @napi_disable(ptr noundef %napi.i) #7
  %arrayidx3.i = getelementptr i8, ptr %work, i32 5600
  tail call void @napi_disable(ptr noundef %arrayidx3.i) #7
  %tx_napi.i = getelementptr i8, ptr %work, i32 7592
  tail call void @napi_disable(ptr noundef %tx_napi.i) #7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  tail call void @mt7603_beacon_set_timer(ptr noundef %add.ptr, i32 noundef -1, i32 noundef 0) #7
  %arrayidx4.i = getelementptr i8, ptr %work, i32 11072
  %332 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %arrayidx4.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %333)
  %tobool.not.i187 = icmp eq i32 %333, 0
  br i1 %tobool.not.i187, label %lor.lhs.false.i189, label %mt76_worker_disable.exit.i.if.end.i107.i_crit_edge

mt76_worker_disable.exit.i.if.end.i107.i_crit_edge: ; preds = %mt76_worker_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i107.i

lor.lhs.false.i189:                               ; preds = %mt76_worker_disable.exit.i
  %cur_reset_cause.i188 = getelementptr i8, ptr %work, i32 11028
  %334 = ptrtoint ptr %cur_reset_cause.i188 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %cur_reset_cause.i188, align 4
  %336 = zext i32 %335 to i64
  call void @__sanitizer_cov_trace_switch(i64 %336, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %335, label %lor.lhs.false.i189.if.end15.i_crit_edge [
    i32 4, label %lor.lhs.false.i189.if.then.i.i191_crit_edge
    i32 3, label %lor.lhs.false.i189.if.then.i.i191_crit_edge259
    i32 0, label %lor.lhs.false.i189.if.then.i.i191_crit_edge260
  ]

lor.lhs.false.i189.if.then.i.i191_crit_edge260:   ; preds = %lor.lhs.false.i189
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i191

lor.lhs.false.i189.if.then.i.i191_crit_edge259:   ; preds = %lor.lhs.false.i189
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i191

lor.lhs.false.i189.if.then.i.i191_crit_edge:      ; preds = %lor.lhs.false.i189
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i191

lor.lhs.false.i189.if.end15.i_crit_edge:          ; preds = %lor.lhs.false.i189
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then.i.i191:                                   ; preds = %lor.lhs.false.i189.if.then.i.i191_crit_edge, %lor.lhs.false.i189.if.then.i.i191_crit_edge259, %lor.lhs.false.i189.if.then.i.i191_crit_edge260
  %337 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %bus.i, align 4
  %rmw.i.i190 = getelementptr inbounds %struct.mt76_bus_ops, ptr %338, i32 0, i32 2
  %339 = ptrtoint ptr %rmw.i.i190 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %rmw.i.i190, align 4
  %call.i106.i = tail call i32 %340(ptr noundef %add.ptr, i32 noundef 33132, i32 noundef 2, i32 noundef 0) #7
  br label %if.end.i107.i

if.end.i107.i:                                    ; preds = %if.then.i.i191, %mt76_worker_disable.exit.i.if.end.i107.i_crit_edge
  %341 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %bus.i, align 4
  %rmw2.i.i192 = getelementptr inbounds %struct.mt76_bus_ops, ptr %342, i32 0, i32 2
  %343 = ptrtoint ptr %rmw2.i.i192 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %rmw2.i.i192, align 4
  %call3.i.i193 = tail call i32 %344(ptr noundef %add.ptr, i32 noundef 33132, i32 noundef 0, i32 noundef 1) #7
  %call4.i.i = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %add.ptr, i32 noundef 33132, i32 noundef 2, i32 noundef 2, i32 noundef 500) #7
  br i1 %call4.i.i, label %if.end.i107.i.if.end16.i.i_crit_edge, label %if.then5.i.i

if.end.i107.i.if.end16.i.i_crit_edge:             ; preds = %if.end.i107.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i.i

if.then5.i.i:                                     ; preds = %if.end.i107.i
  call void @__sanitizer_cov_trace_pc() #9
  %345 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %arrayidx4.i, align 8
  %inc.i.i = add i32 %346, 1
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then5.i.i, %if.end.i107.i.if.end16.i.i_crit_edge
  %.sink38.i.i = phi i32 [ %inc.i.i, %if.then5.i.i ], [ 0, %if.end.i107.i.if.end16.i.i_crit_edge ]
  %.sink.i.i = phi i32 [ 1, %if.then5.i.i ], [ 124, %if.end.i107.i.if.end16.i.i_crit_edge ]
  %347 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 %.sink38.i.i, ptr %arrayidx4.i, align 8
  %348 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %bus.i, align 4
  %rmw14.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %349, i32 0, i32 2
  %350 = ptrtoint ptr %rmw14.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %rmw14.i.i, align 4
  %call15.i.i = tail call i32 %351(ptr noundef %add.ptr, i32 noundef 33132, i32 noundef %.sink.i.i, i32 noundef 0) #7
  %352 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %arrayidx4.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %353)
  %cmp.i.i194 = icmp ugt i32 %353, 2
  br i1 %cmp.i.i194, label %if.then19.i.i, label %if.end.i195

if.then19.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %354 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %354)
  store i32 0, ptr %arrayidx4.i, align 8
  br label %if.end15.i

if.end.i195:                                      ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %353)
  %tobool13.not.i = icmp eq i32 %353, 0
  br i1 %tobool13.not.i, label %if.end.i195.if.end15.i_crit_edge, label %if.end.i195.skip_dma_reset.i_crit_edge

if.end.i195.skip_dma_reset.i_crit_edge:           ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_dma_reset.i

if.end.i195.if.end15.i_crit_edge:                 ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end.i195.if.end15.i_crit_edge, %if.then19.i.i, %lor.lhs.false.i189.if.end15.i_crit_edge
  %355 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %bus.i, align 4
  %rmw.i109.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %356, i32 0, i32 2
  %357 = ptrtoint ptr %rmw.i109.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %rmw.i109.i, align 4
  %call.i110.i = tail call i32 %358(ptr noundef %add.ptr, i32 noundef 136320, i32 noundef 0, i32 noundef 768) #7
  %359 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %bus.i, align 4
  %wr.i.i196 = getelementptr inbounds %struct.mt76_bus_ops, ptr %360, i32 0, i32 1
  %361 = ptrtoint ptr %wr.i.i196 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %wr.i.i196, align 4
  tail call void %362(ptr noundef %add.ptr, i32 noundef 136448, i32 noundef 0) #7
  %363 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %bus.i, align 4
  %rmw3.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %364, i32 0, i32 2
  %365 = ptrtoint ptr %rmw3.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %rmw3.i.i, align 4
  %call4.i111.i = tail call i32 %366(ptr noundef %add.ptr, i32 noundef 136304, i32 noundef 1, i32 noundef 0) #7
  %367 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %bus.i, align 4
  %rmw.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %368, i32 0, i32 2
  %369 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %rmw.i, align 4
  %call.i197 = tail call i32 %370(ptr noundef %add.ptr, i32 noundef 16904, i32 noundef 69, i32 noundef 0) #7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  tail call void @mt76_set_irq_mask(ptr noundef %add.ptr, i32 noundef 16900, i32 noundef %325, i32 noundef 0) #7
  %371 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %bus.i, align 4
  %rmw17.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %372, i32 0, i32 2
  %373 = ptrtoint ptr %rmw17.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %rmw17.i, align 4
  %call18.i = tail call i32 %374(ptr noundef %add.ptr, i32 noundef 16904, i32 noundef 0, i32 noundef 33554432) #7
  %call.i112.i = tail call i32 @mt7603_reg_map(ptr noundef %add.ptr, i32 noundef -2146697104) #7
  %375 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %bus.i, align 4
  %rmw.i114.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %376, i32 0, i32 2
  %377 = ptrtoint ptr %rmw.i114.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %rmw.i114.i, align 4
  %call1.i.i = tail call i32 %378(ptr noundef %add.ptr, i32 noundef %call.i112.i, i32 noundef 3342336, i32 noundef 0) #7
  %379 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %bus.i, align 4
  %rmw3.i115.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %380, i32 0, i32 2
  %381 = ptrtoint ptr %rmw3.i115.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %rmw3.i115.i, align 4
  %call4.i116.i = tail call i32 %382(ptr noundef %add.ptr, i32 noundef %call.i112.i, i32 noundef 0, i32 noundef 65536) #7
  %call5.i.i = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %add.ptr, i32 noundef %call.i112.i, i32 noundef 1048576, i32 noundef 1048576, i32 noundef 500) #7
  %383 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %bus.i, align 4
  %rmw7.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %384, i32 0, i32 2
  %385 = ptrtoint ptr %rmw7.i.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %rmw7.i.i, align 4
  %call8.i.i = tail call i32 %386(ptr noundef %add.ptr, i32 noundef %call.i112.i, i32 noundef 0, i32 noundef 131072) #7
  %387 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %bus.i, align 4
  %rmw10.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %388, i32 0, i32 2
  %389 = ptrtoint ptr %rmw10.i.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %rmw10.i.i, align 4
  %call11.i.i = tail call i32 %390(ptr noundef %add.ptr, i32 noundef 16904, i32 noundef 0, i32 noundef 16777216) #7
  %call12.i.i = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %add.ptr, i32 noundef %call.i112.i, i32 noundef 2097152, i32 noundef 2097152, i32 noundef 500) #7
  %391 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %bus.i, align 4
  %rmw14.i117.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %392, i32 0, i32 2
  %393 = ptrtoint ptr %rmw14.i117.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %rmw14.i117.i, align 4
  %call15.i118.i = tail call i32 %394(ptr noundef %add.ptr, i32 noundef %call.i112.i, i32 noundef 196608, i32 noundef 0) #7
  %queue_ops.i = getelementptr i8, ptr %work, i32 7556
  %395 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %queue_ops.i, align 4
  %tx_cleanup.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %396, i32 0, i32 6
  %397 = ptrtoint ptr %tx_cleanup.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %tx_cleanup.i, align 4
  %q_mcu.i = getelementptr i8, ptr %work, i32 6784
  %399 = ptrtoint ptr %q_mcu.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %q_mcu.i, align 16
  tail call void %398(ptr noundef %add.ptr, ptr noundef %400, i1 noundef zeroext true) #7
  %401 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %queue_ops.i, align 4
  %tx_cleanup22.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %402, i32 0, i32 6
  %403 = ptrtoint ptr %tx_cleanup22.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %tx_cleanup22.i, align 4
  %arrayidx23.i = getelementptr i8, ptr %work, i32 -544
  %405 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %arrayidx23.i, align 4
  tail call void %404(ptr noundef %add.ptr, ptr noundef %406, i1 noundef zeroext true) #7
  %407 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %queue_ops.i, align 4
  %tx_cleanup22.1.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %408, i32 0, i32 6
  %409 = ptrtoint ptr %tx_cleanup22.1.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %tx_cleanup22.1.i, align 4
  %arrayidx23.1.i = getelementptr i8, ptr %work, i32 -540
  %411 = ptrtoint ptr %arrayidx23.1.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %arrayidx23.1.i, align 4
  tail call void %410(ptr noundef %add.ptr, ptr noundef %412, i1 noundef zeroext true) #7
  %413 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %queue_ops.i, align 4
  %tx_cleanup22.2.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %414, i32 0, i32 6
  %415 = ptrtoint ptr %tx_cleanup22.2.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %tx_cleanup22.2.i, align 4
  %arrayidx23.2.i = getelementptr i8, ptr %work, i32 -536
  %417 = ptrtoint ptr %arrayidx23.2.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %arrayidx23.2.i, align 4
  tail call void %416(ptr noundef %add.ptr, ptr noundef %418, i1 noundef zeroext true) #7
  %419 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %queue_ops.i, align 4
  %tx_cleanup22.3.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %420, i32 0, i32 6
  %421 = ptrtoint ptr %tx_cleanup22.3.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %tx_cleanup22.3.i, align 4
  %arrayidx23.3.i = getelementptr i8, ptr %work, i32 -532
  %423 = ptrtoint ptr %arrayidx23.3.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %arrayidx23.3.i, align 4
  tail call void %422(ptr noundef %add.ptr, ptr noundef %424, i1 noundef zeroext true) #7
  %425 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %queue_ops.i, align 4
  %tx_cleanup22.4.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %426, i32 0, i32 6
  %427 = ptrtoint ptr %tx_cleanup22.4.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %tx_cleanup22.4.i, align 4
  %arrayidx23.4.i = getelementptr i8, ptr %work, i32 -528
  %429 = ptrtoint ptr %arrayidx23.4.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %arrayidx23.4.i, align 4
  tail call void %428(ptr noundef %add.ptr, ptr noundef %430, i1 noundef zeroext true) #7
  %431 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %queue_ops.i, align 4
  %tx_cleanup22.5.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %432, i32 0, i32 6
  %433 = ptrtoint ptr %tx_cleanup22.5.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %tx_cleanup22.5.i, align 4
  %arrayidx23.5.i = getelementptr i8, ptr %work, i32 -524
  %435 = ptrtoint ptr %arrayidx23.5.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %arrayidx23.5.i, align 4
  tail call void %434(ptr noundef %add.ptr, ptr noundef %436, i1 noundef zeroext true) #7
  %437 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %queue_ops.i, align 4
  %tx_cleanup22.6.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %438, i32 0, i32 6
  %439 = ptrtoint ptr %tx_cleanup22.6.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %tx_cleanup22.6.i, align 4
  %arrayidx23.6.i = getelementptr i8, ptr %work, i32 -520
  %441 = ptrtoint ptr %arrayidx23.6.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %arrayidx23.6.i, align 4
  tail call void %440(ptr noundef %add.ptr, ptr noundef %442, i1 noundef zeroext true) #7
  %ndesc.i = getelementptr i8, ptr %work, i32 6904
  %443 = ptrtoint ptr %ndesc.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load i32, ptr %ndesc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %444)
  %tobool27.not.i = icmp eq i32 %444, 0
  br i1 %tobool27.not.i, label %if.end15.i.for.end32.i_crit_edge, label %for.body28.i

if.end15.i.for.end32.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end32.i

for.body28.i:                                     ; preds = %if.end15.i
  %445 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %queue_ops.i, align 4
  %rx_reset.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %446, i32 0, i32 5
  %447 = ptrtoint ptr %rx_reset.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %rx_reset.i, align 4
  tail call void %448(ptr noundef %add.ptr, i32 noundef 0) #7
  %ndesc.1.i = getelementptr i8, ptr %work, i32 7056
  %449 = ptrtoint ptr %ndesc.1.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load i32, ptr %ndesc.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %450)
  %tobool27.not.1.i = icmp eq i32 %450, 0
  br i1 %tobool27.not.1.i, label %for.body28.i.for.end32.i_crit_edge, label %for.body28.1.i

for.body28.i.for.end32.i_crit_edge:               ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end32.i

for.body28.1.i:                                   ; preds = %for.body28.i
  %451 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %queue_ops.i, align 4
  %rx_reset.1.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %452, i32 0, i32 5
  %453 = ptrtoint ptr %rx_reset.1.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %rx_reset.1.i, align 4
  tail call void %454(ptr noundef %add.ptr, i32 noundef 1) #7
  %ndesc.2.i = getelementptr i8, ptr %work, i32 7208
  %455 = ptrtoint ptr %ndesc.2.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %ndesc.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %456)
  %tobool27.not.2.i = icmp eq i32 %456, 0
  br i1 %tobool27.not.2.i, label %for.body28.1.i.for.end32.i_crit_edge, label %for.body28.2.i

for.body28.1.i.for.end32.i_crit_edge:             ; preds = %for.body28.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end32.i

for.body28.2.i:                                   ; preds = %for.body28.1.i
  %457 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %queue_ops.i, align 4
  %rx_reset.2.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %458, i32 0, i32 5
  %459 = ptrtoint ptr %rx_reset.2.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %rx_reset.2.i, align 4
  tail call void %460(ptr noundef %add.ptr, i32 noundef 2) #7
  %ndesc.3.i = getelementptr i8, ptr %work, i32 7360
  %461 = ptrtoint ptr %ndesc.3.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %ndesc.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %462)
  %tobool27.not.3.i = icmp eq i32 %462, 0
  br i1 %tobool27.not.3.i, label %for.body28.2.i.for.end32.i_crit_edge, label %for.body28.3.i

for.body28.2.i.for.end32.i_crit_edge:             ; preds = %for.body28.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end32.i

for.body28.3.i:                                   ; preds = %for.body28.2.i
  %463 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %queue_ops.i, align 4
  %rx_reset.3.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %464, i32 0, i32 5
  %465 = ptrtoint ptr %rx_reset.3.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %rx_reset.3.i, align 4
  tail call void %466(ptr noundef %add.ptr, i32 noundef 3) #7
  %ndesc.4.i = getelementptr i8, ptr %work, i32 7512
  %467 = ptrtoint ptr %ndesc.4.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load i32, ptr %ndesc.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %468)
  %tobool27.not.4.i = icmp eq i32 %468, 0
  br i1 %tobool27.not.4.i, label %for.body28.3.i.for.end32.i_crit_edge, label %for.body28.4.i

for.body28.3.i.for.end32.i_crit_edge:             ; preds = %for.body28.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end32.i

for.body28.4.i:                                   ; preds = %for.body28.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %469 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %queue_ops.i, align 4
  %rx_reset.4.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %470, i32 0, i32 5
  %471 = ptrtoint ptr %rx_reset.4.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %rx_reset.4.i, align 4
  tail call void %472(ptr noundef %add.ptr, i32 noundef 4) #7
  br label %for.end32.i

for.end32.i:                                      ; preds = %for.body28.4.i, %for.body28.3.i.for.end32.i_crit_edge, %for.body28.2.i.for.end32.i_crit_edge, %for.body28.1.i.for.end32.i_crit_edge, %for.body28.i.for.end32.i_crit_edge, %if.end15.i.for.end32.i_crit_edge
  tail call void @mt76_tx_status_check(ptr noundef %add.ptr, i1 noundef zeroext true) #7
  %rev.i.i.i.i = getelementptr i8, ptr %work, i32 9532
  %473 = ptrtoint ptr %rev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load i32, ptr %rev.i.i.i.i, align 4
  %shr.i.mask.i.i.i = and i32 %474, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1982332928, i32 %shr.i.mask.i.i.i)
  %cmp.i.i.i = icmp eq i32 %shr.i.mask.i.i.i, 1982332928
  br i1 %cmp.i.i.i, label %if.end.i124.i, label %for.end32.i.mt7603_dma_sched_reset.exit.i_crit_edge

for.end32.i.mt7603_dma_sched_reset.exit.i_crit_edge: ; preds = %for.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7603_dma_sched_reset.exit.i

if.end.i124.i:                                    ; preds = %for.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  %475 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %bus.i, align 4
  %rmw.i120.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %476, i32 0, i32 2
  %477 = ptrtoint ptr %rmw.i120.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %rmw.i120.i, align 4
  %call1.i121.i = tail call i32 %478(ptr noundef %add.ptr, i32 noundef 17812, i32 noundef 0, i32 noundef 256) #7
  %479 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %bus.i, align 4
  %rmw3.i122.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %480, i32 0, i32 2
  %481 = ptrtoint ptr %rmw3.i122.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %rmw3.i122.i, align 4
  %call4.i123.i = tail call i32 %482(ptr noundef %add.ptr, i32 noundef 17812, i32 noundef 256, i32 noundef 0) #7
  br label %mt7603_dma_sched_reset.exit.i

mt7603_dma_sched_reset.exit.i:                    ; preds = %if.end.i124.i, %for.end32.i.mt7603_dma_sched_reset.exit.i_crit_edge
  %483 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %bus.i, align 4
  %rmw.i.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %484, i32 0, i32 2
  %485 = ptrtoint ptr %rmw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %rmw.i.i.i, align 4
  %call.i.i.i = tail call i32 %486(ptr noundef %add.ptr, i32 noundef 136320, i32 noundef 768, i32 noundef 0) #7
  %487 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %bus.i, align 4
  %wr.i.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %488, i32 0, i32 1
  %489 = ptrtoint ptr %wr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %wr.i.i.i, align 4
  tail call void %490(ptr noundef %add.ptr, i32 noundef 136448, i32 noundef -1) #7
  %491 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %bus.i, align 4
  %rmw3.i.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %492, i32 0, i32 2
  %493 = ptrtoint ptr %rmw3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %rmw3.i.i.i, align 4
  %call4.i.i.i = tail call i32 %494(ptr noundef %add.ptr, i32 noundef 136304, i32 noundef 0, i32 noundef 1) #7
  %call.i15.i.i = tail call zeroext i1 @__mt76_poll(ptr noundef %add.ptr, i32 noundef 16904, i32 noundef 10, i32 noundef 0, i32 noundef 1000) #7
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #7
  %495 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %bus.i, align 4
  %rmw.i125.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %496, i32 0, i32 2
  %497 = ptrtoint ptr %rmw.i125.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %rmw.i125.i, align 4
  %call10.i.i = tail call i32 %498(ptr noundef %add.ptr, i32 noundef 16904, i32 noundef 0, i32 noundef 117) #7
  tail call void @mt76_set_irq_mask(ptr noundef %add.ptr, i32 noundef 16900, i32 noundef 0, i32 noundef 1048563) #7
  tail call void @mt76_set_irq_mask(ptr noundef %add.ptr, i32 noundef 16900, i32 noundef 0, i32 noundef %325) #7
  br label %skip_dma_reset.i

skip_dma_reset.i:                                 ; preds = %mt7603_dma_sched_reset.exit.i, %if.end.i195.skip_dma_reset.i_crit_edge
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %state.i) #7
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  %499 = ptrtoint ptr %tx_worker.i to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %tx_worker.i, align 4
  %tobool.not.i126.i = icmp eq ptr %500, null
  br i1 %tobool.not.i126.i, label %skip_dma_reset.i.mt76_worker_enable.exit.i_crit_edge, label %if.end.i127.i

skip_dma_reset.i.mt76_worker_enable.exit.i_crit_edge: ; preds = %skip_dma_reset.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_worker_enable.exit.i

if.end.i127.i:                                    ; preds = %skip_dma_reset.i
  tail call void @kthread_unpark(ptr noundef nonnull %500) #7
  %501 = ptrtoint ptr %tx_worker.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %tx_worker.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %502, null
  br i1 %tobool.not.i.i.i, label %if.end.i127.i.mt76_worker_enable.exit.i_crit_edge, label %if.end.i.i.i

if.end.i127.i.mt76_worker_enable.exit.i_crit_edge: ; preds = %if.end.i127.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_worker_enable.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i127.i
  %state.i.i.i = getelementptr i8, ptr %work, i32 7584
  %call.i.i128.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i128.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i128.i, 0
  br i1 %tobool1.not.i.i.i, label %land.lhs.true.i.i.i, label %if.end.i.i.i.mt76_worker_enable.exit.i_crit_edge

if.end.i.i.i.mt76_worker_enable.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_worker_enable.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i.i
  %503 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load volatile i32, ptr %state.i.i.i, align 4
  %505 = and i32 %504, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %505)
  %tobool4.not.i.i.i = icmp eq i32 %505, 0
  br i1 %tobool4.not.i.i.i, label %if.then5.i.i.i, label %land.lhs.true.i.i.i.mt76_worker_enable.exit.i_crit_edge

land.lhs.true.i.i.i.mt76_worker_enable.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_worker_enable.exit.i

if.then5.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %506 = ptrtoint ptr %tx_worker.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %tx_worker.i, align 4
  %call7.i.i.i = tail call i32 @wake_up_process(ptr noundef %507) #7
  br label %mt76_worker_enable.exit.i

mt76_worker_enable.exit.i:                        ; preds = %if.then5.i.i.i, %land.lhs.true.i.i.i.mt76_worker_enable.exit.i_crit_edge, %if.end.i.i.i.mt76_worker_enable.exit.i_crit_edge, %if.end.i127.i.mt76_worker_enable.exit.i_crit_edge, %skip_dma_reset.i.mt76_worker_enable.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !46
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %count.i.i.i, i32 1, i32 3, i32 1) #7
  %508 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i, ptr %count.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i) #7, !srcloc !47
  tail call void @mt7603_beacon_set_timer(ptr noundef %add.ptr, i32 noundef -1, i32 noundef %323) #7
  tail call fastcc void @local_bh_disable() #7
  tail call void @napi_enable(ptr noundef %tx_napi.i) #7
  %call.i129.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %tx_napi.i) #7
  br i1 %call.i129.i, label %if.then.i130.i, label %mt76_worker_enable.exit.i.napi_schedule.exit.i_crit_edge

mt76_worker_enable.exit.i.napi_schedule.exit.i_crit_edge: ; preds = %mt76_worker_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %napi_schedule.exit.i

if.then.i130.i:                                   ; preds = %mt76_worker_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__napi_schedule(ptr noundef %tx_napi.i) #7
  br label %napi_schedule.exit.i

napi_schedule.exit.i:                             ; preds = %if.then.i130.i, %mt76_worker_enable.exit.i.napi_schedule.exit.i_crit_edge
  tail call void @napi_enable(ptr noundef %napi.i) #7
  %call.i132.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi.i) #7
  br i1 %call.i132.i, label %if.then.i133.i, label %napi_schedule.exit.i.napi_schedule.exit135.i_crit_edge

napi_schedule.exit.i.napi_schedule.exit135.i_crit_edge: ; preds = %napi_schedule.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %napi_schedule.exit135.i

if.then.i133.i:                                   ; preds = %napi_schedule.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__napi_schedule(ptr noundef %napi.i) #7
  br label %napi_schedule.exit135.i

napi_schedule.exit135.i:                          ; preds = %if.then.i133.i, %napi_schedule.exit.i.napi_schedule.exit135.i_crit_edge
  tail call void @napi_enable(ptr noundef %arrayidx3.i) #7
  %call.i136.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx3.i) #7
  br i1 %call.i136.i, label %if.then.i137.i, label %napi_schedule.exit135.i.mt7603_mac_watchdog_reset.exit_crit_edge

napi_schedule.exit135.i.mt7603_mac_watchdog_reset.exit_crit_edge: ; preds = %napi_schedule.exit135.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7603_mac_watchdog_reset.exit

if.then.i137.i:                                   ; preds = %napi_schedule.exit135.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__napi_schedule(ptr noundef %arrayidx3.i) #7
  br label %mt7603_mac_watchdog_reset.exit

mt7603_mac_watchdog_reset.exit:                   ; preds = %if.then.i137.i, %napi_schedule.exit135.i.mt7603_mac_watchdog_reset.exit_crit_edge
  tail call fastcc void @local_bh_enable() #7
  %509 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %hw.i, align 4
  tail call void @ieee80211_wake_queues(ptr noundef %510) #7
  tail call void @mt76_txq_schedule_all(ptr noundef %add.ptr) #7
  br label %if.end49

if.end49:                                         ; preds = %mt7603_mac_watchdog_reset.exit, %if.end45.thread
  %511 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %add.ptr, align 128
  tail call void @ieee80211_queue_delayed_work(ptr noundef %512, ptr noundef %work, i32 noundef 10) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_tx_status_check(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_update_survey(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_get_hdrlen_from_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_add_return(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mac_txdone(ptr noundef %dev, i8 noundef zeroext %wcid, i8 noundef zeroext %pktid) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mac_txdone, i32 0, i32 1), ptr blockaddress(@trace_mac_txdone, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !48

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !24) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !34

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !24) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !49
  %call42 = tail call i32 @__traceiter_mac_txdone(ptr noundef null, ptr noundef %dev, i8 noundef zeroext %wcid, i8 noundef zeroext %pktid) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !50
  %13 = tail call i32 @llvm.read_register.i32(metadata !24) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !24) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !34

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !24) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mac_txdone, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mac_txdone, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mac_txdone.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_mac_txdone.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 102, ptr noundef nonnull @.str.1) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !52
  %31 = tail call i32 @llvm.read_register.i32(metadata !24) #7
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
declare dso_local void @mt76_tx_status_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mt76_tx_status_skb_get(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_tx_status_skb_done(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_tx_status_unlock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mac_txdone(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status_ext(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mt76_tx_complete_skb(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_set_irq_mask(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_get_min_avg_rssi(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_txq_schedule_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7603_beacon_set_timer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_park(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_unpark(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smax.i8(i8, i8) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !12, !14, !15, !17, !19, !20, !21, !23}
!llvm.named.register.sp = !{!24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/mac.c", i32 208, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"ac_to_tid", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/mac.c", i32 395, i32 18}
!5 = distinct !{null, !6, !"__warned", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/mac.c", i32 1269, i32 9}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/mac.c", i32 480, i32 9}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/../trace.h", i32 99, i32 1}
!19 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{!"sp"}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{!"branch_weights", i32 2000, i32 1}
!35 = !{i64 2149709649}
!36 = !{i64 2149709915}
!37 = !{i64 1318002, i64 1318029, i64 1318051, i64 1318079}
!38 = !{i64 1318410, i64 1318437, i64 1318470, i64 1318491, i64 1318518, i64 1318544}
!39 = !{i8 0, i8 2}
!40 = !{i64 6088654}
!41 = !{i64 2162075588}
!42 = !{i64 2162076074}
!43 = !{i64 2148413012, i64 2148413038, i64 2148413067, i64 2148413101, i64 2148413132, i64 2148413155}
!44 = !{i64 2155302555}
!45 = !{i64 2155303197}
!46 = !{i64 2155303544}
!47 = !{i64 2148415477, i64 2148415503, i64 2148415532, i64 2148415566, i64 2148415597, i64 2148415620}
!48 = !{i64 2148894827, i64 2148894832, i64 2148894845, i64 2148894889, i64 2148894923, i64 2148894944}
!49 = !{i64 2157933172}
!50 = !{i64 2157933387}
!51 = !{i64 2149718208}
!52 = !{i64 2149719244}
