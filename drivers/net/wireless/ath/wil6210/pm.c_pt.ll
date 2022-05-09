; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/wil6210/pm.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/wil6210/pm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.wil6210_vif = type { %struct.wireless_dev, ptr, ptr, i8, [1 x i32], i32, i16, i8, i8, i32, i8, i32, ptr, ptr, ptr, i32, i32, i32, [32 x i8], i32, i8, [32 x i8], i32, i32, ptr, i32, %struct.timer_list, %struct.work_struct, ptr, %struct.timer_list, %struct.wil_p2p_info, %struct.list_head, %struct.mutex, %struct.work_struct, i32, i8, i64, i32, %struct.work_struct }
%struct.wil_p2p_info = type { %struct.ieee80211_channel, i8, i64, ptr, i32, %struct.timer_list, %struct.work_struct, %struct.work_struct }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.127 = type { i64, i64, i8 }

@wil_can_suspend.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wil6210\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wil_can_suspend\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/ath/wil6210/pm.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DBG[ PM ]can_suspend: %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"runtime\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"system\00", [25 x i8] zeroinitializer }, align 32
@debug_fw = external dso_local local_unnamed_addr global i8, align 1
@wil_can_suspend.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"DBG[ PM ]Deny any suspend - %s mode\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"wmi_only\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"debug_fw\00", [23 x i8] zeroinitializer }, align 32
@wil_can_suspend.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DBG[ PM ]Interface is down\0A\00", [36 x i8] zeroinitializer }, align 32
@wil_can_suspend.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 0, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"DBG[ PM ]Delay suspend when resetting\0A\00", [57 x i8] zeroinitializer }, align 32
@wil_can_suspend.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.11, i8 0, i8 27, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"DBG[ PM ]Delay suspend during recovery\0A\00", [56 x i8] zeroinitializer }, align 32
@wil_can_suspend.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.12, i8 0, i8 32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"DBG[ PM ]can_suspend: %s => %s (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"No\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Yes\00", [28 x i8] zeroinitializer }, align 32
@wil_suspend.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wil_suspend\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DBG[ PM ]suspend: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@wil_suspend.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.17, i8 0, i8 96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"DBG[ PM ]trying to suspend while suspended\0A\00", [52 x i8] zeroinitializer }, align 32
@wil_suspend.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.18, i8 0, i8 98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DBG[ PM ]suspend: %s => %d\0A\00", [36 x i8] zeroinitializer }, align 32
@wil_resume.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wil_resume\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DBG[ PM ]resume: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: platform_ops.resume : %d\0A\00", [34 x i8] zeroinitializer }, align 32
@wil_resume.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.22, i8 0, i8 105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DBG[ PM ]resume: %s => %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: pm_runtime_get_sync() failed, rc = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@__func__.wil_pm_runtime_get = private unnamed_addr constant [19 x i8] c"wil_pm_runtime_get\00", align 1
@wil_can_suspend_vif.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wil_can_suspend_vif\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DBG[ PM ]Sniffer\0A\00", [46 x i8] zeroinitializer }, align 32
@wil_can_suspend_vif.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.26, i8 0, i8 14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"DBG[ PM ]Delay suspend when connecting\0A\00", [56 x i8] zeroinitializer }, align 32
@wil_can_suspend_vif.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.27, i8 0, i8 15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DBG[ PM ]STA-like interface\0A\00", [35 x i8] zeroinitializer }, align 32
@wil_can_suspend_vif.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.28, i8 0, i8 16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DBG[ PM ]AP-like interface\0A\00", [36 x i8] zeroinitializer }, align 32
@wil_suspend_radio_off.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wil_suspend_radio_off\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DBG[ PM ]suspend radio off\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s: device is busy. down_write_trylock failed, returned (0x%x)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: wil_down : %d\0A\00", [45 x i8] zeroinitializer }, align 32
@wil_suspend_radio_off.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.33, i8 0, i8 83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"DBG[ PM ]Disabling PCIe IRQ before suspending\0A\00", [49 x i8] zeroinitializer }, align 32
@wil_suspend_radio_off.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.34, i8 0, i8 87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DBG[ PM ]suspend radio off: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@wil_suspend_keep_radio_on.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wil_suspend_keep_radio_on\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DBG[ PM ]suspend keep radio on\0A\00", [32 x i8] zeroinitializer }, align 32
@wil_suspend_keep_radio_on.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.37, i8 0, i8 50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"DBG[ PM ]Pending TX data, reject suspend\0A\00", [54 x i8] zeroinitializer }, align 32
@wil_suspend_keep_radio_on.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.38, i8 0, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"DBG[ PM ]Pending RX data, reject suspend\0A\00", [54 x i8] zeroinitializer }, align 32
@wil_suspend_keep_radio_on.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.39, i8 0, i8 53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"DBG[ PM ]Pending WMI events, reject suspend\0A\00", [51 x i8] zeroinitializer }, align 32
@wil_suspend_keep_radio_on.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.40, i8 0, i8 55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"DBG[ PM ]wmi_suspend failed, reject suspend (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.41 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: TO waiting for idle RX, suspend failed\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rx vring is not empty -> NAPI\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: suspend failed due to pending WMI events\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: platform device failed to suspend (%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: device failed to resume (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.wil_resume_keep_radio_on = private unnamed_addr constant [25 x i8] c"wil_resume_keep_radio_on\00", align 1
@no_fw_recovery = external dso_local local_unnamed_addr global i8, align 1
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: wil_down failed (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: wil_up failed (%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@wil_resume_radio_off.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 0, i8 89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wil_resume_radio_off\00", [43 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DBG[ PM ]Enabling PCIe IRQ\0A\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 6, i64 8]
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 80, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 83, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 99, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 103, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 108, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 129, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 381, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 384, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 393, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 403, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 409, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 420, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 450, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 49, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 56, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 60, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 66, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 304, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 308, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 326, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 333, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 349, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 184, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 202, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 208, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 214, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 222, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 234, i32 5 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 239, i32 29 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 251, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 264, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 155, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 160, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 165, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.198 = private constant [41 x i8] c"../drivers/net/wireless/ath/wil6210/pm.c\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 359, i32 2 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wil_can_suspend(ptr noundef %wil, i1 noundef zeroext %is_runtime) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_capabilities = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 16
  %0 = ptrtoint ptr %fw_capabilities to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %fw_capabilities, align 4
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_can_suspend.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_can_suspend, %if.then)) #5
          to label %do.end11 [label %if.then], !srcloc !120

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %3 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %main_ndev, align 4
  %cond = select i1 %is_runtime, ptr @.str.4, ptr @.str.5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_can_suspend.__UNIQUE_ID_ddebug352, ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef nonnull %cond) #5
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry
  %cond13 = select i1 %is_runtime, ptr @.str.4, ptr @.str.5
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.3, ptr noundef nonnull %cond13) #5
  br i1 %tobool.not, label %lor.lhs.false, label %do.end11.do.body21_crit_edge

do.end11.do.body21_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body21

lor.lhs.false:                                    ; preds = %do.end11
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @debug_fw to i32))
  %5 = load i8, ptr @debug_fw, align 1, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool17.not = icmp eq i8 %5, 0
  br i1 %tobool17.not, label %if.end46, label %lor.lhs.false.do.body21_crit_edge

lor.lhs.false.do.body21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body21

do.body21:                                        ; preds = %lor.lhs.false.do.body21_crit_edge, %do.end11.do.body21_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_can_suspend.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_can_suspend, %if.then33)) #5
          to label %do.end41 [label %if.then33], !srcloc !120

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  %main_ndev34 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %6 = ptrtoint ptr %main_ndev34 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %main_ndev34, align 4
  %cond36 = select i1 %tobool.not, ptr @.str.8, ptr @.str.7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_can_suspend.__UNIQUE_ID_ddebug353, ptr noundef %7, ptr noundef nonnull @.str.6, ptr noundef nonnull %cond36) #5
  br label %do.end41

do.end41:                                         ; preds = %if.then33, %do.body21
  %cond43 = select i1 %tobool.not, ptr @.str.8, ptr @.str.7
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.6, ptr noundef nonnull %cond43) #5
  br label %do.body151

if.end46:                                         ; preds = %lor.lhs.false
  br i1 %is_runtime, label %land.lhs.true, label %if.end46.if.end50_crit_edge

if.end46.if.end50_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

land.lhs.true:                                    ; preds = %if.end46
  %suspend = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 83, i32 1
  %8 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %suspend, align 4
  %tobool48.not = icmp eq ptr %9, null
  br i1 %tobool48.not, label %land.lhs.true.do.body151_crit_edge, label %land.lhs.true.if.end50_crit_edge

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

land.lhs.true.do.body151_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body151

if.end50:                                         ; preds = %land.lhs.true.if.end50_crit_edge, %if.end46.if.end50_crit_edge
  %vif_mutex = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %vif_mutex, i32 noundef 0) #5
  %call51 = tail call zeroext i1 @wil_has_active_ifaces(ptr noundef %wil, i1 noundef zeroext true, i1 noundef zeroext false) #5
  tail call void @mutex_unlock(ptr noundef %vif_mutex) #5
  br i1 %call51, label %if.end79, label %do.body58

do.body58:                                        ; preds = %if.end50
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_can_suspend.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_can_suspend, %if.then70)) #5
          to label %do.end76 [label %if.then70], !srcloc !120

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #7
  %main_ndev71 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %10 = ptrtoint ptr %main_ndev71 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %main_ndev71, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_can_suspend.__UNIQUE_ID_ddebug354, ptr noundef %11, ptr noundef nonnull @.str.9) #5
  br label %do.end76

do.end76:                                         ; preds = %if.then70, %do.body58
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.9) #5
  br label %do.body151

if.end79:                                         ; preds = %if.end50
  %status = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 6
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %status, align 4
  %14 = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool82.not = icmp eq i32 %14, 0
  br i1 %tobool82.not, label %if.end107, label %do.body86

do.body86:                                        ; preds = %if.end79
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_can_suspend.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_can_suspend, %if.then98)) #5
          to label %do.end104 [label %if.then98], !srcloc !120

if.then98:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #7
  %main_ndev99 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %15 = ptrtoint ptr %main_ndev99 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %main_ndev99, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_can_suspend.__UNIQUE_ID_ddebug355, ptr noundef %16, ptr noundef nonnull @.str.10) #5
  br label %do.end104

do.end104:                                        ; preds = %if.then98, %do.body86
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.10) #5
  br label %do.body151

if.end107:                                        ; preds = %if.end79
  %recovery_state = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 19
  %17 = ptrtoint ptr %recovery_state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %recovery_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not = icmp eq i32 %18, 0
  br i1 %cmp.not, label %if.end132, label %do.body111

do.body111:                                       ; preds = %if.end107
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_can_suspend.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_can_suspend, %if.then123)) #5
          to label %do.end129 [label %if.then123], !srcloc !120

if.then123:                                       ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #7
  %main_ndev124 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %19 = ptrtoint ptr %main_ndev124 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %main_ndev124, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_can_suspend.__UNIQUE_ID_ddebug356, ptr noundef %20, ptr noundef nonnull @.str.11) #5
  br label %do.end129

do.end129:                                        ; preds = %if.then123, %do.body111
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.11) #5
  br label %do.body151

if.end132:                                        ; preds = %if.end107
  tail call void @mutex_lock_nested(ptr noundef %vif_mutex, i32 noundef 0) #5
  %max_vifs = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 22
  %21 = ptrtoint ptr %max_vifs to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %max_vifs, align 4
  %23 = tail call i8 @llvm.umin.i8(i8 %22, i8 4)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp138259.not = icmp eq i8 %23, 0
  br i1 %cmp138259.not, label %if.end132.for.end_crit_edge, label %for.body

if.end132.for.end_crit_edge:                      ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %if.end132
  %arrayidx = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 0
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %tobool140.not = icmp eq ptr %25, null
  br i1 %tobool140.not, label %for.body.for.inc_crit_edge, label %if.end142

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end142:                                        ; preds = %for.body
  %call144 = tail call fastcc zeroext i1 @wil_can_suspend_vif(ptr noundef %wil, ptr noundef nonnull %25, i1 noundef zeroext %is_runtime)
  br i1 %call144, label %if.end142.for.inc_crit_edge, label %if.end142.cleanup_crit_edge

if.end142.cleanup_crit_edge:                      ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end142.for.inc_crit_edge:                      ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

cleanup:                                          ; preds = %if.end142.3.cleanup_crit_edge, %if.end142.2.cleanup_crit_edge, %if.end142.1.cleanup_crit_edge, %if.end142.cleanup_crit_edge
  tail call void @mutex_unlock(ptr noundef %vif_mutex) #5
  br label %do.body151

for.inc:                                          ; preds = %if.end142.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %26 = ptrtoint ptr %max_vifs to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %max_vifs, align 4
  %28 = tail call i8 @llvm.umin.i8(i8 %27, i8 4)
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %28)
  %cmp138 = icmp ugt i8 %28, 1
  br i1 %cmp138, label %for.body.1, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.1:                                       ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 1
  %29 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.1, align 4
  %tobool140.not.1 = icmp eq ptr %30, null
  br i1 %tobool140.not.1, label %for.body.1.for.inc.1_crit_edge, label %if.end142.1

for.body.1.for.inc.1_crit_edge:                   ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.end142.1:                                      ; preds = %for.body.1
  %call144.1 = tail call fastcc zeroext i1 @wil_can_suspend_vif(ptr noundef %wil, ptr noundef nonnull %30, i1 noundef zeroext %is_runtime)
  br i1 %call144.1, label %if.end142.1.for.inc.1_crit_edge, label %if.end142.1.cleanup_crit_edge

if.end142.1.cleanup_crit_edge:                    ; preds = %if.end142.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end142.1.for.inc.1_crit_edge:                  ; preds = %if.end142.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end142.1.for.inc.1_crit_edge, %for.body.1.for.inc.1_crit_edge
  %31 = ptrtoint ptr %max_vifs to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %max_vifs, align 4
  %33 = tail call i8 @llvm.umin.i8(i8 %32, i8 4)
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %33)
  %cmp138.1 = icmp ugt i8 %33, 2
  br i1 %cmp138.1, label %for.body.2, label %for.inc.1.for.end_crit_edge

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.2:                                       ; preds = %for.inc.1
  %arrayidx.2 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 2
  %34 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.2, align 4
  %tobool140.not.2 = icmp eq ptr %35, null
  br i1 %tobool140.not.2, label %for.body.2.for.inc.2_crit_edge, label %if.end142.2

for.body.2.for.inc.2_crit_edge:                   ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.end142.2:                                      ; preds = %for.body.2
  %call144.2 = tail call fastcc zeroext i1 @wil_can_suspend_vif(ptr noundef %wil, ptr noundef nonnull %35, i1 noundef zeroext %is_runtime)
  br i1 %call144.2, label %if.end142.2.for.inc.2_crit_edge, label %if.end142.2.cleanup_crit_edge

if.end142.2.cleanup_crit_edge:                    ; preds = %if.end142.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end142.2.for.inc.2_crit_edge:                  ; preds = %if.end142.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end142.2.for.inc.2_crit_edge, %for.body.2.for.inc.2_crit_edge
  %36 = ptrtoint ptr %max_vifs to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %max_vifs, align 4
  %38 = tail call i8 @llvm.umin.i8(i8 %37, i8 4)
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %38)
  %cmp138.2 = icmp ugt i8 %38, 3
  br i1 %cmp138.2, label %for.body.3, label %for.inc.2.for.end_crit_edge

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.3:                                       ; preds = %for.inc.2
  %arrayidx.3 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 3
  %39 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.3, align 4
  %tobool140.not.3 = icmp eq ptr %40, null
  br i1 %tobool140.not.3, label %for.body.3.for.end_crit_edge, label %if.end142.3

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end142.3:                                      ; preds = %for.body.3
  %call144.3 = tail call fastcc zeroext i1 @wil_can_suspend_vif(ptr noundef %wil, ptr noundef nonnull %40, i1 noundef zeroext %is_runtime)
  br i1 %call144.3, label %if.end142.3.for.end_crit_edge, label %if.end142.3.cleanup_crit_edge

if.end142.3.cleanup_crit_edge:                    ; preds = %if.end142.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end142.3.for.end_crit_edge:                    ; preds = %if.end142.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end142.3.for.end_crit_edge, %for.body.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %if.end132.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %vif_mutex) #5
  br label %do.body151

do.body151:                                       ; preds = %for.end, %cleanup, %do.end129, %do.end104, %do.end76, %land.lhs.true.do.body151_crit_edge, %do.end41
  %tobool168.not = phi ptr [ @.str.13, %cleanup ], [ @.str.13, %land.lhs.true.do.body151_crit_edge ], [ @.str.13, %do.end41 ], [ @.str.14, %do.end76 ], [ @.str.13, %do.end104 ], [ @.str.13, %do.end129 ], [ @.str.14, %for.end ]
  %tobool178.not = phi i1 [ false, %cleanup ], [ false, %land.lhs.true.do.body151_crit_edge ], [ false, %do.end41 ], [ true, %do.end76 ], [ false, %do.end104 ], [ false, %do.end129 ], [ true, %for.end ]
  %rc.2 = phi i32 [ -16, %cleanup ], [ -16, %land.lhs.true.do.body151_crit_edge ], [ -16, %do.end41 ], [ 0, %do.end76 ], [ -16, %do.end104 ], [ -16, %do.end129 ], [ 0, %for.end ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_can_suspend.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_can_suspend, %if.then163)) #5
          to label %do.end174 [label %if.then163], !srcloc !120

if.then163:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #7
  %main_ndev164 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %41 = ptrtoint ptr %main_ndev164 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %main_ndev164, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_can_suspend.__UNIQUE_ID_ddebug359, ptr noundef %42, ptr noundef nonnull @.str.12, ptr noundef nonnull %cond13, ptr noundef nonnull %tobool168.not, i32 noundef %rc.2) #5
  br label %do.end174

do.end174:                                        ; preds = %if.then163, %do.body151
  %cond179 = select i1 %tobool178.not, ptr @.str.14, ptr @.str.13
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.12, ptr noundef nonnull %cond13, ptr noundef nonnull %cond179, i32 noundef %rc.2) #5
  br i1 %tobool178.not, label %do.end174.cleanup186_crit_edge, label %if.then183

do.end174.cleanup186_crit_edge:                   ; preds = %do.end174
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup186

if.then183:                                       ; preds = %do.end174
  call void @__sanitizer_cov_trace_pc() #7
  %rejected_by_host = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 78, i32 3
  %43 = ptrtoint ptr %rejected_by_host to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rejected_by_host, align 4
  %inc184 = add i32 %44, 1
  store i32 %inc184, ptr %rejected_by_host, align 4
  br label %cleanup186

cleanup186:                                       ; preds = %if.then183, %do.end174.cleanup186_crit_edge
  ret i32 %rc.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_dbg_trace(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wil_has_active_ifaces(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @wil_can_suspend_vif(ptr noundef %wil, ptr noundef %vif, i1 noundef zeroext %is_runtime) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %vif, i32 0, i32 1
  %0 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iftype, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.body67 [
    i32 6, label %do.body3
    i32 2, label %entry.sw.bb11_crit_edge
    i32 8, label %entry.sw.bb11_crit_edge109
  ]

entry.sw.bb11_crit_edge109:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb11

entry.sw.bb11_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb11

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_can_suspend_vif.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_can_suspend_vif, %if.then)) #5
          to label %cleanup.sink.split [label %if.then], !srcloc !120

if.then:                                          ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %3 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_can_suspend_vif.__UNIQUE_ID_ddebug348, ptr noundef %4, ptr noundef nonnull @.str.25) #5
  br label %cleanup.sink.split

sw.bb11:                                          ; preds = %entry.sw.bb11_crit_edge, %entry.sw.bb11_crit_edge109
  %status = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 4
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %status, align 4
  %and1.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool13.not = icmp eq i32 %and1.i, 0
  br i1 %tobool13.not, label %if.end38, label %do.body17

do.body17:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_can_suspend_vif.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_can_suspend_vif, %if.then29)) #5
          to label %cleanup.sink.split [label %if.then29], !srcloc !120

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #7
  %main_ndev30 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %7 = ptrtoint ptr %main_ndev30 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %main_ndev30, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_can_suspend_vif.__UNIQUE_ID_ddebug349, ptr noundef %8, ptr noundef nonnull @.str.26) #5
  br label %cleanup.sink.split

if.end38:                                         ; preds = %sw.bb11
  br i1 %is_runtime, label %do.body43, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_can_suspend_vif.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_can_suspend_vif, %if.then55)) #5
          to label %cleanup.sink.split [label %if.then55], !srcloc !120

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #7
  %main_ndev56 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %9 = ptrtoint ptr %main_ndev56 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %main_ndev56, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_can_suspend_vif.__UNIQUE_ID_ddebug350, ptr noundef %10, ptr noundef nonnull @.str.27) #5
  br label %cleanup.sink.split

do.body67:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_can_suspend_vif.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_can_suspend_vif, %if.then79)) #5
          to label %cleanup.sink.split [label %if.then79], !srcloc !120

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #7
  %main_ndev80 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %11 = ptrtoint ptr %main_ndev80 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %main_ndev80, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_can_suspend_vif.__UNIQUE_ID_ddebug351, ptr noundef %12, ptr noundef nonnull @.str.28) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then79, %do.body67, %if.then55, %do.body43, %if.then29, %do.body17, %if.then, %do.body3
  %.str.28.sink = phi ptr [ @.str.25, %do.body3 ], [ @.str.25, %if.then ], [ @.str.26, %do.body17 ], [ @.str.26, %if.then29 ], [ @.str.27, %do.body43 ], [ @.str.27, %if.then55 ], [ @.str.28, %do.body67 ], [ @.str.28, %if.then79 ]
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull %.str.28.sink) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end38.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end38.cleanup_crit_edge ], [ false, %cleanup.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wil_suspend(ptr noundef %wil, i1 noundef zeroext %is_runtime, i1 noundef zeroext %keep_radio_on) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_suspend.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_suspend, %if.then)) #5
          to label %do.end9 [label %if.then], !srcloc !120

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  %cond = select i1 %is_runtime, ptr @.str.4, ptr @.str.5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_suspend.__UNIQUE_ID_ddebug369, ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull %cond) #5
  br label %do.end9

do.end9:                                          ; preds = %if.then, %entry
  %cond11 = select i1 %is_runtime, ptr @.str.4, ptr @.str.5
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.16, ptr noundef nonnull %cond11) #5
  %status = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 6
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status, align 4
  %4 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool15.not = icmp eq i32 %4, 0
  br i1 %tobool15.not, label %if.end40, label %do.body19

do.body19:                                        ; preds = %do.end9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_suspend.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_suspend, %if.then31)) #5
          to label %do.end37 [label %if.then31], !srcloc !120

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #7
  %main_ndev32 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %5 = ptrtoint ptr %main_ndev32 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %main_ndev32, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_suspend.__UNIQUE_ID_ddebug370, ptr noundef %6, ptr noundef nonnull @.str.17) #5
  br label %do.end37

do.end37:                                         ; preds = %if.then31, %do.body19
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.17) #5
  br label %cleanup

if.end40:                                         ; preds = %do.end9
  br i1 %keep_radio_on, label %if.else, label %if.then42

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  %call43 = tail call fastcc i32 @wil_suspend_radio_off(ptr noundef %wil)
  br label %do.body48

if.else:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  %call44 = tail call fastcc i32 @wil_suspend_keep_radio_on(ptr noundef %wil)
  br label %do.body48

do.body48:                                        ; preds = %if.else, %if.then42
  %rc.0 = phi i32 [ %call44, %if.else ], [ %call43, %if.then42 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_suspend.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_suspend, %if.then60)) #5
          to label %do.end68 [label %if.then60], !srcloc !120

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #7
  %main_ndev61 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %7 = ptrtoint ptr %main_ndev61 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %main_ndev61, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_suspend.__UNIQUE_ID_ddebug371, ptr noundef %8, ptr noundef nonnull @.str.18, ptr noundef nonnull %cond11, i32 noundef %rc.0) #5
  br label %do.end68

do.end68:                                         ; preds = %if.then60, %do.body48
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.18, ptr noundef nonnull %cond11, i32 noundef %rc.0) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end68, %do.end37
  %retval.0 = phi i32 [ 0, %do.end37 ], [ %rc.0, %do.end68 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wil_suspend_radio_off(ptr noundef %wil) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_suspend_radio_off.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_suspend_radio_off, %if.then)) #5
          to label %do.end6 [label %if.then], !srcloc !120

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_suspend_radio_off.__UNIQUE_ID_ddebug365, ptr noundef %1, ptr noundef nonnull @.str.30) #5
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.30) #5
  %mem_lock = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 70
  %call9 = tail call i32 @down_write_trylock(ptr noundef %mem_lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29, i32 noundef 0) #5
  %rejected_by_host = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 78, i32 3
  %2 = ptrtoint ptr %rejected_by_host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rejected_by_host, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %rejected_by_host, align 4
  br label %cleanup

if.end12:                                         ; preds = %do.end6
  %status = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 6, ptr noundef %status) #5
  tail call void @up_write(ptr noundef %mem_lock) #5
  %vif_mutex = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %vif_mutex, i32 noundef 0) #5
  %call14 = tail call zeroext i1 @wil_has_active_ifaces(ptr noundef %wil, i1 noundef zeroext true, i1 noundef zeroext false) #5
  tail call void @mutex_unlock(ptr noundef %vif_mutex) #5
  br i1 %call14, label %if.then18, label %if.end12.do.body28_crit_edge

if.end12.do.body28_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body28

if.then18:                                        ; preds = %if.end12
  %call19 = tail call i32 @wil_down(ptr noundef %wil) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then18.do.body28_crit_edge, label %if.then21

if.then18.do.body28_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body28

if.then21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.29, i32 noundef %call19) #5
  %failed_suspends = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 78, i32 0, i32 2
  %4 = ptrtoint ptr %failed_suspends to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %failed_suspends, align 8
  %inc23 = add i32 %5, 1
  store i32 %inc23, ptr %failed_suspends, align 8
  br label %out

do.body28:                                        ; preds = %if.then18.do.body28_crit_edge, %if.end12.do.body28_crit_edge
  %rc.0 = phi i32 [ 0, %if.then18.do.body28_crit_edge ], [ %call9, %if.end12.do.body28_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_suspend_radio_off.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_suspend_radio_off, %if.then40)) #5
          to label %do.end46 [label %if.then40], !srcloc !120

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #7
  %main_ndev41 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %6 = ptrtoint ptr %main_ndev41 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %main_ndev41, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_suspend_radio_off.__UNIQUE_ID_ddebug366, ptr noundef %7, ptr noundef nonnull @.str.33) #5
  br label %do.end46

do.end46:                                         ; preds = %if.then40, %do.body28
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.33) #5
  tail call void @wil_disable_irq(ptr noundef %wil) #5
  %suspend = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 83, i32 1
  %8 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %suspend, align 4
  %tobool49.not = icmp eq ptr %9, null
  br i1 %tobool49.not, label %do.end46.if.end61_crit_edge, label %if.then50

do.end46.if.end61_crit_edge:                      ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

if.then50:                                        ; preds = %do.end46
  %platform_handle = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 82
  %10 = ptrtoint ptr %platform_handle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %platform_handle, align 8
  %call53 = tail call i32 %9(ptr noundef %11, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then50.if.end61_crit_edge, label %if.then55

if.then50.if.end61_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

if.then55:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @wil_enable_irq(ptr noundef %wil) #5
  %failed_suspends58 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 78, i32 0, i32 2
  %12 = ptrtoint ptr %failed_suspends58 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %failed_suspends58, align 8
  %inc59 = add i32 %13, 1
  store i32 %inc59, ptr %failed_suspends58, align 8
  br label %out

if.end61:                                         ; preds = %if.then50.if.end61_crit_edge, %do.end46.if.end61_crit_edge
  %rc.1 = phi i32 [ 0, %if.then50.if.end61_crit_edge ], [ %rc.0, %do.end46.if.end61_crit_edge ]
  tail call void @_set_bit(i32 noundef 7, ptr noundef %status) #5
  br label %out

out:                                              ; preds = %if.end61, %if.then55, %if.then21
  %rc.2 = phi i32 [ %call19, %if.then21 ], [ %call53, %if.then55 ], [ %rc.1, %if.end61 ]
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %status) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_suspend_radio_off.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_suspend_radio_off, %if.then80)) #5
          to label %do.end86 [label %if.then80], !srcloc !120

if.then80:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  %main_ndev81 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %14 = ptrtoint ptr %main_ndev81 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %main_ndev81, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_suspend_radio_off.__UNIQUE_ID_ddebug367, ptr noundef %15, ptr noundef nonnull @.str.34, i32 noundef %rc.2) #5
  br label %do.end86

do.end86:                                         ; preds = %if.then80, %out
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.34, i32 noundef %rc.2) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end86, %if.then11
  %retval.0 = phi i32 [ %rc.2, %do.end86 ], [ -16, %if.then11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wil_suspend_keep_radio_on(ptr noundef %wil) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_suspend_keep_radio_on.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_suspend_keep_radio_on, %if.then)) #5
          to label %do.end6 [label %if.then], !srcloc !120

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_suspend_keep_radio_on.__UNIQUE_ID_ddebug360, ptr noundef %1, ptr noundef nonnull @.str.36) #5
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.36) #5
  %mem_lock = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 70
  %call9 = tail call i32 @down_write_trylock(ptr noundef %mem_lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.35, i32 noundef 0) #5
  %rejected_by_host = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 78, i32 3
  %2 = ptrtoint ptr %rejected_by_host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rejected_by_host, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %rejected_by_host, align 4
  br label %cleanup

if.end12:                                         ; preds = %do.end6
  %status = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 6, ptr noundef %status) #5
  tail call void @up_write(ptr noundef %mem_lock) #5
  %vif_mutex.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %vif_mutex.i, i32 noundef 0) #5
  %max_vifs.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 22
  %4 = ptrtoint ptr %max_vifs.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %max_vifs.i, align 4
  %6 = tail call i8 @llvm.umin.i8(i8 %5, i8 4) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp215.not.i = icmp eq i8 %6, 0
  br i1 %cmp215.not.i, label %if.end12.wil_pm_stop_all_net_queues.exit_crit_edge, label %for.body.i

if.end12.wil_pm_stop_all_net_queues.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %wil_pm_stop_all_net_queues.exit

for.body.i:                                       ; preds = %if.end12
  %arrayidx.i = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 0
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @wil_update_net_queues_bh(ptr noundef %wil, ptr noundef nonnull %8, ptr noundef null, i1 noundef zeroext true) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %9 = ptrtoint ptr %max_vifs.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %max_vifs.i, align 4
  %11 = tail call i8 @llvm.umin.i8(i8 %10, i8 4) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp2.i = icmp ugt i8 %11, 1
  br i1 %cmp2.i, label %for.body.i.1, label %if.end.i.wil_pm_stop_all_net_queues.exit_crit_edge

if.end.i.wil_pm_stop_all_net_queues.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wil_pm_stop_all_net_queues.exit

for.body.i.1:                                     ; preds = %if.end.i
  %arrayidx.i.1 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 1
  %12 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.1, align 4
  %tobool.not.i.1 = icmp eq ptr %13, null
  br i1 %tobool.not.i.1, label %for.body.i.1.if.end.i.1_crit_edge, label %if.then.i.1

for.body.i.1.if.end.i.1_crit_edge:                ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.1

if.then.i.1:                                      ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @wil_update_net_queues_bh(ptr noundef %wil, ptr noundef nonnull %13, ptr noundef null, i1 noundef zeroext true) #5
  br label %if.end.i.1

if.end.i.1:                                       ; preds = %if.then.i.1, %for.body.i.1.if.end.i.1_crit_edge
  %14 = ptrtoint ptr %max_vifs.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %max_vifs.i, align 4
  %16 = tail call i8 @llvm.umin.i8(i8 %15, i8 4) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %cmp2.i.1 = icmp ugt i8 %16, 2
  br i1 %cmp2.i.1, label %for.body.i.2, label %if.end.i.1.wil_pm_stop_all_net_queues.exit_crit_edge

if.end.i.1.wil_pm_stop_all_net_queues.exit_crit_edge: ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %wil_pm_stop_all_net_queues.exit

for.body.i.2:                                     ; preds = %if.end.i.1
  %arrayidx.i.2 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 2
  %17 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i.2, align 4
  %tobool.not.i.2 = icmp eq ptr %18, null
  br i1 %tobool.not.i.2, label %for.body.i.2.if.end.i.2_crit_edge, label %if.then.i.2

for.body.i.2.if.end.i.2_crit_edge:                ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.2

if.then.i.2:                                      ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @wil_update_net_queues_bh(ptr noundef %wil, ptr noundef nonnull %18, ptr noundef null, i1 noundef zeroext true) #5
  br label %if.end.i.2

if.end.i.2:                                       ; preds = %if.then.i.2, %for.body.i.2.if.end.i.2_crit_edge
  %19 = ptrtoint ptr %max_vifs.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %max_vifs.i, align 4
  %21 = tail call i8 @llvm.umin.i8(i8 %20, i8 4) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %21)
  %cmp2.i.2 = icmp ugt i8 %21, 3
  br i1 %cmp2.i.2, label %for.body.i.3, label %if.end.i.2.wil_pm_stop_all_net_queues.exit_crit_edge

if.end.i.2.wil_pm_stop_all_net_queues.exit_crit_edge: ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %wil_pm_stop_all_net_queues.exit

for.body.i.3:                                     ; preds = %if.end.i.2
  %arrayidx.i.3 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 3
  %22 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.3, align 4
  %tobool.not.i.3 = icmp eq ptr %23, null
  br i1 %tobool.not.i.3, label %for.body.i.3.wil_pm_stop_all_net_queues.exit_crit_edge, label %if.then.i.3

for.body.i.3.wil_pm_stop_all_net_queues.exit_crit_edge: ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %wil_pm_stop_all_net_queues.exit

if.then.i.3:                                      ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @wil_update_net_queues_bh(ptr noundef %wil, ptr noundef nonnull %23, ptr noundef null, i1 noundef zeroext true) #5
  br label %wil_pm_stop_all_net_queues.exit

wil_pm_stop_all_net_queues.exit:                  ; preds = %if.then.i.3, %for.body.i.3.wil_pm_stop_all_net_queues.exit_crit_edge, %if.end.i.2.wil_pm_stop_all_net_queues.exit_crit_edge, %if.end.i.1.wil_pm_stop_all_net_queues.exit_crit_edge, %if.end.i.wil_pm_stop_all_net_queues.exit_crit_edge, %if.end12.wil_pm_stop_all_net_queues.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %vif_mutex.i) #5
  %call14 = tail call zeroext i1 @wil_is_tx_idle(ptr noundef %wil) #5
  br i1 %call14, label %if.end42, label %do.body18

do.body18:                                        ; preds = %wil_pm_stop_all_net_queues.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_suspend_keep_radio_on.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_suspend_keep_radio_on, %if.then30)) #5
          to label %do.end36 [label %if.then30], !srcloc !120

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  %main_ndev31 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %24 = ptrtoint ptr %main_ndev31 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %main_ndev31, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_suspend_keep_radio_on.__UNIQUE_ID_ddebug361, ptr noundef %25, ptr noundef nonnull @.str.37) #5
  br label %do.end36

do.end36:                                         ; preds = %if.then30, %do.body18
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.37) #5
  %rejected_by_host40 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 78, i32 3
  %26 = ptrtoint ptr %rejected_by_host40 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rejected_by_host40, align 4
  %inc41 = add i32 %27, 1
  store i32 %inc41, ptr %rejected_by_host40, align 4
  br label %reject_suspend

if.end42:                                         ; preds = %wil_pm_stop_all_net_queues.exit
  %is_rx_idle = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 18
  %28 = ptrtoint ptr %is_rx_idle to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %is_rx_idle, align 8
  %call43 = tail call zeroext i1 %29(ptr noundef %wil) #5
  br i1 %call43, label %if.end71, label %do.body47

do.body47:                                        ; preds = %if.end42
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_suspend_keep_radio_on.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_suspend_keep_radio_on, %if.then59)) #5
          to label %do.end65 [label %if.then59], !srcloc !120

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #7
  %main_ndev60 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %30 = ptrtoint ptr %main_ndev60 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %main_ndev60, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_suspend_keep_radio_on.__UNIQUE_ID_ddebug362, ptr noundef %31, ptr noundef nonnull @.str.38) #5
  br label %do.end65

do.end65:                                         ; preds = %if.then59, %do.body47
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.38) #5
  %rejected_by_host69 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 78, i32 3
  %32 = ptrtoint ptr %rejected_by_host69 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rejected_by_host69, align 4
  %inc70 = add i32 %33, 1
  store i32 %inc70, ptr %rejected_by_host69, align 4
  br label %reject_suspend

if.end71:                                         ; preds = %if.end42
  %call72 = tail call zeroext i1 @wil_is_wmi_idle(ptr noundef %wil) #5
  br i1 %call72, label %if.end100, label %do.body76

do.body76:                                        ; preds = %if.end71
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_suspend_keep_radio_on.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_suspend_keep_radio_on, %if.then88)) #5
          to label %do.end94 [label %if.then88], !srcloc !120

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #7
  %main_ndev89 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %34 = ptrtoint ptr %main_ndev89 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %main_ndev89, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_suspend_keep_radio_on.__UNIQUE_ID_ddebug363, ptr noundef %35, ptr noundef nonnull @.str.39) #5
  br label %do.end94

do.end94:                                         ; preds = %if.then88, %do.body76
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.39) #5
  %rejected_by_host98 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 78, i32 3
  %36 = ptrtoint ptr %rejected_by_host98 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rejected_by_host98, align 4
  %inc99 = add i32 %37, 1
  store i32 %inc99, ptr %rejected_by_host98, align 4
  br label %reject_suspend

if.end100:                                        ; preds = %if.end71
  %call101 = tail call i32 @wmi_suspend(ptr noundef %wil) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end127, label %do.body106

do.body106:                                       ; preds = %if.end100
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_suspend_keep_radio_on.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_suspend_keep_radio_on, %if.then118)) #5
          to label %do.end124 [label %if.then118], !srcloc !120

if.then118:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #7
  %main_ndev119 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %38 = ptrtoint ptr %main_ndev119 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %main_ndev119, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_suspend_keep_radio_on.__UNIQUE_ID_ddebug364, ptr noundef %39, ptr noundef nonnull @.str.40, i32 noundef %call101) #5
  br label %do.end124

do.end124:                                        ; preds = %if.then118, %do.body106
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.40, i32 noundef %call101) #5
  br label %reject_suspend

if.end127:                                        ; preds = %if.end100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %40, 20
  %41 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %status, align 4
  %43 = and i32 %42, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool132.not = icmp eq i32 %43, 0
  br i1 %tobool132.not, label %if.end127.if.end148_crit_edge, label %while.cond.preheader

if.end127.if.end148_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end148

while.cond.preheader:                             ; preds = %if.end127
  %44 = ptrtoint ptr %is_rx_idle to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %is_rx_idle, align 8
  %call136276 = tail call zeroext i1 %45(ptr noundef %wil) #5
  br i1 %call136276, label %while.cond.preheader.if.end148_crit_edge, label %while.body.lr.ph

while.cond.preheader.if.end148_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end148

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %state.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 52, i32 1
  br label %while.body

while.body:                                       ; preds = %napi_synchronize.exit.while.body_crit_edge, %while.body.lr.ph
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then139, label %if.end147

if.then139:                                       ; preds = %while.body
  %47 = ptrtoint ptr %is_rx_idle to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %is_rx_idle, align 8
  %call142 = tail call zeroext i1 %48(ptr noundef %wil) #5
  br i1 %call142, label %if.then139.if.end148_crit_edge, label %if.end144

if.then139.if.end148_crit_edge:                   ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end148

if.end144:                                        ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.35) #5
  %failed_suspends = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 78, i32 1, i32 2
  %49 = ptrtoint ptr %failed_suspends to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %failed_suspends, align 8
  %inc146 = add i32 %50, 1
  store i32 %inc146, ptr %failed_suspends, align 8
  br label %resume_after_fail

if.end147:                                        ; preds = %while.body
  tail call void (ptr, ptr, ...) @wil_dbg_ratelimited(ptr noundef %wil, ptr noundef nonnull @.str.42) #5
  %51 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %state.i, align 4
  %and1.i1.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i1.i)
  %tobool.not2.i = icmp eq i32 %and1.i1.i, 0
  br i1 %tobool.not2.i, label %if.end147.napi_synchronize.exit_crit_edge, label %if.end147.while.body.i_crit_edge

if.end147.while.body.i_crit_edge:                 ; preds = %if.end147
  br label %while.body.i

if.end147.napi_synchronize.exit_crit_edge:        ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #7
  br label %napi_synchronize.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end147.while.body.i_crit_edge
  tail call void @msleep(i32 noundef 1) #5
  %53 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %54, 1
  %tobool.not.i260 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i260, label %while.body.i.napi_synchronize.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.body.i.napi_synchronize.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %napi_synchronize.exit

napi_synchronize.exit:                            ; preds = %while.body.i.napi_synchronize.exit_crit_edge, %if.end147.napi_synchronize.exit_crit_edge
  tail call void @msleep(i32 noundef 20) #5
  %55 = ptrtoint ptr %is_rx_idle to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %is_rx_idle, align 8
  %call136 = tail call zeroext i1 %56(ptr noundef %wil) #5
  br i1 %call136, label %napi_synchronize.exit.if.end148_crit_edge, label %napi_synchronize.exit.while.body_crit_edge

napi_synchronize.exit.while.body_crit_edge:       ; preds = %napi_synchronize.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

napi_synchronize.exit.if.end148_crit_edge:        ; preds = %napi_synchronize.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end148

if.end148:                                        ; preds = %napi_synchronize.exit.if.end148_crit_edge, %if.then139.if.end148_crit_edge, %while.cond.preheader.if.end148_crit_edge, %if.end127.if.end148_crit_edge
  %call149 = tail call zeroext i1 @wil_is_wmi_idle(ptr noundef %wil) #5
  br i1 %call149, label %if.end155, label %if.then150

if.then150:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.35) #5
  %failed_suspends153 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 78, i32 1, i32 2
  %57 = ptrtoint ptr %failed_suspends153 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %failed_suspends153, align 8
  %inc154 = add i32 %58, 1
  store i32 %inc154, ptr %failed_suspends153, align 8
  br label %resume_after_fail

if.end155:                                        ; preds = %if.end148
  tail call void @wil_mask_irq(ptr noundef %wil) #5
  tail call fastcc void @wil_s(ptr noundef %wil)
  %suspend = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 83, i32 1
  %59 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %suspend, align 4
  %tobool156.not = icmp eq ptr %60, null
  br i1 %tobool156.not, label %if.end155.if.end168_crit_edge, label %if.then157

if.end155.if.end168_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end168

if.then157:                                       ; preds = %if.end155
  %platform_handle = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 82
  %61 = ptrtoint ptr %platform_handle to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %platform_handle, align 8
  %call160 = tail call i32 %60(ptr noundef %62, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %if.then157.if.end168_crit_edge, label %if.then162

if.then157.if.end168_crit_edge:                   ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end168

if.then162:                                       ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.35, i32 noundef %call160) #5
  %failed_suspends165 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 78, i32 1, i32 2
  %63 = ptrtoint ptr %failed_suspends165 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %failed_suspends165, align 8
  %inc166 = add i32 %64, 1
  store i32 %inc166, ptr %failed_suspends165, align 8
  tail call fastcc void @wil_c(ptr noundef %wil)
  tail call void @wil_unmask_irq(ptr noundef %wil) #5
  br label %resume_after_fail

if.end168:                                        ; preds = %if.then157.if.end168_crit_edge, %if.end155.if.end168_crit_edge
  %bus_request_kbps = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 95
  %65 = ptrtoint ptr %bus_request_kbps to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %bus_request_kbps, align 128
  %bus_request_kbps_pre_suspend = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 96
  %67 = ptrtoint ptr %bus_request_kbps_pre_suspend to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %bus_request_kbps_pre_suspend, align 4
  tail call void @wil6210_bus_request(ptr noundef %wil, i32 noundef 0) #5
  tail call void @_set_bit(i32 noundef 7, ptr noundef %status) #5
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %status) #5
  br label %cleanup

resume_after_fail:                                ; preds = %if.then162, %if.then150, %if.end144
  tail call void @_set_bit(i32 noundef 8, ptr noundef %status) #5
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %status) #5
  %call177 = tail call i32 @wmi_resume(ptr noundef %wil) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %if.then179, label %resume_after_fail.cleanup_crit_edge

resume_after_fail.cleanup_crit_edge:              ; preds = %resume_after_fail
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then179:                                       ; preds = %resume_after_fail
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @wil_pm_wake_connected_net_queues(ptr noundef %wil)
  br label %cleanup

reject_suspend:                                   ; preds = %do.end124, %do.end94, %do.end65, %do.end36
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %status) #5
  tail call void @mutex_lock_nested(ptr noundef %vif_mutex.i, i32 noundef 0) #5
  %68 = ptrtoint ptr %max_vifs.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %max_vifs.i, align 4
  %70 = tail call i8 @llvm.umin.i8(i8 %69, i8 4) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp217.not.i = icmp eq i8 %70, 0
  br i1 %cmp217.not.i, label %reject_suspend.wil_pm_wake_connected_net_queues.exit_crit_edge, label %for.body.i265

reject_suspend.wil_pm_wake_connected_net_queues.exit_crit_edge: ; preds = %reject_suspend
  call void @__sanitizer_cov_trace_pc() #7
  br label %wil_pm_wake_connected_net_queues.exit

for.body.i265:                                    ; preds = %reject_suspend
  %arrayidx.i263 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 0
  %71 = ptrtoint ptr %arrayidx.i263 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.i263, align 4
  %tobool.not.i264 = icmp eq ptr %72, null
  br i1 %tobool.not.i264, label %for.body.i265.if.end.i270_crit_edge, label %land.lhs.true.i

for.body.i265.if.end.i270_crit_edge:              ; preds = %for.body.i265
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i270

land.lhs.true.i:                                  ; preds = %for.body.i265
  %status.i = getelementptr inbounds %struct.wil6210_vif, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %status.i, align 4
  %75 = and i32 %74, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool4.not.i = icmp eq i32 %75, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end.i270_crit_edge, label %if.then.i266

land.lhs.true.i.if.end.i270_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i270

if.then.i266:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @wil_update_net_queues_bh(ptr noundef %wil, ptr noundef nonnull %72, ptr noundef null, i1 noundef zeroext false) #5
  br label %if.end.i270

if.end.i270:                                      ; preds = %if.then.i266, %land.lhs.true.i.if.end.i270_crit_edge, %for.body.i265.if.end.i270_crit_edge
  %76 = ptrtoint ptr %max_vifs.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %max_vifs.i, align 4
  %78 = tail call i8 @llvm.umin.i8(i8 %77, i8 4) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %78)
  %cmp2.i269 = icmp ugt i8 %78, 1
  br i1 %cmp2.i269, label %for.body.i265.1, label %if.end.i270.wil_pm_wake_connected_net_queues.exit_crit_edge

if.end.i270.wil_pm_wake_connected_net_queues.exit_crit_edge: ; preds = %if.end.i270
  call void @__sanitizer_cov_trace_pc() #7
  br label %wil_pm_wake_connected_net_queues.exit

for.body.i265.1:                                  ; preds = %if.end.i270
  %arrayidx.i263.1 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 1
  %79 = ptrtoint ptr %arrayidx.i263.1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx.i263.1, align 4
  %tobool.not.i264.1 = icmp eq ptr %80, null
  br i1 %tobool.not.i264.1, label %for.body.i265.1.if.end.i270.1_crit_edge, label %land.lhs.true.i.1

for.body.i265.1.if.end.i270.1_crit_edge:          ; preds = %for.body.i265.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i270.1

land.lhs.true.i.1:                                ; preds = %for.body.i265.1
  %status.i.1 = getelementptr inbounds %struct.wil6210_vif, ptr %80, i32 0, i32 4
  %81 = ptrtoint ptr %status.i.1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %status.i.1, align 4
  %83 = and i32 %82, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool4.not.i.1 = icmp eq i32 %83, 0
  br i1 %tobool4.not.i.1, label %land.lhs.true.i.1.if.end.i270.1_crit_edge, label %if.then.i266.1

land.lhs.true.i.1.if.end.i270.1_crit_edge:        ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i270.1

if.then.i266.1:                                   ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @wil_update_net_queues_bh(ptr noundef %wil, ptr noundef nonnull %80, ptr noundef null, i1 noundef zeroext false) #5
  br label %if.end.i270.1

if.end.i270.1:                                    ; preds = %if.then.i266.1, %land.lhs.true.i.1.if.end.i270.1_crit_edge, %for.body.i265.1.if.end.i270.1_crit_edge
  %84 = ptrtoint ptr %max_vifs.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %max_vifs.i, align 4
  %86 = tail call i8 @llvm.umin.i8(i8 %85, i8 4) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %86)
  %cmp2.i269.1 = icmp ugt i8 %86, 2
  br i1 %cmp2.i269.1, label %for.body.i265.2, label %if.end.i270.1.wil_pm_wake_connected_net_queues.exit_crit_edge

if.end.i270.1.wil_pm_wake_connected_net_queues.exit_crit_edge: ; preds = %if.end.i270.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %wil_pm_wake_connected_net_queues.exit

for.body.i265.2:                                  ; preds = %if.end.i270.1
  %arrayidx.i263.2 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 2
  %87 = ptrtoint ptr %arrayidx.i263.2 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx.i263.2, align 4
  %tobool.not.i264.2 = icmp eq ptr %88, null
  br i1 %tobool.not.i264.2, label %for.body.i265.2.if.end.i270.2_crit_edge, label %land.lhs.true.i.2

for.body.i265.2.if.end.i270.2_crit_edge:          ; preds = %for.body.i265.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i270.2

land.lhs.true.i.2:                                ; preds = %for.body.i265.2
  %status.i.2 = getelementptr inbounds %struct.wil6210_vif, ptr %88, i32 0, i32 4
  %89 = ptrtoint ptr %status.i.2 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %status.i.2, align 4
  %91 = and i32 %90, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool4.not.i.2 = icmp eq i32 %91, 0
  br i1 %tobool4.not.i.2, label %land.lhs.true.i.2.if.end.i270.2_crit_edge, label %if.then.i266.2

land.lhs.true.i.2.if.end.i270.2_crit_edge:        ; preds = %land.lhs.true.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i270.2

if.then.i266.2:                                   ; preds = %land.lhs.true.i.2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @wil_update_net_queues_bh(ptr noundef %wil, ptr noundef nonnull %88, ptr noundef null, i1 noundef zeroext false) #5
  br label %if.end.i270.2

if.end.i270.2:                                    ; preds = %if.then.i266.2, %land.lhs.true.i.2.if.end.i270.2_crit_edge, %for.body.i265.2.if.end.i270.2_crit_edge
  %92 = ptrtoint ptr %max_vifs.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %max_vifs.i, align 4
  %94 = tail call i8 @llvm.umin.i8(i8 %93, i8 4) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %94)
  %cmp2.i269.2 = icmp ugt i8 %94, 3
  br i1 %cmp2.i269.2, label %for.body.i265.3, label %if.end.i270.2.wil_pm_wake_connected_net_queues.exit_crit_edge

if.end.i270.2.wil_pm_wake_connected_net_queues.exit_crit_edge: ; preds = %if.end.i270.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %wil_pm_wake_connected_net_queues.exit

for.body.i265.3:                                  ; preds = %if.end.i270.2
  %arrayidx.i263.3 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 3
  %95 = ptrtoint ptr %arrayidx.i263.3 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx.i263.3, align 4
  %tobool.not.i264.3 = icmp eq ptr %96, null
  br i1 %tobool.not.i264.3, label %for.body.i265.3.wil_pm_wake_connected_net_queues.exit_crit_edge, label %land.lhs.true.i.3

for.body.i265.3.wil_pm_wake_connected_net_queues.exit_crit_edge: ; preds = %for.body.i265.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %wil_pm_wake_connected_net_queues.exit

land.lhs.true.i.3:                                ; preds = %for.body.i265.3
  %status.i.3 = getelementptr inbounds %struct.wil6210_vif, ptr %96, i32 0, i32 4
  %97 = ptrtoint ptr %status.i.3 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %status.i.3, align 4
  %99 = and i32 %98, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool4.not.i.3 = icmp eq i32 %99, 0
  br i1 %tobool4.not.i.3, label %land.lhs.true.i.3.wil_pm_wake_connected_net_queues.exit_crit_edge, label %if.then.i266.3

land.lhs.true.i.3.wil_pm_wake_connected_net_queues.exit_crit_edge: ; preds = %land.lhs.true.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %wil_pm_wake_connected_net_queues.exit

if.then.i266.3:                                   ; preds = %land.lhs.true.i.3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @wil_update_net_queues_bh(ptr noundef %wil, ptr noundef nonnull %96, ptr noundef null, i1 noundef zeroext false) #5
  br label %wil_pm_wake_connected_net_queues.exit

wil_pm_wake_connected_net_queues.exit:            ; preds = %if.then.i266.3, %land.lhs.true.i.3.wil_pm_wake_connected_net_queues.exit_crit_edge, %for.body.i265.3.wil_pm_wake_connected_net_queues.exit_crit_edge, %if.end.i270.2.wil_pm_wake_connected_net_queues.exit_crit_edge, %if.end.i270.1.wil_pm_wake_connected_net_queues.exit_crit_edge, %if.end.i270.wil_pm_wake_connected_net_queues.exit_crit_edge, %reject_suspend.wil_pm_wake_connected_net_queues.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %vif_mutex.i) #5
  br label %cleanup

cleanup:                                          ; preds = %wil_pm_wake_connected_net_queues.exit, %if.then179, %resume_after_fail.cleanup_crit_edge, %if.end168, %if.then11
  %retval.0 = phi i32 [ -16, %wil_pm_wake_connected_net_queues.exit ], [ 0, %if.end168 ], [ -16, %if.then11 ], [ %call177, %resume_after_fail.cleanup_crit_edge ], [ -16, %if.then179 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wil_resume(ptr noundef %wil, i1 noundef zeroext %is_runtime, i1 noundef zeroext %keep_radio_on) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_resume.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_resume, %if.then)) #5
          to label %do.end9 [label %if.then], !srcloc !120

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  %cond = select i1 %is_runtime, ptr @.str.4, ptr @.str.5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_resume.__UNIQUE_ID_ddebug372, ptr noundef %1, ptr noundef nonnull @.str.20, ptr noundef nonnull %cond) #5
  br label %do.end9

do.end9:                                          ; preds = %if.then, %entry
  %cond11 = select i1 %is_runtime, ptr @.str.4, ptr @.str.5
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.20, ptr noundef nonnull %cond11) #5
  %resume = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 83, i32 2
  %2 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resume, align 4
  %tobool14.not = icmp eq ptr %3, null
  br i1 %tobool14.not, label %do.end9.if.end23_crit_edge, label %if.then15

do.end9.if.end23_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then15:                                        ; preds = %do.end9
  %platform_handle = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 82
  %4 = ptrtoint ptr %platform_handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_handle, align 8
  %call19 = tail call i32 %3(ptr noundef %5, i1 noundef zeroext %keep_radio_on) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then15.if.end23_crit_edge, label %if.then21

if.then15.if.end23_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then21:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19, i32 noundef %call19) #5
  br label %do.body31

if.end23:                                         ; preds = %if.then15.if.end23_crit_edge, %do.end9.if.end23_crit_edge
  br i1 %keep_radio_on, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end23
  %status.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 8, ptr noundef %status.i) #5
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %status.i) #5
  %csr.i.i.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %6 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 2748
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %9 = and i32 %8, -524289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !124
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %11, i32 2748
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %9) #5, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !126
  tail call void @arm_heavy_mb() #5
  tail call void @wil_unmask_irq(ptr noundef %wil) #5
  %bus_request_kbps_pre_suspend.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 96
  %12 = ptrtoint ptr %bus_request_kbps_pre_suspend.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bus_request_kbps_pre_suspend.i, align 4
  tail call void @wil6210_bus_request(ptr noundef %wil, i32 noundef %13) #5
  %call.i = tail call i32 @wmi_resume(ptr noundef %wil) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then25.if.end13.i_crit_edge, label %if.then.i

if.then25.if.end13.i_crit_edge:                   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i

if.then.i:                                        ; preds = %if.then25
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.wil_resume_keep_radio_on, i32 noundef %call.i) #5
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @no_fw_recovery to i32))
  %14 = load i8, ptr @no_fw_recovery, align 1, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool3.not.i = icmp eq i8 %14, 0
  br i1 %tobool3.not.i, label %if.end.i, label %if.then.i.if.then15.i_crit_edge

if.then.i.if.then15.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15.i

if.end.i:                                         ; preds = %if.then.i
  %call5.i = tail call i32 @wil_down(ptr noundef %wil) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.wil_resume_keep_radio_on, i32 noundef %call5.i) #5
  br label %if.then15.i

if.end8.i:                                        ; preds = %if.end.i
  %call9.i = tail call i32 @wil_up(ptr noundef %wil) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.if.end13.i_crit_edge, label %if.then11.i

if.end8.i.if.end13.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.wil_resume_keep_radio_on, i32 noundef %call9.i) #5
  br label %if.then15.i

if.end13.i:                                       ; preds = %if.end8.i.if.end13.i_crit_edge, %if.then25.if.end13.i_crit_edge
  %vif_mutex.i.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %vif_mutex.i.i, i32 noundef 0) #5
  %max_vifs.i.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 22
  %15 = ptrtoint ptr %max_vifs.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %max_vifs.i.i, align 4
  %17 = tail call i8 @llvm.umin.i8(i8 %16, i8 4) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp217.not.i.i = icmp eq i8 %17, 0
  br i1 %cmp217.not.i.i, label %if.end13.i.out.i_crit_edge, label %for.body.i.i

if.end13.i.out.i_crit_edge:                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.i

for.body.i.i:                                     ; preds = %if.end13.i
  %arrayidx.i.i = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 0
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %status.i.i = getelementptr inbounds %struct.wil6210_vif, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %status.i.i, align 4
  %22 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool4.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @wil_update_net_queues_bh(ptr noundef %wil, ptr noundef nonnull %19, ptr noundef null, i1 noundef zeroext false) #5
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %for.body.i.i.if.end.i.i_crit_edge
  %23 = ptrtoint ptr %max_vifs.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %max_vifs.i.i, align 4
  %25 = tail call i8 @llvm.umin.i8(i8 %24, i8 4) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %25)
  %cmp2.i.i = icmp ugt i8 %25, 1
  br i1 %cmp2.i.i, label %for.body.i.i.1, label %if.end.i.i.out.i_crit_edge

if.end.i.i.out.i_crit_edge:                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.i

for.body.i.i.1:                                   ; preds = %if.end.i.i
  %arrayidx.i.i.1 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 1
  %26 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i.1, align 4
  %tobool.not.i.i.1 = icmp eq ptr %27, null
  br i1 %tobool.not.i.i.1, label %for.body.i.i.1.if.end.i.i.1_crit_edge, label %land.lhs.true.i.i.1

for.body.i.i.1.if.end.i.i.1_crit_edge:            ; preds = %for.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.1

land.lhs.true.i.i.1:                              ; preds = %for.body.i.i.1
  %status.i.i.1 = getelementptr inbounds %struct.wil6210_vif, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %status.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %status.i.i.1, align 4
  %30 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool4.not.i.i.1 = icmp eq i32 %30, 0
  br i1 %tobool4.not.i.i.1, label %land.lhs.true.i.i.1.if.end.i.i.1_crit_edge, label %if.then.i.i.1

land.lhs.true.i.i.1.if.end.i.i.1_crit_edge:       ; preds = %land.lhs.true.i.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.1

if.then.i.i.1:                                    ; preds = %land.lhs.true.i.i.1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @wil_update_net_queues_bh(ptr noundef %wil, ptr noundef nonnull %27, ptr noundef null, i1 noundef zeroext false) #5
  br label %if.end.i.i.1

if.end.i.i.1:                                     ; preds = %if.then.i.i.1, %land.lhs.true.i.i.1.if.end.i.i.1_crit_edge, %for.body.i.i.1.if.end.i.i.1_crit_edge
  %31 = ptrtoint ptr %max_vifs.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %max_vifs.i.i, align 4
  %33 = tail call i8 @llvm.umin.i8(i8 %32, i8 4) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %33)
  %cmp2.i.i.1 = icmp ugt i8 %33, 2
  br i1 %cmp2.i.i.1, label %for.body.i.i.2, label %if.end.i.i.1.out.i_crit_edge

if.end.i.i.1.out.i_crit_edge:                     ; preds = %if.end.i.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.i

for.body.i.i.2:                                   ; preds = %if.end.i.i.1
  %arrayidx.i.i.2 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 2
  %34 = ptrtoint ptr %arrayidx.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i.2, align 4
  %tobool.not.i.i.2 = icmp eq ptr %35, null
  br i1 %tobool.not.i.i.2, label %for.body.i.i.2.if.end.i.i.2_crit_edge, label %land.lhs.true.i.i.2

for.body.i.i.2.if.end.i.i.2_crit_edge:            ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.2

land.lhs.true.i.i.2:                              ; preds = %for.body.i.i.2
  %status.i.i.2 = getelementptr inbounds %struct.wil6210_vif, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %status.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %status.i.i.2, align 4
  %38 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool4.not.i.i.2 = icmp eq i32 %38, 0
  br i1 %tobool4.not.i.i.2, label %land.lhs.true.i.i.2.if.end.i.i.2_crit_edge, label %if.then.i.i.2

land.lhs.true.i.i.2.if.end.i.i.2_crit_edge:       ; preds = %land.lhs.true.i.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.2

if.then.i.i.2:                                    ; preds = %land.lhs.true.i.i.2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @wil_update_net_queues_bh(ptr noundef %wil, ptr noundef nonnull %35, ptr noundef null, i1 noundef zeroext false) #5
  br label %if.end.i.i.2

if.end.i.i.2:                                     ; preds = %if.then.i.i.2, %land.lhs.true.i.i.2.if.end.i.i.2_crit_edge, %for.body.i.i.2.if.end.i.i.2_crit_edge
  %39 = ptrtoint ptr %max_vifs.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %max_vifs.i.i, align 4
  %41 = tail call i8 @llvm.umin.i8(i8 %40, i8 4) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %41)
  %cmp2.i.i.2 = icmp ugt i8 %41, 3
  br i1 %cmp2.i.i.2, label %for.body.i.i.3, label %if.end.i.i.2.out.i_crit_edge

if.end.i.i.2.out.i_crit_edge:                     ; preds = %if.end.i.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.i

for.body.i.i.3:                                   ; preds = %if.end.i.i.2
  %arrayidx.i.i.3 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 3
  %42 = ptrtoint ptr %arrayidx.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i.i.3, align 4
  %tobool.not.i.i.3 = icmp eq ptr %43, null
  br i1 %tobool.not.i.i.3, label %for.body.i.i.3.out.i_crit_edge, label %land.lhs.true.i.i.3

for.body.i.i.3.out.i_crit_edge:                   ; preds = %for.body.i.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.i

land.lhs.true.i.i.3:                              ; preds = %for.body.i.i.3
  %status.i.i.3 = getelementptr inbounds %struct.wil6210_vif, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %status.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %status.i.i.3, align 4
  %46 = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool4.not.i.i.3 = icmp eq i32 %46, 0
  br i1 %tobool4.not.i.i.3, label %land.lhs.true.i.i.3.out.i_crit_edge, label %if.then.i.i.3

land.lhs.true.i.i.3.out.i_crit_edge:              ; preds = %land.lhs.true.i.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.i

if.then.i.i.3:                                    ; preds = %land.lhs.true.i.i.3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @wil_update_net_queues_bh(ptr noundef %wil, ptr noundef nonnull %43, ptr noundef null, i1 noundef zeroext false) #5
  br label %out.i

out.i:                                            ; preds = %if.then.i.i.3, %land.lhs.true.i.i.3.out.i_crit_edge, %for.body.i.i.3.out.i_crit_edge, %if.end.i.i.2.out.i_crit_edge, %if.end.i.i.1.out.i_crit_edge, %if.end.i.i.out.i_crit_edge, %if.end13.i.out.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %vif_mutex.i.i) #5
  br label %do.body31

if.then15.i:                                      ; preds = %if.then11.i, %if.then7.i, %if.then.i.if.then15.i_crit_edge
  %rc.1.ph.i = phi i32 [ %call9.i, %if.then11.i ], [ %call5.i, %if.then7.i ], [ %call.i, %if.then.i.if.then15.i_crit_edge ]
  tail call void @_set_bit(i32 noundef 7, ptr noundef %status.i) #5
  br label %do.body31

if.else:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %call27 = tail call fastcc i32 @wil_resume_radio_off(ptr noundef %wil)
  br label %do.body31

do.body31:                                        ; preds = %if.else, %if.then15.i, %out.i, %if.then21
  %rc.0 = phi i32 [ %call19, %if.then21 ], [ %call27, %if.else ], [ %rc.1.ph.i, %if.then15.i ], [ 0, %out.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_resume.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_resume, %if.then43)) #5
          to label %do.end51 [label %if.then43], !srcloc !120

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #7
  %main_ndev44 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %47 = ptrtoint ptr %main_ndev44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %main_ndev44, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_resume.__UNIQUE_ID_ddebug373, ptr noundef %48, ptr noundef nonnull @.str.22, ptr noundef nonnull %cond11, i32 noundef %rc.0) #5
  br label %do.end51

do.end51:                                         ; preds = %if.then43, %do.body31
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.22, ptr noundef nonnull %cond11, i32 noundef %rc.0) #5
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wil_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wil_resume_radio_off(ptr noundef %wil) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_resume_radio_off.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_resume_radio_off, %if.then)) #5
          to label %do.end6 [label %if.then], !srcloc !120

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_resume_radio_off.__UNIQUE_ID_ddebug368, ptr noundef %1, ptr noundef nonnull @.str.49) #5
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.49) #5
  tail call void @wil_enable_irq(ptr noundef %wil) #5
  %vif_mutex = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %vif_mutex, i32 noundef 0) #5
  %call9 = tail call zeroext i1 @wil_has_active_ifaces(ptr noundef %wil, i1 noundef zeroext true, i1 noundef zeroext false) #5
  tail call void @mutex_unlock(ptr noundef %vif_mutex) #5
  br i1 %call9, label %if.then13, label %if.else

if.then13:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #7
  %call14 = tail call i32 @wil_up(ptr noundef %wil) #5
  br label %if.end15

if.else:                                          ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #7
  %status = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %status) #5
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then13
  %rc.0 = phi i32 [ %call14, %if.then13 ], [ 0, %if.else ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_pm_runtime_allow(ptr nocapture noundef readonly %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %wiphy = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 2
  %0 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wiphy, align 8
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 56, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !127
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #5
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #5, !srcloc !128
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

entry.pm_runtime_put_noidle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !129
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %entry.pm_runtime_put_noidle.exit_crit_edge
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %3, i32 noundef 1000) #5
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %3, i1 noundef zeroext true) #5
  tail call void @pm_runtime_allow(ptr noundef %3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_allow(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_pm_runtime_forbid(ptr nocapture noundef readonly %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %wiphy = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 2
  %0 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wiphy, align 8
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 56, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  tail call void @pm_runtime_forbid(ptr noundef %3) #5
  %usage_count.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #5
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #5, !srcloc !130
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wil_pm_runtime_get(ptr noundef %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %wiphy = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 2
  %0 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wiphy, align 8
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 56, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.wil_pm_runtime_get, i32 noundef %call.i) #5
  %usage_count.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !127
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #5
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #5, !srcloc !128
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !129
  br label %cleanup

cleanup:                                          ; preds = %do.end11.i.i.i.i, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.then.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_pm_runtime_put(ptr nocapture noundef readonly %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %wiphy = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 2
  %0 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wiphy, align 8
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 56, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #5
  %last_busy.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 22
  %4 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %call.i3 = tail call i32 @__pm_runtime_suspend(ptr noundef %3, i32 noundef 13) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_down(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_disable_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_enable_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wil_is_tx_idle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wil_is_wmi_idle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_dbg_ratelimited(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_mask_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wil_s(ptr nocapture noundef readonly %wil) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %csr.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %0 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2748
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %3 = or i32 %2, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !124
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %5, i32 2748
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 %3) #5, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !126
  tail call void @arm_heavy_mb() #5
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wil_c(ptr nocapture noundef readonly %wil) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %csr.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %0 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2748
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %3 = and i32 %2, -524289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !124
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %5, i32 2748
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 %3) #5, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !126
  tail call void @arm_heavy_mb() #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_unmask_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil6210_bus_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wil_pm_wake_connected_net_queues(ptr noundef %wil) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vif_mutex = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %vif_mutex, i32 noundef 0) #5
  %max_vifs = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 22
  %0 = ptrtoint ptr %max_vifs to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %max_vifs, align 4
  %2 = tail call i8 @llvm.umin.i8(i8 %1, i8 4)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp217.not = icmp eq i8 %2, 0
  br i1 %cmp217.not, label %entry.for.end_crit_edge, label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %entry
  %arrayidx = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 0
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %status = getelementptr inbounds %struct.wil6210_vif, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %status, align 4
  %7 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @wil_update_net_queues_bh(ptr noundef %wil, ptr noundef nonnull %4, ptr noundef null, i1 noundef zeroext false) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %8 = ptrtoint ptr %max_vifs to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %max_vifs, align 4
  %10 = tail call i8 @llvm.umin.i8(i8 %9, i8 4)
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp2 = icmp ugt i8 %10, 1
  br i1 %cmp2, label %for.body.1, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.1:                                       ; preds = %if.end
  %arrayidx.1 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %12, null
  br i1 %tobool.not.1, label %for.body.1.if.end.1_crit_edge, label %land.lhs.true.1

for.body.1.if.end.1_crit_edge:                    ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.1

land.lhs.true.1:                                  ; preds = %for.body.1
  %status.1 = getelementptr inbounds %struct.wil6210_vif, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %status.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %status.1, align 4
  %15 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool4.not.1 = icmp eq i32 %15, 0
  br i1 %tobool4.not.1, label %land.lhs.true.1.if.end.1_crit_edge, label %if.then.1

land.lhs.true.1.if.end.1_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.1

if.then.1:                                        ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @wil_update_net_queues_bh(ptr noundef %wil, ptr noundef nonnull %12, ptr noundef null, i1 noundef zeroext false) #5
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %land.lhs.true.1.if.end.1_crit_edge, %for.body.1.if.end.1_crit_edge
  %16 = ptrtoint ptr %max_vifs to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %max_vifs, align 4
  %18 = tail call i8 @llvm.umin.i8(i8 %17, i8 4)
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp2.1 = icmp ugt i8 %18, 2
  br i1 %cmp2.1, label %for.body.2, label %if.end.1.for.end_crit_edge

if.end.1.for.end_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.2:                                       ; preds = %if.end.1
  %arrayidx.2 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 2
  %19 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %20, null
  br i1 %tobool.not.2, label %for.body.2.if.end.2_crit_edge, label %land.lhs.true.2

for.body.2.if.end.2_crit_edge:                    ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.2

land.lhs.true.2:                                  ; preds = %for.body.2
  %status.2 = getelementptr inbounds %struct.wil6210_vif, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %status.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %status.2, align 4
  %23 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool4.not.2 = icmp eq i32 %23, 0
  br i1 %tobool4.not.2, label %land.lhs.true.2.if.end.2_crit_edge, label %if.then.2

land.lhs.true.2.if.end.2_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.2

if.then.2:                                        ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @wil_update_net_queues_bh(ptr noundef %wil, ptr noundef nonnull %20, ptr noundef null, i1 noundef zeroext false) #5
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %land.lhs.true.2.if.end.2_crit_edge, %for.body.2.if.end.2_crit_edge
  %24 = ptrtoint ptr %max_vifs to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %max_vifs, align 4
  %26 = tail call i8 @llvm.umin.i8(i8 %25, i8 4)
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %26)
  %cmp2.2 = icmp ugt i8 %26, 3
  br i1 %cmp2.2, label %for.body.3, label %if.end.2.for.end_crit_edge

if.end.2.for.end_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.3:                                       ; preds = %if.end.2
  %arrayidx.3 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 3
  %27 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %28, null
  br i1 %tobool.not.3, label %for.body.3.for.end_crit_edge, label %land.lhs.true.3

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

land.lhs.true.3:                                  ; preds = %for.body.3
  %status.3 = getelementptr inbounds %struct.wil6210_vif, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %status.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %status.3, align 4
  %31 = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool4.not.3 = icmp eq i32 %31, 0
  br i1 %tobool4.not.3, label %land.lhs.true.3.for.end_crit_edge, label %if.then.3

land.lhs.true.3.for.end_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.then.3:                                        ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @wil_update_net_queues_bh(ptr noundef %wil, ptr noundef nonnull %28, ptr noundef null, i1 noundef zeroext false) #5
  br label %for.end

for.end:                                          ; preds = %if.then.3, %land.lhs.true.3.for.end_crit_edge, %for.body.3.for.end_crit_edge, %if.end.2.for.end_crit_edge, %if.end.1.for.end_crit_edge, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %vif_mutex) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_update_net_queues_bh(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !36, !37, !39, !40, !41, !43, !45, !46, !48, !49, !51, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !66, !68, !70, !72, !73, !75, !76, !78, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !96, !98, !100, !102, !103, !105, !107, !109, !110}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/wil6210/pm.c", i32 80, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @wil_can_suspend.__UNIQUE_ID_ddebug352, !1, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/wil6210/pm.c", i32 83, i32 3}
!10 = !{ptr @wil_can_suspend.__UNIQUE_ID_ddebug353, !9, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/wil6210/pm.c", i32 99, i32 3}
!15 = !{ptr @wil_can_suspend.__UNIQUE_ID_ddebug354, !14, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/wil6210/pm.c", i32 103, i32 3}
!18 = !{ptr @wil_can_suspend.__UNIQUE_ID_ddebug355, !17, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ath/wil6210/pm.c", i32 108, i32 3}
!21 = !{ptr @wil_can_suspend.__UNIQUE_ID_ddebug356, !20, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/wil6210/pm.c", i32 129, i32 2}
!24 = !{ptr @wil_can_suspend.__UNIQUE_ID_ddebug359, !23, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!25 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/wil6210/pm.c", i32 381, i32 2}
!29 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @wil_suspend.__UNIQUE_ID_ddebug369, !28, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/ath/wil6210/pm.c", i32 384, i32 3}
!33 = !{ptr @wil_suspend.__UNIQUE_ID_ddebug370, !32, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/wil6210/pm.c", i32 393, i32 2}
!36 = !{ptr @wil_suspend.__UNIQUE_ID_ddebug371, !35, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/ath/wil6210/pm.c", i32 403, i32 2}
!39 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @wil_resume.__UNIQUE_ID_ddebug372, !38, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/ath/wil6210/pm.c", i32 409, i32 4}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/ath/wil6210/pm.c", i32 420, i32 2}
!45 = !{ptr @wil_resume.__UNIQUE_ID_ddebug373, !44, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/wil6210/pm.c", i32 450, i32 3}
!48 = !{ptr @__func__.wil_pm_runtime_get, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/ath/wil6210/pm.c", i32 49, i32 3}
!51 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @wil_can_suspend_vif.__UNIQUE_ID_ddebug348, !50, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/ath/wil6210/pm.c", i32 56, i32 4}
!55 = !{ptr @wil_can_suspend_vif.__UNIQUE_ID_ddebug349, !54, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/wil6210/pm.c", i32 60, i32 4}
!58 = !{ptr @wil_can_suspend_vif.__UNIQUE_ID_ddebug350, !57, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/ath/wil6210/pm.c", i32 66, i32 3}
!61 = !{ptr @wil_can_suspend_vif.__UNIQUE_ID_ddebug351, !60, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/wil6210/pm.c", i32 304, i32 2}
!64 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @wil_suspend_radio_off.__UNIQUE_ID_ddebug365, !63, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/wil6210/pm.c", i32 308, i32 3}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ath/wil6210/pm.c", i32 326, i32 4}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ath/wil6210/pm.c", i32 333, i32 2}
!72 = !{ptr @wil_suspend_radio_off.__UNIQUE_ID_ddebug366, !71, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/ath/wil6210/pm.c", i32 349, i32 2}
!75 = !{ptr @wil_suspend_radio_off.__UNIQUE_ID_ddebug367, !74, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ath/wil6210/pm.c", i32 184, i32 2}
!78 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @wil_suspend_keep_radio_on.__UNIQUE_ID_ddebug360, !77, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ath/wil6210/pm.c", i32 202, i32 3}
!82 = !{ptr @wil_suspend_keep_radio_on.__UNIQUE_ID_ddebug361, !81, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/ath/wil6210/pm.c", i32 208, i32 3}
!85 = !{ptr @wil_suspend_keep_radio_on.__UNIQUE_ID_ddebug362, !84, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ath/wil6210/pm.c", i32 214, i32 3}
!88 = !{ptr @wil_suspend_keep_radio_on.__UNIQUE_ID_ddebug363, !87, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/ath/wil6210/pm.c", i32 222, i32 3}
!91 = !{ptr @wil_suspend_keep_radio_on.__UNIQUE_ID_ddebug364, !90, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ath/wil6210/pm.c", i32 234, i32 5}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/ath/wil6210/pm.c", i32 239, i32 29}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/ath/wil6210/pm.c", i32 251, i32 3}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/ath/wil6210/pm.c", i32 264, i32 4}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/ath/wil6210/pm.c", i32 155, i32 3}
!102 = !{ptr @__func__.wil_resume_keep_radio_on, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/ath/wil6210/pm.c", i32 160, i32 4}
!105 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/ath/wil6210/pm.c", i32 165, i32 4}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/ath/wil6210/pm.c", i32 359, i32 2}
!109 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @wil_resume_radio_off.__UNIQUE_ID_ddebug368, !108, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{i64 2148908489, i64 2148908494, i64 2148908507, i64 2148908551, i64 2148908585, i64 2148908606}
!121 = !{i8 0, i8 2}
!122 = !{i64 6102316}
!123 = !{i64 2157223352}
!124 = !{i64 2157223799}
!125 = !{i64 6101898}
!126 = !{i64 2157224138}
!127 = !{i64 2148426093}
!128 = !{i64 910916, i64 910941, i64 910963, i64 910979, i64 910991, i64 911011, i64 911035, i64 911051, i64 911063}
!129 = !{i64 2148426281}
!130 = !{i64 2148426674, i64 2148426700, i64 2148426729, i64 2148426763, i64 2148426794, i64 2148426817}
