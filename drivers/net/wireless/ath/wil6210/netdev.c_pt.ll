; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/wil6210/netdev.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/wil6210/netdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.wil6210_priv = type { ptr, i32, ptr, ptr, i32, ptr, [1 x i32], [32 x i8], i32, i8, ptr, ptr, ptr, i32, ptr, [1 x i32], [1 x i32], [1 x i32], i32, i32, i32, %struct.wait_queue_head, i8, [4 x ptr], %struct.mutex, %struct.atomic_t, i32, %struct.cfg80211_chan_def, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, %struct.wil6210_mbox_ctl, %struct.completion, %struct.completion, i16, i16, i8, ptr, i16, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.napi_struct, %struct.napi_struct, %struct.net_device, %struct.wil_ring, i32, [24 x %struct.wil_ring], [24 x %struct.wil_ring_tx_data], [8 x %struct.wil_status_ring], i8, i32, [24 x [2 x i8]], [20 x %struct.wil_sta_info], i32, i32, %struct.wil_rx_buff_mgmt, i8, %struct.wil_txrx_ops, %struct.mutex, %struct.rw_semaphore, %struct.atomic_t, %struct.atomic_t, ptr, [19 x %struct.wil_blob_wrapper], i8, i8, i8, %struct.wil_suspend_stats, %struct.wil_debugfs_data, i8, i32, ptr, %struct.wil_platform_ops, i8, %struct.pmc_ctx, i8, ptr, ptr, %struct.wil_halp, i32, i32, %struct.notifier_block, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i8, i8, i8, %struct.wil_fw_stats_global, i32, i32, i8, i32, [16 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.wil6210_mbox_ctl = type { %struct.wil6210_mbox_ring, %struct.wil6210_mbox_ring }
%struct.wil6210_mbox_ring = type { i32, i16, i16, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.105, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.124, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.105 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.124 = type { ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.wil6210_vif = type { %struct.wireless_dev, ptr, ptr, i8, [1 x i32], i32, i16, i8, i8, i32, i8, i32, ptr, ptr, ptr, i32, i32, i32, [32 x i8], i32, i8, [32 x i8], i32, i32, ptr, i32, %struct.timer_list, %struct.work_struct, ptr, %struct.timer_list, %struct.wil_p2p_info, %struct.list_head, %struct.mutex, %struct.work_struct, i32, i8, i64, i32, %struct.work_struct }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.122, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
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
%struct.wil_p2p_info = type { %struct.ieee80211_channel, i8, i64, ptr, i32, %struct.timer_list, %struct.work_struct, %struct.work_struct }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.127 = type { i64, i64, i8 }

@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: no available virtual interface\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.wil_vif_alloc = private unnamed_addr constant [14 x i8] c"wil_vif_alloc\00", align 1
@wil_vif_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.wil_vif_alloc, ptr @.str.2, i32 315, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"alloc_netdev failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/wireless/ath/wil6210/netdev.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wil_vif_alloc._entry_ptr = internal global ptr @wil_vif_alloc._entry, section ".printk_index", align 4
@wil_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @wil_open, ptr @wil_stop, ptr @wil_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@wil_if_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 356, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wil_cfg80211_init failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wil_if_alloc\00", [19 x i8] zeroinitializer }, align 32
@wil_if_alloc._entry_ptr = internal global ptr @wil_if_alloc._entry, section ".printk_index", align 4
@wil_if_alloc._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 362, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wil_priv_init failed\0A\00", [42 x i8] zeroinitializer }, align 32
@wil_if_alloc._entry_ptr.9 = internal global ptr @wil_if_alloc._entry.7, section ".printk_index", align 4
@wil_if_alloc.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.6, ptr @.str.2, ptr @.str.11, i8 0, i8 91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wil6210\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DBG[MISC]if_alloc\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wlan%d\00", [25 x i8] zeroinitializer }, align 32
@wil_if_alloc._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.2, i32 371, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wil_vif_alloc failed\0A\00", [42 x i8] zeroinitializer }, align 32
@wil_if_alloc._entry_ptr.15 = internal global ptr @wil_if_alloc._entry.13, section ".printk_index", align 4
@wil_if_free.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wil_if_free\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DBG[MISC]if_free\0A\00", [46 x i8] zeroinitializer }, align 32
@wil_vif_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@wil_vif_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 418, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"VIF with mid %d already in use\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wil_vif_add\00", [20 x i8] zeroinitializer }, align 32
@wil_vif_add._entry_ptr = internal global ptr @wil_vif_add._entry, section ".printk_index", align 4
@wil_vif_add._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 429, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register netdev: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@wil_vif_add._entry_ptr.23 = internal global ptr @wil_vif_add._entry.21, section ".printk_index", align 4
@wil_if_add.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wil_if_add\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DBG[MISC]entered\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: failed to register wiphy, err %d\0A\00", [58 x i8] zeroinitializer }, align 32
@wil_vif_remove.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: invalid MID: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.wil_vif_remove = private unnamed_addr constant [15 x i8] c"wil_vif_remove\00", align 1
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: MID %d not registered\0A\00", [37 x i8] zeroinitializer }, align 32
@wil_if_remove.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 -119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wil_if_remove\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DBG[MISC]if_remove\0A\00", [44 x i8] zeroinitializer }, align 32
@mtu_max = external dso_local local_unnamed_addr global i32, align 4
@wil_vif_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&vif->probe_client_mutex\00", [39 x i8] zeroinitializer }, align 32
@wil_vif_init.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(&vif->connect_timer)\00", [42 x i8] zeroinitializer }, align 32
@wil_vif_init.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&vif->scan_timer)\00", [45 x i8] zeroinitializer }, align 32
@wil_vif_init.__key.36 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(&vif->p2p.discovery_timer)\00", [36 x i8] zeroinitializer }, align 32
@wil_vif_init.__key.38 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&vif->probe_client_worker)\00", [51 x i8] zeroinitializer }, align 32
@wil_vif_init.__key.40 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&vif->disconnect_worker)\00", [53 x i8] zeroinitializer }, align 32
@wil_vif_init.__key.42 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"(work_completion)(&vif->p2p.discovery_expired_work)\00", [44 x i8] zeroinitializer }, align 32
@wil_vif_init.__key.44 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&vif->p2p.delayed_listen_work)\00", [47 x i8] zeroinitializer }, align 32
@wil_vif_init.__key.46 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&vif->enable_tx_key_worker)\00", [50 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: Connect timeout detected, disconnect station\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.wil_connect_timer_fn = private unnamed_addr constant [21 x i8] c"wil_connect_timer_fn\00", align 1
@wil_connect_timer_fn.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @__func__.wil_connect_timer_fn, ptr @.str.2, ptr @.str.49, i8 0, i8 60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"DBG[ WMI]queue_work of disconnect_worker -> %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: Scan timeout detected, start fw error recovery\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.wil_scan_timer_fn = private unnamed_addr constant [18 x i8] c"wil_scan_timer_fn\00", align 1
@wil_p2p_discovery_timer_fn.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 0, i8 64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wil_p2p_discovery_timer_fn\00", [37 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DBG[MISC]p2p_discovery_timer_fn\0A\00", [63 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@wil_open.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 0, i8 11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"wil_open\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DBG[MISC]open\0A\00", [17 x i8] zeroinitializer }, align 32
@debug_fw = external dso_local local_unnamed_addr global i8, align 1
@.str.55 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: while in debug_fw or wmi_only mode\0A\00", [56 x i8] zeroinitializer }, align 32
@wil_open.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.53, ptr @.str.2, ptr @.str.56, i8 0, i8 13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DBG[MISC]open, first iface\0A\00", [36 x i8] zeroinitializer }, align 32
@wil_stop.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.57, ptr @.str.2, ptr @.str.58, i8 0, i8 17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"wil_stop\00", [23 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DBG[MISC]stop\0A\00", [17 x i8] zeroinitializer }, align 32
@wil_stop.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.57, ptr @.str.2, ptr @.str.59, i8 0, i8 18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DBG[MISC]stop, last iface\0A\00", [37 x i8] zeroinitializer }, align 32
@wil6210_netdev_poll_rx_edma.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.60, ptr @.str.2, ptr @.str.61, i8 0, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wil6210_netdev_poll_rx_edma\00", [36 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DBG[TXRX]NAPI RX complete\0A\00", [37 x i8] zeroinitializer }, align 32
@wil6210_netdev_poll_rx_edma.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.60, ptr @.str.2, ptr @.str.62, i8 0, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DBG[TXRX]NAPI RX poll(%d) done %d\0A\00", [61 x i8] zeroinitializer }, align 32
@wil6210_netdev_poll_tx_edma.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.63, ptr @.str.2, ptr @.str.64, i8 0, i8 46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wil6210_netdev_poll_tx_edma\00", [36 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DBG[TXRX]NAPI TX complete\0A\00", [37 x i8] zeroinitializer }, align 32
@wil6210_netdev_poll_tx_edma.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.63, ptr @.str.2, ptr @.str.65, i8 0, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DBG[TXRX]NAPI TX poll(%d) done %d\0A\00", [61 x i8] zeroinitializer }, align 32
@wil6210_netdev_poll_rx.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.66, ptr @.str.2, ptr @.str.61, i8 0, i8 26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wil6210_netdev_poll_rx\00", [41 x i8] zeroinitializer }, align 32
@wil6210_netdev_poll_rx.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.66, ptr @.str.2, ptr @.str.62, i8 0, i8 26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@wil6210_netdev_poll_tx.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.67, ptr @.str.2, ptr @.str.68, i8 0, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wil6210_netdev_poll_tx\00", [41 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DBG[TXRX]Invalid MID %d\0A\00", [39 x i8] zeroinitializer }, align 32
@wil6210_netdev_poll_tx.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.67, ptr @.str.2, ptr @.str.64, i8 0, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@wil6210_netdev_poll_tx.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.67, ptr @.str.2, ptr @.str.65, i8 0, i8 41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 308, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 315, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [15 x i8] c"wil_netdev_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 83, i32 36 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 356, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 362, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 366, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 368, i32 27 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 371, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 393, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 414, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 417, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 429, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 446, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 452, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 498, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 504, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 550, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 268, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 270, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 271, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 272, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 274, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 275, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 276, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 277, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 278, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 234, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 241, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 250, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 259, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 44, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 48, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 53, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 71, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 74, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 125, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 128, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 186, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 189, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 104, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.280 = private constant [45 x i8] c"../drivers/net/wireless/ath/wil6210/netdev.c\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 152, i32 4 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @wil_if_alloc._entry, ptr @wil_if_alloc._entry.13, ptr @wil_if_alloc._entry.7, ptr @wil_if_alloc._entry_ptr, ptr @wil_if_alloc._entry_ptr.15, ptr @wil_if_alloc._entry_ptr.9, ptr @wil_vif_add._entry, ptr @wil_vif_add._entry.21, ptr @wil_vif_add._entry_ptr, ptr @wil_vif_add._entry_ptr.23, ptr @wil_vif_alloc._entry, ptr @wil_vif_alloc._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @wil_netdev_ops, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @wil_vif_init.__key, ptr @.str.31, ptr @wil_vif_init.__key.32, ptr @.str.33, ptr @wil_vif_init.__key.34, ptr @.str.35, ptr @wil_vif_init.__key.36, ptr @.str.37, ptr @wil_vif_init.__key.38, ptr @.str.39, ptr @wil_vif_init.__key.40, ptr @.str.41, ptr @wil_vif_init.__key.42, ptr @.str.43, ptr @wil_vif_init.__key.44, ptr @.str.45, ptr @wil_vif_init.__key.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_vif_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_if_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_if_alloc._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_if_alloc._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_vif_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_vif_add._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_vif_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_vif_init.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_vif_init.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_vif_init.__key.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_vif_init.__key.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_vif_init.__key.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_vif_init.__key.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_vif_init.__key.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_vif_init.__key.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @wil_has_other_active_ifaces(ptr nocapture noundef readonly %wil, ptr noundef readnone %ndev, i1 noundef zeroext %up, i1 noundef zeroext %ok) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %max_vifs = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 22
  %0 = ptrtoint ptr %max_vifs to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %max_vifs, align 4
  %2 = tail call i8 @llvm.umin.i8(i8 %1, i8 4)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp330.not = icmp eq i8 %2, 0
  br i1 %cmp330.not, label %entry.cleanup_crit_edge, label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %entry
  %arrayidx = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 0
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  %ndev5 = getelementptr inbounds %struct.wil6210_vif, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %ndev5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ndev5, align 4
  %cmp6.not = icmp eq ptr %6, %ndev
  br i1 %cmp6.not, label %if.then.for.inc_crit_edge, label %if.then8

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then8:                                         ; preds = %if.then
  br i1 %up, label %land.lhs.true, label %if.then8.lor.lhs.false_crit_edge

if.then8.lor.lhs.false_crit_edge:                 ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then8
  %flags = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 8
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.then8.lor.lhs.false_crit_edge
  br i1 %ok, label %land.lhs.true14, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true14:                                  ; preds = %lor.lhs.false
  %state.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 6
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %land.lhs.true14.cleanup_crit_edge, label %land.lhs.true14.for.inc_crit_edge

land.lhs.true14.for.inc_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true14.cleanup_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true14.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp3 = icmp ugt i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %exitcond.not = icmp eq i8 %2, 1
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.body.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.1:                                       ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %13, null
  br i1 %tobool.not.1, label %for.body.1.for.inc.1_crit_edge, label %if.then.1

for.body.1.for.inc.1_crit_edge:                   ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then.1:                                        ; preds = %for.body.1
  %ndev5.1 = getelementptr inbounds %struct.wil6210_vif, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %ndev5.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ndev5.1, align 4
  %cmp6.not.1 = icmp eq ptr %15, %ndev
  br i1 %cmp6.not.1, label %if.then.1.for.inc.1_crit_edge, label %if.then8.1

if.then.1.for.inc.1_crit_edge:                    ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then8.1:                                       ; preds = %if.then.1
  br i1 %up, label %land.lhs.true.1, label %if.then8.1.lor.lhs.false.1_crit_edge

if.then8.1.lor.lhs.false.1_crit_edge:             ; preds = %if.then8.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.1

land.lhs.true.1:                                  ; preds = %if.then8.1
  %flags.1 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %flags.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.1, align 8
  %and.1 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool11.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool11.not.1, label %land.lhs.true.1.lor.lhs.false.1_crit_edge, label %land.lhs.true.1.cleanup_crit_edge

land.lhs.true.1.cleanup_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.1.lor.lhs.false.1_crit_edge:        ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.1

lor.lhs.false.1:                                  ; preds = %land.lhs.true.1.lor.lhs.false.1_crit_edge, %if.then8.1.lor.lhs.false.1_crit_edge
  br i1 %ok, label %land.lhs.true14.1, label %lor.lhs.false.1.for.inc.1_crit_edge

lor.lhs.false.1.for.inc.1_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

land.lhs.true14.1:                                ; preds = %lor.lhs.false.1
  %state.i.1 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 6
  %18 = ptrtoint ptr %state.i.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %state.i.1, align 4
  %20 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.1 = icmp eq i32 %20, 0
  br i1 %tobool.not.i.1, label %land.lhs.true14.1.cleanup_crit_edge, label %land.lhs.true14.1.for.inc.1_crit_edge

land.lhs.true14.1.for.inc.1_crit_edge:            ; preds = %land.lhs.true14.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

land.lhs.true14.1.cleanup_crit_edge:              ; preds = %land.lhs.true14.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.1:                                        ; preds = %land.lhs.true14.1.for.inc.1_crit_edge, %lor.lhs.false.1.for.inc.1_crit_edge, %if.then.1.for.inc.1_crit_edge, %for.body.1.for.inc.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %cmp3.1 = icmp ugt i8 %2, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %exitcond.not.1 = icmp eq i8 %2, 2
  br i1 %exitcond.not.1, label %for.inc.1.cleanup_crit_edge, label %for.body.2

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.2:                                       ; preds = %for.inc.1
  %arrayidx.2 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 2
  %21 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %22, null
  br i1 %tobool.not.2, label %for.body.2.for.inc.2_crit_edge, label %if.then.2

for.body.2.for.inc.2_crit_edge:                   ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.then.2:                                        ; preds = %for.body.2
  %ndev5.2 = getelementptr inbounds %struct.wil6210_vif, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %ndev5.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ndev5.2, align 4
  %cmp6.not.2 = icmp eq ptr %24, %ndev
  br i1 %cmp6.not.2, label %if.then.2.for.inc.2_crit_edge, label %if.then8.2

if.then.2.for.inc.2_crit_edge:                    ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.then8.2:                                       ; preds = %if.then.2
  br i1 %up, label %land.lhs.true.2, label %if.then8.2.lor.lhs.false.2_crit_edge

if.then8.2.lor.lhs.false.2_crit_edge:             ; preds = %if.then8.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.2

land.lhs.true.2:                                  ; preds = %if.then8.2
  %flags.2 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 14
  %25 = ptrtoint ptr %flags.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags.2, align 8
  %and.2 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool11.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool11.not.2, label %land.lhs.true.2.lor.lhs.false.2_crit_edge, label %land.lhs.true.2.cleanup_crit_edge

land.lhs.true.2.cleanup_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.2.lor.lhs.false.2_crit_edge:        ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %land.lhs.true.2.lor.lhs.false.2_crit_edge, %if.then8.2.lor.lhs.false.2_crit_edge
  br i1 %ok, label %land.lhs.true14.2, label %lor.lhs.false.2.for.inc.2_crit_edge

lor.lhs.false.2.for.inc.2_crit_edge:              ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

land.lhs.true14.2:                                ; preds = %lor.lhs.false.2
  %state.i.2 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 6
  %27 = ptrtoint ptr %state.i.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %state.i.2, align 4
  %29 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.2 = icmp eq i32 %29, 0
  br i1 %tobool.not.i.2, label %land.lhs.true14.2.cleanup_crit_edge, label %land.lhs.true14.2.for.inc.2_crit_edge

land.lhs.true14.2.for.inc.2_crit_edge:            ; preds = %land.lhs.true14.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

land.lhs.true14.2.cleanup_crit_edge:              ; preds = %land.lhs.true14.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.2:                                        ; preds = %land.lhs.true14.2.for.inc.2_crit_edge, %lor.lhs.false.2.for.inc.2_crit_edge, %if.then.2.for.inc.2_crit_edge, %for.body.2.for.inc.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %2)
  %cmp3.2 = icmp ugt i8 %2, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %2)
  %exitcond.not.2 = icmp eq i8 %2, 3
  br i1 %exitcond.not.2, label %for.inc.2.cleanup_crit_edge, label %for.body.3

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.3:                                       ; preds = %for.inc.2
  %arrayidx.3 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 3
  %30 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %31, null
  br i1 %tobool.not.3, label %for.body.3.for.inc.3_crit_edge, label %if.then.3

for.body.3.for.inc.3_crit_edge:                   ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.then.3:                                        ; preds = %for.body.3
  %ndev5.3 = getelementptr inbounds %struct.wil6210_vif, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %ndev5.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ndev5.3, align 4
  %cmp6.not.3 = icmp eq ptr %33, %ndev
  br i1 %cmp6.not.3, label %if.then.3.for.inc.3_crit_edge, label %if.then8.3

if.then.3.for.inc.3_crit_edge:                    ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.then8.3:                                       ; preds = %if.then.3
  br i1 %up, label %land.lhs.true.3, label %if.then8.3.lor.lhs.false.3_crit_edge

if.then8.3.lor.lhs.false.3_crit_edge:             ; preds = %if.then8.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.3

land.lhs.true.3:                                  ; preds = %if.then8.3
  %flags.3 = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 14
  %34 = ptrtoint ptr %flags.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.3, align 8
  %and.3 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool11.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool11.not.3, label %land.lhs.true.3.lor.lhs.false.3_crit_edge, label %land.lhs.true.3.cleanup_crit_edge

land.lhs.true.3.cleanup_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.3.lor.lhs.false.3_crit_edge:        ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %land.lhs.true.3.lor.lhs.false.3_crit_edge, %if.then8.3.lor.lhs.false.3_crit_edge
  br i1 %ok, label %land.lhs.true14.3, label %lor.lhs.false.3.for.inc.3_crit_edge

lor.lhs.false.3.for.inc.3_crit_edge:              ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

land.lhs.true14.3:                                ; preds = %lor.lhs.false.3
  %state.i.3 = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 6
  %36 = ptrtoint ptr %state.i.3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %state.i.3, align 4
  %38 = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i.3 = icmp eq i32 %38, 0
  br i1 %tobool.not.i.3, label %land.lhs.true14.3.cleanup_crit_edge, label %land.lhs.true14.3.for.inc.3_crit_edge

land.lhs.true14.3.for.inc.3_crit_edge:            ; preds = %land.lhs.true14.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

land.lhs.true14.3.cleanup_crit_edge:              ; preds = %land.lhs.true14.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.3:                                        ; preds = %land.lhs.true14.3.for.inc.3_crit_edge, %lor.lhs.false.3.for.inc.3_crit_edge, %if.then.3.for.inc.3_crit_edge, %for.body.3.for.inc.3_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.inc.3, %land.lhs.true14.3.cleanup_crit_edge, %land.lhs.true.3.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %land.lhs.true14.2.cleanup_crit_edge, %land.lhs.true.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %land.lhs.true14.1.cleanup_crit_edge, %land.lhs.true.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %land.lhs.true14.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp3.lcssa = phi i1 [ false, %entry.cleanup_crit_edge ], [ %cmp3, %for.inc.cleanup_crit_edge ], [ true, %land.lhs.true.cleanup_crit_edge ], [ true, %land.lhs.true14.cleanup_crit_edge ], [ %cmp3, %land.lhs.true.1.cleanup_crit_edge ], [ %cmp3, %land.lhs.true14.1.cleanup_crit_edge ], [ %cmp3.1, %for.inc.1.cleanup_crit_edge ], [ %cmp3.1, %land.lhs.true.2.cleanup_crit_edge ], [ %cmp3.1, %land.lhs.true14.2.cleanup_crit_edge ], [ %cmp3.2, %for.inc.2.cleanup_crit_edge ], [ %cmp3.2, %land.lhs.true.3.cleanup_crit_edge ], [ %cmp3.2, %land.lhs.true14.3.cleanup_crit_edge ], [ false, %for.inc.3 ]
  ret i1 %cmp3.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @wil_has_active_ifaces(ptr nocapture noundef readonly %wil, i1 noundef zeroext %up, i1 noundef zeroext %ok) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %max_vifs.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 22
  %0 = ptrtoint ptr %max_vifs.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %max_vifs.i, align 4
  %2 = tail call i8 @llvm.umin.i8(i8 %1, i8 4) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp330.not.i = icmp eq i8 %2, 0
  br i1 %cmp330.not.i, label %entry.wil_has_other_active_ifaces.exit_crit_edge, label %for.body.i

entry.wil_has_other_active_ifaces.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_has_other_active_ifaces.exit

for.body.i:                                       ; preds = %entry
  %arrayidx.i = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 0
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %ndev5.i = getelementptr inbounds %struct.wil6210_vif, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %ndev5.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ndev5.i, align 4
  %cmp6.not.i = icmp eq ptr %6, null
  br i1 %cmp6.not.i, label %if.then.i.for.inc.i_crit_edge, label %if.then8.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then8.i:                                       ; preds = %if.then.i
  br i1 %up, label %land.lhs.true.i, label %if.then8.i.lor.lhs.false.i_crit_edge

if.then8.i.lor.lhs.false.i_crit_edge:             ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %if.then8.i
  %flags.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true.i.lor.lhs.false.i_crit_edge, label %land.lhs.true.i.wil_has_other_active_ifaces.exit_crit_edge

land.lhs.true.i.wil_has_other_active_ifaces.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_has_other_active_ifaces.exit

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i.lor.lhs.false.i_crit_edge, %if.then8.i.lor.lhs.false.i_crit_edge
  br i1 %ok, label %land.lhs.true14.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true14.i:                                ; preds = %lor.lhs.false.i
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 6
  %9 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i.i, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %land.lhs.true14.i.wil_has_other_active_ifaces.exit_crit_edge, label %land.lhs.true14.i.for.inc.i_crit_edge

land.lhs.true14.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true14.i.wil_has_other_active_ifaces.exit_crit_edge: ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_has_other_active_ifaces.exit

for.inc.i:                                        ; preds = %land.lhs.true14.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp3.i = icmp ugt i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %exitcond.not.i = icmp eq i8 %2, 1
  br i1 %exitcond.not.i, label %for.inc.i.wil_has_other_active_ifaces.exit_crit_edge, label %for.body.i.1

for.inc.i.wil_has_other_active_ifaces.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_has_other_active_ifaces.exit

for.body.i.1:                                     ; preds = %for.inc.i
  %arrayidx.i.1 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 1
  %12 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.1, align 4
  %tobool.not.i.1 = icmp eq ptr %13, null
  br i1 %tobool.not.i.1, label %for.body.i.1.for.inc.i.1_crit_edge, label %if.then.i.1

for.body.i.1.for.inc.i.1_crit_edge:               ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.1

if.then.i.1:                                      ; preds = %for.body.i.1
  %ndev5.i.1 = getelementptr inbounds %struct.wil6210_vif, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %ndev5.i.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ndev5.i.1, align 4
  %cmp6.not.i.1 = icmp eq ptr %15, null
  br i1 %cmp6.not.i.1, label %if.then.i.1.for.inc.i.1_crit_edge, label %if.then8.i.1

if.then.i.1.for.inc.i.1_crit_edge:                ; preds = %if.then.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.1

if.then8.i.1:                                     ; preds = %if.then.i.1
  br i1 %up, label %land.lhs.true.i.1, label %if.then8.i.1.lor.lhs.false.i.1_crit_edge

if.then8.i.1.lor.lhs.false.i.1_crit_edge:         ; preds = %if.then8.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i.1

land.lhs.true.i.1:                                ; preds = %if.then8.i.1
  %flags.i.1 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %flags.i.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i.1, align 8
  %and.i.1 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %tobool11.not.i.1 = icmp eq i32 %and.i.1, 0
  br i1 %tobool11.not.i.1, label %land.lhs.true.i.1.lor.lhs.false.i.1_crit_edge, label %land.lhs.true.i.1.wil_has_other_active_ifaces.exit_crit_edge

land.lhs.true.i.1.wil_has_other_active_ifaces.exit_crit_edge: ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_has_other_active_ifaces.exit

land.lhs.true.i.1.lor.lhs.false.i.1_crit_edge:    ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i.1

lor.lhs.false.i.1:                                ; preds = %land.lhs.true.i.1.lor.lhs.false.i.1_crit_edge, %if.then8.i.1.lor.lhs.false.i.1_crit_edge
  br i1 %ok, label %land.lhs.true14.i.1, label %lor.lhs.false.i.1.for.inc.i.1_crit_edge

lor.lhs.false.i.1.for.inc.i.1_crit_edge:          ; preds = %lor.lhs.false.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.1

land.lhs.true14.i.1:                              ; preds = %lor.lhs.false.i.1
  %state.i.i.1 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 6
  %18 = ptrtoint ptr %state.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %state.i.i.1, align 4
  %20 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i.1 = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i.1, label %land.lhs.true14.i.1.wil_has_other_active_ifaces.exit_crit_edge, label %land.lhs.true14.i.1.for.inc.i.1_crit_edge

land.lhs.true14.i.1.for.inc.i.1_crit_edge:        ; preds = %land.lhs.true14.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.1

land.lhs.true14.i.1.wil_has_other_active_ifaces.exit_crit_edge: ; preds = %land.lhs.true14.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_has_other_active_ifaces.exit

for.inc.i.1:                                      ; preds = %land.lhs.true14.i.1.for.inc.i.1_crit_edge, %lor.lhs.false.i.1.for.inc.i.1_crit_edge, %if.then.i.1.for.inc.i.1_crit_edge, %for.body.i.1.for.inc.i.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %cmp3.i.1 = icmp ugt i8 %2, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %exitcond.not.i.1 = icmp eq i8 %2, 2
  br i1 %exitcond.not.i.1, label %for.inc.i.1.wil_has_other_active_ifaces.exit_crit_edge, label %for.body.i.2

for.inc.i.1.wil_has_other_active_ifaces.exit_crit_edge: ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_has_other_active_ifaces.exit

for.body.i.2:                                     ; preds = %for.inc.i.1
  %arrayidx.i.2 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 2
  %21 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.2, align 4
  %tobool.not.i.2 = icmp eq ptr %22, null
  br i1 %tobool.not.i.2, label %for.body.i.2.for.inc.i.2_crit_edge, label %if.then.i.2

for.body.i.2.for.inc.i.2_crit_edge:               ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.2

if.then.i.2:                                      ; preds = %for.body.i.2
  %ndev5.i.2 = getelementptr inbounds %struct.wil6210_vif, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %ndev5.i.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ndev5.i.2, align 4
  %cmp6.not.i.2 = icmp eq ptr %24, null
  br i1 %cmp6.not.i.2, label %if.then.i.2.for.inc.i.2_crit_edge, label %if.then8.i.2

if.then.i.2.for.inc.i.2_crit_edge:                ; preds = %if.then.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.2

if.then8.i.2:                                     ; preds = %if.then.i.2
  br i1 %up, label %land.lhs.true.i.2, label %if.then8.i.2.lor.lhs.false.i.2_crit_edge

if.then8.i.2.lor.lhs.false.i.2_crit_edge:         ; preds = %if.then8.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i.2

land.lhs.true.i.2:                                ; preds = %if.then8.i.2
  %flags.i.2 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 14
  %25 = ptrtoint ptr %flags.i.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags.i.2, align 8
  %and.i.2 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.2)
  %tobool11.not.i.2 = icmp eq i32 %and.i.2, 0
  br i1 %tobool11.not.i.2, label %land.lhs.true.i.2.lor.lhs.false.i.2_crit_edge, label %land.lhs.true.i.2.wil_has_other_active_ifaces.exit_crit_edge

land.lhs.true.i.2.wil_has_other_active_ifaces.exit_crit_edge: ; preds = %land.lhs.true.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_has_other_active_ifaces.exit

land.lhs.true.i.2.lor.lhs.false.i.2_crit_edge:    ; preds = %land.lhs.true.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i.2

lor.lhs.false.i.2:                                ; preds = %land.lhs.true.i.2.lor.lhs.false.i.2_crit_edge, %if.then8.i.2.lor.lhs.false.i.2_crit_edge
  br i1 %ok, label %land.lhs.true14.i.2, label %lor.lhs.false.i.2.for.inc.i.2_crit_edge

lor.lhs.false.i.2.for.inc.i.2_crit_edge:          ; preds = %lor.lhs.false.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.2

land.lhs.true14.i.2:                              ; preds = %lor.lhs.false.i.2
  %state.i.i.2 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 6
  %27 = ptrtoint ptr %state.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %state.i.i.2, align 4
  %29 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i.2 = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i.2, label %land.lhs.true14.i.2.wil_has_other_active_ifaces.exit_crit_edge, label %land.lhs.true14.i.2.for.inc.i.2_crit_edge

land.lhs.true14.i.2.for.inc.i.2_crit_edge:        ; preds = %land.lhs.true14.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.2

land.lhs.true14.i.2.wil_has_other_active_ifaces.exit_crit_edge: ; preds = %land.lhs.true14.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_has_other_active_ifaces.exit

for.inc.i.2:                                      ; preds = %land.lhs.true14.i.2.for.inc.i.2_crit_edge, %lor.lhs.false.i.2.for.inc.i.2_crit_edge, %if.then.i.2.for.inc.i.2_crit_edge, %for.body.i.2.for.inc.i.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %2)
  %cmp3.i.2 = icmp ugt i8 %2, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %2)
  %exitcond.not.i.2 = icmp eq i8 %2, 3
  br i1 %exitcond.not.i.2, label %for.inc.i.2.wil_has_other_active_ifaces.exit_crit_edge, label %for.body.i.3

for.inc.i.2.wil_has_other_active_ifaces.exit_crit_edge: ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_has_other_active_ifaces.exit

for.body.i.3:                                     ; preds = %for.inc.i.2
  %arrayidx.i.3 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 3
  %30 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.3, align 4
  %tobool.not.i.3 = icmp eq ptr %31, null
  br i1 %tobool.not.i.3, label %for.body.i.3.for.inc.i.3_crit_edge, label %if.then.i.3

for.body.i.3.for.inc.i.3_crit_edge:               ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.3

if.then.i.3:                                      ; preds = %for.body.i.3
  %ndev5.i.3 = getelementptr inbounds %struct.wil6210_vif, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %ndev5.i.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ndev5.i.3, align 4
  %cmp6.not.i.3 = icmp eq ptr %33, null
  br i1 %cmp6.not.i.3, label %if.then.i.3.for.inc.i.3_crit_edge, label %if.then8.i.3

if.then.i.3.for.inc.i.3_crit_edge:                ; preds = %if.then.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.3

if.then8.i.3:                                     ; preds = %if.then.i.3
  br i1 %up, label %land.lhs.true.i.3, label %if.then8.i.3.lor.lhs.false.i.3_crit_edge

if.then8.i.3.lor.lhs.false.i.3_crit_edge:         ; preds = %if.then8.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i.3

land.lhs.true.i.3:                                ; preds = %if.then8.i.3
  %flags.i.3 = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 14
  %34 = ptrtoint ptr %flags.i.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i.3, align 8
  %and.i.3 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.3)
  %tobool11.not.i.3 = icmp eq i32 %and.i.3, 0
  br i1 %tobool11.not.i.3, label %land.lhs.true.i.3.lor.lhs.false.i.3_crit_edge, label %land.lhs.true.i.3.wil_has_other_active_ifaces.exit_crit_edge

land.lhs.true.i.3.wil_has_other_active_ifaces.exit_crit_edge: ; preds = %land.lhs.true.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_has_other_active_ifaces.exit

land.lhs.true.i.3.lor.lhs.false.i.3_crit_edge:    ; preds = %land.lhs.true.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i.3

lor.lhs.false.i.3:                                ; preds = %land.lhs.true.i.3.lor.lhs.false.i.3_crit_edge, %if.then8.i.3.lor.lhs.false.i.3_crit_edge
  br i1 %ok, label %land.lhs.true14.i.3, label %lor.lhs.false.i.3.for.inc.i.3_crit_edge

lor.lhs.false.i.3.for.inc.i.3_crit_edge:          ; preds = %lor.lhs.false.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.3

land.lhs.true14.i.3:                              ; preds = %lor.lhs.false.i.3
  %state.i.i.3 = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 6
  %36 = ptrtoint ptr %state.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %state.i.i.3, align 4
  %38 = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i.i.3 = icmp eq i32 %38, 0
  br i1 %tobool.not.i.i.3, label %land.lhs.true14.i.3.wil_has_other_active_ifaces.exit_crit_edge, label %land.lhs.true14.i.3.for.inc.i.3_crit_edge

land.lhs.true14.i.3.for.inc.i.3_crit_edge:        ; preds = %land.lhs.true14.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.3

land.lhs.true14.i.3.wil_has_other_active_ifaces.exit_crit_edge: ; preds = %land.lhs.true14.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_has_other_active_ifaces.exit

for.inc.i.3:                                      ; preds = %land.lhs.true14.i.3.for.inc.i.3_crit_edge, %lor.lhs.false.i.3.for.inc.i.3_crit_edge, %if.then.i.3.for.inc.i.3_crit_edge, %for.body.i.3.for.inc.i.3_crit_edge
  br label %wil_has_other_active_ifaces.exit

wil_has_other_active_ifaces.exit:                 ; preds = %for.inc.i.3, %land.lhs.true14.i.3.wil_has_other_active_ifaces.exit_crit_edge, %land.lhs.true.i.3.wil_has_other_active_ifaces.exit_crit_edge, %for.inc.i.2.wil_has_other_active_ifaces.exit_crit_edge, %land.lhs.true14.i.2.wil_has_other_active_ifaces.exit_crit_edge, %land.lhs.true.i.2.wil_has_other_active_ifaces.exit_crit_edge, %for.inc.i.1.wil_has_other_active_ifaces.exit_crit_edge, %land.lhs.true14.i.1.wil_has_other_active_ifaces.exit_crit_edge, %land.lhs.true.i.1.wil_has_other_active_ifaces.exit_crit_edge, %for.inc.i.wil_has_other_active_ifaces.exit_crit_edge, %land.lhs.true14.i.wil_has_other_active_ifaces.exit_crit_edge, %land.lhs.true.i.wil_has_other_active_ifaces.exit_crit_edge, %entry.wil_has_other_active_ifaces.exit_crit_edge
  %cmp3.lcssa.i = phi i1 [ false, %entry.wil_has_other_active_ifaces.exit_crit_edge ], [ true, %land.lhs.true14.i.wil_has_other_active_ifaces.exit_crit_edge ], [ true, %land.lhs.true.i.wil_has_other_active_ifaces.exit_crit_edge ], [ %cmp3.i, %for.inc.i.wil_has_other_active_ifaces.exit_crit_edge ], [ %cmp3.i, %land.lhs.true.i.1.wil_has_other_active_ifaces.exit_crit_edge ], [ %cmp3.i, %land.lhs.true14.i.1.wil_has_other_active_ifaces.exit_crit_edge ], [ %cmp3.i.1, %for.inc.i.1.wil_has_other_active_ifaces.exit_crit_edge ], [ %cmp3.i.1, %land.lhs.true.i.2.wil_has_other_active_ifaces.exit_crit_edge ], [ %cmp3.i.1, %land.lhs.true14.i.2.wil_has_other_active_ifaces.exit_crit_edge ], [ %cmp3.i.2, %for.inc.i.2.wil_has_other_active_ifaces.exit_crit_edge ], [ %cmp3.i.2, %land.lhs.true.i.3.wil_has_other_active_ifaces.exit_crit_edge ], [ %cmp3.i.2, %land.lhs.true14.i.3.wil_has_other_active_ifaces.exit_crit_edge ], [ false, %for.inc.i.3 ]
  ret i1 %cmp3.lcssa.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_vif_free(ptr noundef %vif) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev1 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 1
  %0 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev1, align 4
  %scan_timer.i = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 29
  %call.i = tail call i32 @del_timer_sync(ptr noundef %scan_timer.i) #8
  %discovery_timer.i = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 30, i32 5
  %call1.i = tail call i32 @del_timer_sync(ptr noundef %discovery_timer.i) #8
  %disconnect_worker.i = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 27
  %call2.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %disconnect_worker.i) #8
  %discovery_expired_work.i = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 30, i32 6
  %call4.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %discovery_expired_work.i) #8
  %delayed_listen_work.i = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 30, i32 7
  %call6.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %delayed_listen_work.i) #8
  tail call void @wil_probe_client_flush(ptr noundef %vif) #8
  %probe_client_worker.i = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 33
  %call7.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %probe_client_worker.i) #8
  %enable_tx_key_worker.i = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 38
  %call8.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %enable_tx_key_worker.i) #8
  tail call void @free_netdev(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @wil_vif_alloc(ptr noundef %wil, ptr noundef %name, i8 noundef zeroext %name_assign_type, i32 noundef %iftype) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %max_vifs.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 22
  %0 = ptrtoint ptr %max_vifs.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %max_vifs.i, align 4
  %2 = tail call i8 @llvm.umin.i8(i8 %1, i8 4) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp311.not.i = icmp eq i8 %2, 0
  br i1 %cmp311.not.i, label %entry.if.then_crit_edge, label %for.body.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.body.i:                                       ; preds = %entry
  %arrayidx.i = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 0
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %for.body.i.if.end_crit_edge, label %for.inc.i

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.inc.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %exitcond.not = icmp eq i8 %2, 1
  br i1 %exitcond.not, label %for.inc.i.if.then_crit_edge, label %for.body.i.1

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.body.i.1:                                     ; preds = %for.inc.i
  %arrayidx.i.1 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 1
  %5 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.1, align 4
  %tobool.not.i.1 = icmp eq ptr %6, null
  br i1 %tobool.not.i.1, label %for.body.i.1.if.end_crit_edge, label %for.inc.i.1

for.body.i.1.if.end_crit_edge:                    ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.inc.i.1:                                      ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %exitcond.not.1 = icmp eq i8 %2, 2
  br i1 %exitcond.not.1, label %for.inc.i.1.if.then_crit_edge, label %for.body.i.2

for.inc.i.1.if.then_crit_edge:                    ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.body.i.2:                                     ; preds = %for.inc.i.1
  %arrayidx.i.2 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 2
  %7 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.2, align 4
  %tobool.not.i.2 = icmp eq ptr %8, null
  br i1 %tobool.not.i.2, label %for.body.i.2.if.end_crit_edge, label %for.inc.i.2

for.body.i.2.if.end_crit_edge:                    ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.inc.i.2:                                      ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %2)
  %exitcond.not.2 = icmp eq i8 %2, 3
  br i1 %exitcond.not.2, label %for.inc.i.2.if.then_crit_edge, label %for.body.i.3

for.inc.i.2.if.then_crit_edge:                    ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.body.i.3:                                     ; preds = %for.inc.i.2
  %arrayidx.i.3 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 3
  %9 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.3, align 4
  %tobool.not.i.3 = icmp eq ptr %10, null
  br i1 %tobool.not.i.3, label %for.body.i.3.if.end_crit_edge, label %for.body.i.3.if.then_crit_edge

for.body.i.3.if.then_crit_edge:                   ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.body.i.3.if.end_crit_edge:                    ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.body.i.3.if.then_crit_edge, %for.inc.i.2.if.then_crit_edge, %for.inc.i.1.if.then_crit_edge, %for.inc.i.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.wil_vif_alloc) #8
  br label %cleanup

if.end:                                           ; preds = %for.body.i.3.if.end_crit_edge, %for.body.i.2.if.end_crit_edge, %for.body.i.1.if.end_crit_edge, %for.body.i.if.end_crit_edge
  %indvars.iv.lcssa = phi i8 [ 0, %for.body.i.if.end_crit_edge ], [ 1, %for.body.i.1.if.end_crit_edge ], [ 2, %for.body.i.2.if.end_crit_edge ], [ 3, %for.body.i.3.if.end_crit_edge ]
  %call3 = tail call ptr @alloc_netdev_mqs(i32 noundef 1680, ptr noundef %name, i8 noundef zeroext %name_assign_type, ptr noundef nonnull @wil_dev_setup, i32 noundef 1, i32 noundef 1) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %wiphy = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 2
  %11 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wiphy, align 8
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %12, i32 0, i32 56, i32 1
  %13 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  br i1 %tobool.not.i, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %15 = ptrtoint ptr %main_ndev to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call3, ptr %main_ndev, align 4
  br label %if.end12

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %priv_destructor = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 125
  %16 = ptrtoint ptr %priv_destructor to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @wil_ndev_destructor, ptr %priv_destructor, align 4
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 124
  %17 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %needs_free_netdev, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then11
  %add.ptr.i = getelementptr i8, ptr %call3, i32 2304
  %ndev14 = getelementptr i8, ptr %call3, i32 3268
  %18 = ptrtoint ptr %ndev14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call3, ptr %ndev14, align 4
  %wil15 = getelementptr i8, ptr %call3, i32 3272
  %19 = ptrtoint ptr %wil15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %wil, ptr %wil15, align 8
  %mid16 = getelementptr i8, ptr %call3, i32 3276
  %20 = ptrtoint ptr %mid16 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %indvars.iv.lcssa, ptr %mid16, align 4
  %bcast_ring.i = getelementptr i8, ptr %call3, i32 3404
  %21 = ptrtoint ptr %bcast_ring.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %bcast_ring.i, align 4
  %probe_client_mutex.i = getelementptr i8, ptr %call3, i32 3784
  tail call void @__mutex_init(ptr noundef %probe_client_mutex.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @wil_vif_init.__key) #8
  %connect_timer.i = getelementptr i8, ptr %call3, i32 3416
  tail call void @init_timer_key(ptr noundef %connect_timer.i, ptr noundef nonnull @wil_connect_timer_fn, i32 noundef 0, ptr noundef nonnull @.str.33, ptr noundef nonnull @wil_vif_init.__key.32) #8
  %scan_timer.i = getelementptr i8, ptr %call3, i32 3512
  tail call void @init_timer_key(ptr noundef %scan_timer.i, ptr noundef nonnull @wil_scan_timer_fn, i32 noundef 0, ptr noundef nonnull @.str.35, ptr noundef nonnull @wil_vif_init.__key.34) #8
  %discovery_timer.i = getelementptr i8, ptr %call3, i32 3640
  tail call void @init_timer_key(ptr noundef %discovery_timer.i, ptr noundef nonnull @wil_p2p_discovery_timer_fn, i32 noundef 0, ptr noundef nonnull @.str.37, ptr noundef nonnull @wil_vif_init.__key.36) #8
  %probe_client_worker.i = getelementptr i8, ptr %call3, i32 3876
  tail call void @__init_work(ptr noundef %probe_client_worker.i, i32 noundef 0) #8
  %22 = ptrtoint ptr %probe_client_worker.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -64, ptr %probe_client_worker.i, align 4
  %lockdep_map.i = getelementptr i8, ptr %call3, i32 3892
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @wil_vif_init.__key.38, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry11.i = getelementptr i8, ptr %call3, i32 3880
  %23 = ptrtoint ptr %entry11.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry11.i, ptr %entry11.i, align 4
  %prev.i.i = getelementptr i8, ptr %call3, i32 3884
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry11.i, ptr %prev.i.i, align 4
  %func.i = getelementptr i8, ptr %call3, i32 3888
  %25 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @wil_probe_client_worker, ptr %func.i, align 4
  %disconnect_worker.i = getelementptr i8, ptr %call3, i32 3464
  tail call void @__init_work(ptr noundef %disconnect_worker.i, i32 noundef 0) #8
  %26 = ptrtoint ptr %disconnect_worker.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -64, ptr %disconnect_worker.i, align 8
  %lockdep_map20.i = getelementptr i8, ptr %call3, i32 3480
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map20.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @wil_vif_init.__key.40, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry22.i = getelementptr i8, ptr %call3, i32 3468
  %27 = ptrtoint ptr %entry22.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %entry22.i, ptr %entry22.i, align 4
  %prev.i103.i = getelementptr i8, ptr %call3, i32 3472
  %28 = ptrtoint ptr %prev.i103.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %entry22.i, ptr %prev.i103.i, align 4
  %func24.i = getelementptr i8, ptr %call3, i32 3476
  %29 = ptrtoint ptr %func24.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @wil_disconnect_worker, ptr %func24.i, align 4
  %discovery_expired_work.i = getelementptr i8, ptr %call3, i32 3688
  tail call void @__init_work(ptr noundef %discovery_expired_work.i, i32 noundef 0) #8
  %30 = ptrtoint ptr %discovery_expired_work.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -64, ptr %discovery_expired_work.i, align 8
  %lockdep_map35.i = getelementptr i8, ptr %call3, i32 3704
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map35.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @wil_vif_init.__key.42, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry38.i = getelementptr i8, ptr %call3, i32 3692
  %31 = ptrtoint ptr %entry38.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %entry38.i, ptr %entry38.i, align 4
  %prev.i104.i = getelementptr i8, ptr %call3, i32 3696
  %32 = ptrtoint ptr %prev.i104.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %entry38.i, ptr %prev.i104.i, align 4
  %func41.i = getelementptr i8, ptr %call3, i32 3700
  %33 = ptrtoint ptr %func41.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @wil_p2p_listen_expired, ptr %func41.i, align 4
  %delayed_listen_work.i = getelementptr i8, ptr %call3, i32 3732
  tail call void @__init_work(ptr noundef %delayed_listen_work.i, i32 noundef 0) #8
  %34 = ptrtoint ptr %delayed_listen_work.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -64, ptr %delayed_listen_work.i, align 4
  %lockdep_map52.i = getelementptr i8, ptr %call3, i32 3748
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map52.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @wil_vif_init.__key.44, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry55.i = getelementptr i8, ptr %call3, i32 3736
  %35 = ptrtoint ptr %entry55.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %entry55.i, ptr %entry55.i, align 4
  %prev.i105.i = getelementptr i8, ptr %call3, i32 3740
  %36 = ptrtoint ptr %prev.i105.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %entry55.i, ptr %prev.i105.i, align 4
  %func58.i = getelementptr i8, ptr %call3, i32 3744
  %37 = ptrtoint ptr %func58.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @wil_p2p_delayed_listen_work, ptr %func58.i, align 4
  %enable_tx_key_worker.i = getelementptr i8, ptr %call3, i32 3940
  tail call void @__init_work(ptr noundef %enable_tx_key_worker.i, i32 noundef 0) #8
  %38 = ptrtoint ptr %enable_tx_key_worker.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -64, ptr %enable_tx_key_worker.i, align 4
  %lockdep_map66.i = getelementptr i8, ptr %call3, i32 3956
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map66.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @wil_vif_init.__key.46, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry68.i = getelementptr i8, ptr %call3, i32 3944
  %39 = ptrtoint ptr %entry68.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %entry68.i, ptr %entry68.i, align 4
  %prev.i106.i = getelementptr i8, ptr %call3, i32 3948
  %40 = ptrtoint ptr %prev.i106.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %entry68.i, ptr %prev.i106.i, align 4
  %func70.i = getelementptr i8, ptr %call3, i32 3952
  %41 = ptrtoint ptr %func70.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @wil_enable_tx_key_worker, ptr %func70.i, align 4
  %probe_client_pending.i = getelementptr i8, ptr %call3, i32 3776
  %42 = ptrtoint ptr %probe_client_pending.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %probe_client_pending.i, ptr %probe_client_pending.i, align 4
  %prev.i107.i = getelementptr i8, ptr %call3, i32 3780
  %43 = ptrtoint ptr %prev.i107.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %probe_client_pending.i, ptr %prev.i107.i, align 4
  %net_queue_stopped.i = getelementptr i8, ptr %call3, i32 3920
  %44 = ptrtoint ptr %net_queue_stopped.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %net_queue_stopped.i, align 8
  %wiphy18 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 2
  %45 = ptrtoint ptr %wiphy18 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wiphy18, align 8
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %add.ptr.i, align 4
  %iftype20 = getelementptr i8, ptr %call3, i32 2308
  %48 = ptrtoint ptr %iftype20 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %iftype, ptr %iftype20, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 16
  %49 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @wil_netdev_ops, ptr %netdev_ops, align 8
  tail call void @wil_set_ethtoolops(ptr noundef nonnull %call3) #8
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 82
  %50 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %add.ptr.i, ptr %ieee80211_ptr, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 24
  %51 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 1099512758281, ptr %hw_features, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 23
  %52 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %features, align 16
  %or = or i64 %53, 1099512758281
  store i64 %or, ptr %features, align 16
  %54 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr.i, align 4
  %parent.i56 = getelementptr inbounds %struct.wiphy, ptr %55, i32 0, i32 56, i32 1
  %56 = ptrtoint ptr %parent.i56 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %parent.i56, align 8
  %parent = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 133, i32 1
  %58 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %parent, align 8
  %netdev = getelementptr i8, ptr %call3, i32 2320
  %59 = ptrtoint ptr %netdev to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call3, ptr %netdev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end, %if.then
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then ], [ %add.ptr.i, %if.end12 ], [ inttoptr (i32 -12 to ptr), %do.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wil_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wil_dev_setup(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ether_setup(ptr noundef %dev) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mtu_max to i32))
  %0 = load i32, ptr @mtu_max, align 4
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %1 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %max_mtu, align 4
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 107
  %2 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4000, ptr %tx_queue_len, align 16
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wil_ndev_destructor(ptr noundef %ndev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %scan_timer.i = getelementptr i8, ptr %ndev, i32 3512
  %call.i = tail call i32 @del_timer_sync(ptr noundef %scan_timer.i) #8
  %discovery_timer.i = getelementptr i8, ptr %ndev, i32 3640
  %call1.i = tail call i32 @del_timer_sync(ptr noundef %discovery_timer.i) #8
  %disconnect_worker.i = getelementptr i8, ptr %ndev, i32 3464
  %call2.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %disconnect_worker.i) #8
  %discovery_expired_work.i = getelementptr i8, ptr %ndev, i32 3688
  %call4.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %discovery_expired_work.i) #8
  %delayed_listen_work.i = getelementptr i8, ptr %ndev, i32 3732
  %call6.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %delayed_listen_work.i) #8
  tail call void @wil_probe_client_flush(ptr noundef %add.ptr.i) #8
  %probe_client_worker.i = getelementptr i8, ptr %ndev, i32 3876
  %call7.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %probe_client_worker.i) #8
  %enable_tx_key_worker.i = getelementptr i8, ptr %ndev, i32 3940
  %call8.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %enable_tx_key_worker.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_set_ethtoolops(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @wil_if_alloc(ptr noundef %dev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @wil_cfg80211_init(ptr noundef %dev) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @wil_priv_init(ptr noundef %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.body10, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #11
  %phi.cast = inttoptr i32 %call2 to ptr
  br label %out_cfg

do.body10:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_if_alloc.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_if_alloc, %if.then15)) #8
          to label %do.end20 [label %if.then15], !srcloc !156

if.then15:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_if_alloc.__UNIQUE_ID_ddebug370, ptr noundef %1, ptr noundef nonnull @.str.11) #8
  br label %do.end20

do.end20:                                         ; preds = %if.then15, %do.body10
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %call, ptr noundef nonnull @.str.11) #8
  %call23 = tail call ptr @wil_vif_alloc(ptr noundef %call, ptr noundef nonnull @.str.12, i8 noundef zeroext 0, i32 noundef 2)
  %cmp.i47 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i47, label %do.end28, label %if.end29

do.end28:                                         ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #11
  tail call void @wil_priv_deinit(ptr noundef %call) #8
  br label %out_cfg

if.end29:                                         ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #10
  %radio_wdev = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 88
  %2 = ptrtoint ptr %radio_wdev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call23, ptr %radio_wdev, align 8
  br label %cleanup

out_cfg:                                          ; preds = %do.end28, %do.end6
  %rc.0 = phi ptr [ %phi.cast, %do.end6 ], [ inttoptr (i32 -12 to ptr), %do.end28 ]
  tail call void @wil_cfg80211_deinit(ptr noundef %call) #8
  br label %cleanup

cleanup:                                          ; preds = %out_cfg, %if.end29, %do.end
  %retval.0 = phi ptr [ %call, %do.end ], [ %rc.0, %out_cfg ], [ %call, %if.end29 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wil_cfg80211_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_priv_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_dbg_trace(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_priv_deinit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_cfg80211_deinit(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_if_free(ptr noundef %wil) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_if_free.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_if_free, %if.then)) #8
          to label %do.end7 [label %if.then], !srcloc !156

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_if_free.__UNIQUE_ID_ddebug371, ptr noundef %3, ptr noundef nonnull @.str.17) #8
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.17) #8
  %tobool10.not = icmp eq ptr %1, null
  br i1 %tobool10.not, label %do.end7.cleanup_crit_edge, label %if.end12

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @wil_priv_deinit(ptr noundef %wil) #8
  %4 = ptrtoint ptr %main_ndev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %main_ndev, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %scan_timer.i.i = getelementptr i8, ptr %1, i32 3512
  %call.i.i = tail call i32 @del_timer_sync(ptr noundef %scan_timer.i.i) #8
  %discovery_timer.i.i = getelementptr i8, ptr %1, i32 3640
  %call1.i.i = tail call i32 @del_timer_sync(ptr noundef %discovery_timer.i.i) #8
  %disconnect_worker.i.i = getelementptr i8, ptr %1, i32 3464
  %call2.i.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %disconnect_worker.i.i) #8
  %discovery_expired_work.i.i = getelementptr i8, ptr %1, i32 3688
  %call4.i.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %discovery_expired_work.i.i) #8
  %delayed_listen_work.i.i = getelementptr i8, ptr %1, i32 3732
  %call6.i.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %delayed_listen_work.i.i) #8
  tail call void @wil_probe_client_flush(ptr noundef %add.ptr.i.i) #8
  %probe_client_worker.i.i = getelementptr i8, ptr %1, i32 3876
  %call7.i.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %probe_client_worker.i.i) #8
  %enable_tx_key_worker.i.i = getelementptr i8, ptr %1, i32 3940
  %call8.i.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %enable_tx_key_worker.i.i) #8
  tail call void @free_netdev(ptr noundef nonnull %1) #8
  tail call void @wil_cfg80211_deinit(ptr noundef %wil) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end7.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wil_vif_add(ptr noundef %wil, ptr noundef %vif) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev1 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 1
  %0 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev1, align 4
  %max_vifs.i.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 22
  %2 = ptrtoint ptr %max_vifs.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %max_vifs.i.i, align 4
  %4 = tail call i8 @llvm.umin.i8(i8 %3, i8 4) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp330.not.i.i = icmp eq i8 %4, 0
  br i1 %cmp330.not.i.i, label %entry.wil_has_active_ifaces.exit_crit_edge, label %for.body.i.i

entry.wil_has_active_ifaces.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_has_active_ifaces.exit

for.body.i.i:                                     ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 0
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %ndev5.i.i = getelementptr inbounds %struct.wil6210_vif, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %ndev5.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ndev5.i.i, align 4
  %cmp6.not.i.i = icmp eq ptr %8, null
  br i1 %cmp6.not.i.i, label %if.then.i.i.for.inc.i.i_crit_edge, label %if.then8.i.i

if.then.i.i.for.inc.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then8.i.i:                                     ; preds = %if.then.i.i
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool11.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool11.not.i.i, label %if.then8.i.i.for.inc.i.i_crit_edge, label %if.then8.i.i.wil_has_active_ifaces.exit_crit_edge

if.then8.i.i.wil_has_active_ifaces.exit_crit_edge: ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_has_active_ifaces.exit

if.then8.i.i.for.inc.i.i_crit_edge:               ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then8.i.i.for.inc.i.i_crit_edge, %if.then.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp3.i.i = icmp ugt i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %exitcond.not.i.i = icmp eq i8 %4, 1
  br i1 %exitcond.not.i.i, label %for.inc.i.i.wil_has_active_ifaces.exit_crit_edge, label %for.body.i.i.1

for.inc.i.i.wil_has_active_ifaces.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_has_active_ifaces.exit

for.body.i.i.1:                                   ; preds = %for.inc.i.i
  %arrayidx.i.i.1 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 1
  %11 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i.1, align 4
  %tobool.not.i.i.1 = icmp eq ptr %12, null
  br i1 %tobool.not.i.i.1, label %for.body.i.i.1.for.inc.i.i.1_crit_edge, label %if.then.i.i.1

for.body.i.i.1.for.inc.i.i.1_crit_edge:           ; preds = %for.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.1

if.then.i.i.1:                                    ; preds = %for.body.i.i.1
  %ndev5.i.i.1 = getelementptr inbounds %struct.wil6210_vif, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %ndev5.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ndev5.i.i.1, align 4
  %cmp6.not.i.i.1 = icmp eq ptr %14, null
  br i1 %cmp6.not.i.i.1, label %if.then.i.i.1.for.inc.i.i.1_crit_edge, label %if.then8.i.i.1

if.then.i.i.1.for.inc.i.i.1_crit_edge:            ; preds = %if.then.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.1

if.then8.i.i.1:                                   ; preds = %if.then.i.i.1
  %flags.i.i.1 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 14
  %15 = ptrtoint ptr %flags.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i.i.1, align 8
  %and.i.i.1 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.1)
  %tobool11.not.i.i.1 = icmp eq i32 %and.i.i.1, 0
  br i1 %tobool11.not.i.i.1, label %if.then8.i.i.1.for.inc.i.i.1_crit_edge, label %if.then8.i.i.1.wil_has_active_ifaces.exit_crit_edge

if.then8.i.i.1.wil_has_active_ifaces.exit_crit_edge: ; preds = %if.then8.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_has_active_ifaces.exit

if.then8.i.i.1.for.inc.i.i.1_crit_edge:           ; preds = %if.then8.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.1

for.inc.i.i.1:                                    ; preds = %if.then8.i.i.1.for.inc.i.i.1_crit_edge, %if.then.i.i.1.for.inc.i.i.1_crit_edge, %for.body.i.i.1.for.inc.i.i.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp3.i.i.1 = icmp ugt i8 %4, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %exitcond.not.i.i.1 = icmp eq i8 %4, 2
  br i1 %exitcond.not.i.i.1, label %for.inc.i.i.1.wil_has_active_ifaces.exit_crit_edge, label %for.body.i.i.2

for.inc.i.i.1.wil_has_active_ifaces.exit_crit_edge: ; preds = %for.inc.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_has_active_ifaces.exit

for.body.i.i.2:                                   ; preds = %for.inc.i.i.1
  %arrayidx.i.i.2 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 2
  %17 = ptrtoint ptr %arrayidx.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i.i.2, align 4
  %tobool.not.i.i.2 = icmp eq ptr %18, null
  br i1 %tobool.not.i.i.2, label %for.body.i.i.2.for.inc.i.i.2_crit_edge, label %if.then.i.i.2

for.body.i.i.2.for.inc.i.i.2_crit_edge:           ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.2

if.then.i.i.2:                                    ; preds = %for.body.i.i.2
  %ndev5.i.i.2 = getelementptr inbounds %struct.wil6210_vif, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %ndev5.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ndev5.i.i.2, align 4
  %cmp6.not.i.i.2 = icmp eq ptr %20, null
  br i1 %cmp6.not.i.i.2, label %if.then.i.i.2.for.inc.i.i.2_crit_edge, label %if.then8.i.i.2

if.then.i.i.2.for.inc.i.i.2_crit_edge:            ; preds = %if.then.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.2

if.then8.i.i.2:                                   ; preds = %if.then.i.i.2
  %flags.i.i.2 = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 14
  %21 = ptrtoint ptr %flags.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i.i.2, align 8
  %and.i.i.2 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.2)
  %tobool11.not.i.i.2 = icmp eq i32 %and.i.i.2, 0
  br i1 %tobool11.not.i.i.2, label %if.then8.i.i.2.for.inc.i.i.2_crit_edge, label %if.then8.i.i.2.wil_has_active_ifaces.exit_crit_edge

if.then8.i.i.2.wil_has_active_ifaces.exit_crit_edge: ; preds = %if.then8.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_has_active_ifaces.exit

if.then8.i.i.2.for.inc.i.i.2_crit_edge:           ; preds = %if.then8.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.2

for.inc.i.i.2:                                    ; preds = %if.then8.i.i.2.for.inc.i.i.2_crit_edge, %if.then.i.i.2.for.inc.i.i.2_crit_edge, %for.body.i.i.2.for.inc.i.i.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %4)
  %cmp3.i.i.2 = icmp ugt i8 %4, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %4)
  %exitcond.not.i.i.2 = icmp eq i8 %4, 3
  br i1 %exitcond.not.i.i.2, label %for.inc.i.i.2.wil_has_active_ifaces.exit_crit_edge, label %for.body.i.i.3

for.inc.i.i.2.wil_has_active_ifaces.exit_crit_edge: ; preds = %for.inc.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_has_active_ifaces.exit

for.body.i.i.3:                                   ; preds = %for.inc.i.i.2
  %arrayidx.i.i.3 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 3
  %23 = ptrtoint ptr %arrayidx.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i.3, align 4
  %tobool.not.i.i.3 = icmp eq ptr %24, null
  br i1 %tobool.not.i.i.3, label %for.body.i.i.3.for.inc.i.i.3_crit_edge, label %if.then.i.i.3

for.body.i.i.3.for.inc.i.i.3_crit_edge:           ; preds = %for.body.i.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.3

if.then.i.i.3:                                    ; preds = %for.body.i.i.3
  %ndev5.i.i.3 = getelementptr inbounds %struct.wil6210_vif, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %ndev5.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ndev5.i.i.3, align 4
  %cmp6.not.i.i.3 = icmp eq ptr %26, null
  br i1 %cmp6.not.i.i.3, label %if.then.i.i.3.for.inc.i.i.3_crit_edge, label %if.then8.i.i.3

if.then.i.i.3.for.inc.i.i.3_crit_edge:            ; preds = %if.then.i.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.3

if.then8.i.i.3:                                   ; preds = %if.then.i.i.3
  %flags.i.i.3 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 14
  %27 = ptrtoint ptr %flags.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i.i.3, align 8
  %and.i.i.3 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.3)
  %tobool11.not.i.i.3 = icmp eq i32 %and.i.i.3, 0
  br i1 %tobool11.not.i.i.3, label %if.then8.i.i.3.for.inc.i.i.3_crit_edge, label %if.then8.i.i.3.wil_has_active_ifaces.exit_crit_edge

if.then8.i.i.3.wil_has_active_ifaces.exit_crit_edge: ; preds = %if.then8.i.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_has_active_ifaces.exit

if.then8.i.i.3.for.inc.i.i.3_crit_edge:           ; preds = %if.then8.i.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.3

for.inc.i.i.3:                                    ; preds = %if.then8.i.i.3.for.inc.i.i.3_crit_edge, %if.then.i.i.3.for.inc.i.i.3_crit_edge, %for.body.i.i.3.for.inc.i.i.3_crit_edge
  br label %wil_has_active_ifaces.exit

wil_has_active_ifaces.exit:                       ; preds = %for.inc.i.i.3, %if.then8.i.i.3.wil_has_active_ifaces.exit_crit_edge, %for.inc.i.i.2.wil_has_active_ifaces.exit_crit_edge, %if.then8.i.i.2.wil_has_active_ifaces.exit_crit_edge, %for.inc.i.i.1.wil_has_active_ifaces.exit_crit_edge, %if.then8.i.i.1.wil_has_active_ifaces.exit_crit_edge, %for.inc.i.i.wil_has_active_ifaces.exit_crit_edge, %if.then8.i.i.wil_has_active_ifaces.exit_crit_edge, %entry.wil_has_active_ifaces.exit_crit_edge
  %cmp3.lcssa.i.i = phi i1 [ false, %entry.wil_has_active_ifaces.exit_crit_edge ], [ %cmp3.i.i, %for.inc.i.i.wil_has_active_ifaces.exit_crit_edge ], [ true, %if.then8.i.i.wil_has_active_ifaces.exit_crit_edge ], [ %cmp3.i.i, %if.then8.i.i.1.wil_has_active_ifaces.exit_crit_edge ], [ %cmp3.i.i.1, %for.inc.i.i.1.wil_has_active_ifaces.exit_crit_edge ], [ %cmp3.i.i.1, %if.then8.i.i.2.wil_has_active_ifaces.exit_crit_edge ], [ %cmp3.i.i.2, %for.inc.i.i.2.wil_has_active_ifaces.exit_crit_edge ], [ %cmp3.i.i.2, %if.then8.i.i.3.wil_has_active_ifaces.exit_crit_edge ], [ false, %for.inc.i.i.3 ]
  %call3 = tail call i32 @rtnl_is_locked() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.rhs, label %wil_has_active_ifaces.exit.if.end33_crit_edge

wil_has_active_ifaces.exit.if.end33_crit_edge:    ; preds = %wil_has_active_ifaces.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

land.rhs:                                         ; preds = %wil_has_active_ifaces.exit
  %.b110 = load i1, ptr @wil_vif_add.__already_done, align 1
  br i1 %.b110, label %land.rhs.if.end33_crit_edge, label %if.then, !prof !157

land.rhs.if.end33_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @wil_vif_add.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 414, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, i32 noundef 414) #8
  br label %if.end33

if.end33:                                         ; preds = %if.then, %land.rhs.if.end33_crit_edge, %wil_has_active_ifaces.exit.if.end33_crit_edge
  %mid = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 3
  %29 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %mid, align 4
  %idxprom = zext i8 %30 to i32
  %arrayidx = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 %idxprom
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 4
  %tobool41.not = icmp eq ptr %32, null
  br i1 %tobool41.not, label %if.end47, label %do.end45

do.end45:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %idxprom) #11
  br label %cleanup

if.end47:                                         ; preds = %if.end33
  %call.not = xor i1 %cmp3.lcssa.i.i, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp.not = icmp eq i8 %30, 0
  %or.cond = select i1 %call.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.end47.if.end59_crit_edge, label %if.then53

if.end47.if.end59_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then53:                                        ; preds = %if.end47
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %33 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_addr, align 64
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %vif, i32 0, i32 1
  %35 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iftype, align 4
  %call55 = tail call i32 @wmi_port_allocate(ptr noundef %wil, i8 noundef zeroext %30, ptr noundef %34, i32 noundef %36) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then53.if.end59_crit_edge, label %if.then53.cleanup_crit_edge

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then53.if.end59_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.end59:                                         ; preds = %if.then53.if.end59_crit_edge, %if.end47.if.end59_crit_edge
  %call60 = tail call i32 @cfg80211_register_netdevice(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %do.end66, label %if.end79

do.end66:                                         ; preds = %if.end59
  %dev67 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev67, ptr noundef nonnull @.str.22, i32 noundef %call60) #11
  br i1 %cmp3.lcssa.i.i, label %land.lhs.true70, label %do.end66.cleanup_crit_edge

do.end66.cleanup_crit_edge:                       ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true70:                                  ; preds = %do.end66
  %37 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %mid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp73.not = icmp eq i8 %38, 0
  br i1 %cmp73.not, label %land.lhs.true70.cleanup_crit_edge, label %if.then75

land.lhs.true70.cleanup_crit_edge:                ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then75:                                        ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #10
  %call77 = tail call i32 @wmi_port_delete(ptr noundef %wil, i8 noundef zeroext %38) #8
  br label %cleanup

if.end79:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %mid, align 4
  %idxprom82 = zext i8 %40 to i32
  %arrayidx83 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 %idxprom82
  %41 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %vif, ptr %arrayidx83, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end79, %if.then75, %land.lhs.true70.cleanup_crit_edge, %do.end66.cleanup_crit_edge, %if.then53.cleanup_crit_edge, %do.end45
  %retval.0 = phi i32 [ -17, %do.end45 ], [ 0, %if.end79 ], [ %call55, %if.then53.cleanup_crit_edge ], [ %call60, %if.then75 ], [ %call60, %land.lhs.true70.cleanup_crit_edge ], [ %call60, %do.end66.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_port_allocate(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_register_netdevice(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_port_delete(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wil_if_add(ptr noundef %wil) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wiphy1 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 2
  %0 = ptrtoint ptr %wiphy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wiphy1, align 8
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %2 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 2304
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_if_add.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_if_add, %if.then)) #8
          to label %do.end9 [label %if.then], !srcloc !156

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_if_add.__UNIQUE_ID_ddebug372, ptr noundef %5, ptr noundef nonnull @.str.25) #8
  br label %do.end9

do.end9:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.25) #8
  %fw_version = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 38
  %fw_version12 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 7
  %call14 = tail call i32 @strlcpy(ptr noundef %fw_version, ptr noundef %fw_version12, i32 noundef 32) #8
  %call15 = tail call i32 @wiphy_register(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, i32 noundef %call15) #8
  br label %cleanup

if.end17:                                         ; preds = %do.end9
  %napi_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 54
  %call18 = tail call i32 @init_dummy_netdev(ptr noundef %napi_ndev) #8
  %use_enhanced_dma_hw = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 67
  %6 = ptrtoint ptr %use_enhanced_dma_hw to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %use_enhanced_dma_hw, align 4, !range !158
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool19.not = icmp eq i8 %7, 0
  %napi_rx24 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 52
  %wil6210_netdev_poll_rx.wil6210_netdev_poll_rx_edma = select i1 %tobool19.not, ptr @wil6210_netdev_poll_rx, ptr @wil6210_netdev_poll_rx_edma
  %wil6210_netdev_poll_tx.wil6210_netdev_poll_tx_edma = select i1 %tobool19.not, ptr @wil6210_netdev_poll_tx, ptr @wil6210_netdev_poll_tx_edma
  tail call void @netif_napi_add(ptr noundef %napi_ndev, ptr noundef %napi_rx24, ptr noundef nonnull %wil6210_netdev_poll_rx.wil6210_netdev_poll_rx_edma, i32 noundef 16) #8
  %napi_tx26 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 53
  %state.i61 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 53, i32 1
  tail call void @_set_bit(i32 noundef 5, ptr noundef %state.i61) #8
  tail call void @netif_napi_add(ptr noundef %napi_ndev, ptr noundef %napi_tx26, ptr noundef nonnull %wil6210_netdev_poll_tx.wil6210_netdev_poll_tx_edma, i32 noundef 16) #8
  tail call void @wil_update_net_queues_bh(ptr noundef %wil, ptr noundef %add.ptr.i, ptr noundef null, i1 noundef zeroext true) #8
  tail call void @rtnl_lock() #8
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #8
  %call28 = tail call i32 @wil_vif_add(ptr noundef %wil, ptr noundef %add.ptr.i)
  tail call void @mutex_unlock(ptr noundef %1) #8
  tail call void @rtnl_unlock() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %out_wiphy, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

out_wiphy:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @wiphy_unregister(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %out_wiphy, %if.end17.cleanup_crit_edge, %if.then16
  %retval.0 = phi i32 [ %call15, %if.then16 ], [ %call28, %out_wiphy ], [ 0, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wiphy_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_dummy_netdev(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil6210_netdev_poll_rx_edma(ptr noundef %napi, i32 noundef %budget) #3 align 64 {
entry:
  %quota = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -832
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %quota) #8
  %0 = ptrtoint ptr %quota to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %budget, ptr %quota, align 4
  call void @wil_rx_handle_edma(ptr noundef %add.ptr, ptr noundef nonnull %quota) #8
  %1 = ptrtoint ptr %quota to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %quota, align 4
  %sub = sub i32 %budget, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %budget)
  %cmp = icmp slt i32 %sub, %budget
  br i1 %cmp, label %if.then, label %entry.do.body15_crit_edge

entry.do.body15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body15

if.then:                                          ; preds = %entry
  %call = call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %sub) #8
  call void @wil6210_unmask_irq_rx_edma(ptr noundef %add.ptr) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_netdev_poll_rx_edma.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_netdev_poll_rx_edma, %if.then7)) #8
          to label %do.end9 [label %if.then7], !srcloc !156

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %main_ndev = getelementptr i8, ptr %napi, i32 -820
  %3 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %main_ndev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_netdev_poll_rx_edma.__UNIQUE_ID_ddebug353, ptr noundef %4, ptr noundef nonnull @.str.61) #8
  br label %do.end9

do.end9:                                          ; preds = %if.then7, %if.then
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %add.ptr, ptr noundef nonnull @.str.61) #8
  br label %do.body15

do.body15:                                        ; preds = %do.end9, %entry.do.body15_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_netdev_poll_rx_edma.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_netdev_poll_rx_edma, %if.then27)) #8
          to label %do.end33 [label %if.then27], !srcloc !156

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  %main_ndev28 = getelementptr i8, ptr %napi, i32 -820
  %5 = ptrtoint ptr %main_ndev28 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %main_ndev28, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_netdev_poll_rx_edma.__UNIQUE_ID_ddebug354, ptr noundef %6, ptr noundef nonnull @.str.62, i32 noundef %budget, i32 noundef %sub) #8
  br label %do.end33

do.end33:                                         ; preds = %if.then27, %do.body15
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %add.ptr, ptr noundef nonnull @.str.62, i32 noundef %budget, i32 noundef %sub) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %quota) #8
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil6210_netdev_poll_tx_edma(ptr noundef %napi, i32 noundef %budget) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -1056
  %srings = getelementptr i8, ptr %napi, i32 5260
  %tx_sring_idx = getelementptr i8, ptr %napi, i32 5584
  %0 = ptrtoint ptr %tx_sring_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_sring_idx, align 16
  %arrayidx = getelementptr [8 x %struct.wil_status_ring], ptr %srings, i32 0, i32 %1
  %va = getelementptr inbounds %struct.wil_status_ring, ptr %arrayidx, i32 0, i32 1
  %2 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %va, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @wil_tx_sring_handler(ptr noundef %add.ptr, ptr noundef %arrayidx) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %budget)
  %cmp = icmp slt i32 %call, %budget
  br i1 %cmp, label %if.then1, label %if.end.do.body19_crit_edge

if.end.do.body19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body19

if.then1:                                         ; preds = %if.end
  %call.i = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #8
  tail call void @wil6210_unmask_irq_tx_edma(ptr noundef %add.ptr) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_netdev_poll_tx_edma.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_netdev_poll_tx_edma, %if.then10)) #8
          to label %do.end13 [label %if.then10], !srcloc !156

if.then10:                                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  %main_ndev = getelementptr i8, ptr %napi, i32 -1044
  %4 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_netdev_poll_tx_edma.__UNIQUE_ID_ddebug362, ptr noundef %5, ptr noundef nonnull @.str.64) #8
  br label %do.end13

do.end13:                                         ; preds = %if.then10, %if.then1
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %add.ptr, ptr noundef nonnull @.str.64) #8
  br label %do.body19

do.body19:                                        ; preds = %do.end13, %if.end.do.body19_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_netdev_poll_tx_edma.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_netdev_poll_tx_edma, %if.then31)) #8
          to label %do.end37 [label %if.then31], !srcloc !156

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  %main_ndev32 = getelementptr i8, ptr %napi, i32 -1044
  %6 = ptrtoint ptr %main_ndev32 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %main_ndev32, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_netdev_poll_tx_edma.__UNIQUE_ID_ddebug363, ptr noundef %7, ptr noundef nonnull @.str.65, i32 noundef %budget, i32 noundef %call) #8
  br label %do.end37

do.end37:                                         ; preds = %if.then31, %do.body19
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %add.ptr, ptr noundef nonnull @.str.65, i32 noundef %budget, i32 noundef %call) #8
  %8 = tail call i32 @llvm.smin.i32(i32 %call, i32 %budget)
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %do.end37 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil6210_netdev_poll_rx(ptr noundef %napi, i32 noundef %budget) #3 align 64 {
entry:
  %quota = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -832
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %quota) #8
  %0 = ptrtoint ptr %quota to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %budget, ptr %quota, align 4
  call void @wil_rx_handle(ptr noundef %add.ptr, ptr noundef nonnull %quota) #8
  %1 = ptrtoint ptr %quota to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %quota, align 4
  %sub = sub i32 %budget, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %budget)
  %cmp = icmp slt i32 %sub, %budget
  br i1 %cmp, label %if.then, label %entry.do.body15_crit_edge

entry.do.body15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body15

if.then:                                          ; preds = %entry
  %call = call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %sub) #8
  call void @wil6210_unmask_irq_rx(ptr noundef %add.ptr) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_netdev_poll_rx.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_netdev_poll_rx, %if.then7)) #8
          to label %do.end9 [label %if.then7], !srcloc !156

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %main_ndev = getelementptr i8, ptr %napi, i32 -820
  %3 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %main_ndev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_netdev_poll_rx.__UNIQUE_ID_ddebug351, ptr noundef %4, ptr noundef nonnull @.str.61) #8
  br label %do.end9

do.end9:                                          ; preds = %if.then7, %if.then
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %add.ptr, ptr noundef nonnull @.str.61) #8
  br label %do.body15

do.body15:                                        ; preds = %do.end9, %entry.do.body15_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_netdev_poll_rx.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_netdev_poll_rx, %if.then27)) #8
          to label %do.end33 [label %if.then27], !srcloc !156

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  %main_ndev28 = getelementptr i8, ptr %napi, i32 -820
  %5 = ptrtoint ptr %main_ndev28 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %main_ndev28, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_netdev_poll_rx.__UNIQUE_ID_ddebug352, ptr noundef %6, ptr noundef nonnull @.str.62, i32 noundef %budget, i32 noundef %sub) #8
  br label %do.end33

do.end33:                                         ; preds = %if.then27, %do.body15
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %add.ptr, ptr noundef nonnull @.str.62, i32 noundef %budget, i32 noundef %sub) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %quota) #8
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil6210_netdev_poll_tx(ptr noundef %napi, i32 noundef %budget) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -1056
  %ring_tx = getelementptr i8, ptr %napi, i32 2572
  %ring_tx_data = getelementptr i8, ptr %napi, i32 3532
  %max_vifs = getelementptr i8, ptr %napi, i32 -892
  %vifs = getelementptr i8, ptr %napi, i32 -888
  %main_ndev = getelementptr i8, ptr %napi, i32 -1044
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %tx_done.0144 = phi i32 [ 0, %entry ], [ %tx_done.1, %cleanup.for.body_crit_edge ]
  %i.0142 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [24 x %struct.wil_ring], ptr %ring_tx, i32 0, i32 %i.0142
  %arrayidx1 = getelementptr [24 x %struct.wil_ring_tx_data], ptr %ring_tx_data, i32 0, i32 %i.0142
  %va = getelementptr inbounds %struct.wil_ring, ptr %arrayidx, i32 0, i32 1
  %0 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %va, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %lor.lhs.false

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %enabled = getelementptr inbounds %struct.wil_ring_tx_data, ptr %arrayidx1, i32 0, i32 1
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %mid = getelementptr inbounds %struct.wil_ring_tx_data, ptr %arrayidx1, i32 0, i32 9
  %4 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mid, align 2
  %6 = ptrtoint ptr %max_vifs to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max_vifs, align 4
  %8 = tail call i8 @llvm.umin.i8(i8 %7, i8 4)
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %5)
  %cmp8.not = icmp ugt i8 %8, %5
  br i1 %cmp8.not, label %if.end, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %conv = zext i8 %5 to i32
  %arrayidx11 = getelementptr [4 x ptr], ptr %vifs, i32 0, i32 %conv
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx11, align 4
  %tobool12.not = icmp eq ptr %10, null
  br i1 %tobool12.not, label %do.body18, label %if.end37, !prof !159

do.body18:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_netdev_poll_tx.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_netdev_poll_tx, %if.then27)) #8
          to label %do.end32 [label %if.then27], !srcloc !156

if.then27:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %main_ndev, align 4
  %13 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mid, align 2
  %conv29 = zext i8 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_netdev_poll_tx.__UNIQUE_ID_ddebug357, ptr noundef %12, ptr noundef nonnull @.str.68, i32 noundef %conv29) #8
  br label %do.end32

do.end32:                                         ; preds = %if.then27, %do.body18
  %15 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %mid, align 2
  %conv34 = zext i8 %16 to i32
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %add.ptr, ptr noundef nonnull @.str.68, i32 noundef %conv34) #8
  br label %cleanup

if.end37:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call38 = tail call i32 @wil_tx_complete(ptr noundef nonnull %10, i32 noundef %i.0142) #8
  %add = add i32 %call38, %tx_done.0144
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %do.end32, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %tx_done.1 = phi i32 [ %tx_done.0144, %do.end32 ], [ %add, %if.end37 ], [ %tx_done.0144, %lor.lhs.false3.cleanup_crit_edge ], [ %tx_done.0144, %lor.lhs.false.cleanup_crit_edge ], [ %tx_done.0144, %for.body.cleanup_crit_edge ]
  %inc = add nuw nsw i32 %i.0142, 1
  %exitcond.not = icmp eq i32 %inc, 24
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_cmp4(i32 %tx_done.1, i32 %budget)
  %cmp41 = icmp slt i32 %tx_done.1, %budget
  br i1 %cmp41, label %if.then43, label %for.end.do.body71_crit_edge

for.end.do.body71_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body71

if.then43:                                        ; preds = %for.end
  %call.i = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #8
  tail call void @wil6210_unmask_irq_tx(ptr noundef %add.ptr) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_netdev_poll_tx.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_netdev_poll_tx, %if.then59)) #8
          to label %do.end65 [label %if.then59], !srcloc !156

if.then59:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_netdev_poll_tx.__UNIQUE_ID_ddebug358, ptr noundef %18, ptr noundef nonnull @.str.64) #8
  br label %do.end65

do.end65:                                         ; preds = %if.then59, %if.then43
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %add.ptr, ptr noundef nonnull @.str.64) #8
  br label %do.body71

do.body71:                                        ; preds = %do.end65, %for.end.do.body71_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_netdev_poll_tx.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_netdev_poll_tx, %if.then83)) #8
          to label %do.end89 [label %if.then83], !srcloc !156

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_netdev_poll_tx.__UNIQUE_ID_ddebug359, ptr noundef %20, ptr noundef nonnull @.str.65, i32 noundef %budget, i32 noundef %tx_done.1) #8
  br label %do.end89

do.end89:                                         ; preds = %if.then83, %do.body71
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %add.ptr, ptr noundef nonnull @.str.65, i32 noundef %budget, i32 noundef %tx_done.1) #8
  %21 = tail call i32 @llvm.smin.i32(i32 %tx_done.1, i32 %budget)
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_update_net_queues_bh(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_vif_remove(ptr noundef %wil, i8 noundef zeroext %mid) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %max_vifs.i.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 22
  %0 = ptrtoint ptr %max_vifs.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %max_vifs.i.i, align 4
  %2 = tail call i8 @llvm.umin.i8(i8 %1, i8 4) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp330.not.i.i = icmp eq i8 %2, 0
  br i1 %cmp330.not.i.i, label %entry.wil_has_active_ifaces.exit_crit_edge, label %for.body.i.i

entry.wil_has_active_ifaces.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_has_active_ifaces.exit

for.body.i.i:                                     ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 0
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %ndev5.i.i = getelementptr inbounds %struct.wil6210_vif, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %ndev5.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ndev5.i.i, align 4
  %cmp6.not.i.i = icmp eq ptr %6, null
  br i1 %cmp6.not.i.i, label %if.then.i.i.for.inc.i.i_crit_edge, label %if.then8.i.i

if.then.i.i.for.inc.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then8.i.i:                                     ; preds = %if.then.i.i
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool11.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool11.not.i.i, label %if.then8.i.i.for.inc.i.i_crit_edge, label %if.then8.i.i.wil_has_active_ifaces.exit_crit_edge

if.then8.i.i.wil_has_active_ifaces.exit_crit_edge: ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_has_active_ifaces.exit

if.then8.i.i.for.inc.i.i_crit_edge:               ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then8.i.i.for.inc.i.i_crit_edge, %if.then.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp3.i.i = icmp ugt i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %exitcond.not.i.i = icmp eq i8 %2, 1
  br i1 %exitcond.not.i.i, label %for.inc.i.i.wil_has_active_ifaces.exit_crit_edge, label %for.body.i.i.1

for.inc.i.i.wil_has_active_ifaces.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_has_active_ifaces.exit

for.body.i.i.1:                                   ; preds = %for.inc.i.i
  %arrayidx.i.i.1 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 1
  %9 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i.1, align 4
  %tobool.not.i.i.1 = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.1, label %for.body.i.i.1.for.inc.i.i.1_crit_edge, label %if.then.i.i.1

for.body.i.i.1.for.inc.i.i.1_crit_edge:           ; preds = %for.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.1

if.then.i.i.1:                                    ; preds = %for.body.i.i.1
  %ndev5.i.i.1 = getelementptr inbounds %struct.wil6210_vif, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %ndev5.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ndev5.i.i.1, align 4
  %cmp6.not.i.i.1 = icmp eq ptr %12, null
  br i1 %cmp6.not.i.i.1, label %if.then.i.i.1.for.inc.i.i.1_crit_edge, label %if.then8.i.i.1

if.then.i.i.1.for.inc.i.i.1_crit_edge:            ; preds = %if.then.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.1

if.then8.i.i.1:                                   ; preds = %if.then.i.i.1
  %flags.i.i.1 = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %flags.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i.i.1, align 8
  %and.i.i.1 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.1)
  %tobool11.not.i.i.1 = icmp eq i32 %and.i.i.1, 0
  br i1 %tobool11.not.i.i.1, label %if.then8.i.i.1.for.inc.i.i.1_crit_edge, label %if.then8.i.i.1.wil_has_active_ifaces.exit_crit_edge

if.then8.i.i.1.wil_has_active_ifaces.exit_crit_edge: ; preds = %if.then8.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_has_active_ifaces.exit

if.then8.i.i.1.for.inc.i.i.1_crit_edge:           ; preds = %if.then8.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.1

for.inc.i.i.1:                                    ; preds = %if.then8.i.i.1.for.inc.i.i.1_crit_edge, %if.then.i.i.1.for.inc.i.i.1_crit_edge, %for.body.i.i.1.for.inc.i.i.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %cmp3.i.i.1 = icmp ugt i8 %2, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %exitcond.not.i.i.1 = icmp eq i8 %2, 2
  br i1 %exitcond.not.i.i.1, label %for.inc.i.i.1.wil_has_active_ifaces.exit_crit_edge, label %for.body.i.i.2

for.inc.i.i.1.wil_has_active_ifaces.exit_crit_edge: ; preds = %for.inc.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_has_active_ifaces.exit

for.body.i.i.2:                                   ; preds = %for.inc.i.i.1
  %arrayidx.i.i.2 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 2
  %15 = ptrtoint ptr %arrayidx.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i.2, align 4
  %tobool.not.i.i.2 = icmp eq ptr %16, null
  br i1 %tobool.not.i.i.2, label %for.body.i.i.2.for.inc.i.i.2_crit_edge, label %if.then.i.i.2

for.body.i.i.2.for.inc.i.i.2_crit_edge:           ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.2

if.then.i.i.2:                                    ; preds = %for.body.i.i.2
  %ndev5.i.i.2 = getelementptr inbounds %struct.wil6210_vif, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %ndev5.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ndev5.i.i.2, align 4
  %cmp6.not.i.i.2 = icmp eq ptr %18, null
  br i1 %cmp6.not.i.i.2, label %if.then.i.i.2.for.inc.i.i.2_crit_edge, label %if.then8.i.i.2

if.then.i.i.2.for.inc.i.i.2_crit_edge:            ; preds = %if.then.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.2

if.then8.i.i.2:                                   ; preds = %if.then.i.i.2
  %flags.i.i.2 = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 14
  %19 = ptrtoint ptr %flags.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i.i.2, align 8
  %and.i.i.2 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.2)
  %tobool11.not.i.i.2 = icmp eq i32 %and.i.i.2, 0
  br i1 %tobool11.not.i.i.2, label %if.then8.i.i.2.for.inc.i.i.2_crit_edge, label %if.then8.i.i.2.wil_has_active_ifaces.exit_crit_edge

if.then8.i.i.2.wil_has_active_ifaces.exit_crit_edge: ; preds = %if.then8.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_has_active_ifaces.exit

if.then8.i.i.2.for.inc.i.i.2_crit_edge:           ; preds = %if.then8.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.2

for.inc.i.i.2:                                    ; preds = %if.then8.i.i.2.for.inc.i.i.2_crit_edge, %if.then.i.i.2.for.inc.i.i.2_crit_edge, %for.body.i.i.2.for.inc.i.i.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %2)
  %cmp3.i.i.2 = icmp ugt i8 %2, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %2)
  %exitcond.not.i.i.2 = icmp eq i8 %2, 3
  br i1 %exitcond.not.i.i.2, label %for.inc.i.i.2.wil_has_active_ifaces.exit_crit_edge, label %for.body.i.i.3

for.inc.i.i.2.wil_has_active_ifaces.exit_crit_edge: ; preds = %for.inc.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_has_active_ifaces.exit

for.body.i.i.3:                                   ; preds = %for.inc.i.i.2
  %arrayidx.i.i.3 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 3
  %21 = ptrtoint ptr %arrayidx.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i.3, align 4
  %tobool.not.i.i.3 = icmp eq ptr %22, null
  br i1 %tobool.not.i.i.3, label %for.body.i.i.3.for.inc.i.i.3_crit_edge, label %if.then.i.i.3

for.body.i.i.3.for.inc.i.i.3_crit_edge:           ; preds = %for.body.i.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.3

if.then.i.i.3:                                    ; preds = %for.body.i.i.3
  %ndev5.i.i.3 = getelementptr inbounds %struct.wil6210_vif, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %ndev5.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ndev5.i.i.3, align 4
  %cmp6.not.i.i.3 = icmp eq ptr %24, null
  br i1 %cmp6.not.i.i.3, label %if.then.i.i.3.for.inc.i.i.3_crit_edge, label %if.then8.i.i.3

if.then.i.i.3.for.inc.i.i.3_crit_edge:            ; preds = %if.then.i.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.3

if.then8.i.i.3:                                   ; preds = %if.then.i.i.3
  %flags.i.i.3 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 14
  %25 = ptrtoint ptr %flags.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags.i.i.3, align 8
  %and.i.i.3 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.3)
  %tobool11.not.i.i.3 = icmp eq i32 %and.i.i.3, 0
  br i1 %tobool11.not.i.i.3, label %if.then8.i.i.3.for.inc.i.i.3_crit_edge, label %if.then8.i.i.3.wil_has_active_ifaces.exit_crit_edge

if.then8.i.i.3.wil_has_active_ifaces.exit_crit_edge: ; preds = %if.then8.i.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_has_active_ifaces.exit

if.then8.i.i.3.for.inc.i.i.3_crit_edge:           ; preds = %if.then8.i.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.3

for.inc.i.i.3:                                    ; preds = %if.then8.i.i.3.for.inc.i.i.3_crit_edge, %if.then.i.i.3.for.inc.i.i.3_crit_edge, %for.body.i.i.3.for.inc.i.i.3_crit_edge
  br label %wil_has_active_ifaces.exit

wil_has_active_ifaces.exit:                       ; preds = %for.inc.i.i.3, %if.then8.i.i.3.wil_has_active_ifaces.exit_crit_edge, %for.inc.i.i.2.wil_has_active_ifaces.exit_crit_edge, %if.then8.i.i.2.wil_has_active_ifaces.exit_crit_edge, %for.inc.i.i.1.wil_has_active_ifaces.exit_crit_edge, %if.then8.i.i.1.wil_has_active_ifaces.exit_crit_edge, %for.inc.i.i.wil_has_active_ifaces.exit_crit_edge, %if.then8.i.i.wil_has_active_ifaces.exit_crit_edge, %entry.wil_has_active_ifaces.exit_crit_edge
  %cmp3.lcssa.i.i = phi i1 [ false, %entry.wil_has_active_ifaces.exit_crit_edge ], [ %cmp3.i.i, %for.inc.i.i.wil_has_active_ifaces.exit_crit_edge ], [ true, %if.then8.i.i.wil_has_active_ifaces.exit_crit_edge ], [ %cmp3.i.i, %if.then8.i.i.1.wil_has_active_ifaces.exit_crit_edge ], [ %cmp3.i.i.1, %for.inc.i.i.1.wil_has_active_ifaces.exit_crit_edge ], [ %cmp3.i.i.1, %if.then8.i.i.2.wil_has_active_ifaces.exit_crit_edge ], [ %cmp3.i.i.2, %for.inc.i.i.2.wil_has_active_ifaces.exit_crit_edge ], [ %cmp3.i.i.2, %if.then8.i.i.3.wil_has_active_ifaces.exit_crit_edge ], [ false, %for.inc.i.i.3 ]
  %call1 = tail call i32 @rtnl_is_locked() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.rhs, label %wil_has_active_ifaces.exit.if.end31_crit_edge

wil_has_active_ifaces.exit.if.end31_crit_edge:    ; preds = %wil_has_active_ifaces.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

land.rhs:                                         ; preds = %wil_has_active_ifaces.exit
  %.b112 = load i1, ptr @wil_vif_remove.__already_done, align 1
  br i1 %.b112, label %land.rhs.if.end31_crit_edge, label %if.then, !prof !157

land.rhs.if.end31_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @wil_vif_remove.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 496, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, i32 noundef 496) #8
  br label %if.end31

if.end31:                                         ; preds = %if.then, %land.rhs.if.end31_crit_edge, %wil_has_active_ifaces.exit.if.end31_crit_edge
  %conv = zext i8 %mid to i32
  %27 = ptrtoint ptr %max_vifs.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %max_vifs.i.i, align 4
  %29 = tail call i8 @llvm.umin.i8(i8 %28, i8 4)
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %mid)
  %cmp42.not = icmp ugt i8 %29, %mid
  br i1 %cmp42.not, label %if.end46, label %if.then44

if.then44:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.wil_vif_remove, i32 noundef %conv) #8
  br label %cleanup

if.end46:                                         ; preds = %if.end31
  %arrayidx = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 %conv
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  %tobool47.not = icmp eq ptr %31, null
  br i1 %tobool47.not, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.wil_vif_remove, i32 noundef %conv) #8
  br label %cleanup

if.end50:                                         ; preds = %if.end46
  %mutex = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 69
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  tail call void @wil6210_disconnect(ptr noundef nonnull %31, ptr noundef null, i16 noundef zeroext 3) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  %ndev52 = getelementptr inbounds %struct.wil6210_vif, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %ndev52 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ndev52, align 4
  %ieee80211_ptr.i = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 82
  %34 = ptrtoint ptr %ieee80211_ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ieee80211_ptr.i, align 16
  tail call void @cfg80211_unregister_wdev(ptr noundef %35) #8
  br i1 %cmp3.lcssa.i.i, label %land.lhs.true, label %if.end50.if.end62_crit_edge

if.end50.if.end62_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

land.lhs.true:                                    ; preds = %if.end50
  %mid55 = getelementptr inbounds %struct.wil6210_vif, ptr %31, i32 0, i32 3
  %36 = ptrtoint ptr %mid55 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %mid55, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp57.not = icmp eq i8 %37, 0
  br i1 %cmp57.not, label %land.lhs.true.if.end62_crit_edge, label %if.then59

land.lhs.true.if.end62_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then59:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call61 = tail call i32 @wmi_port_delete(ptr noundef %wil, i8 noundef zeroext %37) #8
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %land.lhs.true.if.end62_crit_edge, %if.end50.if.end62_crit_edge
  %vif_mutex = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %vif_mutex, i32 noundef 0) #8
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  tail call void @arm_heavy_mb() #8
  %status = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 6
  %39 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %status, align 4
  %41 = and i32 %40, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool70.not = icmp eq i32 %41, 0
  br i1 %tobool70.not, label %if.end62.if.end72_crit_edge, label %if.then71

if.end62.if.end72_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then71:                                        ; preds = %if.end62
  %state.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 52, i32 1
  %42 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %state.i, align 4
  %and1.i1.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i1.i)
  %tobool.not2.i = icmp eq i32 %and1.i1.i, 0
  br i1 %tobool.not2.i, label %if.then71.napi_synchronize.exit_crit_edge, label %if.then71.while.body.i_crit_edge

if.then71.while.body.i_crit_edge:                 ; preds = %if.then71
  br label %while.body.i

if.then71.napi_synchronize.exit_crit_edge:        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  br label %napi_synchronize.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then71.while.body.i_crit_edge
  tail call void @msleep(i32 noundef 1) #8
  %44 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %45, 1
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %while.body.i.napi_synchronize.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.napi_synchronize.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %napi_synchronize.exit

napi_synchronize.exit:                            ; preds = %while.body.i.napi_synchronize.exit_crit_edge, %if.then71.napi_synchronize.exit_crit_edge
  %state.i113 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 53, i32 1
  %46 = ptrtoint ptr %state.i113 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %state.i113, align 4
  %and1.i1.i114 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i1.i114)
  %tobool.not2.i115 = icmp eq i32 %and1.i1.i114, 0
  br i1 %tobool.not2.i115, label %napi_synchronize.exit.if.end72_crit_edge, label %napi_synchronize.exit.while.body.i118_crit_edge

napi_synchronize.exit.while.body.i118_crit_edge:  ; preds = %napi_synchronize.exit
  br label %while.body.i118

napi_synchronize.exit.if.end72_crit_edge:         ; preds = %napi_synchronize.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

while.body.i118:                                  ; preds = %while.body.i118.while.body.i118_crit_edge, %napi_synchronize.exit.while.body.i118_crit_edge
  tail call void @msleep(i32 noundef 1) #8
  %48 = ptrtoint ptr %state.i113 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %state.i113, align 4
  %and1.i.i116 = and i32 %49, 1
  %tobool.not.i117 = icmp eq i32 %and1.i.i116, 0
  br i1 %tobool.not.i117, label %while.body.i118.if.end72_crit_edge, label %while.body.i118.while.body.i118_crit_edge

while.body.i118.while.body.i118_crit_edge:        ; preds = %while.body.i118
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i118

while.body.i118.if.end72_crit_edge:               ; preds = %while.body.i118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.end72:                                         ; preds = %while.body.i118.if.end72_crit_edge, %napi_synchronize.exit.if.end72_crit_edge, %if.end62.if.end72_crit_edge
  tail call void @mutex_unlock(ptr noundef %vif_mutex) #8
  %wmi_event_worker = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 45
  %call74 = tail call zeroext i1 @flush_work(ptr noundef %wmi_event_worker) #8
  %connect_timer = getelementptr inbounds %struct.wil6210_vif, ptr %31, i32 0, i32 26
  %call75 = tail call i32 @del_timer_sync(ptr noundef %connect_timer) #8
  %disconnect_worker = getelementptr inbounds %struct.wil6210_vif, ptr %31, i32 0, i32 27
  %call76 = tail call zeroext i1 @cancel_work_sync(ptr noundef %disconnect_worker) #8
  tail call void @wil_probe_client_flush(ptr noundef nonnull %31) #8
  %probe_client_worker = getelementptr inbounds %struct.wil6210_vif, ptr %31, i32 0, i32 33
  %call77 = tail call zeroext i1 @cancel_work_sync(ptr noundef %probe_client_worker) #8
  %enable_tx_key_worker = getelementptr inbounds %struct.wil6210_vif, ptr %31, i32 0, i32 38
  %call78 = tail call zeroext i1 @cancel_work_sync(ptr noundef %enable_tx_key_worker) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %if.then48, %if.then44
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil6210_disconnect(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_probe_client_flush(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_if_remove(ptr noundef %wil) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 82
  %2 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ieee80211_ptr, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_if_remove.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_if_remove, %if.then)) #8
          to label %do.end8 [label %if.then], !srcloc !156

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_if_remove.__UNIQUE_ID_ddebug375, ptr noundef %7, ptr noundef nonnull @.str.30) #8
  br label %do.end8

do.end8:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.30) #8
  tail call void @rtnl_lock() #8
  tail call void @mutex_lock_nested(ptr noundef %5, i32 noundef 0) #8
  tail call void @wil_vif_remove(ptr noundef %wil, i8 noundef zeroext 0)
  tail call void @mutex_unlock(ptr noundef %5) #8
  tail call void @rtnl_unlock() #8
  %napi_tx = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 53
  tail call void @__netif_napi_del(ptr noundef %napi_tx) #8
  tail call void @synchronize_net() #8
  %napi_rx = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 52
  tail call void @__netif_napi_del(ptr noundef %napi_rx) #8
  tail call void @synchronize_net() #8
  tail call void @wiphy_unregister(ptr noundef %5) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wil_connect_timer_fn(ptr noundef %t) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wil1 = getelementptr i8, ptr %t, i32 -144
  %0 = ptrtoint ptr %wil1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wil1, align 8
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.wil_connect_timer_fn) #8
  %wmi_wq = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %wmi_wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wmi_wq, align 16
  %disconnect_worker = getelementptr i8, ptr %t, i32 48
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %disconnect_worker) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_connect_timer_fn.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_connect_timer_fn, %if.then)) #8
          to label %do.end11 [label %if.then], !srcloc !156

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %main_ndev, align 4
  %conv = zext i1 %call.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_connect_timer_fn.__UNIQUE_ID_ddebug366, ptr noundef %5, ptr noundef nonnull @.str.49, i32 noundef %conv) #8
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry
  %conv13 = zext i1 %call.i to i32
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.49, i32 noundef %conv13) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wil_scan_timer_fn(ptr nocapture noundef readonly %t) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wil1 = getelementptr i8, ptr %t, i32 -240
  %0 = ptrtoint ptr %wil1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wil1, align 8
  %status = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %status) #8
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.wil_scan_timer_fn) #8
  tail call void @wil_fw_error_recovery(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wil_p2p_discovery_timer_fn(ptr noundef %t) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wil1 = getelementptr i8, ptr %t, i32 -368
  %0 = ptrtoint ptr %wil1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wil1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_p2p_discovery_timer_fn.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_p2p_discovery_timer_fn, %if.then)) #8
          to label %do.end8 [label %if.then], !srcloc !156

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_p2p_discovery_timer_fn.__UNIQUE_ID_ddebug367, ptr noundef %3, ptr noundef nonnull @.str.52) #8
  br label %do.end8

do.end8:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.52) #8
  %discovery_expired_work = getelementptr i8, ptr %t, i32 48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %discovery_expired_work) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_probe_client_worker(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_disconnect_worker(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_p2p_listen_expired(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_p2p_delayed_listen_work(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_enable_tx_key_worker(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_fw_error_recovery(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_open(ptr noundef readonly %ndev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 82
  %0 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211_ptr, align 16
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end7.i, !prof !159

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #8, !srcloc !161
  unreachable

do.end7.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %wdev_priv.exit, !prof !159

do.body4.i.i:                                     ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #8, !srcloc !162
  unreachable

wdev_priv.exit:                                   ; preds = %do.end7.i
  %priv.i.i = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 86
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_open.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_open, %if.then)) #8
          to label %do.end7 [label %if.then], !srcloc !156

if.then:                                          ; preds = %wdev_priv.exit
  call void @__sanitizer_cov_trace_pc() #10
  %main_ndev = getelementptr inbounds %struct.wiphy, ptr %3, i32 1, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_open.__UNIQUE_ID_ddebug347, ptr noundef %5, ptr noundef nonnull @.str.54) #8
  br label %do.end7

do.end7:                                          ; preds = %if.then, %wdev_priv.exit
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i.i, ptr noundef nonnull @.str.54) #8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @debug_fw to i32))
  %6 = load i8, ptr @debug_fw, align 1, !range !158
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool10.not = icmp eq i8 %6, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %do.end7.if.then13_crit_edge

do.end7.if.then13_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

lor.lhs.false:                                    ; preds = %do.end7
  %fw_capabilities = getelementptr inbounds %struct.wiphy, ptr %3, i32 1, i32 1
  %7 = ptrtoint ptr %fw_capabilities to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %fw_capabilities, align 4
  %9 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool12.not = icmp eq i32 %9, 0
  br i1 %tobool12.not, label %if.end14, label %lor.lhs.false.if.then13_crit_edge

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %do.end7.if.then13_crit_edge
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i.i, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.53) #8
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  %max_vifs.i = getelementptr inbounds %struct.wiphy, ptr %3, i32 1, i32 22
  %10 = ptrtoint ptr %max_vifs.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %max_vifs.i, align 4
  %12 = tail call i8 @llvm.umin.i8(i8 %11, i8 4) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp330.not.i = icmp eq i8 %12, 0
  br i1 %cmp330.not.i, label %if.end14.do.body19_crit_edge, label %for.body.i

if.end14.do.body19_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body19

for.body.i:                                       ; preds = %if.end14
  %arrayidx.i = getelementptr %struct.wiphy, ptr %3, i32 1, i32 24
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i65 = icmp eq ptr %14, null
  br i1 %tobool.not.i65, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %ndev5.i = getelementptr inbounds %struct.wil6210_vif, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %ndev5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ndev5.i, align 4
  %cmp6.not.i = icmp eq ptr %16, %ndev
  br i1 %cmp6.not.i, label %if.then.i.for.inc.i_crit_edge, label %if.then8.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then8.i:                                       ; preds = %if.then.i
  %flags.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 14
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool11.not.i, label %if.then8.i.for.inc.i_crit_edge, label %if.then8.i.cleanup_crit_edge

if.then8.i.cleanup_crit_edge:                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8.i.for.inc.i_crit_edge:                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then8.i.for.inc.i_crit_edge, %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp3.i = icmp ugt i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %exitcond.not.i = icmp eq i8 %12, 1
  br i1 %exitcond.not.i, label %for.inc.i.wil_has_other_active_ifaces.exit_crit_edge, label %for.body.i.1

for.inc.i.wil_has_other_active_ifaces.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_has_other_active_ifaces.exit

for.body.i.1:                                     ; preds = %for.inc.i
  %arrayidx.i.1 = getelementptr %struct.wiphy, ptr %3, i32 1, i32 25
  %19 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.1, align 4
  %tobool.not.i65.1 = icmp eq ptr %20, null
  br i1 %tobool.not.i65.1, label %for.body.i.1.for.inc.i.1_crit_edge, label %if.then.i.1

for.body.i.1.for.inc.i.1_crit_edge:               ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.1

if.then.i.1:                                      ; preds = %for.body.i.1
  %ndev5.i.1 = getelementptr inbounds %struct.wil6210_vif, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %ndev5.i.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ndev5.i.1, align 4
  %cmp6.not.i.1 = icmp eq ptr %22, %ndev
  br i1 %cmp6.not.i.1, label %if.then.i.1.for.inc.i.1_crit_edge, label %if.then8.i.1

if.then.i.1.for.inc.i.1_crit_edge:                ; preds = %if.then.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.1

if.then8.i.1:                                     ; preds = %if.then.i.1
  %flags.i.1 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 14
  %23 = ptrtoint ptr %flags.i.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i.1, align 8
  %and.i.1 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %tobool11.not.i.1 = icmp eq i32 %and.i.1, 0
  br i1 %tobool11.not.i.1, label %if.then8.i.1.for.inc.i.1_crit_edge, label %if.then8.i.1.wil_has_other_active_ifaces.exit_crit_edge

if.then8.i.1.wil_has_other_active_ifaces.exit_crit_edge: ; preds = %if.then8.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_has_other_active_ifaces.exit

if.then8.i.1.for.inc.i.1_crit_edge:               ; preds = %if.then8.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %if.then8.i.1.for.inc.i.1_crit_edge, %if.then.i.1.for.inc.i.1_crit_edge, %for.body.i.1.for.inc.i.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp3.i.1 = icmp ugt i8 %12, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %exitcond.not.i.1 = icmp eq i8 %12, 2
  br i1 %exitcond.not.i.1, label %for.inc.i.1.wil_has_other_active_ifaces.exit_crit_edge, label %for.body.i.2

for.inc.i.1.wil_has_other_active_ifaces.exit_crit_edge: ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_has_other_active_ifaces.exit

for.body.i.2:                                     ; preds = %for.inc.i.1
  %arrayidx.i.2 = getelementptr %struct.wiphy, ptr %3, i32 1, i32 26
  %25 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.2, align 4
  %tobool.not.i65.2 = icmp eq ptr %26, null
  br i1 %tobool.not.i65.2, label %for.body.i.2.for.inc.i.2_crit_edge, label %if.then.i.2

for.body.i.2.for.inc.i.2_crit_edge:               ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.2

if.then.i.2:                                      ; preds = %for.body.i.2
  %ndev5.i.2 = getelementptr inbounds %struct.wil6210_vif, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %ndev5.i.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ndev5.i.2, align 4
  %cmp6.not.i.2 = icmp eq ptr %28, %ndev
  br i1 %cmp6.not.i.2, label %if.then.i.2.for.inc.i.2_crit_edge, label %if.then8.i.2

if.then.i.2.for.inc.i.2_crit_edge:                ; preds = %if.then.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.2

if.then8.i.2:                                     ; preds = %if.then.i.2
  %flags.i.2 = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 14
  %29 = ptrtoint ptr %flags.i.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i.2, align 8
  %and.i.2 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.2)
  %tobool11.not.i.2 = icmp eq i32 %and.i.2, 0
  br i1 %tobool11.not.i.2, label %if.then8.i.2.for.inc.i.2_crit_edge, label %if.then8.i.2.wil_has_other_active_ifaces.exit_crit_edge

if.then8.i.2.wil_has_other_active_ifaces.exit_crit_edge: ; preds = %if.then8.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_has_other_active_ifaces.exit

if.then8.i.2.for.inc.i.2_crit_edge:               ; preds = %if.then8.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.2

for.inc.i.2:                                      ; preds = %if.then8.i.2.for.inc.i.2_crit_edge, %if.then.i.2.for.inc.i.2_crit_edge, %for.body.i.2.for.inc.i.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %12)
  %cmp3.i.2 = icmp ugt i8 %12, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %12)
  %exitcond.not.i.2 = icmp eq i8 %12, 3
  br i1 %exitcond.not.i.2, label %for.inc.i.2.wil_has_other_active_ifaces.exit_crit_edge, label %for.body.i.3

for.inc.i.2.wil_has_other_active_ifaces.exit_crit_edge: ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_has_other_active_ifaces.exit

for.body.i.3:                                     ; preds = %for.inc.i.2
  %arrayidx.i.3 = getelementptr %struct.wiphy, ptr %3, i32 1, i32 27
  %31 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i.3, align 4
  %tobool.not.i65.3 = icmp eq ptr %32, null
  br i1 %tobool.not.i65.3, label %for.body.i.3.do.body19_crit_edge, label %if.then.i.3

for.body.i.3.do.body19_crit_edge:                 ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body19

if.then.i.3:                                      ; preds = %for.body.i.3
  %ndev5.i.3 = getelementptr inbounds %struct.wil6210_vif, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %ndev5.i.3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ndev5.i.3, align 4
  %cmp6.not.i.3 = icmp eq ptr %34, %ndev
  br i1 %cmp6.not.i.3, label %if.then.i.3.do.body19_crit_edge, label %if.then8.i.3

if.then.i.3.do.body19_crit_edge:                  ; preds = %if.then.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body19

if.then8.i.3:                                     ; preds = %if.then.i.3
  %flags.i.3 = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 14
  %35 = ptrtoint ptr %flags.i.3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i.3, align 8
  %and.i.3 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.3)
  %tobool11.not.i.3 = icmp eq i32 %and.i.3, 0
  br i1 %tobool11.not.i.3, label %if.then8.i.3.do.body19_crit_edge, label %if.then8.i.3.wil_has_other_active_ifaces.exit_crit_edge

if.then8.i.3.wil_has_other_active_ifaces.exit_crit_edge: ; preds = %if.then8.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_has_other_active_ifaces.exit

if.then8.i.3.do.body19_crit_edge:                 ; preds = %if.then8.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body19

wil_has_other_active_ifaces.exit:                 ; preds = %if.then8.i.3.wil_has_other_active_ifaces.exit_crit_edge, %for.inc.i.2.wil_has_other_active_ifaces.exit_crit_edge, %if.then8.i.2.wil_has_other_active_ifaces.exit_crit_edge, %for.inc.i.1.wil_has_other_active_ifaces.exit_crit_edge, %if.then8.i.1.wil_has_other_active_ifaces.exit_crit_edge, %for.inc.i.wil_has_other_active_ifaces.exit_crit_edge
  %cmp3.lcssa.i = phi i1 [ %cmp3.i, %for.inc.i.wil_has_other_active_ifaces.exit_crit_edge ], [ %cmp3.i, %if.then8.i.1.wil_has_other_active_ifaces.exit_crit_edge ], [ %cmp3.i.1, %for.inc.i.1.wil_has_other_active_ifaces.exit_crit_edge ], [ %cmp3.i.1, %if.then8.i.2.wil_has_other_active_ifaces.exit_crit_edge ], [ %cmp3.i.2, %for.inc.i.2.wil_has_other_active_ifaces.exit_crit_edge ], [ %cmp3.i.2, %if.then8.i.3.wil_has_other_active_ifaces.exit_crit_edge ]
  br i1 %cmp3.lcssa.i, label %wil_has_other_active_ifaces.exit.cleanup_crit_edge, label %wil_has_other_active_ifaces.exit.do.body19_crit_edge

wil_has_other_active_ifaces.exit.do.body19_crit_edge: ; preds = %wil_has_other_active_ifaces.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body19

wil_has_other_active_ifaces.exit.cleanup_crit_edge: ; preds = %wil_has_other_active_ifaces.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body19:                                        ; preds = %wil_has_other_active_ifaces.exit.do.body19_crit_edge, %if.then8.i.3.do.body19_crit_edge, %if.then.i.3.do.body19_crit_edge, %for.body.i.3.do.body19_crit_edge, %if.end14.do.body19_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_open.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_open, %if.then31)) #8
          to label %do.end37 [label %if.then31], !srcloc !156

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  %main_ndev32 = getelementptr inbounds %struct.wiphy, ptr %3, i32 1, i32 0, i32 1, i32 2
  %37 = ptrtoint ptr %main_ndev32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %main_ndev32, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_open.__UNIQUE_ID_ddebug348, ptr noundef %38, ptr noundef nonnull @.str.56) #8
  br label %do.end37

do.end37:                                         ; preds = %if.then31, %do.body19
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i.i, ptr noundef nonnull @.str.56) #8
  %call40 = tail call i32 @wil_pm_runtime_get(ptr noundef %priv.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp = icmp slt i32 %call40, 0
  br i1 %cmp, label %do.end37.cleanup_crit_edge, label %if.end42

do.end37.cleanup_crit_edge:                       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end42:                                         ; preds = %do.end37
  %call43 = tail call i32 @wil_up(ptr noundef %priv.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end42.cleanup_crit_edge, label %if.then45

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @wil_pm_runtime_put(ptr noundef %priv.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.end42.cleanup_crit_edge, %do.end37.cleanup_crit_edge, %wil_has_other_active_ifaces.exit.cleanup_crit_edge, %if.then8.i.cleanup_crit_edge, %if.then13
  %retval.0 = phi i32 [ -22, %if.then13 ], [ %call40, %do.end37.cleanup_crit_edge ], [ 0, %wil_has_other_active_ifaces.exit.cleanup_crit_edge ], [ %call43, %if.then45 ], [ 0, %if.end42.cleanup_crit_edge ], [ 0, %if.then8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_stop(ptr noundef readonly %ndev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 82
  %0 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211_ptr, align 16
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end7.i, !prof !159

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #8, !srcloc !161
  unreachable

do.end7.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %wdev_priv.exit, !prof !159

do.body4.i.i:                                     ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #8, !srcloc !162
  unreachable

wdev_priv.exit:                                   ; preds = %do.end7.i
  %priv.i.i = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 86
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_stop.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_stop, %if.then)) #8
          to label %do.end7 [label %if.then], !srcloc !156

if.then:                                          ; preds = %wdev_priv.exit
  call void @__sanitizer_cov_trace_pc() #10
  %main_ndev = getelementptr inbounds %struct.wiphy, ptr %3, i32 1, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_stop.__UNIQUE_ID_ddebug349, ptr noundef %5, ptr noundef nonnull @.str.58) #8
  br label %do.end7

do.end7:                                          ; preds = %if.then, %wdev_priv.exit
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i.i, ptr noundef nonnull @.str.58) #8
  %max_vifs.i = getelementptr inbounds %struct.wiphy, ptr %3, i32 1, i32 22
  %6 = ptrtoint ptr %max_vifs.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max_vifs.i, align 4
  %8 = tail call i8 @llvm.umin.i8(i8 %7, i8 4) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp330.not.i = icmp eq i8 %8, 0
  br i1 %cmp330.not.i, label %do.end7.do.body14_crit_edge, label %for.body.i

do.end7.do.body14_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

for.body.i:                                       ; preds = %do.end7
  %arrayidx.i = getelementptr %struct.wiphy, ptr %3, i32 1, i32 24
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i51 = icmp eq ptr %10, null
  br i1 %tobool.not.i51, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %ndev5.i = getelementptr inbounds %struct.wil6210_vif, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %ndev5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ndev5.i, align 4
  %cmp6.not.i = icmp eq ptr %12, %ndev
  br i1 %cmp6.not.i, label %if.then.i.for.inc.i_crit_edge, label %if.then8.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then8.i:                                       ; preds = %if.then.i
  %flags.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool11.not.i, label %if.then8.i.for.inc.i_crit_edge, label %if.then8.i.if.end39_crit_edge

if.then8.i.if.end39_crit_edge:                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then8.i.for.inc.i_crit_edge:                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then8.i.for.inc.i_crit_edge, %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp3.i = icmp ugt i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %exitcond.not.i = icmp eq i8 %8, 1
  br i1 %exitcond.not.i, label %for.inc.i.wil_has_other_active_ifaces.exit_crit_edge, label %for.body.i.1

for.inc.i.wil_has_other_active_ifaces.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_has_other_active_ifaces.exit

for.body.i.1:                                     ; preds = %for.inc.i
  %arrayidx.i.1 = getelementptr %struct.wiphy, ptr %3, i32 1, i32 25
  %15 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.1, align 4
  %tobool.not.i51.1 = icmp eq ptr %16, null
  br i1 %tobool.not.i51.1, label %for.body.i.1.for.inc.i.1_crit_edge, label %if.then.i.1

for.body.i.1.for.inc.i.1_crit_edge:               ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.1

if.then.i.1:                                      ; preds = %for.body.i.1
  %ndev5.i.1 = getelementptr inbounds %struct.wil6210_vif, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %ndev5.i.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ndev5.i.1, align 4
  %cmp6.not.i.1 = icmp eq ptr %18, %ndev
  br i1 %cmp6.not.i.1, label %if.then.i.1.for.inc.i.1_crit_edge, label %if.then8.i.1

if.then.i.1.for.inc.i.1_crit_edge:                ; preds = %if.then.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.1

if.then8.i.1:                                     ; preds = %if.then.i.1
  %flags.i.1 = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 14
  %19 = ptrtoint ptr %flags.i.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i.1, align 8
  %and.i.1 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %tobool11.not.i.1 = icmp eq i32 %and.i.1, 0
  br i1 %tobool11.not.i.1, label %if.then8.i.1.for.inc.i.1_crit_edge, label %if.then8.i.1.wil_has_other_active_ifaces.exit_crit_edge

if.then8.i.1.wil_has_other_active_ifaces.exit_crit_edge: ; preds = %if.then8.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_has_other_active_ifaces.exit

if.then8.i.1.for.inc.i.1_crit_edge:               ; preds = %if.then8.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %if.then8.i.1.for.inc.i.1_crit_edge, %if.then.i.1.for.inc.i.1_crit_edge, %for.body.i.1.for.inc.i.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp3.i.1 = icmp ugt i8 %8, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %exitcond.not.i.1 = icmp eq i8 %8, 2
  br i1 %exitcond.not.i.1, label %for.inc.i.1.wil_has_other_active_ifaces.exit_crit_edge, label %for.body.i.2

for.inc.i.1.wil_has_other_active_ifaces.exit_crit_edge: ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_has_other_active_ifaces.exit

for.body.i.2:                                     ; preds = %for.inc.i.1
  %arrayidx.i.2 = getelementptr %struct.wiphy, ptr %3, i32 1, i32 26
  %21 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.2, align 4
  %tobool.not.i51.2 = icmp eq ptr %22, null
  br i1 %tobool.not.i51.2, label %for.body.i.2.for.inc.i.2_crit_edge, label %if.then.i.2

for.body.i.2.for.inc.i.2_crit_edge:               ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.2

if.then.i.2:                                      ; preds = %for.body.i.2
  %ndev5.i.2 = getelementptr inbounds %struct.wil6210_vif, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %ndev5.i.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ndev5.i.2, align 4
  %cmp6.not.i.2 = icmp eq ptr %24, %ndev
  br i1 %cmp6.not.i.2, label %if.then.i.2.for.inc.i.2_crit_edge, label %if.then8.i.2

if.then.i.2.for.inc.i.2_crit_edge:                ; preds = %if.then.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.2

if.then8.i.2:                                     ; preds = %if.then.i.2
  %flags.i.2 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 14
  %25 = ptrtoint ptr %flags.i.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags.i.2, align 8
  %and.i.2 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.2)
  %tobool11.not.i.2 = icmp eq i32 %and.i.2, 0
  br i1 %tobool11.not.i.2, label %if.then8.i.2.for.inc.i.2_crit_edge, label %if.then8.i.2.wil_has_other_active_ifaces.exit_crit_edge

if.then8.i.2.wil_has_other_active_ifaces.exit_crit_edge: ; preds = %if.then8.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_has_other_active_ifaces.exit

if.then8.i.2.for.inc.i.2_crit_edge:               ; preds = %if.then8.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.2

for.inc.i.2:                                      ; preds = %if.then8.i.2.for.inc.i.2_crit_edge, %if.then.i.2.for.inc.i.2_crit_edge, %for.body.i.2.for.inc.i.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp3.i.2 = icmp ugt i8 %8, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %exitcond.not.i.2 = icmp eq i8 %8, 3
  br i1 %exitcond.not.i.2, label %for.inc.i.2.wil_has_other_active_ifaces.exit_crit_edge, label %for.body.i.3

for.inc.i.2.wil_has_other_active_ifaces.exit_crit_edge: ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_has_other_active_ifaces.exit

for.body.i.3:                                     ; preds = %for.inc.i.2
  %arrayidx.i.3 = getelementptr %struct.wiphy, ptr %3, i32 1, i32 27
  %27 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.3, align 4
  %tobool.not.i51.3 = icmp eq ptr %28, null
  br i1 %tobool.not.i51.3, label %for.body.i.3.do.body14_crit_edge, label %if.then.i.3

for.body.i.3.do.body14_crit_edge:                 ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

if.then.i.3:                                      ; preds = %for.body.i.3
  %ndev5.i.3 = getelementptr inbounds %struct.wil6210_vif, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %ndev5.i.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ndev5.i.3, align 4
  %cmp6.not.i.3 = icmp eq ptr %30, %ndev
  br i1 %cmp6.not.i.3, label %if.then.i.3.do.body14_crit_edge, label %if.then8.i.3

if.then.i.3.do.body14_crit_edge:                  ; preds = %if.then.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

if.then8.i.3:                                     ; preds = %if.then.i.3
  %flags.i.3 = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 14
  %31 = ptrtoint ptr %flags.i.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags.i.3, align 8
  %and.i.3 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.3)
  %tobool11.not.i.3 = icmp eq i32 %and.i.3, 0
  br i1 %tobool11.not.i.3, label %if.then8.i.3.do.body14_crit_edge, label %if.then8.i.3.wil_has_other_active_ifaces.exit_crit_edge

if.then8.i.3.wil_has_other_active_ifaces.exit_crit_edge: ; preds = %if.then8.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_has_other_active_ifaces.exit

if.then8.i.3.do.body14_crit_edge:                 ; preds = %if.then8.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

wil_has_other_active_ifaces.exit:                 ; preds = %if.then8.i.3.wil_has_other_active_ifaces.exit_crit_edge, %for.inc.i.2.wil_has_other_active_ifaces.exit_crit_edge, %if.then8.i.2.wil_has_other_active_ifaces.exit_crit_edge, %for.inc.i.1.wil_has_other_active_ifaces.exit_crit_edge, %if.then8.i.1.wil_has_other_active_ifaces.exit_crit_edge, %for.inc.i.wil_has_other_active_ifaces.exit_crit_edge
  %cmp3.lcssa.i = phi i1 [ %cmp3.i, %for.inc.i.wil_has_other_active_ifaces.exit_crit_edge ], [ %cmp3.i, %if.then8.i.1.wil_has_other_active_ifaces.exit_crit_edge ], [ %cmp3.i.1, %for.inc.i.1.wil_has_other_active_ifaces.exit_crit_edge ], [ %cmp3.i.1, %if.then8.i.2.wil_has_other_active_ifaces.exit_crit_edge ], [ %cmp3.i.2, %for.inc.i.2.wil_has_other_active_ifaces.exit_crit_edge ], [ %cmp3.i.2, %if.then8.i.3.wil_has_other_active_ifaces.exit_crit_edge ]
  br i1 %cmp3.lcssa.i, label %wil_has_other_active_ifaces.exit.if.end39_crit_edge, label %wil_has_other_active_ifaces.exit.do.body14_crit_edge

wil_has_other_active_ifaces.exit.do.body14_crit_edge: ; preds = %wil_has_other_active_ifaces.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

wil_has_other_active_ifaces.exit.if.end39_crit_edge: ; preds = %wil_has_other_active_ifaces.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

do.body14:                                        ; preds = %wil_has_other_active_ifaces.exit.do.body14_crit_edge, %if.then8.i.3.do.body14_crit_edge, %if.then.i.3.do.body14_crit_edge, %for.body.i.3.do.body14_crit_edge, %do.end7.do.body14_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_stop.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_stop, %if.then26)) #8
          to label %do.end32 [label %if.then26], !srcloc !156

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  %main_ndev27 = getelementptr inbounds %struct.wiphy, ptr %3, i32 1, i32 0, i32 1, i32 2
  %33 = ptrtoint ptr %main_ndev27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %main_ndev27, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_stop.__UNIQUE_ID_ddebug350, ptr noundef %34, ptr noundef nonnull @.str.59) #8
  br label %do.end32

do.end32:                                         ; preds = %if.then26, %do.body14
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i.i, ptr noundef nonnull @.str.59) #8
  %call35 = tail call i32 @wil_down(ptr noundef %priv.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then37, label %do.end32.if.end39_crit_edge

do.end32.if.end39_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then37:                                        ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @wil_pm_runtime_put(ptr noundef %priv.i.i) #8
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %do.end32.if.end39_crit_edge, %wil_has_other_active_ifaces.exit.if.end39_crit_edge, %if.then8.i.if.end39_crit_edge
  %rc.0 = phi i32 [ 0, %wil_has_other_active_ifaces.exit.if.end39_crit_edge ], [ %call35, %do.end32.if.end39_crit_edge ], [ 0, %if.then37 ], [ 0, %if.then8.i.if.end39_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_start_xmit(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_pm_runtime_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_up(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_pm_runtime_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_down(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_rx_handle_edma(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil6210_unmask_irq_rx_edma(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_tx_sring_handler(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil6210_unmask_irq_tx_edma(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_rx_handle(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil6210_unmask_irq_rx(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_tx_complete(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil6210_unmask_irq_tx(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_unregister_wdev(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !27, !28, !29, !31, !32, !33, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !53, !55, !56, !58, !60, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !102, !104, !106, !107, !108, !110, !112, !113, !115, !116, !117, !119, !120, !122, !123, !124, !126, !127, !129, !130, !131, !133, !134, !136, !137, !139, !141, !142, !143, !145}
!llvm.module.flags = !{!147, !148, !149, !150, !151, !152, !153, !154}
!llvm.ident = !{!155}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 308, i32 3}
!2 = !{ptr @__func__.wil_vif_alloc, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 315, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @wil_vif_alloc._entry, !4, !"_entry", i1 false, i1 false}
!9 = !{ptr @wil_vif_alloc._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 356, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @wil_if_alloc._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @wil_if_alloc._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 362, i32 3}
!17 = !{ptr @wil_if_alloc._entry.7, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @wil_if_alloc._entry_ptr.9, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 366, i32 2}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @wil_if_alloc.__UNIQUE_ID_ddebug370, !20, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 368, i32 27}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 371, i32 3}
!27 = !{ptr @wil_if_alloc._entry.13, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @wil_if_alloc._entry_ptr.15, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 393, i32 2}
!31 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @wil_if_free.__UNIQUE_ID_ddebug371, !30, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 414, i32 2}
!35 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 417, i32 3}
!38 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @wil_vif_add._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @wil_vif_add._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 429, i32 3}
!43 = !{ptr @wil_vif_add._entry.21, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @wil_vif_add._entry_ptr.23, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 446, i32 2}
!47 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @wil_if_add.__UNIQUE_ID_ddebug372, !46, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 452, i32 3}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 496, i32 2}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 498, i32 3}
!55 = !{ptr @__func__.wil_vif_remove, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 504, i32 3}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 550, i32 2}
!60 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @wil_if_remove.__UNIQUE_ID_ddebug375, !59, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!62 = !{ptr @wil_vif_init.__key, !63, !"__key", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 268, i32 2}
!64 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @wil_vif_init.__key.32, !66, !"__key", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 270, i32 2}
!67 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @wil_vif_init.__key.34, !69, !"__key", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 271, i32 2}
!70 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @wil_vif_init.__key.36, !72, !"__key", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 272, i32 2}
!73 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @wil_vif_init.__key.38, !75, !"__key", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 274, i32 2}
!76 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @wil_vif_init.__key.40, !78, !"__key", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 275, i32 2}
!79 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @wil_vif_init.__key.42, !81, !"__key", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 276, i32 2}
!82 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @wil_vif_init.__key.44, !84, !"__key", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 277, i32 2}
!85 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @wil_vif_init.__key.46, !87, !"__key", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 278, i32 2}
!88 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.48, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 234, i32 2}
!91 = !{ptr @__func__.wil_connect_timer_fn, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.49, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 241, i32 2}
!94 = !{ptr @wil_connect_timer_fn.__UNIQUE_ID_ddebug366, !93, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!95 = !{ptr @.str.50, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 250, i32 2}
!97 = !{ptr @__func__.wil_scan_timer_fn, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 259, i32 2}
!100 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @wil_p2p_discovery_timer_fn.__UNIQUE_ID_ddebug367, !99, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!102 = !{ptr @wil_netdev_ops, !103, !"wil_netdev_ops", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 83, i32 36}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 44, i32 2}
!106 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @wil_open.__UNIQUE_ID_ddebug347, !105, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!108 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 48, i32 3}
!110 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 53, i32 3}
!112 = !{ptr @wil_open.__UNIQUE_ID_ddebug348, !111, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!113 = !{ptr @.str.57, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 71, i32 2}
!115 = !{ptr @.str.58, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @wil_stop.__UNIQUE_ID_ddebug349, !114, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!117 = !{ptr @.str.59, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 74, i32 3}
!119 = !{ptr @wil_stop.__UNIQUE_ID_ddebug350, !118, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 125, i32 3}
!122 = !{ptr @.str.61, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @wil6210_netdev_poll_rx_edma.__UNIQUE_ID_ddebug353, !121, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 128, i32 2}
!126 = !{ptr @wil6210_netdev_poll_rx_edma.__UNIQUE_ID_ddebug354, !125, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!127 = !{ptr @.str.63, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 186, i32 3}
!129 = !{ptr @.str.64, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @wil6210_netdev_poll_tx_edma.__UNIQUE_ID_ddebug362, !128, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!131 = !{ptr @.str.65, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 189, i32 2}
!133 = !{ptr @wil6210_netdev_poll_tx_edma.__UNIQUE_ID_ddebug363, !132, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 104, i32 3}
!136 = !{ptr @wil6210_netdev_poll_rx.__UNIQUE_ID_ddebug351, !135, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!137 = !{ptr @wil6210_netdev_poll_rx.__UNIQUE_ID_ddebug352, !138, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 107, i32 2}
!139 = !{ptr @.str.67, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 152, i32 4}
!141 = !{ptr @.str.68, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @wil6210_netdev_poll_tx.__UNIQUE_ID_ddebug357, !140, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!143 = !{ptr @wil6210_netdev_poll_tx.__UNIQUE_ID_ddebug358, !144, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 162, i32 3}
!145 = !{ptr @wil6210_netdev_poll_tx.__UNIQUE_ID_ddebug359, !146, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/ath/wil6210/netdev.c", i32 165, i32 2}
!147 = !{i32 1, !"wchar_size", i32 2}
!148 = !{i32 1, !"min_enum_size", i32 4}
!149 = !{i32 8, !"branch-target-enforcement", i32 0}
!150 = !{i32 8, !"sign-return-address", i32 0}
!151 = !{i32 8, !"sign-return-address-all", i32 0}
!152 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!153 = !{i32 7, !"uwtable", i32 1}
!154 = !{i32 7, !"frame-pointer", i32 2}
!155 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!156 = !{i64 2148860896, i64 2148860901, i64 2148860914, i64 2148860958, i64 2148860992, i64 2148861013}
!157 = !{!"branch_weights", i32 2000, i32 1}
!158 = !{i8 0, i8 2}
!159 = !{!"branch_weights", i32 1, i32 2000}
!160 = !{i64 2157401703}
!161 = !{i64 2157114994, i64 2157115482, i64 2157115031, i64 2157115087, i64 2157115121, i64 2157115145, i64 2157115186, i64 2157115207, i64 2157115235, i64 2157115269}
!162 = !{i64 2157108911, i64 2157109399, i64 2157108948, i64 2157109004, i64 2157109038, i64 2157109062, i64 2157109103, i64 2157109124, i64 2157109152, i64 2157109186}
