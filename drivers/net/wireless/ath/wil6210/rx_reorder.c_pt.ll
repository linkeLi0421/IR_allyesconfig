; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/wil6210/rx_reorder.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/wil6210/rx_reorder.c"
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
%struct.wil_tid_ampdu_rx = type { ptr, i32, i16, i16, i16, i16, i16, i64, i64, i64, i8, i16, i64 }

@wil_rx_reorder.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wil6210\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wil_rx_reorder\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/ath/wil6210/rx_reorder.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"DBG[TXRX]MID %d CID %d TID %d Seq 0x%03x mcast %01x\0A\00", [43 x i8] zeroinitializer }, align 32
@wil_rx_reorder.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DBG[TXRX]invalid VIF, mid %d\0A\00", [34 x i8] zeroinitializer }, align 32
@wil_rx_reorder.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"DBG[TXRX]Rx drop: dup mcast seq 0x%03x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"%s: Error: frame with early sequence 0x%03x, should be 0x%03x. Waiting...\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"%s: Error: 1-st frame with wrong sequence 0x%03x, should be 0x%03x. Fixing...\0A\00", [49 x i8] zeroinitializer }, align 32
@wil_rx_reorder.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 0, i8 41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"DBG[TXRX]Rx drop: old seq 0x%03x head 0x%03x\0A\00", [50 x i8] zeroinitializer }, align 32
@wil_rx_reorder.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DBG[TXRX]Rx drop: dup seq 0x%03x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: BAR for non-existing CID %d TID %d\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.wil_rx_bar = private unnamed_addr constant [11 x i8] c"wil_rx_bar\00", align 1
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: BAR Seq 0x%03x preceding head 0x%03x\0A\00", [54 x i8] zeroinitializer }, align 32
@wil_rx_bar.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.wil_rx_bar, ptr @.str.2, ptr @.str.12, i8 0, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"DBG[TXRX]BAR: CID %d MID %d TID %d Seq 0x%03x head 0x%03x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: BACK: invalid CID %d\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.wil_addba_rx_request = private unnamed_addr constant [21 x i8] c"wil_addba_rx_request\00", align 1
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: BACK: CID %d not connected\0A\00", [32 x i8] zeroinitializer }, align 32
@wil_addba_rx_request.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.wil_addba_rx_request, ptr @.str.2, ptr @.str.15, i8 0, i8 85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"DBG[ WMI]ADDBA request for CID %d %pM TID %d size %d timeout %d AMSDU%s policy %d token %d SSN 0x%03x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"+\00", [30 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"-\00", [30 x i8] zeroinitializer }, align 32
@wil_addba_rx_request.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.wil_addba_rx_request, ptr @.str.2, ptr @.str.18, i8 0, i8 86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DBG[MISC]Suggest BACK wsize %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: do not apply ba, rc(%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@wil_addba_tx_request.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wil_addba_tx_request\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"DBG[MISC]ADDBA for vring[%d] already in progress\0A\00", [46 x i8] zeroinitializer }, align 32
@wil_addba_tx_request.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.22, i8 0, i8 97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"DBG[MISC]ADDBA for vring[%d] already done for wsize %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: wmi_addba failed, rc (%d)\00", [34 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mtu_max = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 98, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 103, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 120, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 145, i32 5 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 152, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 164, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 187, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 225, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 229, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 233, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 327, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 334, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 339, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 346, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 357, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 383, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 388, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private constant [49 x i8] c"../drivers/net/wireless/ath/wil6210/rx_reorder.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 396, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_rx_reorder(ptr noundef %wil, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %tid = alloca i32, align 4
  %cid = alloca i32, align 4
  %mid = alloca i32, align 4
  %mcast = alloca i32, align 4
  %retry = alloca i32, align 4
  %seq = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tid) #6
  %0 = ptrtoint ptr %tid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tid, align 4, !annotation !63
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cid) #6
  %1 = ptrtoint ptr %cid to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %cid, align 4, !annotation !63
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mid) #6
  %2 = ptrtoint ptr %mid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mid, align 4, !annotation !63
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mcast) #6
  %3 = ptrtoint ptr %mcast to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %mcast, align 4, !annotation !63
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retry) #6
  %4 = ptrtoint ptr %retry to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %retry, align 4, !annotation !63
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %seq) #6
  %5 = ptrtoint ptr %seq to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %seq, align 2, !annotation !63
  %get_reorder_params = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 14
  %6 = ptrtoint ptr %get_reorder_params to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_reorder_params, align 8
  call void %7(ptr noundef %wil, ptr noundef %skb, ptr noundef nonnull %tid, ptr noundef nonnull %cid, ptr noundef nonnull %mid, ptr noundef nonnull %seq, ptr noundef nonnull %mcast, ptr noundef nonnull %retry) #6
  %8 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cid, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_rx_reorder.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_rx_reorder, %if.then)) #6
          to label %do.end7 [label %if.then], !srcloc !64

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %10 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %main_ndev, align 4
  %12 = ptrtoint ptr %mid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mid, align 4
  %14 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cid, align 4
  %16 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tid, align 4
  %18 = ptrtoint ptr %seq to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %seq, align 2
  %conv = zext i16 %19 to i32
  %20 = ptrtoint ptr %mcast to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mcast, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_rx_reorder.__UNIQUE_ID_ddebug343, ptr noundef %11, ptr noundef nonnull @.str.3, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %conv, i32 noundef %21) #6
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  %22 = ptrtoint ptr %mid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mid, align 4
  %24 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cid, align 4
  %26 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tid, align 4
  %28 = ptrtoint ptr %seq to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %seq, align 2
  %conv8 = zext i16 %29 to i32
  %30 = ptrtoint ptr %mcast to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mcast, align 4
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.3, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %conv8, i32 noundef %31) #6
  %32 = ptrtoint ptr %mid to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mid, align 4
  %arrayidx11 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 %33
  %34 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx11, align 4
  %tobool12.not = icmp eq ptr %35, null
  br i1 %tobool12.not, label %do.body24, label %if.end45, !prof !65

do.body24:                                        ; preds = %do.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_rx_reorder.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_rx_reorder, %if.then36)) #6
          to label %do.end42 [label %if.then36], !srcloc !64

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  %main_ndev37 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %36 = ptrtoint ptr %main_ndev37 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %main_ndev37, align 4
  %38 = ptrtoint ptr %mid to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mid, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_rx_reorder.__UNIQUE_ID_ddebug344, ptr noundef %37, ptr noundef nonnull @.str.4, i32 noundef %39) #6
  br label %do.end42

do.end42:                                         ; preds = %if.then36, %do.body24
  %40 = ptrtoint ptr %mid to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mid, align 4
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.4, i32 noundef %41) #6
  call void @consume_skb(ptr noundef %skb) #6
  br label %cleanup

if.end45:                                         ; preds = %do.end7
  %ndev46 = getelementptr inbounds %struct.wil6210_vif, ptr %35, i32 0, i32 1
  %42 = ptrtoint ptr %ndev46 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ndev46, align 4
  %tid_rx_lock = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 63, i32 %9, i32 7
  call void @_raw_spin_lock(ptr noundef %tid_rx_lock) #6
  %44 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tid, align 4
  %arrayidx47 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 63, i32 %9, i32 6, i32 %45
  %46 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx47, align 4
  %tobool48.not = icmp eq ptr %47, null
  br i1 %tobool48.not, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  call void @wil_netif_rx_any(ptr noundef %skb, ptr noundef %43) #6
  br label %out

if.end50:                                         ; preds = %if.end45
  %48 = ptrtoint ptr %mcast to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mcast, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool51.not = icmp eq i32 %49, 0
  br i1 %tobool51.not, label %if.end91, label %if.then58, !prof !66

if.then58:                                        ; preds = %if.end50
  %50 = ptrtoint ptr %retry to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %retry, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool59.not = icmp eq i32 %51, 0
  br i1 %tobool59.not, label %if.then58.if.end89_crit_edge, label %land.lhs.true

if.then58.if.end89_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

land.lhs.true:                                    ; preds = %if.then58
  %52 = ptrtoint ptr %seq to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %seq, align 2
  %mcast_last_seq = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %47, i32 0, i32 11
  %54 = ptrtoint ptr %mcast_last_seq to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %mcast_last_seq, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %53, i16 %55)
  %cmp = icmp eq i16 %53, %55
  br i1 %cmp, label %if.then63, label %land.lhs.true.if.end89_crit_edge

land.lhs.true.if.end89_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

if.then63:                                        ; preds = %land.lhs.true
  %drop_dup_mcast = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %47, i32 0, i32 12
  %56 = ptrtoint ptr %drop_dup_mcast to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %drop_dup_mcast, align 8
  %inc = add i64 %57, 1
  store i64 %inc, ptr %drop_dup_mcast, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_rx_reorder.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_rx_reorder, %if.then78)) #6
          to label %do.end85 [label %if.then78], !srcloc !64

if.then78:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #8
  %main_ndev79 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %58 = ptrtoint ptr %main_ndev79 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %main_ndev79, align 4
  %60 = ptrtoint ptr %seq to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %seq, align 2
  %conv80 = zext i16 %61 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_rx_reorder.__UNIQUE_ID_ddebug345, ptr noundef %59, ptr noundef nonnull @.str.5, i32 noundef %conv80) #6
  br label %do.end85

do.end85:                                         ; preds = %if.then78, %if.then63
  %62 = ptrtoint ptr %seq to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %seq, align 2
  %conv86 = zext i16 %63 to i32
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.5, i32 noundef %conv86) #6
  call void @consume_skb(ptr noundef %skb) #6
  br label %out

if.end89:                                         ; preds = %land.lhs.true.if.end89_crit_edge, %if.then58.if.end89_crit_edge
  %64 = ptrtoint ptr %seq to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %seq, align 2
  %mcast_last_seq90 = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %47, i32 0, i32 11
  %66 = ptrtoint ptr %mcast_last_seq90 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %mcast_last_seq90, align 2
  call void @wil_netif_rx_any(ptr noundef %skb, ptr noundef %43) #6
  br label %out

if.end91:                                         ; preds = %if.end50
  %total = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %47, i32 0, i32 7
  %67 = ptrtoint ptr %total to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %total, align 8
  %inc92 = add i64 %68, 1
  store i64 %inc92, ptr %total, align 8
  %head_seq_num = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %47, i32 0, i32 2
  %first_time = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %47, i32 0, i32 10
  %69 = ptrtoint ptr %first_time to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %first_time, align 8, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool93.not = icmp eq i8 %70, 0
  br i1 %tobool93.not, label %if.end91.if.end116_crit_edge, label %if.then94

if.end91.if.end116_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end116

if.then94:                                        ; preds = %if.end91
  %71 = ptrtoint ptr %first_time to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %first_time, align 8
  %72 = ptrtoint ptr %seq to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %seq, align 2
  %74 = ptrtoint ptr %head_seq_num to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %head_seq_num, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %73, i16 %75)
  %cmp99.not = icmp eq i16 %73, %75
  br i1 %cmp99.not, label %if.then94.if.end116_crit_edge, label %if.then101

if.then94.if.end116_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end116

if.then101:                                       ; preds = %if.then94
  %conv.i = zext i16 %73 to i32
  %conv1.i = zext i16 %75 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %and.i = and i32 %sub.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %and.i)
  %cmp.i = icmp ult i32 %and.i, 2049
  br i1 %cmp.i, label %if.end110, label %if.then105

if.then105:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef %conv.i, i32 noundef %conv1.i) #6
  %76 = ptrtoint ptr %first_time to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %first_time, align 8
  call void @wil_netif_rx_any(ptr noundef %skb, ptr noundef %43) #6
  br label %out

if.end110:                                        ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef %conv.i, i32 noundef %conv1.i) #6
  %77 = ptrtoint ptr %seq to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %seq, align 2
  %79 = ptrtoint ptr %head_seq_num to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %head_seq_num, align 8
  %ssn = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %47, i32 0, i32 4
  %80 = ptrtoint ptr %ssn to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %78, ptr %ssn, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.end110, %if.then94.if.end116_crit_edge, %if.end91.if.end116_crit_edge
  %81 = ptrtoint ptr %seq to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %seq, align 2
  %83 = ptrtoint ptr %head_seq_num to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %head_seq_num, align 8
  %conv.i302 = zext i16 %82 to i32
  %conv1.i303 = zext i16 %84 to i32
  %sub.i304 = sub nsw i32 %conv.i302, %conv1.i303
  %and.i305 = and i32 %sub.i304, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %and.i305)
  %cmp.i306 = icmp ult i32 %and.i305, 2049
  br i1 %cmp.i306, label %if.end151, label %if.then120

if.then120:                                       ; preds = %if.end116
  %ssn_last_drop = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %47, i32 0, i32 6
  %85 = ptrtoint ptr %ssn_last_drop to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %82, ptr %ssn_last_drop, align 8
  %drop_old = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %47, i32 0, i32 9
  %86 = ptrtoint ptr %drop_old to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %drop_old, align 8
  %inc121 = add i64 %87, 1
  store i64 %inc121, ptr %drop_old, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_rx_reorder.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_rx_reorder, %if.then136)) #6
          to label %do.end145 [label %if.then136], !srcloc !64

if.then136:                                       ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #8
  %main_ndev137 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %88 = ptrtoint ptr %main_ndev137 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %main_ndev137, align 4
  %90 = ptrtoint ptr %seq to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %seq, align 2
  %conv138 = zext i16 %91 to i32
  %92 = ptrtoint ptr %head_seq_num to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %head_seq_num, align 8
  %conv140 = zext i16 %93 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_rx_reorder.__UNIQUE_ID_ddebug346, ptr noundef %89, ptr noundef nonnull @.str.8, i32 noundef %conv138, i32 noundef %conv140) #6
  br label %do.end145

do.end145:                                        ; preds = %if.then136, %if.then120
  %94 = ptrtoint ptr %seq to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %seq, align 2
  %conv146 = zext i16 %95 to i32
  %96 = ptrtoint ptr %head_seq_num to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %head_seq_num, align 8
  %conv148 = zext i16 %97 to i32
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.8, i32 noundef %conv146, i32 noundef %conv148) #6
  call void @consume_skb(ptr noundef %skb) #6
  br label %out

if.end151:                                        ; preds = %if.end116
  %buf_size = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %47, i32 0, i32 5
  %98 = ptrtoint ptr %buf_size to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %buf_size, align 2
  %add = add i16 %99, %84
  %conv1.i309 = zext i16 %add to i32
  %sub.i310 = sub nsw i32 %conv.i302, %conv1.i309
  %and.i311 = and i32 %sub.i310, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %and.i311)
  %cmp.i312 = icmp ult i32 %and.i311, 2049
  br i1 %cmp.i312, label %if.then158, label %if.end151.if.end162_crit_edge

if.end151.if.end162_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end162

if.then158:                                       ; preds = %if.end151
  %sub.i314 = add i16 %82, 1
  %100 = sub i16 %sub.i314, %99
  %101 = and i16 %100, 4095
  %stored_mpdu_num.i = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %47, i32 0, i32 3
  %conv1.i.i = zext i16 %101 to i32
  %sub.i12.i = sub nsw i32 %conv1.i303, %conv1.i.i
  %and.i13.i = and i32 %sub.i12.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %and.i13.i)
  %cmp.i14.i = icmp ult i32 %and.i13.i, 2049
  br i1 %cmp.i14.i, label %if.then158.wil_release_reorder_frames.exit_crit_edge, label %land.rhs.lr.ph.i

if.then158.wil_release_reorder_frames.exit_crit_edge: ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #8
  br label %wil_release_reorder_frames.exit

land.rhs.lr.ph.i:                                 ; preds = %if.then158
  %ssn.i.i = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %47, i32 0, i32 4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %wil_release_reorder_frame.exit.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %102 = phi i16 [ %84, %land.rhs.lr.ph.i ], [ %119, %wil_release_reorder_frame.exit.i.land.rhs.i_crit_edge ]
  %103 = ptrtoint ptr %stored_mpdu_num.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %stored_mpdu_num.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %tobool1.not.i = icmp eq i16 %104, 0
  br i1 %tobool1.not.i, label %land.rhs.i.wil_release_reorder_frames.exit_crit_edge, label %while.body.i

land.rhs.i.wil_release_reorder_frames.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wil_release_reorder_frames.exit

while.body.i:                                     ; preds = %land.rhs.i
  %105 = ptrtoint ptr %ssn.i.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %ssn.i.i, align 4
  %sub.i.i.i = sub i16 %102, %106
  %and.i.i.i = and i16 %sub.i.i.i, 4095
  %107 = ptrtoint ptr %buf_size to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %buf_size, align 2
  %109 = urem i16 %and.i.i.i, %108
  %rem.i.i = zext i16 %109 to i32
  %110 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %47, align 8
  %arrayidx.i.i = getelementptr ptr, ptr %111, i32 %rem.i.i
  %112 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %113, null
  br i1 %tobool.not.i.i, label %while.body.i.wil_release_reorder_frame.exit.i_crit_edge, label %if.end.i.i

while.body.i.wil_release_reorder_frame.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wil_release_reorder_frame.exit.i

if.end.i.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %dec.i.i = add i16 %104, -1
  %114 = ptrtoint ptr %stored_mpdu_num.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %dec.i.i, ptr %stored_mpdu_num.i, align 2
  %115 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %arrayidx.i.i, align 4
  call void @wil_netif_rx_any(ptr noundef nonnull %113, ptr noundef %43) #6
  br label %wil_release_reorder_frame.exit.i

wil_release_reorder_frame.exit.i:                 ; preds = %if.end.i.i, %while.body.i.wil_release_reorder_frame.exit.i_crit_edge
  %116 = ptrtoint ptr %head_seq_num to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %head_seq_num, align 8
  %118 = add i16 %117, 1
  %119 = and i16 %118, 4095
  store i16 %119, ptr %head_seq_num, align 8
  %conv.i.i = zext i16 %118 to i32
  %sub.i.i = sub nsw i32 %conv.i.i, %conv1.i.i
  %and.i.i = and i32 %sub.i.i, 4095
  %cmp.i.i = icmp ult i32 %and.i.i, 2049
  br i1 %cmp.i.i, label %wil_release_reorder_frame.exit.i.wil_release_reorder_frames.exit_crit_edge, label %wil_release_reorder_frame.exit.i.land.rhs.i_crit_edge

wil_release_reorder_frame.exit.i.land.rhs.i_crit_edge: ; preds = %wil_release_reorder_frame.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

wil_release_reorder_frame.exit.i.wil_release_reorder_frames.exit_crit_edge: ; preds = %wil_release_reorder_frame.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wil_release_reorder_frames.exit

wil_release_reorder_frames.exit:                  ; preds = %wil_release_reorder_frame.exit.i.wil_release_reorder_frames.exit_crit_edge, %land.rhs.i.wil_release_reorder_frames.exit_crit_edge, %if.then158.wil_release_reorder_frames.exit_crit_edge
  %120 = ptrtoint ptr %head_seq_num to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %101, ptr %head_seq_num, align 8
  br label %if.end162

if.end162:                                        ; preds = %wil_release_reorder_frames.exit, %if.end151.if.end162_crit_edge
  %121 = ptrtoint ptr %seq to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %seq, align 2
  %ssn.i = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %47, i32 0, i32 4
  %123 = ptrtoint ptr %ssn.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %ssn.i, align 4
  %sub.i.i316 = sub i16 %122, %124
  %and.i.i317 = and i16 %sub.i.i316, 4095
  %125 = ptrtoint ptr %buf_size to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %buf_size, align 2
  %127 = urem i16 %and.i.i317, %126
  %rem.i = zext i16 %127 to i32
  %128 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %47, align 8
  %arrayidx164 = getelementptr ptr, ptr %129, i32 %rem.i
  %130 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx164, align 4
  %tobool165.not = icmp eq ptr %131, null
  br i1 %tobool165.not, label %if.end193, label %if.then166

if.then166:                                       ; preds = %if.end162
  %drop_dup = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %47, i32 0, i32 8
  %132 = ptrtoint ptr %drop_dup to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %drop_dup, align 8
  %inc167 = add i64 %133, 1
  store i64 %inc167, ptr %drop_dup, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_rx_reorder.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_rx_reorder, %if.then182)) #6
          to label %do.end189 [label %if.then182], !srcloc !64

if.then182:                                       ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #8
  %main_ndev183 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %134 = ptrtoint ptr %main_ndev183 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %main_ndev183, align 4
  %136 = ptrtoint ptr %seq to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %seq, align 2
  %conv184 = zext i16 %137 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_rx_reorder.__UNIQUE_ID_ddebug347, ptr noundef %135, ptr noundef nonnull @.str.9, i32 noundef %conv184) #6
  br label %do.end189

do.end189:                                        ; preds = %if.then182, %if.then166
  %138 = ptrtoint ptr %seq to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %seq, align 2
  %conv190 = zext i16 %139 to i32
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.9, i32 noundef %conv190) #6
  call void @consume_skb(ptr noundef %skb) #6
  br label %out

if.end193:                                        ; preds = %if.end162
  %140 = ptrtoint ptr %head_seq_num to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %head_seq_num, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %122, i16 %141)
  %cmp197 = icmp eq i16 %122, %141
  br i1 %cmp197, label %land.lhs.true199, label %if.end193.if.end207_crit_edge

if.end193.if.end207_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end207

land.lhs.true199:                                 ; preds = %if.end193
  %stored_mpdu_num = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %47, i32 0, i32 3
  %142 = ptrtoint ptr %stored_mpdu_num to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %stored_mpdu_num, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %143)
  %cmp201 = icmp eq i16 %143, 0
  br i1 %cmp201, label %if.then203, label %land.lhs.true199.if.end207_crit_edge

land.lhs.true199.if.end207_crit_edge:             ; preds = %land.lhs.true199
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end207

if.then203:                                       ; preds = %land.lhs.true199
  call void @__sanitizer_cov_trace_pc() #8
  %144 = add i16 %122, 1
  %145 = and i16 %144, 4095
  %146 = ptrtoint ptr %head_seq_num to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %145, ptr %head_seq_num, align 8
  call void @wil_netif_rx_any(ptr noundef %skb, ptr noundef %43) #6
  br label %out

if.end207:                                        ; preds = %land.lhs.true199.if.end207_crit_edge, %if.end193.if.end207_crit_edge
  %147 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %skb, ptr %arrayidx164, align 4
  %stored_mpdu_num210 = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %47, i32 0, i32 3
  %148 = ptrtoint ptr %stored_mpdu_num210 to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %stored_mpdu_num210, align 2
  %inc211 = add i16 %149, 1
  store i16 %inc211, ptr %stored_mpdu_num210, align 2
  %150 = ptrtoint ptr %head_seq_num to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %head_seq_num, align 8
  %152 = ptrtoint ptr %ssn.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %ssn.i, align 4
  %sub.i.i.i320 = sub i16 %151, %153
  %and.i.i.i321 = and i16 %sub.i.i.i320, 4095
  %154 = ptrtoint ptr %buf_size to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %buf_size, align 2
  %156 = urem i16 %and.i.i.i321, %155
  %index.014.i = zext i16 %156 to i32
  %157 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %47, align 8
  %arrayidx15.i = getelementptr ptr, ptr %158, i32 %index.014.i
  %159 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %arrayidx15.i, align 4
  %tobool.not16.i = icmp eq ptr %160, null
  br i1 %tobool.not16.i, label %if.end207.out_crit_edge, label %if.end207.wil_release_reorder_frame.exit.i324_crit_edge

if.end207.wil_release_reorder_frame.exit.i324_crit_edge: ; preds = %if.end207
  br label %wil_release_reorder_frame.exit.i324

if.end207.out_crit_edge:                          ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

wil_release_reorder_frame.exit.i324:              ; preds = %wil_release_reorder_frame.exit.i324.wil_release_reorder_frame.exit.i324_crit_edge, %if.end207.wil_release_reorder_frame.exit.i324_crit_edge
  %161 = phi ptr [ %177, %wil_release_reorder_frame.exit.i324.wil_release_reorder_frame.exit.i324_crit_edge ], [ %160, %if.end207.wil_release_reorder_frame.exit.i324_crit_edge ]
  %arrayidx17.i = phi ptr [ %arrayidx.i, %wil_release_reorder_frame.exit.i324.wil_release_reorder_frame.exit.i324_crit_edge ], [ %arrayidx15.i, %if.end207.wil_release_reorder_frame.exit.i324_crit_edge ]
  %162 = ptrtoint ptr %stored_mpdu_num210 to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %stored_mpdu_num210, align 2
  %dec.i.i323 = add i16 %163, -1
  store i16 %dec.i.i323, ptr %stored_mpdu_num210, align 2
  %164 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr null, ptr %arrayidx17.i, align 4
  call void @wil_netif_rx_any(ptr noundef nonnull %161, ptr noundef %43) #6
  %165 = ptrtoint ptr %head_seq_num to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %head_seq_num, align 8
  %167 = add i16 %166, 1
  %168 = and i16 %167, 4095
  store i16 %168, ptr %head_seq_num, align 8
  %169 = ptrtoint ptr %ssn.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %ssn.i, align 4
  %sub.i.i10.i = sub i16 %167, %170
  %and.i.i11.i = and i16 %sub.i.i10.i, 4095
  %171 = ptrtoint ptr %buf_size to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %buf_size, align 2
  %173 = urem i16 %and.i.i11.i, %172
  %index.0.i = zext i16 %173 to i32
  %174 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %47, align 8
  %arrayidx.i = getelementptr ptr, ptr %175, i32 %index.0.i
  %176 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %177, null
  br i1 %tobool.not.i, label %wil_release_reorder_frame.exit.i324.out_crit_edge, label %wil_release_reorder_frame.exit.i324.wil_release_reorder_frame.exit.i324_crit_edge

wil_release_reorder_frame.exit.i324.wil_release_reorder_frame.exit.i324_crit_edge: ; preds = %wil_release_reorder_frame.exit.i324
  call void @__sanitizer_cov_trace_pc() #8
  br label %wil_release_reorder_frame.exit.i324

wil_release_reorder_frame.exit.i324.out_crit_edge: ; preds = %wil_release_reorder_frame.exit.i324
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

out:                                              ; preds = %wil_release_reorder_frame.exit.i324.out_crit_edge, %if.end207.out_crit_edge, %if.then203, %do.end189, %do.end145, %if.then105, %if.end89, %do.end85, %if.then49
  call void @_raw_spin_unlock(ptr noundef %tid_rx_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end42
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %seq) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retry) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mcast) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mid) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cid) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tid) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_dbg_trace(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_netif_rx_any(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wil_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_rx_bar(ptr noundef %wil, ptr nocapture noundef readonly %vif, i8 noundef zeroext %cid, i8 noundef zeroext %tid, i16 noundef zeroext %seq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %cid to i32
  %ndev2 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 1
  %0 = ptrtoint ptr %ndev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev2, align 4
  %tid_rx_lock = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 63, i32 %idxprom, i32 7
  tail call void @_raw_spin_lock(ptr noundef %tid_rx_lock) #6
  %idxprom3 = zext i8 %tid to i32
  %arrayidx4 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 63, i32 %idxprom, i32 6, i32 %idxprom3
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx4, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.wil_rx_bar, i32 noundef %idxprom, i32 noundef %idxprom3) #6
  br label %out

if.end:                                           ; preds = %entry
  %head_seq_num = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %head_seq_num to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %head_seq_num, align 8
  %conv.i = zext i16 %seq to i32
  %conv1.i = zext i16 %5 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %and.i = and i32 %sub.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %and.i)
  %cmp.i = icmp ult i32 %and.i, 2049
  br i1 %cmp.i, label %do.body13, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.wil_rx_bar, i32 noundef %conv.i, i32 noundef %conv1.i) #6
  br label %out

do.body13:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_rx_bar.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_rx_bar, %if.then18)) #6
          to label %do.end27 [label %if.then18], !srcloc !64

if.then18:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %6 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %main_ndev, align 4
  %mid = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 3
  %8 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mid, align 4
  %conv20 = zext i8 %9 to i32
  %10 = ptrtoint ptr %head_seq_num to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %head_seq_num, align 8
  %conv24 = zext i16 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_rx_bar.__UNIQUE_ID_ddebug348, ptr noundef %7, ptr noundef nonnull @.str.12, i32 noundef %idxprom, i32 noundef %conv20, i32 noundef %idxprom3, i32 noundef %conv.i, i32 noundef %conv24) #6
  br label %do.end27

do.end27:                                         ; preds = %if.then18, %do.body13
  %mid29 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 3
  %12 = ptrtoint ptr %mid29 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mid29, align 4
  %conv30 = zext i8 %13 to i32
  %14 = ptrtoint ptr %head_seq_num to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %head_seq_num, align 8
  %conv34 = zext i16 %15 to i32
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.12, i32 noundef %idxprom, i32 noundef %conv30, i32 noundef %idxprom3, i32 noundef %conv.i, i32 noundef %conv34) #6
  %stored_mpdu_num.i = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %head_seq_num to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %head_seq_num, align 8
  %conv.i11.i = zext i16 %17 to i32
  %sub.i12.i = sub nsw i32 %conv.i11.i, %conv.i
  %and.i13.i = and i32 %sub.i12.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %and.i13.i)
  %cmp.i14.i = icmp ult i32 %and.i13.i, 2049
  br i1 %cmp.i14.i, label %do.end27.wil_release_reorder_frames.exit_crit_edge, label %land.rhs.lr.ph.i

do.end27.wil_release_reorder_frames.exit_crit_edge: ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %wil_release_reorder_frames.exit

land.rhs.lr.ph.i:                                 ; preds = %do.end27
  %ssn.i.i = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %3, i32 0, i32 4
  %buf_size.i.i = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %3, i32 0, i32 5
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %wil_release_reorder_frame.exit.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %18 = phi i16 [ %17, %land.rhs.lr.ph.i ], [ %35, %wil_release_reorder_frame.exit.i.land.rhs.i_crit_edge ]
  %19 = ptrtoint ptr %stored_mpdu_num.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %stored_mpdu_num.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool1.not.i = icmp eq i16 %20, 0
  br i1 %tobool1.not.i, label %land.rhs.i.wil_release_reorder_frames.exit_crit_edge, label %while.body.i

land.rhs.i.wil_release_reorder_frames.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wil_release_reorder_frames.exit

while.body.i:                                     ; preds = %land.rhs.i
  %21 = ptrtoint ptr %ssn.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ssn.i.i, align 4
  %sub.i.i.i = sub i16 %18, %22
  %and.i.i.i = and i16 %sub.i.i.i, 4095
  %23 = ptrtoint ptr %buf_size.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %buf_size.i.i, align 2
  %25 = urem i16 %and.i.i.i, %24
  %rem.i.i = zext i16 %25 to i32
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 8
  %arrayidx.i.i = getelementptr ptr, ptr %27, i32 %rem.i.i
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i, label %while.body.i.wil_release_reorder_frame.exit.i_crit_edge, label %if.end.i.i

while.body.i.wil_release_reorder_frame.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wil_release_reorder_frame.exit.i

if.end.i.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %dec.i.i = add i16 %20, -1
  %30 = ptrtoint ptr %stored_mpdu_num.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %dec.i.i, ptr %stored_mpdu_num.i, align 2
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %arrayidx.i.i, align 4
  tail call void @wil_netif_rx_any(ptr noundef nonnull %29, ptr noundef %1) #6
  br label %wil_release_reorder_frame.exit.i

wil_release_reorder_frame.exit.i:                 ; preds = %if.end.i.i, %while.body.i.wil_release_reorder_frame.exit.i_crit_edge
  %32 = ptrtoint ptr %head_seq_num to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %head_seq_num, align 8
  %34 = add i16 %33, 1
  %35 = and i16 %34, 4095
  store i16 %35, ptr %head_seq_num, align 8
  %conv.i.i = zext i16 %34 to i32
  %sub.i.i = sub nsw i32 %conv.i.i, %conv.i
  %and.i.i = and i32 %sub.i.i, 4095
  %cmp.i.i = icmp ult i32 %and.i.i, 2049
  br i1 %cmp.i.i, label %wil_release_reorder_frame.exit.i.wil_release_reorder_frames.exit_crit_edge, label %wil_release_reorder_frame.exit.i.land.rhs.i_crit_edge

wil_release_reorder_frame.exit.i.land.rhs.i_crit_edge: ; preds = %wil_release_reorder_frame.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

wil_release_reorder_frame.exit.i.wil_release_reorder_frames.exit_crit_edge: ; preds = %wil_release_reorder_frame.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wil_release_reorder_frames.exit

wil_release_reorder_frames.exit:                  ; preds = %wil_release_reorder_frame.exit.i.wil_release_reorder_frames.exit_crit_edge, %land.rhs.i.wil_release_reorder_frames.exit_crit_edge, %do.end27.wil_release_reorder_frames.exit_crit_edge
  %36 = ptrtoint ptr %head_seq_num to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %seq, ptr %head_seq_num, align 8
  br label %out

out:                                              ; preds = %wil_release_reorder_frames.exit, %if.then7, %if.then
  tail call void @_raw_spin_unlock(ptr noundef %tid_rx_lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @wil_tid_ampdu_rx_alloc(ptr nocapture readnone %wil, i32 noundef %size, i16 noundef zeroext %ssn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 64) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %size, i32 4) #6
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !65

kcalloc.exit.thread:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %call7.i.i, align 8
  br label %if.then4

if.end7.i.i:                                      ; preds = %if.end
  %4 = extractvalue { i32, i1 } %1, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #10
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8.i.i, ptr %call7.i.i, align 8
  %tobool3.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool3.not, label %if.end7.i.i.if.then4_crit_edge, label %if.end5

if.end7.i.i.if.then4_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

if.then4:                                         ; preds = %if.end7.i.i.if.then4_crit_edge, %kcalloc.exit.thread
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

if.end5:                                          ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %ssn6 = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %ssn6 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %ssn, ptr %ssn6, align 4
  %head_seq_num = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %head_seq_num to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %ssn, ptr %head_seq_num, align 8
  %conv = trunc i32 %size to i16
  %buf_size = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %buf_size to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %buf_size, align 2
  %stored_mpdu_num = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %stored_mpdu_num to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %stored_mpdu_num, align 2
  %first_time = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %call7.i.i, i32 0, i32 10
  %10 = ptrtoint ptr %first_time to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %first_time, align 8
  %mcast_last_seq = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %call7.i.i, i32 0, i32 11
  %11 = ptrtoint ptr %mcast_last_seq to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %mcast_last_seq, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end5 ], [ null, %if.then4 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_tid_ampdu_rx_free(ptr nocapture readnone %wil, ptr noundef %r) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %r, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %buf_size = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %r, i32 0, i32 5
  %0 = ptrtoint ptr %buf_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %buf_size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp10.not = icmp eq i16 %1, 0
  br i1 %cmp10.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.011 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %2 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %r, align 8
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.011
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree_skb_reason(ptr noundef %5, i32 noundef 0) #6
  %inc = add nuw nsw i32 %i.011, 1
  %6 = ptrtoint ptr %buf_size to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %buf_size, align 2
  %conv = zext i16 %7 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %8 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %r, align 8
  tail call void @kfree(ptr noundef %9) #6
  tail call void @kfree(ptr noundef nonnull %r) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wil_addba_rx_request(ptr noundef %wil, i8 noundef zeroext %mid, i8 noundef zeroext %cid, i8 noundef zeroext %tid, i8 noundef zeroext %dialog_token, i16 noundef zeroext %ba_param_set, i16 noundef zeroext %ba_timeout, i16 noundef zeroext %ba_seq_ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i16 @llvm.bswap.i16(i16 %ba_param_set)
  %1 = tail call i16 @llvm.bswap.i16(i16 %ba_timeout)
  %2 = tail call i16 @llvm.bswap.i16(i16 %ba_seq_ctrl)
  %conv = zext i16 %0 to i32
  %shr.i194 = lshr i32 %conv, 6
  %use_enhanced_dma_hw = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 67
  %3 = ptrtoint ptr %use_enhanced_dma_hw to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %use_enhanced_dma_hw, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.lhs.true

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %use_rx_hw_reordering = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 105
  %5 = ptrtoint ptr %use_rx_hw_reordering to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %use_rx_hw_reordering, align 1, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %land.lhs.true.land.end_crit_edge, label %land.lhs.true5

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %fw_capabilities = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 16
  %7 = ptrtoint ptr %fw_capabilities to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %fw_capabilities, align 4
  %9 = and i32 %8, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not = icmp eq i32 %9, 0
  br i1 %tobool7.not, label %land.lhs.true5.land.end_crit_edge, label %land.lhs.true8

land.lhs.true5.land.end_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.lhs.true8:                                   ; preds = %land.lhs.true5
  %amsdu_en = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 104
  %10 = ptrtoint ptr %amsdu_en to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %amsdu_en, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not = icmp eq i8 %11, 0
  br i1 %tobool9.not, label %land.lhs.true8.land.end_crit_edge, label %land.rhs

land.lhs.true8.land.end_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true8.land.end_crit_edge, %land.lhs.true5.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %12 = phi i1 [ false, %land.lhs.true8.land.end_crit_edge ], [ false, %land.lhs.true5.land.end_crit_edge ], [ false, %land.lhs.true.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ %tobool12, %land.rhs ]
  %and14 = and i32 %conv, 2
  %13 = lshr i16 %2, 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 323) #6
  %conv20 = zext i8 %cid to i32
  %max_assoc_sta = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 26
  %14 = ptrtoint ptr %max_assoc_sta to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_assoc_sta, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv20)
  %cmp.not = icmp ugt i32 %15, %conv20
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.wil_addba_rx_request, i32 noundef %conv20) #6
  br label %out

if.end:                                           ; preds = %land.end
  %arrayidx = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 63, i32 %conv20
  %status = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 63, i32 %conv20, i32 2
  %16 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp24.not = icmp eq i32 %17, 2
  br i1 %cmp24.not, label %do.body31, label %if.then26

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.wil_addba_rx_request, i32 noundef %conv20) #6
  br label %out

do.body31:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_addba_rx_request.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_addba_rx_request, %if.then37)) #6
          to label %do.end56 [label %if.then37], !srcloc !64

if.then37:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #8
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %18 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %main_ndev, align 4
  %conv40 = zext i8 %tid to i32
  %conv42 = zext i16 %1 to i32
  %cond = select i1 %12, ptr @.str.16, ptr @.str.17
  %and14.lobit190 = lshr exact i32 %and14, 1
  %conv50 = zext i8 %dialog_token to i32
  %conv51 = zext i16 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_addba_rx_request.__UNIQUE_ID_ddebug353, ptr noundef %19, ptr noundef nonnull @.str.15, i32 noundef %conv20, ptr noundef %arrayidx, i32 noundef %conv40, i32 noundef %shr.i194, i32 noundef %conv42, ptr noundef nonnull %cond, i32 noundef %and14.lobit190, i32 noundef %conv50, i32 noundef %conv51) #6
  br label %do.end56

do.end56:                                         ; preds = %if.then37, %do.body31
  %conv60 = zext i8 %tid to i32
  %conv62 = zext i16 %1 to i32
  %cond65 = select i1 %12, ptr @.str.16, ptr @.str.17
  %and14.lobit = lshr exact i32 %and14, 1
  %conv71 = zext i8 %dialog_token to i32
  %conv72 = zext i16 %13 to i32
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.15, i32 noundef %conv20, ptr noundef %arrayidx, i32 noundef %conv60, i32 noundef %shr.i194, i32 noundef %conv62, ptr noundef nonnull %cond65, i32 noundef %and14.lobit, i32 noundef %conv71, i32 noundef %conv72) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %0)
  %cmp76 = icmp ult i16 %0, 64
  br i1 %cmp76, label %do.body81, label %if.else

do.body81:                                        ; preds = %do.end56
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_addba_rx_request.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_addba_rx_request, %if.then93)) #6
          to label %do.end99 [label %if.then93], !srcloc !64

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #8
  %main_ndev94 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %20 = ptrtoint ptr %main_ndev94 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %main_ndev94, align 4
  %max_agg_wsize = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 109
  %22 = ptrtoint ptr %max_agg_wsize to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_agg_wsize, align 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_addba_rx_request.__UNIQUE_ID_ddebug354, ptr noundef %21, ptr noundef nonnull @.str.18, i32 noundef %23) #6
  br label %do.end99

do.end99:                                         ; preds = %if.then93, %do.body81
  %max_agg_wsize100 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 109
  %24 = ptrtoint ptr %max_agg_wsize100 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_agg_wsize100, align 32
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.18, i32 noundef %25) #6
  %26 = ptrtoint ptr %max_agg_wsize100 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_agg_wsize100, align 32
  br label %if.end116

if.else:                                          ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #8
  %max_agg_wsize105 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 109
  %28 = ptrtoint ptr %max_agg_wsize105 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_agg_wsize105, align 32
  %conv108 = and i32 %29, 65535
  %30 = tail call i32 @llvm.umin.i32(i32 %conv108, i32 %shr.i194)
  br label %if.end116

if.end116:                                        ; preds = %if.else, %do.end99
  %agg_wsize.0.in = phi i32 [ %27, %do.end99 ], [ %30, %if.else ]
  %agg_wsize.0 = trunc i32 %agg_wsize.0.in to i16
  %wmi_addba_rx_resp = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 13
  %31 = ptrtoint ptr %wmi_addba_rx_resp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wmi_addba_rx_resp, align 4
  %call118 = tail call i32 %32(ptr noundef %wil, i8 noundef zeroext %mid, i8 noundef zeroext %cid, i8 noundef zeroext %tid, i8 noundef zeroext %dialog_token, i16 noundef zeroext 0, i1 noundef zeroext %12, i16 noundef zeroext %agg_wsize.0, i16 noundef zeroext %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end121, label %if.then120

if.then120:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.wil_addba_rx_request, i32 noundef %call118) #6
  br label %out

if.end121:                                        ; preds = %if.end116
  %use_rx_hw_reordering122 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 105
  %33 = ptrtoint ptr %use_rx_hw_reordering122 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %use_rx_hw_reordering122, align 1, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool123.not = icmp eq i8 %34, 0
  br i1 %tobool123.not, label %if.then124, label %if.end121.out_crit_edge

if.end121.out_crit_edge:                          ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then124:                                       ; preds = %if.end121
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 64) #9
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then124.wil_tid_ampdu_rx_alloc.exit_crit_edge, label %if.end7.i.i.i

if.then124.wil_tid_ampdu_rx_alloc.exit_crit_edge: ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #8
  br label %wil_tid_ampdu_rx_alloc.exit

if.end7.i.i.i:                                    ; preds = %if.then124
  %conv125 = shl i32 %agg_wsize.0.in, 2
  %36 = and i32 %conv125, 262140
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %36, i32 noundef 3520) #10
  %37 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call8.i.i.i, ptr %call7.i.i.i, align 8
  %tobool3.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end5.i

if.then4.i:                                       ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %wil_tid_ampdu_rx_alloc.exit

if.end5.i:                                        ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %ssn6.i = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %call7.i.i.i, i32 0, i32 4
  %38 = ptrtoint ptr %ssn6.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %13, ptr %ssn6.i, align 4
  %head_seq_num.i = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %call7.i.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %head_seq_num.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %13, ptr %head_seq_num.i, align 8
  %buf_size.i = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %call7.i.i.i, i32 0, i32 5
  %40 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %agg_wsize.0, ptr %buf_size.i, align 2
  %stored_mpdu_num.i = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %call7.i.i.i, i32 0, i32 3
  %41 = ptrtoint ptr %stored_mpdu_num.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %stored_mpdu_num.i, align 2
  %first_time.i = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %call7.i.i.i, i32 0, i32 10
  %42 = ptrtoint ptr %first_time.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %first_time.i, align 8
  %mcast_last_seq.i = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %call7.i.i.i, i32 0, i32 11
  %43 = ptrtoint ptr %mcast_last_seq.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 -1, ptr %mcast_last_seq.i, align 2
  br label %wil_tid_ampdu_rx_alloc.exit

wil_tid_ampdu_rx_alloc.exit:                      ; preds = %if.end5.i, %if.then4.i, %if.then124.wil_tid_ampdu_rx_alloc.exit_crit_edge
  %retval.0.i195 = phi ptr [ %call7.i.i.i, %if.end5.i ], [ null, %if.then4.i ], [ null, %if.then124.wil_tid_ampdu_rx_alloc.exit_crit_edge ]
  %tid_rx_lock = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 63, i32 %conv20, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %tid_rx_lock) #6
  %arrayidx128 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 63, i32 %conv20, i32 6, i32 %conv60
  %44 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx128, align 4
  %tobool.not.i196 = icmp eq ptr %45, null
  br i1 %tobool.not.i196, label %wil_tid_ampdu_rx_alloc.exit.wil_tid_ampdu_rx_free.exit_crit_edge, label %for.cond.preheader.i

wil_tid_ampdu_rx_alloc.exit.wil_tid_ampdu_rx_free.exit_crit_edge: ; preds = %wil_tid_ampdu_rx_alloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %wil_tid_ampdu_rx_free.exit

for.cond.preheader.i:                             ; preds = %wil_tid_ampdu_rx_alloc.exit
  %buf_size.i197 = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %buf_size.i197 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %buf_size.i197, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %cmp10.not.i = icmp eq i16 %47, 0
  br i1 %cmp10.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %45, align 8
  %arrayidx.i = getelementptr ptr, ptr %49, i32 %i.011.i
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %51, i32 noundef 0) #6
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %52 = ptrtoint ptr %buf_size.i197 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %buf_size.i197, align 2
  %conv.i198 = zext i16 %53 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i198
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %54 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %45, align 8
  tail call void @kfree(ptr noundef %55) #6
  tail call void @kfree(ptr noundef nonnull %45) #6
  br label %wil_tid_ampdu_rx_free.exit

wil_tid_ampdu_rx_free.exit:                       ; preds = %for.end.i, %wil_tid_ampdu_rx_alloc.exit.wil_tid_ampdu_rx_free.exit_crit_edge
  %56 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %retval.0.i195, ptr %arrayidx128, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %tid_rx_lock) #6
  br label %out

out:                                              ; preds = %wil_tid_ampdu_rx_free.exit, %if.end121.out_crit_edge, %if.then120, %if.then26, %if.then
  %rc.0 = phi i32 [ -22, %if.then ], [ -22, %if.then26 ], [ %call118, %if.then120 ], [ 0, %if.end121.out_crit_edge ], [ 0, %wil_tid_ampdu_rx_free.exit ]
  ret i32 %rc.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wil_addba_tx_request(ptr noundef %wil, i8 noundef zeroext %ringid, i16 noundef zeroext %wsize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %max_agg_wsize.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 109
  %0 = ptrtoint ptr %max_agg_wsize.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_agg_wsize.i, align 32
  %max_ampdu_size.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 110
  %2 = ptrtoint ptr %max_ampdu_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_ampdu_size.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mtu_max to i32))
  %4 = load i32, ptr @mtu_max, align 4
  %add.i = add i32 %4, 62
  %div.i = udiv i32 %3, %add.i
  %conv2.i = and i32 %1, 65535
  %conv3.i = and i32 %div.i, 65535
  %5 = tail call i32 @llvm.umin.i32(i32 %conv2.i, i32 %conv3.i) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %wsize)
  %tobool.not.i = icmp eq i16 %wsize, 0
  %conv10.i = zext i16 %wsize to i32
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 %conv10.i) #6
  %retval.0.in.i = select i1 %tobool.not.i, i32 %5, i32 %6
  %conv = trunc i32 %retval.0.in.i to i8
  %idxprom = zext i8 %ringid to i32
  %addba_in_progress = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 58, i32 %idxprom, i32 8
  %7 = ptrtoint ptr %addba_in_progress to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %addba_in_progress, align 1, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end14, label %do.body2

do.body2:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_addba_tx_request.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_addba_tx_request, %if.then7)) #6
          to label %do.end10 [label %if.then7], !srcloc !64

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %9 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_addba_tx_request.__UNIQUE_ID_ddebug357, ptr noundef %10, ptr noundef nonnull @.str.21, i32 noundef %idxprom) #6
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body2
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.21, i32 noundef %idxprom) #6
  br label %out

if.end14:                                         ; preds = %entry
  %agg_wsize15 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 58, i32 %idxprom, i32 5
  %11 = ptrtoint ptr %agg_wsize15 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %agg_wsize15, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool16.not = icmp eq i8 %12, 0
  br i1 %tobool16.not, label %if.end47, label %do.body20

do.body20:                                        ; preds = %if.end14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_addba_tx_request.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_addba_tx_request, %if.then32)) #6
          to label %do.end41 [label %if.then32], !srcloc !64

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  %main_ndev33 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %13 = ptrtoint ptr %main_ndev33 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %main_ndev33, align 4
  %15 = ptrtoint ptr %agg_wsize15 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %agg_wsize15, align 4
  %conv36 = zext i8 %16 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_addba_tx_request.__UNIQUE_ID_ddebug358, ptr noundef %14, ptr noundef nonnull @.str.22, i32 noundef %idxprom, i32 noundef %conv36) #6
  br label %do.end41

do.end41:                                         ; preds = %if.then32, %do.body20
  %17 = ptrtoint ptr %agg_wsize15 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %agg_wsize15, align 4
  %conv44 = zext i8 %18 to i32
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.22, i32 noundef %idxprom, i32 noundef %conv44) #6
  br label %out

if.end47:                                         ; preds = %if.end14
  %19 = ptrtoint ptr %addba_in_progress to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %addba_in_progress, align 1
  %mid = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 58, i32 %idxprom, i32 9
  %20 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %mid, align 2
  %call49 = tail call i32 @wmi_addba(ptr noundef %wil, i8 noundef zeroext %21, i8 noundef zeroext %ringid, i8 noundef zeroext %conv, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end47.out_crit_edge, label %if.then51

if.end47.out_crit_edge:                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.20, i32 noundef %call49) #6
  %22 = ptrtoint ptr %addba_in_progress to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %addba_in_progress, align 1
  br label %out

out:                                              ; preds = %if.then51, %if.end47.out_crit_edge, %do.end41, %do.end10
  %rc.0 = phi i32 [ 0, %do.end10 ], [ 0, %do.end41 ], [ %call49, %if.then51 ], [ 0, %if.end47.out_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_addba(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !16, !18, !19, !21, !22, !24, !25, !27, !29, !30, !32, !33, !35, !37, !38, !39, !40, !42, !43, !45, !47, !48, !49, !51, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/wil6210/rx_reorder.c", i32 98, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @wil_rx_reorder.__UNIQUE_ID_ddebug343, !1, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/wil6210/rx_reorder.c", i32 103, i32 3}
!8 = !{ptr @wil_rx_reorder.__UNIQUE_ID_ddebug344, !7, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ath/wil6210/rx_reorder.c", i32 120, i32 4}
!11 = !{ptr @wil_rx_reorder.__UNIQUE_ID_ddebug345, !10, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/wil6210/rx_reorder.c", i32 145, i32 5}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/wil6210/rx_reorder.c", i32 152, i32 4}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/wil6210/rx_reorder.c", i32 164, i32 3}
!18 = !{ptr @wil_rx_reorder.__UNIQUE_ID_ddebug346, !17, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ath/wil6210/rx_reorder.c", i32 187, i32 3}
!21 = !{ptr @wil_rx_reorder.__UNIQUE_ID_ddebug347, !20, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/wil6210/rx_reorder.c", i32 225, i32 3}
!24 = !{ptr @__func__.wil_rx_bar, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ath/wil6210/rx_reorder.c", i32 229, i32 3}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/wil6210/rx_reorder.c", i32 233, i32 2}
!29 = !{ptr @wil_rx_bar.__UNIQUE_ID_ddebug348, !28, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/wil6210/rx_reorder.c", i32 327, i32 3}
!32 = !{ptr @__func__.wil_addba_rx_request, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/ath/wil6210/rx_reorder.c", i32 334, i32 3}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ath/wil6210/rx_reorder.c", i32 339, i32 2}
!37 = !{ptr @wil_addba_rx_request.__UNIQUE_ID_ddebug353, !36, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!38 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/wil6210/rx_reorder.c", i32 346, i32 3}
!42 = !{ptr @wil_addba_rx_request.__UNIQUE_ID_ddebug354, !41, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/ath/wil6210/rx_reorder.c", i32 357, i32 3}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/ath/wil6210/rx_reorder.c", i32 383, i32 3}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @wil_addba_tx_request.__UNIQUE_ID_ddebug357, !46, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/ath/wil6210/rx_reorder.c", i32 388, i32 3}
!51 = !{ptr @wil_addba_tx_request.__UNIQUE_ID_ddebug358, !50, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/wil6210/rx_reorder.c", i32 396, i32 3}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"auto-init"}
!64 = !{i64 2148907587, i64 2148907592, i64 2148907605, i64 2148907649, i64 2148907683, i64 2148907704}
!65 = !{!"branch_weights", i32 1, i32 2000}
!66 = !{!"branch_weights", i32 2000, i32 1}
!67 = !{i8 0, i8 2}
