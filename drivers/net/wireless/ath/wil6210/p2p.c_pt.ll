; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/wil6210/p2p.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/wil6210/p2p.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.wil6210_vif = type { %struct.wireless_dev, ptr, ptr, i8, [1 x i32], i32, i16, i8, i8, i32, i8, i32, ptr, ptr, ptr, i32, i32, i32, [32 x i8], i32, i8, [32 x i8], i32, i32, ptr, i32, %struct.timer_list, %struct.work_struct, ptr, %struct.timer_list, %struct.wil_p2p_info, %struct.list_head, %struct.mutex, %struct.work_struct, i32, i8, i64, i32, %struct.work_struct }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.126, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.126 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.127 }
%union.anon.127 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.wil_p2p_info = type { %struct.ieee80211_channel, i8, i64, ptr, i32, %struct.timer_list, %struct.work_struct, %struct.work_struct }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wil6210_priv = type { ptr, i32, ptr, ptr, i32, ptr, [1 x i32], [32 x i8], i32, i8, ptr, ptr, ptr, i32, ptr, [1 x i32], [1 x i32], [1 x i32], i32, i32, i32, %struct.wait_queue_head, i8, [4 x ptr], %struct.mutex, %struct.atomic_t, i32, %struct.cfg80211_chan_def, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, %struct.wil6210_mbox_ctl, %struct.completion, %struct.completion, i16, i16, i8, ptr, i16, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.napi_struct, %struct.napi_struct, %struct.net_device, %struct.wil_ring, i32, [24 x %struct.wil_ring], [24 x %struct.wil_ring_tx_data], [8 x %struct.wil_status_ring], i8, i32, [24 x [2 x i8]], [20 x %struct.wil_sta_info], i32, i32, %struct.wil_rx_buff_mgmt, i8, %struct.wil_txrx_ops, %struct.mutex, %struct.rw_semaphore, %struct.atomic_t, %struct.atomic_t, ptr, [19 x %struct.wil_blob_wrapper], i8, i8, i8, %struct.wil_suspend_stats, %struct.wil_debugfs_data, i8, i32, ptr, %struct.wil_platform_ops, i8, %struct.pmc_ctx, i8, ptr, ptr, %struct.wil_halp, i32, i32, %struct.notifier_block, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i8, i8, i8, %struct.wil_fw_stats_global, i32, i32, i8, i32, [16 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.wil6210_mbox_ctl = type { %struct.wil6210_mbox_ring, %struct.wil6210_mbox_ring }
%struct.wil6210_mbox_ring = type { i32, i16, i16, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.105, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.122, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.105 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.122 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.wil_ring = type { i32, ptr, i16, i32, i32, i32, ptr, %struct.wil_desc_ring_rx_swtail, i8 }
%struct.wil_desc_ring_rx_swtail = type { ptr, i32 }
%struct.wil_ring_tx_data = type { i8, i32, i32, i32, i32, i8, i16, i8, i8, i8, %struct.spinlock }
%struct.wil_status_ring = type { i32, ptr, i16, i32, i32, i32, i8, i8, %struct.wil_ring_rx_data, i32 }
%struct.wil_ring_rx_data = type { ptr, i8, i16 }
%struct.wil_sta_info = type { [6 x i8], i8, i32, %struct.wil_net_stats, ptr, %struct.wmi_link_stats_basic, [16 x ptr], %struct.spinlock, [1 x i32], [1 x i32], [16 x %struct.wil_tid_crypto_rx], %struct.wil_tid_crypto_rx, i8 }
%struct.wil_net_stats = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [16 x i64], i32 }
%struct.wmi_link_stats_basic = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [7 x i8], i16, i32, i32, i32, i32, i32 }
%struct.wil_tid_crypto_rx = type { [4 x %struct.wil_tid_crypto_rx_single] }
%struct.wil_tid_crypto_rx_single = type { [6 x i8], i8 }
%struct.wil_rx_buff_mgmt = type { ptr, i32, %struct.list_head, %struct.list_head, i32 }
%struct.wil_txrx_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wil_blob_wrapper = type { ptr, %struct.debugfs_blob_wrapper }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.wil_suspend_stats = type { %struct.wil_suspend_count_stats, %struct.wil_suspend_count_stats, i32, i32 }
%struct.wil_suspend_count_stats = type { i32, i32, i32, i32 }
%struct.wil_debugfs_data = type { ptr, i32 }
%struct.wil_platform_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pmc_ctx = type { %struct.mutex, ptr, i32, ptr, i32, i32, i32 }
%struct.wil_halp = type { %struct.mutex, i32, %struct.completion, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.wil_fw_stats_global = type { i8, i64, %struct.wmi_link_stats_global }
%struct.wmi_link_stats_global = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i8] }

@wil_p2p_search.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wil6210\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wil_p2p_search\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/wireless/ath/wil6210/p2p.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DBG[MISC]p2p_search: channel %d\0A\00", [63 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: search failed. discovery already ongoing\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: wmi_p2p_cfg failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DIRECT-\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: wmi_set_ssid failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: wmi_set_ie(WMI_FRAME_PROBE_REQ) failed\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: wmi_set_ie(WMI_FRAME_PROBE_RESP) failed\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: wmi_start_search failed\0A\00", [35 x i8] zeroinitializer }, align 32
@wil_p2p_search.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&p2p->discovery_expired_work)\00", [48 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@wil_p2p_listen.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wil_p2p_listen\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DBG[MISC]p2p_listen: duration %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: discovery already ongoing\0A\00", [33 x i8] zeroinitializer }, align 32
@wil_p2p_listen.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.15, i8 0, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"DBG[MISC]Delaying p2p listen until scan done\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: Cookie mismatch: 0x%016llx vs. 0x%016llx\0A\00", [50 x i8] zeroinitializer }, align 32
@__func__.wil_p2p_cancel_listen = private unnamed_addr constant [22 x i8] c"wil_p2p_cancel_listen\00", align 1
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: listen not started\0A\00", [40 x i8] zeroinitializer }, align 32
@wil_p2p_listen_expired.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wil_p2p_listen_expired\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DBG[MISC]p2p_listen_expired\0A\00", [35 x i8] zeroinitializer }, align 32
@wil_p2p_search_expired.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wil_p2p_search_expired\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DBG[MISC]p2p_search_expired\0A\00", [35 x i8] zeroinitializer }, align 32
@wil_p2p_delayed_listen_work.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wil_p2p_delayed_listen_work\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DBG[MISC]Checking delayed p2p listen\0A\00", [58 x i8] zeroinitializer }, align 32
@__const.wil_p2p_stop_radio_operations.info = private unnamed_addr constant { i64, [6 x i8], i8, [1 x i8] } { i64 0, [6 x i8] zeroinitializer, i8 1, [1 x i8] zeroinitializer }, align 8
@__func__.wil_p2p_start_listen = private unnamed_addr constant [21 x i8] c"wil_p2p_start_listen\00", align 1
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: wmi_start_listen failed\0A\00", [35 x i8] zeroinitializer }, align 32
@wil_p2p_start_listen.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 66, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 71, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 78, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 82, i32 52 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 84, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 92, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 102, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 108, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 113, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 136, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 141, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 152, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 205, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 216, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 240, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 268, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 302, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 38, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.104 = private constant [42 x i8] c"../drivers/net/wireless/ath/wil6210/p2p.c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 42, i32 2 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @wil_p2p_search.__key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @wil_p2p_start_listen.__key], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_p2p_search.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_p2p_start_listen.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @wil_p2p_is_social_scan(ptr nocapture noundef readonly %request) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %n_channels = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 2
  %0 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %channels = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 22
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channels, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hw_value, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %5)
  %cmp1 = icmp eq i16 %5, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %6 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp1, %land.rhs ]
  ret i1 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wil_p2p_search(ptr noundef %vif, ptr nocapture noundef readonly %request) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %wil1 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 2
  %0 = ptrtoint ptr %wil1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wil1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_p2p_search.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_p2p_search, %if.then)) #4
          to label %do.end8 [label %if.then], !srcloc !64

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_p2p_search.__UNIQUE_ID_ddebug343, ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef 2) #4
  br label %do.end8

do.end8:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef 2) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool12.not = icmp eq i32 %4, 0
  br i1 %tobool12.not, label %do.end8.if.end37_crit_edge, label %land.rhs

do.end8.if.end37_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

land.rhs:                                         ; preds = %do.end8
  %dep_map = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 69, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end31, label %land.rhs.if.end37_crit_edge, !prof !65

land.rhs.if.end37_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

do.end31:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 68, i32 noundef 9, ptr noundef null) #4
  br label %if.end37

if.end37:                                         ; preds = %do.end31, %land.rhs.if.end37_crit_edge, %do.end8.if.end37_crit_edge
  %discovery_started = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 30, i32 1
  %5 = ptrtoint ptr %discovery_started to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %discovery_started, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool47.not = icmp eq i8 %6, 0
  br i1 %tobool47.not, label %if.end49, label %if.then48

if.then48:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #4
  br label %out

if.end49:                                         ; preds = %if.end37
  %call50 = tail call i32 @wmi_p2p_cfg(ptr noundef %vif, i32 noundef 2, i32 noundef 100) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.then52

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1) #4
  br label %out

if.end53:                                         ; preds = %if.end49
  %call54 = tail call i32 @wmi_set_ssid(ptr noundef %vif, i8 noundef zeroext 7, ptr noundef nonnull @.str.6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.end53.if.then85_crit_edge

if.end53.if.then85_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then85

if.end57:                                         ; preds = %if.end53
  %ie_len = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 5
  %7 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ie_len, align 4
  %conv = trunc i32 %8 to i16
  %ie = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 4
  %9 = ptrtoint ptr %ie to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ie, align 8
  %call58 = tail call i32 @wmi_set_ie(ptr noundef %vif, i8 noundef zeroext 1, i16 noundef zeroext %conv, ptr noundef %10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.end57.if.then85_crit_edge

if.end57.if.then85_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then85

if.end61:                                         ; preds = %if.end57
  %11 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ie_len, align 4
  %conv63 = trunc i32 %12 to i16
  %13 = ptrtoint ptr %ie to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ie, align 8
  %call65 = tail call i32 @wmi_set_ie(ptr noundef %vif, i8 noundef zeroext 2, i16 noundef zeroext %conv63, ptr noundef %14) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end61.if.then85_crit_edge

if.end61.if.then85_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then85

if.end68:                                         ; preds = %if.end61
  %call69 = tail call i32 @wmi_start_search(ptr noundef %vif) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %out_stop, label %if.end68.if.then85_crit_edge

if.end68.if.then85_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then85

out_stop:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %discovery_started to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %discovery_started, align 8
  %discovery_expired_work = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 30, i32 6
  tail call void @__init_work(ptr noundef %discovery_expired_work, i32 noundef 0) #4
  %16 = ptrtoint ptr %discovery_expired_work to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -64, ptr %discovery_expired_work, align 8
  %lockdep_map = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 30, i32 6, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.11, ptr noundef nonnull @wil_p2p_search.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry78 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 30, i32 6, i32 1
  %17 = ptrtoint ptr %entry78 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %entry78, ptr %entry78, align 4
  %prev.i = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 30, i32 6, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %entry78, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 30, i32 6, i32 2
  %19 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @wil_p2p_search_expired, ptr %func, align 4
  %discovery_timer = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 30, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %20, 50
  %call83 = tail call i32 @mod_timer(ptr noundef %discovery_timer, i32 noundef %add) #4
  br label %out

if.then85:                                        ; preds = %if.end68.if.then85_crit_edge, %if.end61.if.then85_crit_edge, %if.end57.if.then85_crit_edge, %if.end53.if.then85_crit_edge
  %.str.7.sink = phi ptr [ @.str.7, %if.end53.if.then85_crit_edge ], [ @.str.8, %if.end57.if.then85_crit_edge ], [ @.str.9, %if.end61.if.then85_crit_edge ], [ @.str.10, %if.end68.if.then85_crit_edge ]
  %rc.0.ph = phi i32 [ %call54, %if.end53.if.then85_crit_edge ], [ %call58, %if.end57.if.then85_crit_edge ], [ %call65, %if.end61.if.then85_crit_edge ], [ %call69, %if.end68.if.then85_crit_edge ]
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull %.str.7.sink, ptr noundef nonnull @.str.1) #4
  %call86 = tail call i32 @wmi_stop_discovery(ptr noundef %vif) #4
  br label %out

out:                                              ; preds = %if.then85, %out_stop, %if.then52, %if.then48
  %rc.1 = phi i32 [ -16, %if.then48 ], [ %call50, %if.then52 ], [ %rc.0.ph, %if.then85 ], [ 0, %out_stop ]
  ret i32 %rc.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_dbg_trace(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wil_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_p2p_cfg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_set_ssid(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_set_ie(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_start_search(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_p2p_search_expired(ptr noundef %work) #1 align 64 {
entry:
  %info = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %work, i32 -1384
  %wil4 = getelementptr i8, ptr %work, i32 -416
  %0 = ptrtoint ptr %wil4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wil4, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_p2p_search_expired.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_p2p_search_expired, %if.then)) #4
          to label %do.end11 [label %if.then], !srcloc !64

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_p2p_search_expired.__UNIQUE_ID_ddebug347, ptr noundef %3, ptr noundef nonnull @.str.21) #4
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.21) #4
  %mutex = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 69
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %discovery_started.i = getelementptr i8, ptr %work, i32 -72
  %4 = ptrtoint ptr %discovery_started.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %discovery_started.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %wil_p2p_stop_discovery.exit.thread, label %if.then.i

wil_p2p_stop_discovery.exit.thread:               ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  br label %if.end28

if.then.i:                                        ; preds = %do.end11
  %pending_listen_wdev.i = getelementptr i8, ptr %work, i32 -56
  %6 = ptrtoint ptr %pending_listen_wdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pending_listen_wdev.i, align 8
  %tobool3.not.i = icmp eq ptr %7, null
  br i1 %tobool3.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %pending_listen_wdev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %pending_listen_wdev.i, align 8
  br label %if.then17

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %discovery_timer.i = getelementptr i8, ptr %work, i32 -48
  %call.i = tail call i32 @del_timer_sync(ptr noundef %discovery_timer.i) #4
  %call6.i = tail call i32 @wmi_stop_discovery(ptr noundef %add.ptr3) #4
  br label %if.then17

if.then17:                                        ; preds = %if.else.i, %if.then4.i
  %9 = ptrtoint ptr %discovery_started.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %discovery_started.i, align 8
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #4
  %10 = call ptr @memset(ptr %info, i32 0, i32 16)
  %vif_mutex = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %vif_mutex, i32 noundef 0) #4
  %scan_request = getelementptr i8, ptr %work, i32 -180
  %11 = ptrtoint ptr %scan_request to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %scan_request, align 4
  %tobool18.not = icmp eq ptr %12, null
  br i1 %tobool18.not, label %if.then17.if.end26_crit_edge, label %if.then19

if.then17.if.end26_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then19:                                        ; preds = %if.then17
  call void @cfg80211_scan_done(ptr noundef nonnull %12, ptr noundef nonnull %info) #4
  %13 = ptrtoint ptr %scan_request to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %scan_request, align 4
  %mid = getelementptr i8, ptr %work, i32 -412
  %14 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp = icmp eq i8 %15, 0
  br i1 %cmp, label %if.then23, label %if.then19.if.end26_crit_edge

if.then19.if.end26_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then23:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #6
  %main_ndev24 = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %main_ndev24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %main_ndev24, align 4
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 82
  %18 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ieee80211_ptr, align 16
  %radio_wdev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 88
  %20 = ptrtoint ptr %radio_wdev to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %radio_wdev, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.then19.if.end26_crit_edge, %if.then17.if.end26_crit_edge
  call void @mutex_unlock(ptr noundef %vif_mutex) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #4
  br label %if.end28

if.end28:                                         ; preds = %if.end26, %wil_p2p_stop_discovery.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_stop_discovery(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wil_p2p_listen(ptr noundef %wil, ptr noundef %wdev, i32 noundef %duration, ptr noundef %chan, ptr nocapture noundef %cookie) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %p2p_wdev.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 87
  %0 = ptrtoint ptr %p2p_wdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p2p_wdev.i, align 4
  %cmp.i = icmp eq ptr %1, %wdev
  br i1 %cmp.i, label %if.then.i, label %entry.wdev_to_vif.exit_crit_edge

entry.wdev_to_vif.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %wdev_to_vif.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %main_ndev.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %2 = ptrtoint ptr %main_ndev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 2304
  br label %wdev_to_vif.exit

wdev_to_vif.exit:                                 ; preds = %if.then.i, %entry.wdev_to_vif.exit_crit_edge
  %retval.0.i91 = phi ptr [ %add.ptr.i.i, %if.then.i ], [ %wdev, %entry.wdev_to_vif.exit_crit_edge ]
  %p2p1 = getelementptr inbounds %struct.wil6210_vif, ptr %retval.0.i91, i32 0, i32 30
  %tobool.not = icmp eq ptr %chan, null
  br i1 %tobool.not, label %wdev_to_vif.exit.cleanup_crit_edge, label %do.body3

wdev_to_vif.exit.cleanup_crit_edge:               ; preds = %wdev_to_vif.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body3:                                         ; preds = %wdev_to_vif.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_p2p_listen.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_p2p_listen, %if.then8)) #4
          to label %do.end11 [label %if.then8], !srcloc !64

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #6
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %4 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_p2p_listen.__UNIQUE_ID_ddebug344, ptr noundef %5, ptr noundef nonnull @.str.13, i32 noundef %duration) #4
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %do.body3
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.13, i32 noundef %duration) #4
  %mutex = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 69
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %discovery_started = getelementptr inbounds %struct.wil6210_vif, ptr %retval.0.i91, i32 0, i32 30, i32 1
  %6 = ptrtoint ptr %discovery_started to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %discovery_started, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool14.not = icmp eq i8 %7, 0
  br i1 %tobool14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12) #4
  br label %out

if.end16:                                         ; preds = %do.end11
  %8 = call ptr @memcpy(ptr %p2p1, ptr %chan, i32 56)
  %cookie17 = getelementptr inbounds %struct.wil6210_vif, ptr %retval.0.i91, i32 0, i32 30, i32 2
  %9 = ptrtoint ptr %cookie17 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %cookie17, align 8
  %inc = add i64 %10, 1
  store i64 %inc, ptr %cookie17, align 8
  %11 = ptrtoint ptr %cookie to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %inc, ptr %cookie, align 8
  %listen_duration = getelementptr inbounds %struct.wil6210_vif, ptr %retval.0.i91, i32 0, i32 30, i32 4
  %12 = ptrtoint ptr %listen_duration to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %duration, ptr %listen_duration, align 4
  %vif_mutex = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %vif_mutex, i32 noundef 0) #4
  %scan_request = getelementptr inbounds %struct.wil6210_vif, ptr %retval.0.i91, i32 0, i32 28
  %13 = ptrtoint ptr %scan_request to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %scan_request, align 4
  %tobool18.not = icmp eq ptr %14, null
  br i1 %tobool18.not, label %if.end45, label %do.body22

do.body22:                                        ; preds = %if.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_p2p_listen.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_p2p_listen, %if.then34)) #4
          to label %do.end40 [label %if.then34], !srcloc !64

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #6
  %main_ndev35 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %15 = ptrtoint ptr %main_ndev35 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %main_ndev35, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_p2p_listen.__UNIQUE_ID_ddebug345, ptr noundef %16, ptr noundef nonnull @.str.15) #4
  br label %do.end40

do.end40:                                         ; preds = %if.then34, %do.body22
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.15) #4
  %pending_listen_wdev = getelementptr inbounds %struct.wil6210_vif, ptr %retval.0.i91, i32 0, i32 30, i32 3
  %17 = ptrtoint ptr %pending_listen_wdev to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %wdev, ptr %pending_listen_wdev, align 8
  %18 = ptrtoint ptr %discovery_started to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %discovery_started, align 8
  tail call void @mutex_unlock(ptr noundef %vif_mutex) #4
  br label %out

if.end45:                                         ; preds = %if.end16
  tail call void @mutex_unlock(ptr noundef %vif_mutex) #4
  %call47 = tail call fastcc i32 @wil_p2p_start_listen(ptr noundef %retval.0.i91)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end45.out_crit_edge

if.end45.out_crit_edge:                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end50:                                         ; preds = %if.end45
  %19 = ptrtoint ptr %discovery_started to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %discovery_started, align 8
  %mid = getelementptr inbounds %struct.wil6210_vif, ptr %retval.0.i91, i32 0, i32 3
  %20 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %mid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp = icmp eq i8 %21, 0
  br i1 %cmp, label %if.then53, label %if.end50.if.end54_crit_edge

if.end50.if.end54_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end54

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  %radio_wdev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 88
  %22 = ptrtoint ptr %radio_wdev to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %wdev, ptr %radio_wdev, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end50.if.end54_crit_edge
  %23 = ptrtoint ptr %cookie to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %cookie, align 8
  tail call void @cfg80211_ready_on_channel(ptr noundef %wdev, i64 noundef %24, ptr noundef nonnull %chan, i32 noundef %duration, i32 noundef 3264) #4
  br label %out

out:                                              ; preds = %if.end54, %if.end45.out_crit_edge, %do.end40, %if.then15
  %rc.0 = phi i32 [ -16, %if.then15 ], [ 0, %do.end40 ], [ %call47, %if.end45.out_crit_edge ], [ 0, %if.end54 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  br label %cleanup

cleanup:                                          ; preds = %out, %wdev_to_vif.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ -22, %wdev_to_vif.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wil_p2p_start_listen(ptr noundef %vif) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %wil1 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 2
  %0 = ptrtoint ptr %wil1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wil1, align 8
  %hw_value = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 30, i32 0, i32 3
  %2 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hw_value, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 69, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !65

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 22, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %5 = and i16 %3, 255
  %conv27 = zext i16 %5 to i32
  %call28 = tail call i32 @wmi_p2p_cfg(ptr noundef %vif, i32 noundef %conv27, i32 noundef 100) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.wil_p2p_start_listen) #4
  br label %out

if.end31:                                         ; preds = %if.end
  %call32 = tail call i32 @wmi_set_ssid(ptr noundef %vif, i8 noundef zeroext 7, ptr noundef nonnull @.str.6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.if.then51_crit_edge

if.end31.if.then51_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then51

if.end35:                                         ; preds = %if.end31
  %call36 = tail call i32 @wmi_start_listen(ptr noundef %vif) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %do.body40, label %if.end35.if.then51_crit_edge

if.end35.if.then51_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then51

do.body40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  %discovery_expired_work = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 30, i32 6
  tail call void @__init_work(ptr noundef %discovery_expired_work, i32 noundef 0) #4
  %6 = ptrtoint ptr %discovery_expired_work to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %discovery_expired_work, align 8
  %lockdep_map = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 30, i32 6, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.11, ptr noundef nonnull @wil_p2p_start_listen.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry44 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 30, i32 6, i32 1
  %7 = ptrtoint ptr %entry44 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry44, ptr %entry44, align 4
  %prev.i = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 30, i32 6, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry44, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 30, i32 6, i32 2
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @wil_p2p_listen_expired, ptr %func, align 4
  %discovery_timer = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 30, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %listen_duration = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 30, i32 4
  %11 = ptrtoint ptr %listen_duration to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %listen_duration, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %12) #4
  %add = add i32 %call2.i, %10
  %call49 = tail call i32 @mod_timer(ptr noundef %discovery_timer, i32 noundef %add) #4
  br label %out

if.then51:                                        ; preds = %if.end35.if.then51_crit_edge, %if.end31.if.then51_crit_edge
  %.str.7.sink = phi ptr [ @.str.7, %if.end31.if.then51_crit_edge ], [ @.str.24, %if.end35.if.then51_crit_edge ]
  %rc.0.ph = phi i32 [ %call32, %if.end31.if.then51_crit_edge ], [ %call36, %if.end35.if.then51_crit_edge ]
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull %.str.7.sink, ptr noundef nonnull @__func__.wil_p2p_start_listen) #4
  %call52 = tail call i32 @wmi_stop_discovery(ptr noundef %vif) #4
  br label %out

out:                                              ; preds = %if.then51, %do.body40, %if.then30
  %rc.1 = phi i32 [ %call28, %if.then30 ], [ %rc.0.ph, %if.then51 ], [ 0, %do.body40 ]
  ret i32 %rc.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_ready_on_channel(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @wil_p2p_stop_discovery(ptr noundef %vif) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %discovery_started = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 30, i32 1
  %0 = ptrtoint ptr %discovery_started to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %discovery_started, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then:                                          ; preds = %entry
  %pending_listen_wdev = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 30, i32 3
  %2 = ptrtoint ptr %pending_listen_wdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pending_listen_wdev, align 8
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %pending_listen_wdev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pending_listen_wdev, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %discovery_timer = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 30, i32 5
  %call = tail call i32 @del_timer_sync(ptr noundef %discovery_timer) #4
  %call6 = tail call i32 @wmi_stop_discovery(ptr noundef %vif) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  %5 = ptrtoint ptr %discovery_started to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %discovery_started, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  ret i8 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wil_p2p_cancel_listen(ptr noundef %vif, i64 noundef %cookie) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %wil1 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 2
  %0 = ptrtoint ptr %wil1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wil1, align 8
  %p2p2 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 30
  %mutex = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 69
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %cookie3 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 30, i32 2
  %2 = ptrtoint ptr %cookie3 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %cookie3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %cookie)
  %cmp.not = icmp eq i64 %3, %cookie
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__wil_info(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.wil_p2p_cancel_listen, i64 noundef %3, i64 noundef %cookie) #4
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %discovery_started.i = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 30, i32 1
  %4 = ptrtoint ptr %discovery_started.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %discovery_started.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.then7, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %pending_listen_wdev.i = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 30, i32 3
  %6 = ptrtoint ptr %pending_listen_wdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pending_listen_wdev.i, align 8
  %tobool3.not.i = icmp eq ptr %7, null
  br i1 %tobool3.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %pending_listen_wdev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %pending_listen_wdev.i, align 8
  br label %if.end8

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %discovery_timer.i = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 30, i32 5
  %call.i = tail call i32 @del_timer_sync(ptr noundef %discovery_timer.i) #4
  %call6.i = tail call i32 @wmi_stop_discovery(ptr noundef %vif) #4
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.wil_p2p_cancel_listen) #4
  br label %cleanup

if.end8:                                          ; preds = %if.else.i, %if.then4.i
  %9 = ptrtoint ptr %discovery_started.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %discovery_started.i, align 8
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  %vif_mutex = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %vif_mutex, i32 noundef 0) #4
  %mid.i = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 3
  %10 = ptrtoint ptr %mid.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i35 = icmp eq i8 %11, 0
  br i1 %tobool.not.i35, label %if.else.i36, label %if.end8.vif_to_radio_wdev.exit_crit_edge

if.end8.vif_to_radio_wdev.exit_crit_edge:         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %vif_to_radio_wdev.exit

if.else.i36:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %radio_wdev.i = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 88
  %12 = ptrtoint ptr %radio_wdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %radio_wdev.i, align 8
  br label %vif_to_radio_wdev.exit

vif_to_radio_wdev.exit:                           ; preds = %if.else.i36, %if.end8.vif_to_radio_wdev.exit_crit_edge
  %retval.0.i = phi ptr [ %13, %if.else.i36 ], [ %vif, %if.end8.vif_to_radio_wdev.exit_crit_edge ]
  %14 = ptrtoint ptr %cookie3 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %cookie3, align 8
  tail call void @cfg80211_remain_on_channel_expired(ptr noundef %retval.0.i, i64 noundef %15, ptr noundef %p2p2, i32 noundef 3264) #4
  %16 = ptrtoint ptr %mid.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp11 = icmp eq i8 %17, 0
  br i1 %cmp11, label %if.then13, label %vif_to_radio_wdev.exit.if.end14_crit_edge

vif_to_radio_wdev.exit.if.end14_crit_edge:        ; preds = %vif_to_radio_wdev.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then13:                                        ; preds = %vif_to_radio_wdev.exit
  call void @__sanitizer_cov_trace_pc() #6
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %main_ndev, align 4
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 82
  %20 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ieee80211_ptr, align 16
  %radio_wdev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 88
  %22 = ptrtoint ptr %radio_wdev to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %radio_wdev, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %vif_to_radio_wdev.exit.if.end14_crit_edge
  tail call void @mutex_unlock(ptr noundef %vif_mutex) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then7, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ 0, %if.end14 ], [ -2, %if.then7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wil_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_remain_on_channel_expired(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_p2p_listen_expired(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -128
  %add.ptr3 = getelementptr i8, ptr %work, i32 -1384
  %wil4 = getelementptr i8, ptr %work, i32 -416
  %0 = ptrtoint ptr %wil4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wil4, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_p2p_listen_expired.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_p2p_listen_expired, %if.then)) #4
          to label %do.end11 [label %if.then], !srcloc !64

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_p2p_listen_expired.__UNIQUE_ID_ddebug346, ptr noundef %3, ptr noundef nonnull @.str.19) #4
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.19) #4
  %mutex = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 69
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %discovery_started.i = getelementptr i8, ptr %work, i32 -72
  %4 = ptrtoint ptr %discovery_started.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %discovery_started.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %do.end11.cleanup_crit_edge, label %if.then.i

do.end11.cleanup_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i:                                        ; preds = %do.end11
  %pending_listen_wdev.i = getelementptr i8, ptr %work, i32 -56
  %6 = ptrtoint ptr %pending_listen_wdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pending_listen_wdev.i, align 8
  %tobool3.not.i = icmp eq ptr %7, null
  br i1 %tobool3.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %pending_listen_wdev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %pending_listen_wdev.i, align 8
  br label %if.end18

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %discovery_timer.i = getelementptr i8, ptr %work, i32 -48
  %call.i = tail call i32 @del_timer_sync(ptr noundef %discovery_timer.i) #4
  %call6.i = tail call i32 @wmi_stop_discovery(ptr noundef %add.ptr3) #4
  br label %if.end18

if.end18:                                         ; preds = %if.else.i, %if.then4.i
  %9 = ptrtoint ptr %discovery_started.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %discovery_started.i, align 8
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  %vif_mutex = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %vif_mutex, i32 noundef 0) #4
  %mid.i = getelementptr i8, ptr %work, i32 -412
  %10 = ptrtoint ptr %mid.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i41 = icmp eq i8 %11, 0
  br i1 %tobool.not.i41, label %if.else.i42, label %if.end18.vif_to_radio_wdev.exit_crit_edge

if.end18.vif_to_radio_wdev.exit_crit_edge:        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %vif_to_radio_wdev.exit

if.else.i42:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %radio_wdev.i = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 88
  %12 = ptrtoint ptr %radio_wdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %radio_wdev.i, align 8
  br label %vif_to_radio_wdev.exit

vif_to_radio_wdev.exit:                           ; preds = %if.else.i42, %if.end18.vif_to_radio_wdev.exit_crit_edge
  %retval.0.i43 = phi ptr [ %13, %if.else.i42 ], [ %add.ptr3, %if.end18.vif_to_radio_wdev.exit_crit_edge ]
  %cookie = getelementptr i8, ptr %work, i32 -64
  %14 = ptrtoint ptr %cookie to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %cookie, align 8
  tail call void @cfg80211_remain_on_channel_expired(ptr noundef %retval.0.i43, i64 noundef %15, ptr noundef %add.ptr, i32 noundef 3264) #4
  %16 = ptrtoint ptr %mid.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp = icmp eq i8 %17, 0
  br i1 %cmp, label %if.then21, label %vif_to_radio_wdev.exit.cleanup_crit_edge

vif_to_radio_wdev.exit.cleanup_crit_edge:         ; preds = %vif_to_radio_wdev.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then21:                                        ; preds = %vif_to_radio_wdev.exit
  call void @__sanitizer_cov_trace_pc() #6
  %main_ndev22 = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %main_ndev22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %main_ndev22, align 4
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 82
  %20 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ieee80211_ptr, align 16
  %radio_wdev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 88
  %22 = ptrtoint ptr %radio_wdev to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %radio_wdev, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %vif_to_radio_wdev.exit.cleanup_crit_edge, %do.end11.cleanup_crit_edge
  %mutex.sink = phi ptr [ %mutex, %do.end11.cleanup_crit_edge ], [ %vif_mutex, %if.then21 ], [ %vif_mutex, %vif_to_radio_wdev.exit.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.sink) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_scan_done(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_p2p_delayed_listen_work(ptr noundef %work) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -172
  %add.ptr3 = getelementptr i8, ptr %work, i32 -1428
  %wil4 = getelementptr i8, ptr %work, i32 -460
  %0 = ptrtoint ptr %wil4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wil4, align 8
  %mutex = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 69
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_p2p_delayed_listen_work.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_p2p_delayed_listen_work, %if.then)) #4
          to label %do.end11 [label %if.then], !srcloc !64

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_p2p_delayed_listen_work.__UNIQUE_ID_ddebug348, ptr noundef %3, ptr noundef nonnull @.str.23) #4
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.23) #4
  %discovery_started = getelementptr i8, ptr %work, i32 -116
  %4 = ptrtoint ptr %discovery_started to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %discovery_started, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool14.not = icmp eq i8 %5, 0
  br i1 %tobool14.not, label %do.end11.out_crit_edge, label %lor.lhs.false

do.end11.out_crit_edge:                           ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

lor.lhs.false:                                    ; preds = %do.end11
  %pending_listen_wdev = getelementptr i8, ptr %work, i32 -100
  %6 = ptrtoint ptr %pending_listen_wdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pending_listen_wdev, align 8
  %tobool15.not = icmp eq ptr %7, null
  br i1 %tobool15.not, label %lor.lhs.false.out_crit_edge, label %if.end17

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end17:                                         ; preds = %lor.lhs.false
  %vif_mutex = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %vif_mutex, i32 noundef 0) #4
  %scan_request = getelementptr i8, ptr %work, i32 -224
  %8 = ptrtoint ptr %scan_request to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %scan_request, align 4
  %tobool18.not = icmp eq ptr %9, null
  tail call void @mutex_unlock(ptr noundef %vif_mutex) #4
  br i1 %tobool18.not, label %if.end21, label %if.end17.out_crit_edge

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end21:                                         ; preds = %if.end17
  %call23 = tail call fastcc i32 @wil_p2p_start_listen(ptr noundef %add.ptr3)
  tail call void @mutex_lock_nested(ptr noundef %vif_mutex, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool25.not = icmp eq i32 %call23, 0
  %10 = ptrtoint ptr %pending_listen_wdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pending_listen_wdev, align 8
  %cookie33 = getelementptr i8, ptr %work, i32 -108
  %12 = ptrtoint ptr %cookie33 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %cookie33, align 8
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end21
  tail call void @cfg80211_remain_on_channel_expired(ptr noundef %11, i64 noundef %13, ptr noundef %add.ptr, i32 noundef 3264) #4
  %mid = getelementptr i8, ptr %work, i32 -456
  %14 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp = icmp eq i8 %15, 0
  br i1 %cmp, label %if.then29, label %if.then26.if.end43_crit_edge

if.then26.if.end43_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

if.then29:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  %main_ndev30 = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %main_ndev30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %main_ndev30, align 4
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 82
  br label %if.end43.sink.split

if.else:                                          ; preds = %if.end21
  %listen_duration = getelementptr i8, ptr %work, i32 -96
  %18 = ptrtoint ptr %listen_duration to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %listen_duration, align 4
  tail call void @cfg80211_ready_on_channel(ptr noundef %11, i64 noundef %13, ptr noundef %add.ptr, i32 noundef %19, i32 noundef 3264) #4
  %mid35 = getelementptr i8, ptr %work, i32 -456
  %20 = ptrtoint ptr %mid35 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %mid35, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp37 = icmp eq i8 %21, 0
  br i1 %cmp37, label %if.else.if.end43.sink.split_crit_edge, label %if.else.if.end43_crit_edge

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

if.else.if.end43.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43.sink.split

if.end43.sink.split:                              ; preds = %if.else.if.end43.sink.split_crit_edge, %if.then29
  %.sink.in = phi ptr [ %ieee80211_ptr, %if.then29 ], [ %pending_listen_wdev, %if.else.if.end43.sink.split_crit_edge ]
  %22 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %22)
  %.sink = load ptr, ptr %.sink.in, align 8
  %radio_wdev41 = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 88
  %23 = ptrtoint ptr %radio_wdev41 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %.sink, ptr %radio_wdev41, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.end43.sink.split, %if.else.if.end43_crit_edge, %if.then26.if.end43_crit_edge
  %24 = ptrtoint ptr %pending_listen_wdev to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %pending_listen_wdev, align 8
  tail call void @mutex_unlock(ptr noundef %vif_mutex) #4
  br label %out

out:                                              ; preds = %if.end43, %if.end17.out_crit_edge, %lor.lhs.false.out_crit_edge, %do.end11.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_p2p_stop_radio_operations(ptr noundef %wil) local_unnamed_addr #1 align 64 {
entry:
  %info = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %p2p1 = getelementptr i8, ptr %1, i32 3560
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #4
  %2 = call ptr @memcpy(ptr %info, ptr @__const.wil_p2p_stop_radio_operations.info, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %3 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end57_crit_edge, label %land.rhs

entry.if.end57_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 69, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !65

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 346, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool28.not = icmp eq i32 %.pr, 0
  br i1 %tobool28.not, label %if.end.if.end57_crit_edge, label %land.rhs29

if.end.if.end57_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

land.rhs29:                                       ; preds = %if.end
  %dep_map30 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 24, i32 5
  %call.i114 = tail call i32 @lock_is_held_type(ptr noundef %dep_map30, i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %cmp32.not = icmp eq i32 %call.i114, 0
  br i1 %cmp32.not, label %do.end51, label %land.rhs29.if.end57_crit_edge, !prof !65

land.rhs29.if.end57_crit_edge:                    ; preds = %land.rhs29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

do.end51:                                         ; preds = %land.rhs29
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 347, i32 noundef 9, ptr noundef null) #4
  br label %if.end57

if.end57:                                         ; preds = %do.end51, %land.rhs29.if.end57_crit_edge, %if.end.if.end57_crit_edge, %entry.if.end57_crit_edge
  %radio_wdev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 88
  %4 = ptrtoint ptr %radio_wdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %radio_wdev, align 8
  %p2p_wdev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 87
  %6 = ptrtoint ptr %p2p_wdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p2p_wdev, align 4
  %cmp67.not = icmp eq ptr %5, %7
  br i1 %cmp67.not, label %if.end69, label %if.end57.out_crit_edge

if.end57.out_crit_edge:                           ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end69:                                         ; preds = %if.end57
  %discovery_started = getelementptr i8, ptr %1, i32 3616
  %8 = ptrtoint ptr %discovery_started to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %discovery_started, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool70.not = icmp eq i8 %9, 0
  br i1 %tobool70.not, label %if.then71, label %if.end78

if.then71:                                        ; preds = %if.end69
  %scan_request = getelementptr i8, ptr %1, i32 3508
  %10 = ptrtoint ptr %scan_request to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %scan_request, align 4
  %tobool72.not = icmp eq ptr %11, null
  br i1 %tobool72.not, label %if.then71.out_crit_edge, label %land.lhs.true

if.then71.out_crit_edge:                          ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

land.lhs.true:                                    ; preds = %if.then71
  %wdev = getelementptr inbounds %struct.cfg80211_scan_request, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wdev, align 8
  %cmp75 = icmp eq ptr %13, %5
  br i1 %cmp75, label %if.then76, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then76:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @wil_abort_scan(ptr noundef %add.ptr.i, i1 noundef zeroext true) #4
  br label %out

if.end78:                                         ; preds = %if.end69
  %vif_mutex79 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 24
  tail call void @mutex_unlock(ptr noundef %vif_mutex79) #4
  %14 = ptrtoint ptr %discovery_started to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %discovery_started, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.end78.wil_p2p_stop_discovery.exit_crit_edge, label %if.then.i

if.end78.wil_p2p_stop_discovery.exit_crit_edge:   ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #6
  br label %wil_p2p_stop_discovery.exit

if.then.i:                                        ; preds = %if.end78
  %pending_listen_wdev.i = getelementptr i8, ptr %1, i32 3632
  %16 = ptrtoint ptr %pending_listen_wdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pending_listen_wdev.i, align 8
  %tobool3.not.i = icmp eq ptr %17, null
  br i1 %tobool3.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %pending_listen_wdev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %pending_listen_wdev.i, align 8
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %discovery_timer.i = getelementptr i8, ptr %1, i32 3640
  %call.i115 = tail call i32 @del_timer_sync(ptr noundef %discovery_timer.i) #4
  %call6.i = tail call i32 @wmi_stop_discovery(ptr noundef %add.ptr.i) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then4.i
  %19 = ptrtoint ptr %discovery_started to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %discovery_started, align 8
  br label %wil_p2p_stop_discovery.exit

wil_p2p_stop_discovery.exit:                      ; preds = %if.end.i, %if.end78.wil_p2p_stop_discovery.exit_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %vif_mutex79, i32 noundef 0) #4
  %scan_request82 = getelementptr i8, ptr %1, i32 3508
  %20 = ptrtoint ptr %scan_request82 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %scan_request82, align 4
  %tobool83.not = icmp eq ptr %21, null
  br i1 %tobool83.not, label %if.else, label %if.then84

if.then84:                                        ; preds = %wil_p2p_stop_discovery.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @cfg80211_scan_done(ptr noundef nonnull %21, ptr noundef nonnull %info) #4
  %22 = ptrtoint ptr %scan_request82 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %scan_request82, align 4
  br label %out

if.else:                                          ; preds = %wil_p2p_stop_discovery.exit
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %radio_wdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %radio_wdev, align 8
  %cookie = getelementptr i8, ptr %1, i32 3624
  %25 = ptrtoint ptr %cookie to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %cookie, align 8
  tail call void @cfg80211_remain_on_channel_expired(ptr noundef %24, i64 noundef %26, ptr noundef %p2p1, i32 noundef 3264) #4
  br label %out

out:                                              ; preds = %if.else, %if.then84, %if.then76, %land.lhs.true.out_crit_edge, %if.then71.out_crit_edge, %if.end57.out_crit_edge
  %27 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %main_ndev, align 4
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 82
  %29 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ieee80211_ptr, align 16
  %31 = ptrtoint ptr %radio_wdev to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %radio_wdev, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_abort_scan(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_start_listen(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !25, !26, !27, !29, !31, !32, !34, !35, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/wil6210/p2p.c", i32 66, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @wil_p2p_search.__UNIQUE_ID_ddebug343, !1, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/wil6210/p2p.c", i32 71, i32 3}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/wil6210/p2p.c", i32 78, i32 3}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/wil6210/p2p.c", i32 82, i32 52}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/wil6210/p2p.c", i32 84, i32 3}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/wil6210/p2p.c", i32 92, i32 3}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/wil6210/p2p.c", i32 102, i32 3}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/wil6210/p2p.c", i32 108, i32 3}
!20 = !{ptr @wil_p2p_search.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/wil6210/p2p.c", i32 113, i32 2}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ath/wil6210/p2p.c", i32 136, i32 2}
!25 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @wil_p2p_listen.__UNIQUE_ID_ddebug344, !24, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/wil6210/p2p.c", i32 141, i32 3}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ath/wil6210/p2p.c", i32 152, i32 3}
!31 = !{ptr @wil_p2p_listen.__UNIQUE_ID_ddebug345, !30, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/wil6210/p2p.c", i32 205, i32 3}
!34 = !{ptr @__func__.wil_p2p_cancel_listen, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ath/wil6210/p2p.c", i32 216, i32 3}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/ath/wil6210/p2p.c", i32 240, i32 2}
!39 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @wil_p2p_listen_expired.__UNIQUE_ID_ddebug346, !38, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/ath/wil6210/p2p.c", i32 268, i32 2}
!43 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @wil_p2p_search_expired.__UNIQUE_ID_ddebug347, !42, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/ath/wil6210/p2p.c", i32 302, i32 2}
!47 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @wil_p2p_delayed_listen_work.__UNIQUE_ID_ddebug348, !46, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!49 = !{ptr @__func__.wil_p2p_start_listen, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/ath/wil6210/p2p.c", i32 26, i32 3}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/ath/wil6210/p2p.c", i32 38, i32 3}
!53 = !{ptr @wil_p2p_start_listen.__key, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/ath/wil6210/p2p.c", i32 42, i32 2}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i64 2148906354, i64 2148906359, i64 2148906372, i64 2148906416, i64 2148906450, i64 2148906471}
!65 = !{!"branch_weights", i32 1, i32 2000}
