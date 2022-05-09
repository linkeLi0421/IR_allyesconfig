; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/wil6210/txrx_edma.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/wil6210/txrx_edma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.117 }
%union.anon.117 = type { i32 }
%struct.cpumask = type { [1 x i32] }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.149, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.149 = type { ptr }
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
%struct.sk_buff = type { %union.anon.48, %union.anon.51, %union.anon.52, [48 x i8], %union.anon.53, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.55, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, ptr, %union.anon.50 }
%union.anon.50 = type { ptr }
%union.anon.51 = type { ptr }
%union.anon.52 = type { i64 }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { i32, ptr }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.57, i32, i32, i32, i16, i16, %union.anon.59, i32, %union.anon.60, %union.anon.61, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.57 = type { i32 }
%union.anon.59 = type { i32 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i16 }
%struct.wil6210_vif = type { %struct.wireless_dev, ptr, ptr, i8, [1 x i32], i32, i16, i8, i8, i32, i8, i32, ptr, ptr, ptr, i32, i32, i32, [32 x i8], i32, i8, [32 x i8], i32, i32, ptr, i32, %struct.timer_list, %struct.work_struct, ptr, %struct.timer_list, %struct.wil_p2p_info, %struct.list_head, %struct.mutex, %struct.work_struct, i32, i8, i64, i32, %struct.work_struct }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.147, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.anon.147 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.148 }
%union.anon.148 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.wil_p2p_info = type { %struct.ieee80211_channel, i8, i64, ptr, i32, %struct.timer_list, %struct.work_struct, %struct.work_struct }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.wil_rx_status_extended = type { %struct.wil_rx_status_compressed, %struct.wil_rx_status_extension }
%struct.wil_rx_status_compressed = type { i32, i32, i16, i16, i32 }
%struct.wil_rx_status_extension = type { i32, i32, i16, i16, i32 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.152, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.152 = type { i64, i64, i8 }
%struct.wil_rx_buff = type { ptr, %struct.list_head, i32 }
%union.wil_ring_desc = type { %union.wil_tx_desc }
%union.wil_tx_desc = type { %struct.vring_tx_desc }
%struct.vring_tx_desc = type { %struct.vring_tx_mac, %struct.vring_tx_dma }
%struct.vring_tx_mac = type { [3 x i32], i32 }
%struct.vring_tx_dma = type { i32, %struct.wil_ring_dma_addr, i8, i8, i8, i8, i16 }
%struct.wil_ring_dma_addr = type <{ i32, i16 }>
%struct.page = type { i32, %union.anon.17, %union.anon.115, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.115 = type { %struct.atomic_t }
%struct.wil_ring_tx_status = type { i8, i8, i8, i8, i32, i32, i16, i16 }
%struct.wil_ctx = type { ptr, i8, i8 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.wil_tx_enhanced_desc = type { %struct.wil_ring_tx_enhanced_mac, %struct.wil_ring_tx_enhanced_dma }
%struct.wil_ring_tx_enhanced_mac = type { [3 x i32], i16, i16 }
%struct.wil_ring_tx_enhanced_dma = type { i8, i8, i16, %struct.wil_ring_dma_addr, i8, i8, i16, i16 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }

@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Rx IRQ while Rx not yet initialized\0A\00", [55 x i8] zeroinitializer }, align 32
@__func__.wil_rx_handle_edma = private unnamed_addr constant [19 x i8] c"wil_rx_handle_edma\00", align 1
@wil_rx_handle_edma.__UNIQUE_ID_ddebug538 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.wil_rx_handle_edma, ptr @.str.2, ptr @.str.3, i8 1, i8 13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wil6210\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/ath/wil6210/txrx_edma.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DBG[TXRX]rx_handle\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: Rx IRQ while Rx status ring %d not yet initialized\0A\00", [40 x i8] zeroinitializer }, align 32
@wil_rx_handle_edma.__UNIQUE_ID_ddebug539 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.wil_rx_handle_edma, ptr @.str.2, ptr @.str.5, i8 1, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DBG[TXRX]RX desc invalid mid %d\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: invalid num_descs 0\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.wil_tx_sring_handler = private unnamed_addr constant [21 x i8] c"wil_tx_sring_handler\00", align 1
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: invalid ring id %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Tx irq[%d]: ring not initialized\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Tx irq[%d]: ring disabled\0A\00", [33 x i8] zeroinitializer }, align 32
@wil_tx_sring_handler.__UNIQUE_ID_ddebug540 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.wil_tx_sring_handler, ptr @.str.2, ptr @.str.10, i8 1, i8 46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"DBG[TXRX]invalid MID %d for ring %d\0A\00", [59 x i8] zeroinitializer }, align 32
@wil_tx_sring_handler.__UNIQUE_ID_ddebug541 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.wil_tx_sring_handler, ptr @.str.2, ptr @.str.11, i8 1, i8 49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"DBG[TXRX]tx_status: completed desc_ring (%d), num_descs (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@wil_tx_sring_handler.__UNIQUE_ID_ddebug542 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.wil_tx_sring_handler, ptr @.str.2, ptr @.str.12, i8 1, i8 54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"DBG[TXRX]TxC[%2d][%3d] : %d bytes, status 0x%02x\0A\00", [46 x i8] zeroinitializer }, align 32
@wil_tx_sring_handler.__UNIQUE_ID_ddebug543 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.wil_tx_sring_handler, ptr @.str.2, ptr @.str.13, i8 1, i8 55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DBG[TXRX]TxS \00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@wil_tx_sring_handler.__UNIQUE_ID_ddebug544 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.wil_tx_sring_handler, ptr @.str.2, ptr @.str.15, i8 1, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DBG[TXRX]Ring[%2d] idle %d -> %d\0A\00", [62 x i8] zeroinitializer }, align 32
@wil_sring_reap_rx_edma.__UNIQUE_ID_ddebug533 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 -34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wil_sring_reap_rx_edma\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"DBG[TXRX]buff_id is not updated yet by HW, (swhead 0x%x)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Corrupt buff_id=%d, sring->swhead=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RxS \00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: No Rx skb at buff_id %d\0A\00", [35 x i8] zeroinitializer }, align 32
@wil_sring_reap_rx_edma.__UNIQUE_ID_ddebug534 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.2, ptr @.str.22, i8 0, i8 -22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"DBG[TXRX]Rx, buff_id=%u, sring_idx=%u, dmalen=%u bytes\0A\00", [40 x i8] zeroinitializer }, align 32
@wil_sring_reap_rx_edma.__UNIQUE_ID_ddebug535 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.2, ptr @.str.23, i8 0, i8 -21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DBG[TXRX]RxS \00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Corrupt cid=%d, sring->swhead=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@wil_sring_reap_rx_edma.__UNIQUE_ID_ddebug536 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.2, ptr @.str.25, i8 0, i8 -16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DBG[TXRX]Short frame, len = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Rx size too large: %d bytes!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: failed to merge skbs!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Unexpected data offset %d\0A\00", [33 x i8] zeroinitializer }, align 32
@wil_sring_reap_rx_edma.__UNIQUE_ID_ddebug537 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.2, ptr @.str.29, i8 1, i8 7, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DBG[TXRX]Rx \00", [19 x i8] zeroinitializer }, align 32
@__tracepoint_wil6210_rx_status = external dso_local global %struct.tracepoint, align 4
@.str.30 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/wireless/ath/wil6210/trace.h\00", [55 x i8] zeroinitializer }, align 32
@trace_wil6210_rx_status.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@wil_check_bar.__UNIQUE_ID_ddebug525 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 0, i8 -62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wil_check_bar\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"DBG[TXRX]RX descriptor with invalid mid %d\00", [53 x i8] zeroinitializer }, align 32
@wil_check_bar.__UNIQUE_ID_ddebug526 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.2, ptr @.str.35, i8 0, i8 -61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"DBG[TXRX]Non-data frame FC[7:0] 0x%02x MID %d CID %d TID %d Seq 0x%03x\0A\00", [56 x i8] zeroinitializer }, align 32
@wil_check_bar.__UNIQUE_ID_ddebug527 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.2, ptr @.str.36, i8 0, i8 -59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"DBG[TXRX]BAR: MID %d CID %d TID %d Seq 0x%03x\0A\00", [49 x i8] zeroinitializer }, align 32
@wil_check_bar.__UNIQUE_ID_ddebug528 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.2, ptr @.str.37, i8 0, i8 -56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"DBG[TXRX]Unhandled non-data frame FC[7:0] 0x%02x MID %d CID %d TID %d Seq 0x%03x\0A\00", [46 x i8] zeroinitializer }, align 32
@wil_check_bar.__UNIQUE_ID_ddebug529 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.2, ptr @.str.23, i8 0, i8 -56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@wil_check_bar.__UNIQUE_ID_ddebug530 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.2, ptr @.str.29, i8 0, i8 -55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@wil_rx_refill_edma.__UNIQUE_ID_ddebug513 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 0, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wil_rx_refill_edma\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DBG[TXRX]No free buffer ID found\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Error %d in refill desc[%d]\0A\00", [63 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_wil6210_tx_status = external dso_local global %struct.tracepoint, align 4
@trace_wil6210_tx_status.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@wil_ring_init_tx_edma.__UNIQUE_ID_ddebug524 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 0, i8 -79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wil_ring_init_tx_edma\00", [42 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"DBG[MISC]init TX ring: ring_id=%u, cid=%u, tid=%u, sring_id=%u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: WMI_TX_DESC_RING_ADD_CMD failed\0A\00", [59 x i8] zeroinitializer }, align 32
@agg_wsize = external dso_local local_unnamed_addr global i32, align 4
@wil_ring_alloc_desc_ring.__UNIQUE_ID_ddebug515 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 0, i8 94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wil_ring_alloc_desc_ring\00", [39 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DBG[MISC]alloc_desc_ring:\0A\00", [37 x i8] zeroinitializer }, align 32
@wil_ring_alloc_desc_ring.__UNIQUE_ID_ddebug517 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.46, ptr @.str.2, ptr @.str.48, i8 0, i8 101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"DBG[MISC]%s ring[%d] 0x%p:%pad 0x%p\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TX\00", [29 x i8] zeroinitializer }, align 32
@wil_ring_free_edma.__UNIQUE_ID_ddebug518 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 0, i8 108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wil_ring_free_edma\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"DBG[MISC]free Rx ring [%d] 0x%p:%pad 0x%p\0A\00", [53 x i8] zeroinitializer }, align 32
@wil_ring_free_edma.__UNIQUE_ID_ddebug519 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.51, ptr @.str.2, ptr @.str.53, i8 0, i8 111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"DBG[MISC]free Tx ring %d [%d] 0x%p:%pad 0x%p\0A\00", [50 x i8] zeroinitializer }, align 32
@wil_ring_free_edma.__UNIQUE_ID_ddebug520 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.51, ptr @.str.2, ptr @.str.54, i8 0, i8 115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"DBG[TXRX]ctx(%d) was already completed\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.wil_move_all_rx_buff_to_free_list = private unnamed_addr constant [34 x i8] c"wil_move_all_rx_buff_to_free_list\00", align 1
@wil_ring_init_bcast_edma.__UNIQUE_ID_ddebug552 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.55, ptr @.str.2, ptr @.str.56, i8 1, i8 -124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wil_ring_init_bcast_edma\00", [39 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"DBG[MISC]init bcast: ring_id=%d, sring_id=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@wil_tx_init_edma.__UNIQUE_ID_ddebug512 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.57, ptr @.str.2, ptr @.str.58, i8 0, i8 30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wil_tx_init_edma\00", [47 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"DBG[MISC]init TX sring: size=%u, ring_id=%u\0A\00", [51 x i8] zeroinitializer }, align 32
@wil_sring_alloc.__UNIQUE_ID_ddebug510 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.59, ptr @.str.2, ptr @.str.60, i8 0, i8 21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wil_sring_alloc\00", [16 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DBG[MISC]status_ring_alloc: size=%zu\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Cannot allocate a zero size status ring\0A\00", [51 x i8] zeroinitializer }, align 32
@wil_sring_alloc.__UNIQUE_ID_ddebug511 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.59, ptr @.str.2, ptr @.str.62, i8 0, i8 25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DBG[MISC]status_ring[%d] 0x%p:%pad\0A\00", [60 x i8] zeroinitializer }, align 32
@wil_sring_free.__UNIQUE_ID_ddebug509 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.63, ptr @.str.2, ptr @.str.64, i8 0, i8 17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wil_sring_free\00", [17 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"DBG[MISC]status_ring_free, size(bytes)=%zu, 0x%p:%pad\0A\00", [41 x i8] zeroinitializer }, align 32
@wil_tx_fini_edma.__UNIQUE_ID_ddebug553 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.65, ptr @.str.2, ptr @.str.66, i8 1, i8 -114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wil_tx_fini_edma\00", [47 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DBG[MISC]free TX sring\0A\00", [40 x i8] zeroinitializer }, align 32
@__wil_tx_ring_tso_edma.__UNIQUE_ID_ddebug546 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.67, ptr @.str.2, ptr @.str.68, i8 1, i8 99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__wil_tx_ring_tso_edma\00", [41 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"DBG[TXRX]tx_ring_tso: %d bytes to ring %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: TSO: Tx ring[%2d] full. No space for %d fragments\0A\00", [41 x i8] zeroinitializer }, align 32
@__wil_tx_ring_tso_edma.__UNIQUE_ID_ddebug547 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.67, ptr @.str.2, ptr @.str.70, i8 1, i8 109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"DBG[TXRX]TSO: process header descriptor, hdrlen %u\0A\00", [44 x i8] zeroinitializer }, align 32
@__wil_tx_ring_tso_edma.__UNIQUE_ID_ddebug548 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.67, ptr @.str.2, ptr @.str.71, i8 1, i8 111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"DBG[TXRX]TSO: process skb head, headlen %u\0A\00", [52 x i8] zeroinitializer }, align 32
@__wil_tx_ring_tso_edma.__UNIQUE_ID_ddebug549 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.67, ptr @.str.2, ptr @.str.72, i8 1, i8 115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"DBG[TXRX]TSO: frag[%d]: len %u, descs_used %d\0A\00", [49 x i8] zeroinitializer }, align 32
@__wil_tx_ring_tso_edma.__UNIQUE_ID_ddebug550 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.67, ptr @.str.2, ptr @.str.73, i8 1, i8 120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DBG[TXRX]Ring[%2d] not idle %d -> %d\0A\00", [58 x i8] zeroinitializer }, align 32
@__wil_tx_ring_tso_edma.__UNIQUE_ID_ddebug551 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.67, ptr @.str.2, ptr @.str.74, i8 1, i8 121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DBG[TXRX]TSO: Tx swhead %d -> %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: TSO: Skb DMA map error\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.wil_tx_tso_gen_desc = private unnamed_addr constant [20 x i8] c"wil_tx_tso_gen_desc\00", align 1
@wil_tx_tso_gen_desc.__UNIQUE_ID_ddebug545 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.wil_tx_tso_gen_desc, ptr @.str.2, ptr @.str.76, i8 1, i8 92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DBG[TXRX]TxD \00", [18 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: ring modify is not supported for EDMA\0A\00", [53 x i8] zeroinitializer }, align 32
@__func__.wil_tx_ring_modify_edma = private unnamed_addr constant [24 x i8] c"wil_tx_ring_modify_edma\00", align 1
@.str.78 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: compressed RX status cannot be used with SW reorder\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.wil_rx_init_edma = private unnamed_addr constant [17 x i8] c"wil_rx_init_edma\00", align 1
@wil_rx_init_edma.__UNIQUE_ID_ddebug522 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.wil_rx_init_edma, ptr @.str.2, ptr @.str.79, i8 0, i8 -99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"DBG[MISC]rx_init, desc_ring_size=%u, status_ring_size=%u, elem_size=%zu\0A\00", [55 x i8] zeroinitializer }, align 32
@wil_rx_init_edma.__UNIQUE_ID_ddebug523 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.wil_rx_init_edma, ptr @.str.2, ptr @.str.80, i8 0, i8 -96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"DBG[MISC]rx_init: allocate %d status rings\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s: rx_buff_id_count %d exceeds sring_size %d. set it to %d\0A\00", [35 x i8] zeroinitializer }, align 32
@rx_large_buf = external dso_local local_unnamed_addr global i8, align 1
@wil_init_rx_sring.__UNIQUE_ID_ddebug514 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.82, ptr @.str.2, ptr @.str.83, i8 0, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wil_init_rx_sring\00", [46 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"DBG[MISC]init RX sring: size=%u, ring_id=%u\0A\00", [51 x i8] zeroinitializer }, align 32
@wil_init_rx_desc_ring.__UNIQUE_ID_ddebug521 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.84, ptr @.str.2, ptr @.str.85, i8 0, i8 121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wil_init_rx_desc_ring\00", [42 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DBG[MISC]init RX desc ring\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: Key missing. CID %d TID %d MCast %d KEY_ID %d\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.wil_rx_crypto_check_edma = private unnamed_addr constant [25 x i8] c"wil_rx_crypto_check_edma\00", align 1
@.str.87 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%s: Replay attack. CID %d TID %d MCast %d KEY_ID %d PN %6phN last %6phN\0A\00", [55 x i8] zeroinitializer }, align 32
@wil_rx_error_check_edma.__UNIQUE_ID_ddebug531 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.88, ptr @.str.2, ptr @.str.89, i8 0, i8 -51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wil_rx_error_check_edma\00", [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"DBG[TXRX]L2 RX error, l2_rx_status=0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: L2 MIC/KEY error, dropping packet\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: L2 KEY error, dropping packet\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: L2 REPLAY error, dropping packet\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: L2 AMSDU error, dropping packet\0A\00", [59 x i8] zeroinitializer }, align 32
@wil_rx_fini_edma.__UNIQUE_ID_ddebug554 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.94, ptr @.str.2, ptr @.str.95, i8 1, i8 -110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wil_rx_fini_edma\00", [47 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DBG[MISC]rx_fini_edma\0A\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 16]
@__sancov_gen_cov_switch_values.96 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1075, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1078, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1083, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1099, i32 6 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1185, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1193, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1198, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1204, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1209, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1220, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1238, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1242, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1289, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 888, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 902, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 904, i32 18 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 904, i32 28 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 919, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 938, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 940, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 953, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 961, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 968, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1008, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1047, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1054, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant [44 x i8] c"../drivers/net/wireless/ath/wil6210/trace.h\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 180, i32 1 }
@___asan_gen_.194 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 108, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 776, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 780, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 786, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 798, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 244, i32 5 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 246, i32 5 }
@___asan_gen_.224 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 326, i32 6 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 706, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 723, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 379, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 402, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 431, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 445, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 459, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1554, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 119, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 84, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 87, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 100, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 70, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1592, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1422, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1429, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1460, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1471, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1486, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1505, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1511, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1376, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1393, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 749, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 613, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 629, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 639, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 667, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 349, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 486, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 554, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 561, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 819, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 823, i32 4 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 828, i32 4 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 833, i32 4 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 838, i32 4 }
@___asan_gen_.382 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.383 = private constant [48 x i8] c"../drivers/net/wireless/ath/wil6210/txrx_edma.c\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1611, i32 2 }
@llvm.compiler.used = appending global [96 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95], section "llvm.metadata"
@0 = internal global [96 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_rx_handle_edma(ptr noundef %wil, ptr nocapture noundef %quota) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %va = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 55, i32 1
  %0 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %va, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %do.body5, !prof !240

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.wil_rx_handle_edma) #12
  br label %cleanup82

do.body5:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_rx_handle_edma.__UNIQUE_ID_ddebug538, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_rx_handle_edma, %if.then13)) #12
          to label %do.end16 [label %if.then13], !srcloc !241

if.then13:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %2 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_rx_handle_edma.__UNIQUE_ID_ddebug538, ptr noundef %3, ptr noundef nonnull @.str.3) #12
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %do.body5
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.3) #12
  %num_rx_status_rings = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 60
  %4 = ptrtoint ptr %num_rx_status_rings to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_rx_status_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp127.not = icmp eq i8 %5, 0
  br i1 %cmp127.not, label %do.end16.for.end_crit_edge, label %for.body.lr.ph

do.end16.for.end_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end16
  %use_rx_hw_reordering = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 105
  %main_ndev67 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %csr.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0128 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 59, i32 %i.0128
  %va20 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 59, i32 %i.0128, i32 1
  %6 = ptrtoint ptr %va20 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %va20, align 4
  %tobool21.not = icmp eq ptr %7, null
  br i1 %tobool21.not, label %if.then30, label %while.cond.preheader, !prof !240

while.cond.preheader:                             ; preds = %for.body
  %8 = ptrtoint ptr %quota to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %quota, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp32125 = icmp sgt i32 %9, 0
  br i1 %cmp32125, label %while.cond.preheader.land.rhs_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.cond.preheader.land.rhs_crit_edge:          ; preds = %while.cond.preheader
  br label %land.rhs

if.then30:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.wil_rx_handle_edma, i32 noundef %i.0128) #12
  br label %for.inc

land.rhs:                                         ; preds = %while.cond.backedge.land.rhs_crit_edge, %while.cond.preheader.land.rhs_crit_edge
  %call34 = tail call fastcc ptr @wil_sring_reap_rx_edma(ptr noundef %wil, ptr noundef %arrayidx)
  %cmp35.not = icmp eq ptr %call34, null
  br i1 %cmp35.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %10 = ptrtoint ptr %quota to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %quota, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %quota, align 4
  %12 = ptrtoint ptr %use_rx_hw_reordering to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %use_rx_hw_reordering, align 1, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool37.not = icmp eq i8 %13, 0
  br i1 %tobool37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %while.body
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call34, i32 0, i32 3
  %14 = ptrtoint ptr %cb.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %cb.i, align 1
  %and.i = and i32 %15, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %shr.i.i = lshr i32 %15, 21
  %and.i.i = and i32 %shr.i.i, 3
  %retval.0.i120 = select i1 %tobool.not.i, i32 0, i32 %and.i.i
  %arrayidx41 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 %retval.0.i120
  %16 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx41, align 4
  %tobool42.not = icmp eq ptr %17, null
  br i1 %tobool42.not, label %do.body54, label %cleanup.thread, !prof !240

do.body54:                                        ; preds = %if.then38
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_rx_handle_edma.__UNIQUE_ID_ddebug539, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_rx_handle_edma, %if.then66)) #12
          to label %cleanup [label %if.then66], !srcloc !241

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %main_ndev67 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %main_ndev67, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_rx_handle_edma.__UNIQUE_ID_ddebug539, ptr noundef %19, ptr noundef nonnull @.str.5, i32 noundef %retval.0.i120) #12
  br label %cleanup

cleanup.thread:                                   ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  %ndev76 = getelementptr inbounds %struct.wil6210_vif, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %ndev76 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ndev76, align 4
  tail call void @wil_netif_rx_any(ptr noundef nonnull %call34, ptr noundef %21) #12
  br label %while.cond.backedge

cleanup:                                          ; preds = %if.then66, %do.body54
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.5, i32 noundef %retval.0.i120) #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call34, i32 noundef 0) #12
  br label %while.cond.backedge

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @wil_rx_reorder(ptr noundef %wil, ptr noundef nonnull %call34) #12
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else, %cleanup, %cleanup.thread
  %22 = ptrtoint ptr %quota to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %quota, align 4
  %cmp32 = icmp sgt i32 %23, 0
  br i1 %cmp32, label %while.cond.backedge.land.rhs_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.cond.backedge.land.rhs_crit_edge:           ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %land.rhs.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %hwtail = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 59, i32 %i.0128, i32 5
  %24 = ptrtoint ptr %hwtail to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hwtail, align 4
  %swhead = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 59, i32 %i.0128, i32 4
  %26 = ptrtoint ptr %swhead to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %swhead, align 4
  %sub = add i32 %27, -1
  %size = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 59, i32 %i.0128, i32 2
  %28 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %size, align 4
  %conv80 = zext i16 %29 to i32
  %rem = urem i32 %sub, %conv80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !243
  tail call void @arm_heavy_mb() #12
  %30 = tail call i32 @llvm.bswap.i32(i32 %rem) #12
  %31 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %csr.i, align 4
  %sub.i = add i32 %25, -8912896
  %add.ptr.i = getelementptr i8, ptr %32, i32 %sub.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %30) #12, !srcloc !244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !245
  tail call void @arm_heavy_mb() #12
  br label %for.inc

for.inc:                                          ; preds = %while.end, %if.then30
  %inc = add nuw nsw i32 %i.0128, 1
  %33 = ptrtoint ptr %num_rx_status_rings to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %num_rx_status_rings, align 4
  %conv = zext i8 %34 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end16.for.end_crit_edge
  %call81 = tail call fastcc i32 @wil_rx_refill_edma(ptr noundef %wil)
  br label %cleanup82

cleanup82:                                        ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wil_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_dbg_trace(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @wil_sring_reap_rx_edma(ptr noundef %wil, ptr noundef %sring) unnamed_addr #0 align 64 {
entry:
  %msg1 = alloca %struct.wil_rx_status_extended, align 4
  %headstolen = alloca i8, align 1
  %delta = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wiphy = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 2
  %0 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wiphy, align 8
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 56, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %msg1) #12
  %4 = getelementptr inbounds %struct.wil_rx_status_compressed, ptr %msg1, i32 0, i32 1
  %5 = getelementptr inbounds %struct.wil_rx_status_compressed, ptr %msg1, i32 0, i32 2
  %6 = getelementptr inbounds %struct.wil_rx_status_compressed, ptr %msg1, i32 0, i32 3
  %rx_data = getelementptr inbounds %struct.wil_status_ring, ptr %sring, i32 0, i32 8
  %rx_buf_len = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 56
  %7 = call ptr @memset(ptr %msg1, i32 255, i32 32)
  %8 = ptrtoint ptr %rx_buf_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_buf_len, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %headstolen) #12
  %10 = ptrtoint ptr %headstolen to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %headstolen, align 1, !annotation !246
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %delta) #12
  %11 = ptrtoint ptr %delta to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %delta, align 4, !annotation !246
  %va.i = getelementptr inbounds %struct.wil_status_ring, ptr %sring, i32 0, i32 1
  %elem_size.i = getelementptr inbounds %struct.wil_status_ring, ptr %sring, i32 0, i32 3
  %swhead.i = getelementptr inbounds %struct.wil_status_ring, ptr %sring, i32 0, i32 4
  %12 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %va.i, align 4
  %14 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %elem_size.i, align 4
  %16 = ptrtoint ptr %swhead.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %swhead.i, align 4
  %mul.i567572 = mul i32 %17, %15
  %add.ptr.i568573 = getelementptr i8, ptr %13, i32 %mul.i567572
  %18 = ptrtoint ptr %add.ptr.i568573 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %add.ptr.i568573, align 1
  %shr.i.i569574 = lshr i32 %19, 31
  %conv.i570575 = trunc i32 %shr.i.i569574 to i8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  %20 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %elem_size.i, align 4
  %22 = call ptr @memcpy(ptr %msg1, ptr %add.ptr.i568573, i32 %21)
  %desc_rdy_pol = getelementptr inbounds %struct.wil_status_ring, ptr %sring, i32 0, i32 7
  %23 = ptrtoint ptr %desc_rdy_pol to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %desc_rdy_pol, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %conv.i570575)
  %cmp.not571576 = icmp eq i8 %24, %conv.i570575
  br i1 %cmp.not571576, label %if.end.lr.ph.lr.ph, label %entry.cleanup320_crit_edge

entry.cleanup320_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup320

if.end.lr.ph.lr.ph:                               ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint ptr %sring to i32
  %srings = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 59
  %sub.ptr.rhs.cast = ptrtoint ptr %srings to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 40
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %rx_buff_mgmt = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 66
  %size = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 66, i32 1
  %use_compressed_rx_status = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 100
  %size.i = getelementptr inbounds %struct.wil_status_ring, ptr %sring, i32 0, i32 2
  %invalid_buff_id_cnt = getelementptr inbounds %struct.wil_status_ring, ptr %sring, i32 0, i32 9
  %free = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 66, i32 3
  %prev.i2.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 66, i32 3, i32 1
  %conv86 = and i32 %sub.ptr.div, 65535
  %max_assoc_sta = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 26
  %skipping = getelementptr inbounds %struct.wil_status_ring, ptr %sring, i32 0, i32 8, i32 1
  %use_rx_hw_reordering = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 105
  br label %if.end

if.end:                                           ; preds = %if.end.backedge, %if.end.lr.ph.lr.ph
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %5, align 4
  %27 = call i16 @llvm.bswap.i16(i16 %26)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool.not563 = icmp eq i16 %26, 0
  br i1 %tobool.not563, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end.while.body_crit_edge
  %buff_id.0565 = phi i16 [ %43, %cleanup.while.body_crit_edge ], [ %27, %if.end.while.body_crit_edge ]
  %invalid_buff_id_retry.0564 = phi i32 [ %inc, %cleanup.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_sring_reap_rx_edma.__UNIQUE_ID_ddebug533, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_sring_reap_rx_edma, %if.then14)) #12
          to label %do.end19 [label %if.then14], !srcloc !241

if.then14:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %main_ndev, align 4
  %30 = ptrtoint ptr %swhead.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %swhead.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_sring_reap_rx_edma.__UNIQUE_ID_ddebug533, ptr noundef %29, ptr noundef nonnull @.str.17, i32 noundef %31) #12
  br label %do.end19

do.end19:                                         ; preds = %if.then14, %while.body
  %32 = ptrtoint ptr %swhead.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %swhead.i, align 4
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.17, i32 noundef %33) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %invalid_buff_id_retry.0564)
  %exitcond = icmp eq i32 %invalid_buff_id_retry.0564, 3
  br i1 %exitcond, label %do.end19.while.end_crit_edge, label %cleanup

do.end19.while.end_crit_edge:                     ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

cleanup:                                          ; preds = %do.end19
  %inc = add nuw nsw i32 %invalid_buff_id_retry.0564, 1
  %34 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %va.i, align 4
  %36 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %elem_size.i, align 4
  %38 = ptrtoint ptr %swhead.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %swhead.i, align 4
  %mul = mul i32 %39, %37
  %add.ptr = getelementptr i8, ptr %35, i32 %mul
  %40 = call ptr @memcpy(ptr %msg1, ptr %add.ptr, i32 32)
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %5, align 4
  %43 = call i16 @llvm.bswap.i16(i16 %42)
  %tobool.not = icmp eq i16 %42, 0
  br i1 %tobool.not, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %do.end19.while.end_crit_edge, %if.end.while.end_crit_edge
  %buff_id.0.lcssa = phi i16 [ %27, %if.end.while.end_crit_edge ], [ %buff_id.0565, %do.end19.while.end_crit_edge ], [ %43, %cleanup.while.end_crit_edge ]
  %conv29 = zext i16 %buff_id.0.lcssa to i32
  %44 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %buff_id.0.lcssa)
  %cmp.not.i = icmp ne i16 %buff_id.0.lcssa, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %conv29)
  %cmp1.i = icmp sgt i32 %45, %conv29
  %spec.select.i = and i1 %cmp.not.i, %cmp1.i
  br i1 %spec.select.i, label %if.end45, label %if.then39, !prof !248

if.then39:                                        ; preds = %while.end
  %46 = ptrtoint ptr %swhead.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %swhead.i, align 4
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef %conv29, i32 noundef %47) #12
  %48 = ptrtoint ptr %use_compressed_rx_status to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %use_compressed_rx_status, align 4, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool42.not = icmp eq i8 %49, 0
  %cond = select i1 %tobool42.not, i32 32, i32 16
  call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %msg1, i32 noundef %cond, i1 noundef zeroext false) #12
  %50 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %va.i, align 4
  %52 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %elem_size.i, align 4
  %54 = ptrtoint ptr %swhead.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %swhead.i, align 4
  %mul.i491 = mul i32 %55, %53
  %add.ptr.i492 = getelementptr i8, ptr %51, i32 %mul.i491
  %buff_id.i493 = getelementptr inbounds %struct.wil_rx_status_compressed, ptr %add.ptr.i492, i32 0, i32 2
  %56 = ptrtoint ptr %buff_id.i493 to i32
  call void @__asan_storeN_noabort(i32 %56, i32 2)
  store i16 0, ptr %buff_id.i493, align 1
  %57 = load i32, ptr %swhead.i, align 4
  %add.i = add i32 %57, 1
  %58 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %size.i, align 4
  %conv.i495 = zext i16 %59 to i32
  %rem.i = urem i32 %add.i, %conv.i495
  store i32 %rem.i, ptr %swhead.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.i = icmp eq i32 %rem.i, 0
  br i1 %cmp.i, label %if.then39.again.backedge.sink.split_crit_edge, label %if.then39.again.backedge_crit_edge

if.then39.again.backedge_crit_edge:               ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  br label %again.backedge

if.then39.again.backedge.sink.split_crit_edge:    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  br label %again.backedge.sink.split

again.backedge.sink.split:                        ; preds = %list_move_tail.exit.again.backedge.sink.split_crit_edge, %if.then39.again.backedge.sink.split_crit_edge
  %60 = ptrtoint ptr %desc_rdy_pol to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %desc_rdy_pol, align 1
  %sub.i509 = sub i8 1, %61
  store i8 %sub.i509, ptr %desc_rdy_pol, align 1
  br label %again.backedge

again.backedge:                                   ; preds = %list_move_tail.exit.again.backedge_crit_edge, %again.backedge.sink.split, %if.then39.again.backedge_crit_edge
  %62 = ptrtoint ptr %invalid_buff_id_cnt to i32
  call void @__asan_load4_noabort(i32 %62)
  %storemerge.in = load i32, ptr %invalid_buff_id_cnt, align 4
  %storemerge = add i32 %storemerge.in, 1
  store i32 %storemerge, ptr %invalid_buff_id_cnt, align 4
  %63 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %va.i, align 4
  %65 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %elem_size.i, align 4
  %67 = ptrtoint ptr %swhead.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %swhead.i, align 4
  %mul.i = mul i32 %68, %66
  %add.ptr.i = getelementptr i8, ptr %64, i32 %mul.i
  %69 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %add.ptr.i, align 1
  %shr.i.i = lshr i32 %70, 31
  %conv.i = trunc i32 %shr.i.i to i8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  %71 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %elem_size.i, align 4
  %73 = call ptr @memcpy(ptr %msg1, ptr %add.ptr.i, i32 %72)
  %74 = ptrtoint ptr %desc_rdy_pol to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %desc_rdy_pol, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %75, i8 %conv.i)
  %cmp.not = icmp eq i8 %75, %conv.i
  br i1 %cmp.not, label %again.backedge.if.end.backedge_crit_edge, label %again.backedge.cleanup320_crit_edge

again.backedge.cleanup320_crit_edge:              ; preds = %again.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup320

again.backedge.if.end.backedge_crit_edge:         ; preds = %again.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.backedge

if.end.backedge:                                  ; preds = %again.outer.backedge.if.end.backedge_crit_edge, %again.backedge.if.end.backedge_crit_edge
  br label %if.end

if.end45:                                         ; preds = %while.end
  %76 = ptrtoint ptr %rx_buff_mgmt to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rx_buff_mgmt, align 16
  %arrayidx = getelementptr %struct.wil_rx_buff, ptr %77, i32 %conv29
  %78 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx, align 4
  store ptr null, ptr %arrayidx, align 4
  %tobool53.not = icmp eq ptr %79, null
  br i1 %tobool53.not, label %if.then54, label %if.end63

if.then54:                                        ; preds = %if.end45
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.16, i32 noundef %conv29) #12
  %80 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %va.i, align 4
  %82 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %elem_size.i, align 4
  %84 = ptrtoint ptr %swhead.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %swhead.i, align 4
  %mul.i499 = mul i32 %85, %83
  %add.ptr.i500 = getelementptr i8, ptr %81, i32 %mul.i499
  %buff_id.i501 = getelementptr inbounds %struct.wil_rx_status_compressed, ptr %add.ptr.i500, i32 0, i32 2
  %86 = ptrtoint ptr %buff_id.i501 to i32
  call void @__asan_storeN_noabort(i32 %86, i32 2)
  store i16 0, ptr %buff_id.i501, align 1
  %87 = ptrtoint ptr %rx_buff_mgmt to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rx_buff_mgmt, align 16
  %list = getelementptr %struct.wil_rx_buff, ptr %88, i32 %conv29, i32 1
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then54.__list_del_entry.exit.i_crit_edge

if.then54.__list_del_entry.exit.i_crit_edge:      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr %struct.wil_rx_buff, ptr %88, i32 %conv29, i32 1, i32 1
  %89 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %prev.i.i, align 4
  %91 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %90, ptr %prev1.i.i.i, align 4
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %92, ptr %90, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then54.__list_del_entry.exit.i_crit_edge
  %95 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %96, ptr noundef %free) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %97 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %list, ptr %prev.i2.i, align 4
  %98 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %free, ptr %list, align 4
  %prev3.i.i.i = getelementptr %struct.wil_rx_buff, ptr %88, i32 %conv29, i32 1, i32 1
  %99 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %96, ptr %prev3.i.i.i, align 4
  %100 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %list, ptr %96, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %101 = ptrtoint ptr %swhead.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %swhead.i, align 4
  %add.i503 = add i32 %102, 1
  %103 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %size.i, align 4
  %conv.i505 = zext i16 %104 to i32
  %rem.i506 = urem i32 %add.i503, %conv.i505
  store i32 %rem.i506, ptr %swhead.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i506)
  %cmp.i507 = icmp eq i32 %rem.i506, 0
  br i1 %cmp.i507, label %list_move_tail.exit.again.backedge.sink.split_crit_edge, label %list_move_tail.exit.again.backedge_crit_edge

list_move_tail.exit.again.backedge_crit_edge:     ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %again.backedge

list_move_tail.exit.again.backedge.sink.split_crit_edge: ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %again.backedge.sink.split

if.end63:                                         ; preds = %if.end45
  %105 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %va.i, align 4
  %107 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %elem_size.i, align 4
  %109 = ptrtoint ptr %swhead.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %swhead.i, align 4
  %mul.i515 = mul i32 %110, %108
  %add.ptr.i516 = getelementptr i8, ptr %106, i32 %mul.i515
  %buff_id.i517 = getelementptr inbounds %struct.wil_rx_status_compressed, ptr %add.ptr.i516, i32 0, i32 2
  %111 = ptrtoint ptr %buff_id.i517 to i32
  call void @__asan_storeN_noabort(i32 %111, i32 2)
  store i16 0, ptr %buff_id.i517, align 1
  %112 = load i32, ptr %swhead.i, align 4
  %add.i519 = add i32 %112, 1
  %113 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %size.i, align 4
  %conv.i521 = zext i16 %114 to i32
  %rem.i522 = urem i32 %add.i519, %conv.i521
  store i32 %rem.i522, ptr %swhead.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i522)
  %cmp.i523 = icmp eq i32 %rem.i522, 0
  br i1 %cmp.i523, label %if.then.i526, label %if.end63.wil_sring_advance_swhead.exit527_crit_edge

if.end63.wil_sring_advance_swhead.exit527_crit_edge: ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_sring_advance_swhead.exit527

if.then.i526:                                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  %115 = ptrtoint ptr %desc_rdy_pol to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %desc_rdy_pol, align 1
  %sub.i525 = sub i8 1, %116
  store i8 %sub.i525, ptr %desc_rdy_pol, align 1
  br label %wil_sring_advance_swhead.exit527

wil_sring_advance_swhead.exit527:                 ; preds = %if.then.i526, %if.end63.wil_sring_advance_swhead.exit527_crit_edge
  %cb = getelementptr inbounds %struct.sk_buff, ptr %79, i32 0, i32 3
  %117 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %117)
  %pa.0.copyload = load i32, ptr %cb, align 8
  call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %pa.0.copyload, i32 noundef %9, i32 noundef 2, i32 noundef 0) #12
  %118 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %6, align 2
  %120 = call i16 @llvm.bswap.i16(i16 %119)
  %121 = ptrtoint ptr %use_compressed_rx_status to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %use_compressed_rx_status, align 4, !range !242
  call fastcc void @trace_wil6210_rx_status(ptr noundef %wil, i8 noundef zeroext %122, i16 noundef zeroext %buff_id.0.lcssa, ptr noundef nonnull %msg1)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_sring_reap_rx_edma.__UNIQUE_ID_ddebug534, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_sring_reap_rx_edma, %if.then83)) #12
          to label %do.end92 [label %if.then83], !srcloc !241

if.then83:                                        ; preds = %wil_sring_advance_swhead.exit527
  call void @__sanitizer_cov_trace_pc() #14
  %123 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %main_ndev, align 4
  %conv87 = zext i16 %120 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_sring_reap_rx_edma.__UNIQUE_ID_ddebug534, ptr noundef %124, ptr noundef nonnull @.str.22, i32 noundef %conv29, i32 noundef %conv86, i32 noundef %conv87) #12
  br label %do.end92

do.end92:                                         ; preds = %if.then83, %wil_sring_advance_swhead.exit527
  %conv95 = zext i16 %120 to i32
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.22, i32 noundef %conv29, i32 noundef %conv86, i32 noundef %conv95) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_sring_reap_rx_edma.__UNIQUE_ID_ddebug535, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_sring_reap_rx_edma, %if.then110)) #12
          to label %do.end117 [label %if.then110], !srcloc !241

if.then110:                                       ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #14
  %125 = ptrtoint ptr %use_compressed_rx_status to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %use_compressed_rx_status, align 4, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool112.not = icmp eq i8 %126, 0
  %cond114 = select i1 %tobool112.not, i32 32, i32 16
  call void @print_hex_dump(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.23, i32 noundef 0, i32 noundef 32, i32 noundef 4, ptr noundef nonnull %msg1, i32 noundef %cond114, i1 noundef zeroext false) #12
  br label %do.end117

do.end117:                                        ; preds = %if.then110, %do.end92
  %127 = ptrtoint ptr %rx_buff_mgmt to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %rx_buff_mgmt, align 16
  %list122 = getelementptr %struct.wil_rx_buff, ptr %128, i32 %conv29, i32 1
  %call.i.i528 = call zeroext i1 @__list_del_entry_valid(ptr noundef %list122) #12
  br i1 %call.i.i528, label %if.end.i.i531, label %do.end117.__list_del_entry.exit.i534_crit_edge

do.end117.__list_del_entry.exit.i534_crit_edge:   ; preds = %do.end117
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i534

if.end.i.i531:                                    ; preds = %do.end117
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i529 = getelementptr %struct.wil_rx_buff, ptr %128, i32 %conv29, i32 1, i32 1
  %129 = ptrtoint ptr %prev.i.i529 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %prev.i.i529, align 4
  %131 = ptrtoint ptr %list122 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %list122, align 4
  %prev1.i.i.i530 = getelementptr inbounds %struct.list_head, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %prev1.i.i.i530 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %130, ptr %prev1.i.i.i530, align 4
  %134 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile ptr %132, ptr %130, align 4
  br label %__list_del_entry.exit.i534

__list_del_entry.exit.i534:                       ; preds = %if.end.i.i531, %do.end117.__list_del_entry.exit.i534_crit_edge
  %135 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i533 = call zeroext i1 @__list_add_valid(ptr noundef %list122, ptr noundef %136, ptr noundef %free) #12
  br i1 %call.i.i.i533, label %if.end.i.i.i536, label %__list_del_entry.exit.i534.list_move_tail.exit537_crit_edge

__list_del_entry.exit.i534.list_move_tail.exit537_crit_edge: ; preds = %__list_del_entry.exit.i534
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_move_tail.exit537

if.end.i.i.i536:                                  ; preds = %__list_del_entry.exit.i534
  call void @__sanitizer_cov_trace_pc() #14
  %137 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %list122, ptr %prev.i2.i, align 4
  %138 = ptrtoint ptr %list122 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %free, ptr %list122, align 4
  %prev3.i.i.i535 = getelementptr %struct.wil_rx_buff, ptr %128, i32 %conv29, i32 1, i32 1
  %139 = ptrtoint ptr %prev3.i.i.i535 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %136, ptr %prev3.i.i.i535, align 4
  %140 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile ptr %list122, ptr %136, align 4
  br label %list_move_tail.exit537

list_move_tail.exit537:                           ; preds = %if.end.i.i.i536, %__list_del_entry.exit.i534.list_move_tail.exit537_crit_edge
  %141 = ptrtoint ptr %msg1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %msg1, align 4
  %143 = and i32 %142, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool126.not = icmp eq i32 %143, 0
  %shr.i.i.i = lshr i32 %142, 8
  %144 = and i32 %142, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool.not.i = icmp eq i32 %144, 0
  %145 = trunc i32 %shr.i.i.i to i8
  %146 = lshr i8 %145, 2
  %conv3.i = and i8 %146, 7
  %147 = lshr i8 %145, 4
  %retval.0.i539 = select i1 %tobool.not.i, i8 %147, i8 %conv3.i
  %conv129 = zext i8 %retval.0.i539 to i32
  %148 = ptrtoint ptr %max_assoc_sta to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %max_assoc_sta, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %149, i32 %conv129)
  %cmp1.i540 = icmp sgt i32 %149, %conv129
  br i1 %cmp1.i540, label %if.end141, label %if.then139, !prof !248

if.then139:                                       ; preds = %list_move_tail.exit537
  call void @__sanitizer_cov_trace_pc() #14
  %150 = ptrtoint ptr %swhead.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %swhead.i, align 4
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.16, i32 noundef %conv129, i32 noundef %151) #12
  br label %if.then209.sink.split

if.end141:                                        ; preds = %list_move_tail.exit537
  %stats143 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 63, i32 %conv129, i32 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %120)
  %cmp145 = icmp ult i16 %120, 14
  br i1 %cmp145, label %do.body156, label %if.end181, !prof !240

do.body156:                                       ; preds = %if.end141
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_sring_reap_rx_edma.__UNIQUE_ID_ddebug536, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_sring_reap_rx_edma, %if.then168)) #12
          to label %do.end175 [label %if.then168], !srcloc !241

if.then168:                                       ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #14
  %152 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %main_ndev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_sring_reap_rx_edma.__UNIQUE_ID_ddebug536, ptr noundef %153, ptr noundef nonnull @.str.25, i32 noundef %conv95) #12
  br label %do.end175

do.end175:                                        ; preds = %if.then168, %do.body156
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.25, i32 noundef %conv95) #12
  %rx_short_frame = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 63, i32 %conv129, i32 3, i32 10
  %154 = ptrtoint ptr %rx_short_frame to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %rx_short_frame, align 8
  %inc179 = add i32 %155, 1
  store i32 %inc179, ptr %rx_short_frame, align 8
  br label %if.then209.sink.split

if.end181:                                        ; preds = %if.end141
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv95)
  %cmp183 = icmp ult i32 %9, %conv95
  br i1 %cmp183, label %if.then191, label %skipping200, !prof !240

if.then191:                                       ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.16, i32 noundef %conv95) #12
  %156 = ptrtoint ptr %use_compressed_rx_status to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %use_compressed_rx_status, align 4, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool194.not = icmp eq i8 %157, 0
  %cond196 = select i1 %tobool194.not, i32 32, i32 16
  call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %msg1, i32 noundef %cond196, i1 noundef zeroext false) #12
  %rx_large_frame = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 63, i32 %conv129, i32 3, i32 11
  %158 = ptrtoint ptr %rx_large_frame to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %rx_large_frame, align 4
  %inc197 = add i32 %159, 1
  store i32 %inc197, ptr %rx_large_frame, align 4
  br label %if.then209.sink.split

skipping200:                                      ; preds = %if.end181
  %160 = ptrtoint ptr %skipping to i32
  call void @__asan_load1_noabort(i32 %160)
  %.pr = load i8, ptr %skipping, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool202.not = icmp eq i8 %.pr, 0
  br i1 %tobool202.not, label %if.end221, label %skipping200.if.then209_crit_edge, !prof !248

skipping200.if.then209_crit_edge:                 ; preds = %skipping200
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then209

if.then209.sink.split:                            ; preds = %if.then191, %do.end175, %if.then139
  %161 = ptrtoint ptr %skipping to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 1, ptr %skipping, align 4
  br label %if.then209

if.then209:                                       ; preds = %if.then209.sink.split, %skipping200.if.then209_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %79, i32 noundef 0) #12
  %162 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %rx_data, align 4
  %tobool211.not = icmp eq ptr %163, null
  br i1 %tobool211.not, label %if.then209.if.end215_crit_edge, label %if.then212

if.then209.if.end215_crit_edge:                   ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end215

if.then212:                                       ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree_skb_reason(ptr noundef nonnull %163, i32 noundef 0) #12
  %164 = ptrtoint ptr %rx_data to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr null, ptr %rx_data, align 4
  br label %if.end215

if.end215:                                        ; preds = %if.then212, %if.then209.if.end215_crit_edge
  %.lobit = lshr exact i32 %143, 30
  %165 = trunc i32 %.lobit to i8
  %166 = xor i8 %165, 1
  %167 = ptrtoint ptr %skipping to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %166, ptr %skipping, align 4
  br label %again.outer.backedge

again.outer.backedge:                             ; preds = %if.then295, %if.then286, %if.end246.again.outer.backedge_crit_edge, %if.else237, %if.end215
  %168 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %va.i, align 4
  %170 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %elem_size.i, align 4
  %172 = ptrtoint ptr %swhead.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %swhead.i, align 4
  %mul.i567 = mul i32 %173, %171
  %add.ptr.i568 = getelementptr i8, ptr %169, i32 %mul.i567
  %174 = ptrtoint ptr %add.ptr.i568 to i32
  call void @__asan_loadN_noabort(i32 %174, i32 4)
  %175 = load i32, ptr %add.ptr.i568, align 1
  %shr.i.i569 = lshr i32 %175, 31
  %conv.i570 = trunc i32 %shr.i.i569 to i8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  %176 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %elem_size.i, align 4
  %178 = call ptr @memcpy(ptr %msg1, ptr %add.ptr.i568, i32 %177)
  %179 = ptrtoint ptr %desc_rdy_pol to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %desc_rdy_pol, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %180, i8 %conv.i570)
  %cmp.not571 = icmp eq i8 %180, %conv.i570
  br i1 %cmp.not571, label %again.outer.backedge.if.end.backedge_crit_edge, label %again.outer.backedge.cleanup320_crit_edge

again.outer.backedge.cleanup320_crit_edge:        ; preds = %again.outer.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup320

again.outer.backedge.if.end.backedge_crit_edge:   ; preds = %again.outer.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.backedge

if.end221:                                        ; preds = %skipping200
  call void @skb_trim(ptr noundef nonnull %79, i32 noundef %conv95) #12
  %data = getelementptr inbounds %struct.sk_buff, ptr %79, i32 0, i32 19
  %181 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %data, align 4
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %182) #12, !srcloc !249
  %183 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %rx_data, align 4
  %tobool224.not = icmp eq ptr %184, null
  br i1 %tobool224.not, label %if.then225, label %if.else

if.then225:                                       ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #14
  %185 = ptrtoint ptr %rx_data to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %79, ptr %rx_data, align 4
  br label %if.end246

if.else:                                          ; preds = %if.end221
  %call228 = call zeroext i1 @skb_try_coalesce(ptr noundef nonnull %184, ptr noundef nonnull %79, ptr noundef nonnull %headstolen, ptr noundef nonnull %delta) #12
  br i1 %call228, label %if.then235, label %if.else237, !prof !248

if.then235:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %186 = ptrtoint ptr %headstolen to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %headstolen, align 1, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %187)
  %tobool236 = icmp ne i8 %187, 0
  call void @kfree_skb_partial(ptr noundef nonnull %79, i1 noundef zeroext %tobool236) #12
  br label %if.end246

if.else237:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.16) #12
  call void @kfree_skb_reason(ptr noundef nonnull %79, i32 noundef 0) #12
  %188 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %rx_data, align 4
  call void @kfree_skb_reason(ptr noundef %189, i32 noundef 0) #12
  %190 = ptrtoint ptr %rx_data to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr null, ptr %rx_data, align 4
  %.lobit557 = lshr exact i32 %143, 30
  %191 = trunc i32 %.lobit557 to i8
  %192 = xor i8 %191, 1
  %193 = ptrtoint ptr %skipping to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %192, ptr %skipping, align 4
  br label %again.outer.backedge

if.end246:                                        ; preds = %if.then235, %if.then225
  br i1 %tobool126.not, label %if.end246.again.outer.backedge_crit_edge, label %if.end249

if.end246.again.outer.backedge_crit_edge:         ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #14
  br label %again.outer.backedge

if.end249:                                        ; preds = %if.end246
  %194 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %rx_data, align 4
  store ptr null, ptr %rx_data, align 4
  %196 = ptrtoint ptr %skipping to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 0, ptr %skipping, align 4
  %tobool253.not = icmp eq ptr %stats143, null
  br i1 %tobool253.not, label %if.end249.if.end278_crit_edge, label %if.then254

if.end249.if.end278_crit_edge:                    ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end278

if.then254:                                       ; preds = %if.end249
  %197 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %4, align 4
  %shr.i.i541 = lshr i32 %198, 16
  %199 = trunc i32 %shr.i.i541 to i8
  %conv.i542 = and i8 %199, 63
  %conv256 = zext i8 %conv.i542 to i16
  %last_mcs_rx = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 63, i32 %conv129, i32 3, i32 17
  %200 = ptrtoint ptr %last_mcs_rx to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 %conv256, ptr %last_mcs_rx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %conv.i542)
  %cmp259 = icmp ult i8 %conv.i542, 16
  br i1 %cmp259, label %if.then261, label %if.else266

if.then261:                                       ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #14
  %conv258 = zext i8 %conv.i542 to i32
  br label %if.end276.sink.split

if.else266:                                       ; preds = %if.then254
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %conv.i542)
  %cmp269 = icmp eq i8 %conv.i542, 26
  br i1 %cmp269, label %if.else266.if.end276.sink.split_crit_edge, label %if.else266.if.end276_crit_edge

if.else266.if.end276_crit_edge:                   ; preds = %if.else266
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end276

if.else266.if.end276.sink.split_crit_edge:        ; preds = %if.else266
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end276.sink.split

if.end276.sink.split:                             ; preds = %if.else266.if.end276.sink.split_crit_edge, %if.then261
  %conv258.sink = phi i32 [ %conv258, %if.then261 ], [ 7, %if.else266.if.end276.sink.split_crit_edge ]
  %arrayidx264 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 63, i32 %conv129, i32 3, i32 19, i32 %conv258.sink
  %201 = ptrtoint ptr %arrayidx264 to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %arrayidx264, align 8
  %inc274 = add i64 %202, 1
  store i64 %inc274, ptr %arrayidx264, align 8
  br label %if.end276

if.end276:                                        ; preds = %if.end276.sink.split, %if.else266.if.end276_crit_edge
  %203 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %4, align 4
  %shr.i.i544 = lshr i32 %204, 22
  %205 = trunc i32 %shr.i.i544 to i8
  %conv.i545 = and i8 %205, 3
  %last_cb_mode_rx = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 63, i32 %conv129, i32 3, i32 18
  %206 = ptrtoint ptr %last_cb_mode_rx to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %conv.i545, ptr %last_cb_mode_rx, align 2
  br label %if.end278

if.end278:                                        ; preds = %if.end276, %if.end249.if.end278_crit_edge
  %207 = ptrtoint ptr %use_rx_hw_reordering to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %use_rx_hw_reordering, align 1, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %208)
  %tobool279.not = icmp eq i8 %208, 0
  br i1 %tobool279.not, label %land.lhs.true, label %if.end278.if.end287_crit_edge

if.end278.if.end287_crit_edge:                    ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end287

land.lhs.true:                                    ; preds = %if.end278
  %209 = ptrtoint ptr %use_compressed_rx_status to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %use_compressed_rx_status, align 4, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %210)
  %tobool281.not = icmp eq i8 %210, 0
  br i1 %tobool281.not, label %land.lhs.true282, label %land.lhs.true.if.end287_crit_edge

land.lhs.true.if.end287_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end287

land.lhs.true282:                                 ; preds = %land.lhs.true
  %call283 = call fastcc i32 @wil_check_bar(ptr noundef %wil, ptr noundef nonnull %msg1, i32 noundef %conv129, ptr noundef %195, ptr noundef %stats143)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call283)
  %cmp284 = icmp eq i32 %call283, -11
  br i1 %cmp284, label %if.then286, label %land.lhs.true282.if.end287_crit_edge

land.lhs.true282.if.end287_crit_edge:             ; preds = %land.lhs.true282
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end287

if.then286:                                       ; preds = %land.lhs.true282
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree_skb_reason(ptr noundef %195, i32 noundef 0) #12
  br label %again.outer.backedge

if.end287:                                        ; preds = %land.lhs.true282.if.end287_crit_edge, %land.lhs.true.if.end287_crit_edge, %if.end278.if.end287_crit_edge
  %211 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %4, align 4
  %shr.i.i547 = lshr i32 %212, 24
  %213 = trunc i32 %shr.i.i547 to i8
  %trunc.i = and i8 %213, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %trunc.i)
  %switch.selectcmp.i = icmp eq i8 %trunc.i, 3
  %switch.select.i = select i1 %switch.selectcmp.i, i8 2, i8 -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %trunc.i)
  %switch.selectcmp3.i = icmp eq i8 %trunc.i, 0
  %switch.select4.i = select i1 %switch.selectcmp3.i, i8 0, i8 %switch.select.i
  %conv289 = zext i8 %switch.select4.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %switch.select4.i)
  %cmp293 = icmp ugt i8 %switch.select4.i, 2
  br i1 %cmp293, label %if.then295, label %if.end297

if.then295:                                       ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.16, i32 noundef %conv289) #12
  call void @kfree_skb_reason(ptr noundef %195, i32 noundef 0) #12
  br label %again.outer.backedge

if.end297:                                        ; preds = %if.end287
  %call299 = call ptr @skb_pull(ptr noundef %195, i32 noundef %conv289) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_sring_reap_rx_edma.__UNIQUE_ID_ddebug537, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_sring_reap_rx_edma, %if.then312)) #12
          to label %do.end317 [label %if.then312], !srcloc !241

if.then312:                                       ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #14
  %data313 = getelementptr inbounds %struct.sk_buff, ptr %195, i32 0, i32 19
  %214 = ptrtoint ptr %data313 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %data313, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %195, i32 0, i32 6
  %216 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %195, i32 0, i32 7
  %218 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %data_len.i, align 8
  %sub.i548 = sub i32 %217, %219
  call void @print_hex_dump(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.29, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %215, i32 noundef %sub.i548, i1 noundef zeroext false) #12
  br label %do.end317

do.end317:                                        ; preds = %if.then312, %if.end297
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %195, i32 0, i32 3
  %220 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %elem_size.i, align 4
  %222 = call ptr @memcpy(ptr %cb.i, ptr %msg1, i32 %221)
  br label %cleanup320

cleanup320:                                       ; preds = %do.end317, %again.outer.backedge.cleanup320_crit_edge, %again.backedge.cleanup320_crit_edge, %entry.cleanup320_crit_edge
  %retval.0 = phi ptr [ %195, %do.end317 ], [ null, %entry.cleanup320_crit_edge ], [ null, %again.backedge.cleanup320_crit_edge ], [ null, %again.outer.backedge.cleanup320_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %delta) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %headstolen) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %msg1) #12
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_netif_rx_any(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_rx_reorder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wil_rx_refill_edma(ptr noundef %wil) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %edma_rx_swtail = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 55, i32 7
  %0 = ptrtoint ptr %edma_rx_swtail to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edma_rx_swtail, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %swtail = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 55, i32 3
  %4 = ptrtoint ptr %swtail to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %swtail, align 4
  %swhead.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 55, i32 4
  %size.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 55, i32 2
  %5 = ptrtoint ptr %swhead.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %swhead.i, align 4
  %add.i66 = add i32 %6, 1
  %7 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %size.i, align 4
  %conv.i67 = zext i16 %8 to i32
  %rem.i68 = urem i32 %add.i66, %conv.i67
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i68, i32 %3)
  %cmp.not69 = icmp eq i32 %rem.i68, %3
  br i1 %cmp.not69, label %entry.do.body26_crit_edge, label %for.body.lr.ph

entry.do.body26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body26

for.body.lr.ph:                                   ; preds = %entry
  %wiphy.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 2
  %rx_buf_len.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 56
  %rx_buff_mgmt.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 66
  %active1.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 66, i32 2
  %free3.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 66, i32 3
  %va.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 55, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %rem.i70 = phi i32 [ %rem.i68, %for.body.lr.ph ], [ %rem.i, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %swhead.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %swhead.i, align 4
  %11 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wiphy.i, align 8
  %parent.i.i = getelementptr inbounds %struct.wiphy, ptr %12, i32 0, i32 56, i32 1
  %13 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent.i.i, align 8
  %15 = ptrtoint ptr %rx_buf_len.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_buf_len.i, align 8
  %17 = ptrtoint ptr %rx_buff_mgmt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rx_buff_mgmt.i, align 16
  %19 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %va.i, align 4
  %arrayidx.i = getelementptr %union.wil_ring_desc, ptr %20, i32 %10
  %21 = ptrtoint ptr %free3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %free3.i, align 4
  %cmp.i.not.i = icmp eq ptr %22, %free3.i
  br i1 %cmp.i.not.i, label %do.body8, label %if.end.i, !prof !240

if.end.i:                                         ; preds = %for.body
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %16, i32 noundef 2592) #12
  %tobool11.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool11.not.i, label %if.end.i.if.else_crit_edge, label %if.end21.i, !prof !240

if.end.i.if.else_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.end21.i:                                       ; preds = %if.end.i
  %call22.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %16) #12
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15
  %23 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  store i16 %bf.clear.i, ptr %ip_summed.i, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %26 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len.i, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %25) #12
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.end21.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !248

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %14) #12
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 3
  %28 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %14, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %31, %if.end.i.i.i ], [ %29, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.42, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #12
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %14, i32 noundef -1) #12
  br label %if.then32.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end21.i
  tail call void @debug_dma_map_single(ptr noundef %14, ptr noundef %25, i32 noundef %27) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %32 = load ptr, ptr @mem_map, align 4
  %33 = ptrtoint ptr %25 to i32
  %sub.i.i = add i32 %33, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %32, i32 %shr.i.i
  %and.i.i = and i32 %33, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %14, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %27, i32 noundef 2, i32 noundef 0) #12
  tail call void @debug_dma_mapping_error(ptr noundef %14, i32 noundef %call41.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i74.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i74.i, label %dma_map_single_attrs.exit.i.if.then32.i_crit_edge, label %if.end33.i

dma_map_single_attrs.exit.i.if.then32.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then32.i

if.then32.i:                                      ; preds = %dma_map_single_attrs.exit.i.if.then32.i_crit_edge, %dma_map_single_attrs.exit.thread.i
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #12
  br label %if.else

if.end33.i:                                       ; preds = %dma_map_single_attrs.exit.i
  %34 = ptrtoint ptr %free3.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %free3.i, align 4
  %id.i = getelementptr i8, ptr %35, i32 8
  %36 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %id.i, align 4
  %conv.i48 = trunc i32 %37 to i16
  %call.i.i75.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %35) #12
  br i1 %call.i.i75.i, label %if.end.i.i76.i, label %if.end33.i.__list_del_entry.exit.i.i_crit_edge

if.end33.i.__list_del_entry.exit.i.i_crit_edge:   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i.i

if.end.i.i76.i:                                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i.i, align 4
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %35, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i76.i, %if.end33.i.__list_del_entry.exit.i.i_crit_edge
  %44 = ptrtoint ptr %active1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %active1.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %35, ptr noundef %active1.i, ptr noundef %45) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.for.inc_crit_edge

__list_del_entry.exit.i.i.for.inc_crit_edge:      ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %35, ptr %prev1.i.i2.i.i, align 4
  %47 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %45, ptr %35, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %48 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %active1.i, ptr %prev3.i.i.i.i, align 4
  %49 = ptrtoint ptr %active1.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %35, ptr %active1.i, align 4
  br label %for.inc

do.body8:                                         ; preds = %for.body
  %free_list_empty_cnt.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 66, i32 4
  %50 = ptrtoint ptr %free_list_empty_cnt.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %free_list_empty_cnt.i, align 8
  %inc.i = add i32 %51, 1
  store i32 %inc.i, ptr %free_list_empty_cnt.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_rx_refill_edma.__UNIQUE_ID_ddebug513, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_rx_refill_edma, %if.then17)) #12
          to label %do.end19 [label %if.then17], !srcloc !241

if.then17:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %52 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_rx_refill_edma.__UNIQUE_ID_ddebug513, ptr noundef %53, ptr noundef nonnull @.str.39) #12
  br label %do.end19

do.end19:                                         ; preds = %if.then17, %do.body8
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.39) #12
  br label %do.body26

if.else:                                          ; preds = %if.then32.i, %if.end.i.if.else_crit_edge
  %54 = ptrtoint ptr %swhead.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %swhead.i, align 4
  tail call void (ptr, ptr, ...) @__wil_err_ratelimited(ptr noundef %wil, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.38, i32 noundef -12, i32 noundef %55) #12
  br label %do.body26

for.inc:                                          ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.for.inc_crit_edge
  %idxprom.i = and i32 %37, 65535
  %arrayidx34.i = getelementptr %struct.wil_rx_buff, ptr %18, i32 %idxprom.i
  %56 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call.i.i.i, ptr %arrayidx34.i, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %call41.i.i) #12
  %conv37.i = trunc i32 %16 to i16
  %58 = tail call i16 @llvm.bswap.i16(i16 %conv37.i) #12
  %59 = tail call i16 @llvm.bswap.i16(i16 %conv.i48) #12
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 -1, ptr %arrayidx.i, align 1
  %dd.sroa.4.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 4
  %61 = ptrtoint ptr %dd.sroa.4.0.arrayidx.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 -1, ptr %dd.sroa.4.0.arrayidx.sroa_idx.i, align 1
  %dd.sroa.5.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 8
  %62 = ptrtoint ptr %dd.sroa.5.0.arrayidx.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 -1, ptr %dd.sroa.5.0.arrayidx.sroa_idx.i, align 1
  %dd.sroa.6.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 12
  %63 = ptrtoint ptr %dd.sroa.6.0.arrayidx.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %63, i32 2)
  store i16 %59, ptr %dd.sroa.6.0.arrayidx.sroa_idx.i, align 1
  %dd.sroa.8.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 14
  %64 = ptrtoint ptr %dd.sroa.8.0.arrayidx.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %64, i32 2)
  store i16 -1, ptr %dd.sroa.8.0.arrayidx.sroa_idx.i, align 1
  %dd.sroa.9.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 16
  %65 = ptrtoint ptr %dd.sroa.9.0.arrayidx.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 -1, ptr %dd.sroa.9.0.arrayidx.sroa_idx.i, align 1
  %dd.sroa.10.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 20
  %66 = ptrtoint ptr %dd.sroa.10.0.arrayidx.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 %57, ptr %dd.sroa.10.0.arrayidx.sroa_idx.i, align 1
  %dd.sroa.12.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 24
  %67 = ptrtoint ptr %dd.sroa.12.0.arrayidx.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %67, i32 2)
  store i16 0, ptr %dd.sroa.12.0.arrayidx.sroa_idx.i, align 1
  %dd.sroa.14.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 26
  %68 = ptrtoint ptr %dd.sroa.14.0.arrayidx.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %68, i32 2)
  store i16 -1, ptr %dd.sroa.14.0.arrayidx.sroa_idx.i, align 1
  %dd.sroa.15.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 28
  %69 = ptrtoint ptr %dd.sroa.15.0.arrayidx.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %69, i32 2)
  store i16 0, ptr %dd.sroa.15.0.arrayidx.sroa_idx.i, align 1
  %dd.sroa.17.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 30
  %70 = ptrtoint ptr %dd.sroa.17.0.arrayidx.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 %58, ptr %dd.sroa.17.0.arrayidx.sroa_idx.i, align 1
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %71 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call41.i.i, ptr %cb.i, align 8
  %72 = ptrtoint ptr %swhead.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %rem.i70, ptr %swhead.i, align 4
  %add.i = add nsw i32 %rem.i70, 1
  %73 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %size.i, align 4
  %conv.i = zext i16 %74 to i32
  %rem.i = urem i32 %add.i, %conv.i
  %75 = ptrtoint ptr %swtail to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %swtail, align 4
  %cmp.not = icmp eq i32 %rem.i, %76
  br i1 %cmp.not, label %for.inc.do.body26_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.do.body26_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body26

do.body26:                                        ; preds = %for.inc.do.body26_crit_edge, %if.else, %do.end19, %entry.do.body26_crit_edge
  %rc.1 = phi i32 [ -11, %do.end19 ], [ -12, %if.else ], [ 0, %entry.do.body26_crit_edge ], [ 0, %for.inc.do.body26_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !250
  tail call void @arm_heavy_mb() #12
  %hwtail = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 55, i32 5
  %77 = ptrtoint ptr %hwtail to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %hwtail, align 4
  %79 = ptrtoint ptr %swhead.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %swhead.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !243
  tail call void @arm_heavy_mb() #12
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #12
  %csr.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %82 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %csr.i, align 4
  %sub.i = add i32 %78, -8912896
  %add.ptr.i = getelementptr i8, ptr %83, i32 %sub.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %81) #12, !srcloc !244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !245
  tail call void @arm_heavy_mb() #12
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wil_tx_sring_handler(ptr noundef %wil, ptr nocapture noundef %sring) local_unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.wil_ring_tx_status, align 1
  %c = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wiphy = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 2
  %0 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wiphy, align 8
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 56, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #12
  %4 = getelementptr inbounds %struct.wil_ring_tx_status, ptr %msg, i32 0, i32 1
  %5 = getelementptr inbounds %struct.wil_ring_tx_status, ptr %msg, i32 0, i32 2
  %va.i = getelementptr inbounds %struct.wil_status_ring, ptr %sring, i32 0, i32 1
  %6 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %va.i, align 4
  %elem_size.i = getelementptr inbounds %struct.wil_status_ring, ptr %sring, i32 0, i32 3
  %8 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %elem_size.i, align 4
  %swhead.i = getelementptr inbounds %struct.wil_status_ring, ptr %sring, i32 0, i32 4
  %10 = ptrtoint ptr %swhead.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %swhead.i, align 4
  %mul.i = mul i32 %11, %9
  %add.ptr.i = getelementptr i8, ptr %7, i32 %mul.i
  %desc_ready.i = getelementptr inbounds %struct.wil_ring_tx_status, ptr %add.ptr.i, i32 0, i32 3
  %12 = ptrtoint ptr %desc_ready.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %desc_ready.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !251
  %14 = call ptr @memcpy(ptr %msg, ptr %add.ptr.i, i32 16)
  %desc_rdy_pol = getelementptr inbounds %struct.wil_status_ring, ptr %sring, i32 0, i32 7
  %dr_bit.0404 = lshr i8 %13, 7
  %15 = ptrtoint ptr %desc_rdy_pol to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %desc_rdy_pol, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %dr_bit.0404, i8 %16)
  %cmp405 = icmp eq i8 %dr_bit.0404, %16
  br i1 %cmp405, label %while.body.lr.ph, label %entry.if.end256_crit_edge

entry.if.end256_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end256

while.body.lr.ph:                                 ; preds = %entry
  %max_assoc_sta = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 26
  %main_ndev90 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %ring_idle_trsh = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 64
  %hwtail = getelementptr inbounds %struct.wil_status_ring, ptr %sring, i32 0, i32 5
  %csr.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %size.i380 = getelementptr inbounds %struct.wil_status_ring, ptr %sring, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %wil_sring_advance_swhead.exit.while.body_crit_edge, %while.body.lr.ph
  %desc_cnt.0408 = phi i32 [ 0, %while.body.lr.ph ], [ %desc_cnt.2, %wil_sring_advance_swhead.exit.while.body_crit_edge ]
  %num_statuses.0407 = phi i32 [ 0, %while.body.lr.ph ], [ %inc240, %wil_sring_advance_swhead.exit.while.body_crit_edge ]
  %vif.0406 = phi ptr [ inttoptr (i32 -1 to ptr), %while.body.lr.ph ], [ %vif.1, %wil_sring_advance_swhead.exit.while.body_crit_edge ]
  %17 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %msg, align 1
  %conv3 = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.wil_tx_sring_handler) #12
  br label %again

if.end:                                           ; preds = %while.body
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %4, align 1
  %conv5 = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %20)
  %cmp6 = icmp ugt i8 %20, 23
  br i1 %cmp6, label %if.then10, label %if.end11, !prof !240

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.wil_tx_sring_handler, i32 noundef %conv5) #12
  br label %again

if.end11:                                         ; preds = %if.end
  %va = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 57, i32 %conv5, i32 1
  %21 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %va, align 4
  %tobool12.not = icmp eq ptr %22, null
  br i1 %tobool12.not, label %if.then21, label %if.end22, !prof !240

if.then21:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.wil_tx_sring_handler, i32 noundef %conv5) #12
  br label %again

if.end22:                                         ; preds = %if.end11
  %enabled = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 58, i32 %conv5, i32 1
  %23 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool24.not = icmp eq i32 %24, 0
  br i1 %tobool24.not, label %if.then33, label %if.end34, !prof !240

if.then33:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__wil_info(ptr noundef %wil, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.wil_tx_sring_handler, i32 noundef %conv5) #12
  br label %again

if.end34:                                         ; preds = %if.end22
  %mid = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 58, i32 %conv5, i32 9
  %25 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %mid, align 2
  %idxprom = zext i8 %26 to i32
  %arrayidx35 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 %idxprom
  %27 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx35, align 4
  %tobool36.not = icmp eq ptr %28, null
  br i1 %tobool36.not, label %do.body47, label %if.end66, !prof !240

do.body47:                                        ; preds = %if.end34
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_tx_sring_handler.__UNIQUE_ID_ddebug540, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_tx_sring_handler, %if.then56)) #12
          to label %do.end61 [label %if.then56], !srcloc !241

if.then56:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %main_ndev90 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %main_ndev90, align 4
  %31 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %mid, align 2
  %conv58 = zext i8 %32 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_tx_sring_handler.__UNIQUE_ID_ddebug540, ptr noundef %30, ptr noundef nonnull @.str.10, i32 noundef %conv58, i32 noundef %conv5) #12
  br label %do.end61

do.end61:                                         ; preds = %if.then56, %do.body47
  %33 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %mid, align 2
  %conv63 = zext i8 %34 to i32
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.10, i32 noundef %conv63, i32 noundef %conv5) #12
  br label %again

if.end66:                                         ; preds = %if.end34
  %ndev67 = getelementptr inbounds %struct.wil6210_vif, ptr %28, i32 0, i32 1
  %35 = ptrtoint ptr %ndev67 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ndev67, align 4
  %arrayidx68 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 62, i32 %conv5
  %37 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx68, align 2
  %conv70 = zext i8 %38 to i32
  %39 = ptrtoint ptr %max_assoc_sta to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_assoc_sta, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv70)
  %cmp71 = icmp ugt i32 %40, %conv70
  %stats74 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 63, i32 %conv70, i32 3
  %spec.select = select i1 %cmp71, ptr %stats74, ptr null
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_tx_sring_handler.__UNIQUE_ID_ddebug541, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_tx_sring_handler, %if.then89)) #12
          to label %do.end95 [label %if.then89], !srcloc !241

if.then89:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %main_ndev90 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %main_ndev90, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_tx_sring_handler.__UNIQUE_ID_ddebug541, ptr noundef %42, ptr noundef nonnull @.str.11, i32 noundef %conv5, i32 noundef %conv3) #12
  br label %do.end95

do.end95:                                         ; preds = %if.then89, %if.end66
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.11, i32 noundef %conv5, i32 noundef %conv3) #12
  %swhead1.i = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 57, i32 %conv5, i32 4
  %43 = ptrtoint ptr %swhead1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %swhead1.i, align 4
  %swtail2.i = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 57, i32 %conv5, i32 3
  %45 = ptrtoint ptr %swtail2.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %swtail2.i, align 4
  %size.i = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 57, i32 %conv5, i32 2
  %47 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %size.i, align 4
  %conv.i = zext i16 %48 to i32
  %add.i = sub i32 %44, %46
  %sub.i = add i32 %add.i, %conv.i
  %ctx101 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 57, i32 %conv5, i32 6
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 36, i32 5
  %tobool183.not = icmp eq ptr %spec.select, null
  %tx_errors185 = getelementptr inbounds %struct.wil_net_stats, ptr %spec.select, i32 0, i32 4
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 36, i32 1
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 36, i32 3
  %tx_packets173 = getelementptr inbounds %struct.wil_net_stats, ptr %spec.select, i32 0, i32 1
  %tx_bytes176 = getelementptr inbounds %struct.wil_net_stats, ptr %spec.select, i32 0, i32 3
  %arrayidx179 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 63, i32 %conv70
  %umax = call i32 @llvm.umax.i32(i32 %conv3, i32 1)
  br label %for.body

for.body:                                         ; preds = %if.end198.for.body_crit_edge, %do.end95
  %i.0402 = phi i32 [ 0, %do.end95 ], [ %inc205, %if.end198.for.body_crit_edge ]
  %49 = ptrtoint ptr %ctx101 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ctx101, align 4
  %51 = ptrtoint ptr %swtail2.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %swtail2.i, align 4
  %arrayidx102 = getelementptr %struct.wil_ctx, ptr %50, i32 %52
  %53 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx102, align 4
  %55 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %va, align 4
  %arrayidx106 = getelementptr %union.wil_ring_desc, ptr %56, i32 %52
  %dd.sroa.11.0.arrayidx106.sroa_idx = getelementptr inbounds i8, ptr %arrayidx106, i32 20
  %57 = ptrtoint ptr %dd.sroa.11.0.arrayidx106.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %dd.sroa.11.0.copyload = load i32, ptr %dd.sroa.11.0.arrayidx106.sroa_idx, align 1
  %dd.sroa.17.0.arrayidx106.sroa_idx = getelementptr inbounds i8, ptr %arrayidx106, i32 30
  %58 = ptrtoint ptr %dd.sroa.17.0.arrayidx106.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %dd.sroa.17.0.copyload = load i16, ptr %dd.sroa.17.0.arrayidx106.sroa_idx, align 1
  %59 = call i16 @llvm.bswap.i16(i16 %dd.sroa.17.0.copyload)
  %conv108 = trunc i32 %52 to i16
  %conv109 = zext i16 %59 to i32
  call fastcc void @trace_wil6210_tx_status(ptr noundef nonnull %msg, i16 noundef zeroext %conv108, i32 noundef %conv109)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_tx_sring_handler.__UNIQUE_ID_ddebug542, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_tx_sring_handler, %if.then124)) #12
          to label %do.end133 [label %if.then124], !srcloc !241

if.then124:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %main_ndev90 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %main_ndev90, align 4
  %62 = ptrtoint ptr %swtail2.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %swtail2.i, align 4
  %64 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %5, align 1
  %conv128 = zext i8 %65 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_tx_sring_handler.__UNIQUE_ID_ddebug542, ptr noundef %61, ptr noundef nonnull @.str.12, i32 noundef %conv5, i32 noundef %63, i32 noundef %conv109, i32 noundef %conv128) #12
  br label %do.end133

do.end133:                                        ; preds = %if.then124, %for.body
  %66 = ptrtoint ptr %swtail2.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %swtail2.i, align 4
  %68 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %5, align 1
  %conv137 = zext i8 %69 to i32
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.12, i32 noundef %conv5, i32 noundef %67, i32 noundef %conv109, i32 noundef %conv137) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_tx_sring_handler.__UNIQUE_ID_ddebug543, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_tx_sring_handler, %if.then152)) #12
          to label %do.end155 [label %if.then152], !srcloc !241

if.then152:                                       ; preds = %do.end133
  call void @__sanitizer_cov_trace_pc() #14
  call void @print_hex_dump(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef 32, i32 noundef 4, ptr noundef nonnull %msg, i32 noundef 16, i1 noundef zeroext false) #12
  br label %do.end155

do.end155:                                        ; preds = %if.then152, %do.end133
  %mapped_as.i = getelementptr %struct.wil_ctx, ptr %50, i32 %52, i32 2
  %70 = ptrtoint ptr %mapped_as.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %mapped_as.i, align 1
  %.off.i = add i8 %71, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %sw.epilog.sink.split.i, label %do.end155.wil_tx_desc_unmap_edma.exit_crit_edge

do.end155.wil_tx_desc_unmap_edma.exit_crit_edge:  ; preds = %do.end155
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_tx_desc_unmap_edma.exit

sw.epilog.sink.split.i:                           ; preds = %do.end155
  call void @__sanitizer_cov_trace_pc() #14
  %72 = call i32 @llvm.bswap.i32(i32 %dd.sroa.11.0.copyload) #12
  call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %72, i32 noundef %conv109, i32 noundef 1, i32 noundef 0) #12
  br label %wil_tx_desc_unmap_edma.exit

wil_tx_desc_unmap_edma.exit:                      ; preds = %sw.epilog.sink.split.i, %do.end155.wil_tx_desc_unmap_edma.exit_crit_edge
  %tobool156.not = icmp eq ptr %54, null
  br i1 %tobool156.not, label %wil_tx_desc_unmap_edma.exit.if.end198_crit_edge, label %if.then157

wil_tx_desc_unmap_edma.exit.if.end198_crit_edge:  ; preds = %wil_tx_desc_unmap_edma.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end198

if.then157:                                       ; preds = %wil_tx_desc_unmap_edma.exit
  %73 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cmp160 = icmp eq i8 %74, 0
  br i1 %cmp160, label %if.then168, label %if.else, !prof !248

if.then168:                                       ; preds = %if.then157
  %75 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %76, 1
  store i32 %inc, ptr %tx_packets, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 6
  %77 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %len, align 4
  %79 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %80, %78
  store i32 %add, ptr %tx_bytes, align 4
  br i1 %tobool183.not, label %if.then168.if.end188_crit_edge, label %if.then172

if.then168.if.end188_crit_edge:                   ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end188

if.then172:                                       ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #14
  %81 = ptrtoint ptr %tx_packets173 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tx_packets173, align 4
  %inc174 = add i32 %82, 1
  store i32 %inc174, ptr %tx_packets173, align 4
  %83 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %len, align 4
  %85 = ptrtoint ptr %tx_bytes176 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tx_bytes176, align 4
  %add177 = add i32 %86, %84
  store i32 %add177, ptr %tx_bytes176, align 4
  call void @wil_tx_latency_calc(ptr noundef %wil, ptr noundef nonnull %54, ptr noundef %arrayidx179) #12
  br label %if.end188

if.else:                                          ; preds = %if.then157
  %87 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %tx_errors, align 4
  %inc182 = add i32 %88, 1
  store i32 %inc182, ptr %tx_errors, align 4
  br i1 %tobool183.not, label %if.else.if.end188_crit_edge, label %if.then184

if.else.if.end188_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end188

if.then184:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %89 = ptrtoint ptr %tx_errors185 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %tx_errors185, align 8
  %inc186 = add i32 %90, 1
  store i32 %inc186, ptr %tx_errors185, align 8
  br label %if.end188

if.end188:                                        ; preds = %if.then184, %if.else.if.end188_crit_edge, %if.then172, %if.then168.if.end188_crit_edge
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 15, i32 0, i32 18
  %91 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %92)
  %cmp190 = icmp eq i16 %92, -30578
  br i1 %cmp190, label %if.then192, label %if.end188.if.end193_crit_edge

if.end188.if.end193_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end193

if.then192:                                       ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #14
  call void @wil_tx_complete_handle_eapol(ptr noundef nonnull %28, ptr noundef nonnull %54) #12
  br label %if.end193

if.end193:                                        ; preds = %if.then192, %if.end188.if.end193_crit_edge
  %93 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %cmp196 = icmp eq i8 %94, 0
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 19
  %95 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %data.i.i.i, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %96, align 4
  %99 = and i32 %98, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool.i.not.i.i.i = icmp eq i32 %99, 0
  br i1 %tobool.i.not.i.i.i, label %land.lhs.true.i.i, label %if.end193.if.else.i_crit_edge

if.end193.if.else.i_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i.i:                                ; preds = %if.end193
  %100 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 1
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 4
  %tobool.not.i.i = icmp eq ptr %102, null
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.if.else.i_crit_edge, label %wil_need_txstat.exit.i

land.lhs.true.i.i.if.else.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

wil_need_txstat.exit.i:                           ; preds = %land.lhs.true.i.i
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 17
  %103 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %end.i.i.i, align 4
  %tx_flags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %104, i32 0, i32 3
  %105 = ptrtoint ptr %tx_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %tx_flags.i.i, align 1
  %107 = and i8 %106, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool3.i.not.i = icmp eq i8 %107, 0
  br i1 %tobool3.i.not.i, label %wil_need_txstat.exit.i.if.else.i_crit_edge, label %if.then.i, !prof !248

wil_need_txstat.exit.i.if.else.i_crit_edge:       ; preds = %wil_need_txstat.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then.i:                                        ; preds = %wil_need_txstat.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @skb_complete_wifi_ack(ptr noundef nonnull %54, i1 noundef zeroext %cmp196) #12
  br label %if.end198

if.else.i:                                        ; preds = %wil_need_txstat.exit.i.if.else.i_crit_edge, %land.lhs.true.i.i.if.else.i_crit_edge, %if.end193.if.else.i_crit_edge
  br i1 %cmp196, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__dev_kfree_skb_any(ptr noundef nonnull %54, i32 noundef 0) #12
  br label %if.end198

cond.false.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__dev_kfree_skb_any(ptr noundef nonnull %54, i32 noundef 1) #12
  br label %if.end198

if.end198:                                        ; preds = %cond.false.i, %cond.true.i, %if.then.i, %wil_tx_desc_unmap_edma.exit.if.end198_crit_edge
  %108 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_storeN_noabort(i32 %108, i32 8)
  store i64 0, ptr %arrayidx102, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !252
  call void @arm_heavy_mb() #12
  %109 = ptrtoint ptr %swtail2.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %swtail2.i, align 4
  %add.i365 = add i32 %110, 1
  %111 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %size.i, align 4
  %conv.i367 = zext i16 %112 to i32
  %rem.i368 = urem i32 %add.i365, %conv.i367
  store i32 %rem.i368, ptr %swtail2.i, align 4
  %inc205 = add nuw nsw i32 %i.0402, 1
  %exitcond.not = icmp eq i32 %inc205, %umax
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %if.end198.for.body_crit_edge

if.end198.for.body_crit_edge:                     ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %if.end198
  %rem.i = urem i32 %sub.i, %conv.i
  %113 = add i32 %desc_cnt.0408, %umax
  %114 = ptrtoint ptr %swhead1.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %swhead1.i, align 4
  %116 = ptrtoint ptr %swtail2.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %swtail2.i, align 4
  %118 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %size.i, align 4
  %conv.i372 = zext i16 %119 to i32
  %add.i373 = sub i32 %115, %117
  %sub.i374 = add i32 %add.i373, %conv.i372
  %rem.i375 = urem i32 %sub.i374, %conv.i372
  %120 = ptrtoint ptr %ring_idle_trsh to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %ring_idle_trsh, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %rem.i375)
  %cmp.not.i = icmp sge i32 %121, %rem.i375
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %rem.i)
  %cmp1.i = icmp slt i32 %121, %rem.i
  %spec.select.i = and i1 %cmp.not.i, %cmp1.i
  br i1 %spec.select.i, label %do.body211, label %for.cond.for.end_crit_edge.again_crit_edge

for.cond.for.end_crit_edge.again_crit_edge:       ; preds = %for.cond.for.end_crit_edge
  call void @__sanitizer_cov_trace_pc() #14
  br label %again

do.body211:                                       ; preds = %for.cond.for.end_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_tx_sring_handler.__UNIQUE_ID_ddebug544, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_tx_sring_handler, %if.then223)) #12
          to label %do.end229 [label %if.then223], !srcloc !241

if.then223:                                       ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #14
  %122 = ptrtoint ptr %main_ndev90 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %main_ndev90, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_tx_sring_handler.__UNIQUE_ID_ddebug544, ptr noundef %123, ptr noundef nonnull @.str.15, i32 noundef %conv5, i32 noundef %rem.i, i32 noundef %rem.i375) #12
  br label %do.end229

do.end229:                                        ; preds = %if.then223, %do.body211
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.15, i32 noundef %conv5, i32 noundef %rem.i, i32 noundef %rem.i375) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #12
  %124 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 -1, ptr %c, align 4, !annotation !246
  %call233 = call i32 @read_current_timer(ptr noundef nonnull %c) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233)
  %tobool234.not = icmp eq i32 %call233, 0
  br i1 %tobool234.not, label %cond.false236, label %do.end229.cond.end237_crit_edge

do.end229.cond.end237_crit_edge:                  ; preds = %do.end229
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end237

cond.false236:                                    ; preds = %do.end229
  call void @__sanitizer_cov_trace_pc() #14
  %125 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %c, align 4
  br label %cond.end237

cond.end237:                                      ; preds = %cond.false236, %do.end229.cond.end237_crit_edge
  %cond238 = phi i32 [ %126, %cond.false236 ], [ 0, %do.end229.cond.end237_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #12
  %last_idle = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 58, i32 %conv5, i32 3
  %127 = ptrtoint ptr %last_idle to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %cond238, ptr %last_idle, align 4
  br label %again

again:                                            ; preds = %cond.end237, %for.cond.for.end_crit_edge.again_crit_edge, %do.end61, %if.then33, %if.then21, %if.then10, %if.then
  %vif.1 = phi ptr [ %vif.0406, %if.then10 ], [ %vif.0406, %if.then21 ], [ %vif.0406, %if.then33 ], [ null, %do.end61 ], [ %28, %cond.end237 ], [ %28, %for.cond.for.end_crit_edge.again_crit_edge ], [ %vif.0406, %if.then ]
  %desc_cnt.2 = phi i32 [ %desc_cnt.0408, %if.then10 ], [ %desc_cnt.0408, %if.then21 ], [ %desc_cnt.0408, %if.then33 ], [ %desc_cnt.0408, %do.end61 ], [ %113, %cond.end237 ], [ %113, %for.cond.for.end_crit_edge.again_crit_edge ], [ %desc_cnt.0408, %if.then ]
  %inc240 = add i32 %num_statuses.0407, 1
  %rem = and i32 %inc240, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp241 = icmp eq i32 %rem, 0
  br i1 %cmp241, label %if.then243, label %again.if.end244_crit_edge

again.if.end244_crit_edge:                        ; preds = %again
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end244

if.then243:                                       ; preds = %again
  call void @__sanitizer_cov_trace_pc() #14
  %128 = ptrtoint ptr %hwtail to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %hwtail, align 4
  %130 = ptrtoint ptr %swhead.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %swhead.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !243
  call void @arm_heavy_mb() #12
  %132 = call i32 @llvm.bswap.i32(i32 %131) #12
  %133 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %csr.i, align 4
  %sub.i376 = add i32 %129, -8912896
  %add.ptr.i377 = getelementptr i8, ptr %134, i32 %sub.i376
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i377, i32 %132) #12, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !245
  call void @arm_heavy_mb() #12
  br label %if.end244

if.end244:                                        ; preds = %if.then243, %again.if.end244_crit_edge
  %135 = ptrtoint ptr %swhead.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %swhead.i, align 4
  %add.i379 = add i32 %136, 1
  %137 = ptrtoint ptr %size.i380 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %size.i380, align 4
  %conv.i381 = zext i16 %138 to i32
  %rem.i382 = urem i32 %add.i379, %conv.i381
  store i32 %rem.i382, ptr %swhead.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i382)
  %cmp.i = icmp eq i32 %rem.i382, 0
  br i1 %cmp.i, label %if.then.i384, label %if.end244.wil_sring_advance_swhead.exit_crit_edge

if.end244.wil_sring_advance_swhead.exit_crit_edge: ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_sring_advance_swhead.exit

if.then.i384:                                     ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #14
  %139 = ptrtoint ptr %desc_rdy_pol to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %desc_rdy_pol, align 1
  %sub.i383 = sub i8 1, %140
  store i8 %sub.i383, ptr %desc_rdy_pol, align 1
  br label %wil_sring_advance_swhead.exit

wil_sring_advance_swhead.exit:                    ; preds = %if.then.i384, %if.end244.wil_sring_advance_swhead.exit_crit_edge
  %141 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %va.i, align 4
  %143 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %elem_size.i, align 4
  %mul.i388 = mul i32 %144, %rem.i382
  %add.ptr.i389 = getelementptr i8, ptr %142, i32 %mul.i388
  %desc_ready.i390 = getelementptr inbounds %struct.wil_ring_tx_status, ptr %add.ptr.i389, i32 0, i32 3
  %145 = ptrtoint ptr %desc_ready.i390 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %desc_ready.i390, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !251
  %147 = call ptr @memcpy(ptr %msg, ptr %add.ptr.i389, i32 16)
  %dr_bit.0 = lshr i8 %146, 7
  %148 = ptrtoint ptr %desc_rdy_pol to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %desc_rdy_pol, align 1
  %cmp = icmp eq i8 %dr_bit.0, %149
  br i1 %cmp, label %wil_sring_advance_swhead.exit.while.body_crit_edge, label %while.end

wil_sring_advance_swhead.exit.while.body_crit_edge: ; preds = %wil_sring_advance_swhead.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %wil_sring_advance_swhead.exit
  %phi.bo = and i32 %inc240, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %desc_cnt.2)
  %tobool245.not = icmp eq i32 %desc_cnt.2, 0
  br i1 %tobool245.not, label %while.end.if.end247_crit_edge, label %if.then246

while.end.if.end247_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end247

if.then246:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @wil_update_net_queues(ptr noundef %wil, ptr noundef %vif.1, ptr noundef null, i1 noundef zeroext false) #12
  br label %if.end247

if.end247:                                        ; preds = %if.then246, %while.end.if.end247_crit_edge
  %desc_cnt.0.lcssa417 = phi i32 [ %desc_cnt.2, %if.then246 ], [ 0, %while.end.if.end247_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo)
  %cmp249.not = icmp eq i32 %phi.bo, 0
  br i1 %cmp249.not, label %if.end247.if.end256_crit_edge, label %if.then251

if.end247.if.end256_crit_edge:                    ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end256

if.then251:                                       ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #14
  %hwtail252 = getelementptr inbounds %struct.wil_status_ring, ptr %sring, i32 0, i32 5
  %150 = ptrtoint ptr %hwtail252 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %hwtail252, align 4
  %152 = ptrtoint ptr %swhead.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %swhead.i, align 4
  %sub = add i32 %153, -1
  %size = getelementptr inbounds %struct.wil_status_ring, ptr %sring, i32 0, i32 2
  %154 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %size, align 4
  %conv254 = zext i16 %155 to i32
  %rem255 = urem i32 %sub, %conv254
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !243
  call void @arm_heavy_mb() #12
  %156 = call i32 @llvm.bswap.i32(i32 %rem255) #12
  %csr.i391 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %157 = ptrtoint ptr %csr.i391 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %csr.i391, align 4
  %sub.i392 = add i32 %151, -8912896
  %add.ptr.i393 = getelementptr i8, ptr %158, i32 %sub.i392
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i393, i32 %156) #12, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !245
  call void @arm_heavy_mb() #12
  br label %if.end256

if.end256:                                        ; preds = %if.then251, %if.end247.if.end256_crit_edge, %entry.if.end256_crit_edge
  %desc_cnt.0.lcssa417421 = phi i32 [ %desc_cnt.0.lcssa417, %if.then251 ], [ %desc_cnt.0.lcssa417, %if.end247.if.end256_crit_edge ], [ 0, %entry.if.end256_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #12
  ret i32 %desc_cnt.0.lcssa417421
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wil_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_wil6210_tx_status(ptr noundef %msg, i16 noundef zeroext %index, i32 noundef %len) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wil6210_tx_status, i32 0, i32 1), ptr blockaddress(@trace_wil6210_tx_status, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !241

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !230) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !248

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !230) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !253
  %call42 = tail call i32 @__traceiter_wil6210_tx_status(ptr noundef null, ptr noundef %msg, i16 noundef zeroext %index, i32 noundef %len) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !254
  %13 = tail call i32 @llvm.read_register.i32(metadata !230) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !230) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !248

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !230) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !255
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wil6210_tx_status, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wil6210_tx_status, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_wil6210_tx_status.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_wil6210_tx_status.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 276, ptr noundef nonnull @.str.31) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !256
  %31 = tail call i32 @llvm.read_register.i32(metadata !230) #12
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
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wil_tx_desc_unmap_edma(ptr noundef %dev, ptr nocapture noundef readonly %desc, ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mapped_as = getelementptr inbounds %struct.wil_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %mapped_as to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mapped_as, align 1
  %.off = add i8 %1, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %sw.epilog.sink.split, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %length = getelementptr inbounds %struct.wil_tx_enhanced_desc, ptr %desc, i32 0, i32 1, i32 7
  %2 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %length, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %addr.i = getelementptr inbounds %struct.wil_tx_enhanced_desc, ptr %desc, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %addr.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %addr.i, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  %conv4 = zext i16 %4 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %7, i32 noundef %conv4, i32 noundef 1, i32 noundef 0) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_tx_latency_calc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_tx_complete_handle_eapol(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @read_current_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_update_net_queues(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @wil_init_txrx_ops_edma(ptr nocapture noundef writeonly %wil) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %txrx_ops = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68
  %0 = ptrtoint ptr %txrx_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @wil_configure_interrupt_moderation_edma, ptr %txrx_ops, align 16
  %ring_init_tx = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 1
  %1 = ptrtoint ptr %ring_init_tx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @wil_ring_init_tx_edma, ptr %ring_init_tx, align 4
  %ring_fini_tx = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 2
  %2 = ptrtoint ptr %ring_fini_tx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @wil_ring_free_edma, ptr %ring_fini_tx, align 8
  %ring_init_bcast = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 3
  %3 = ptrtoint ptr %ring_init_bcast to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @wil_ring_init_bcast_edma, ptr %ring_init_bcast, align 4
  %tx_init = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 4
  %4 = ptrtoint ptr %tx_init to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @wil_tx_init_edma, ptr %tx_init, align 16
  %tx_fini = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 5
  %5 = ptrtoint ptr %tx_fini to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @wil_tx_fini_edma, ptr %tx_fini, align 4
  %tx_desc_map = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 6
  %6 = ptrtoint ptr %tx_desc_map to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @wil_tx_desc_map_edma, ptr %tx_desc_map, align 8
  %tx_desc_unmap = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 7
  %7 = ptrtoint ptr %tx_desc_unmap to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @wil_tx_desc_unmap_edma, ptr %tx_desc_unmap, align 4
  %tx_ring_tso = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 8
  %8 = ptrtoint ptr %tx_ring_tso to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @__wil_tx_ring_tso_edma, ptr %tx_ring_tso, align 16
  %tx_ring_modify = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 9
  %9 = ptrtoint ptr %tx_ring_modify to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @wil_tx_ring_modify_edma, ptr %tx_ring_modify, align 4
  %rx_init = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 11
  %10 = ptrtoint ptr %rx_init to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @wil_rx_init_edma, ptr %rx_init, align 4
  %wmi_addba_rx_resp = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 13
  %11 = ptrtoint ptr %wmi_addba_rx_resp to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @wmi_addba_rx_resp_edma, ptr %wmi_addba_rx_resp, align 4
  %get_reorder_params = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 14
  %12 = ptrtoint ptr %get_reorder_params to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @wil_get_reorder_params_edma, ptr %get_reorder_params, align 8
  %get_netif_rx_params = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 15
  %13 = ptrtoint ptr %get_netif_rx_params to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @wil_get_netif_rx_params_edma, ptr %get_netif_rx_params, align 4
  %rx_crypto_check = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 16
  %14 = ptrtoint ptr %rx_crypto_check to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @wil_rx_crypto_check_edma, ptr %rx_crypto_check, align 16
  %rx_error_check = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 17
  %15 = ptrtoint ptr %rx_error_check to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @wil_rx_error_check_edma, ptr %rx_error_check, align 4
  %is_rx_idle = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 18
  %16 = ptrtoint ptr %is_rx_idle to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @wil_is_rx_idle_edma, ptr %is_rx_idle, align 8
  %rx_fini = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 12
  %17 = ptrtoint ptr %rx_fini to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @wil_rx_fini_edma, ptr %rx_fini, align 16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_configure_interrupt_moderation_edma(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_ring_init_tx_edma(ptr noundef %vif, i32 noundef %ring_id, i32 noundef %size, i32 noundef %cid, i32 noundef %tid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wil1 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 2
  %0 = ptrtoint ptr %wil1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wil1, align 8
  %arrayidx = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 57, i32 %ring_id
  %arrayidx2 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 58, i32 %ring_id
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 69, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !240

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 704, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_ring_init_tx_edma.__UNIQUE_ID_ddebug524, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_ring_init_tx_edma, %if.then38)) #12
          to label %do.end43 [label %if.then38], !srcloc !241

if.then38:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %main_ndev, align 4
  %tx_sring_idx = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 61
  %5 = ptrtoint ptr %tx_sring_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_sring_idx, align 16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_ring_init_tx_edma.__UNIQUE_ID_ddebug524, ptr noundef %4, ptr noundef nonnull @.str.44, i32 noundef %ring_id, i32 noundef %cid, i32 noundef %tid, i32 noundef %6) #12
  br label %do.end43

do.end43:                                         ; preds = %if.then38, %if.end
  %tx_sring_idx44 = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 61
  %7 = ptrtoint ptr %tx_sring_idx44 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_sring_idx44, align 16
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.44, i32 noundef %ring_id, i32 noundef %cid, i32 noundef %tid, i32 noundef %8) #12
  tail call void @wil_tx_data_init(ptr noundef %arrayidx2) #12
  %conv = trunc i32 %size to i16
  %size47 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 57, i32 %ring_id, i32 2
  %9 = ptrtoint ptr %size47 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %size47, align 4
  %call48 = tail call fastcc i32 @wil_ring_alloc_desc_ring(ptr noundef %1, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %do.end43.cleanup_crit_edge

do.end43.cleanup_crit_edge:                       ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end51:                                         ; preds = %do.end43
  %conv52 = trunc i32 %cid to i8
  %arrayidx53 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 62, i32 %ring_id
  %10 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv52, ptr %arrayidx53, align 2
  %conv55 = trunc i32 %tid to i8
  %arrayidx58 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 62, i32 %ring_id, i32 1
  %11 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv55, ptr %arrayidx58, align 1
  %privacy = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 5
  %12 = ptrtoint ptr %privacy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %privacy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool59.not = icmp eq i32 %13, 0
  br i1 %tobool59.not, label %if.then60, label %if.end51.if.end61_crit_edge

if.end51.if.end61_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.then60:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %arrayidx2, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.end51.if.end61_crit_edge
  %call62 = tail call i32 @wil_wmi_tx_desc_ring_add(ptr noundef %vif, i32 noundef %ring_id, i32 noundef %cid, i32 noundef %tid) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.then64

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43) #12
  %lock = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 58, i32 %ring_id, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %15 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx2, align 4
  %enabled = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 58, i32 %ring_id, i32 1
  %16 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %enabled, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  tail call void @wil_ring_free_edma(ptr noundef %1, ptr noundef %arrayidx)
  %max_assoc_sta = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 26
  %17 = ptrtoint ptr %max_assoc_sta to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_assoc_sta, align 8
  %conv78 = trunc i32 %18 to i8
  %19 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv78, ptr %arrayidx53, align 2
  %20 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx58, align 1
  br label %cleanup

if.end65:                                         ; preds = %if.end61
  %21 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx2, align 4, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool67.not = icmp eq i8 %22, 0
  br i1 %tobool67.not, label %if.end65.cleanup_crit_edge, label %land.lhs.true

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end65
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @agg_wsize to i32))
  %23 = load i32, ptr @agg_wsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp69 = icmp sgt i32 %23, -1
  br i1 %cmp69, label %if.then71, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then71:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %conv72 = trunc i32 %ring_id to i8
  %conv73 = trunc i32 %23 to i16
  %call74 = tail call i32 @wil_addba_tx_request(ptr noundef %1, i8 noundef zeroext %conv72, i16 noundef zeroext %conv73) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then71, %land.lhs.true.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %if.then64, %do.end43.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then71 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end65.cleanup_crit_edge ], [ %call48, %do.end43.cleanup_crit_edge ], [ %call62, %if.then64 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wil_ring_free_edma(ptr noundef %wil, ptr noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wiphy = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 2
  %0 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wiphy, align 8
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 56, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %va = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 1
  %4 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %va, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup150_crit_edge, label %if.end

entry.cleanup150_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup150

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %size, align 4
  %conv = zext i16 %7 to i32
  %mul = shl nuw nsw i32 %conv, 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %8 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not = icmp eq i32 %8, 0
  br i1 %tobool1.not, label %if.end.if.end20_crit_edge, label %land.rhs

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

land.rhs:                                         ; preds = %if.end
  %dep_map = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 69, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end20_crit_edge, !prof !240

land.rhs.if.end20_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 429, i32 noundef 9, ptr noundef null) #12
  br label %if.end20

if.end20:                                         ; preds = %do.end, %land.rhs.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %is_rx = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 8
  %9 = ptrtoint ptr %is_rx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_rx, align 4, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool29.not = icmp eq i8 %10, 0
  br i1 %tobool29.not, label %if.end62, label %do.body33

do.body33:                                        ; preds = %if.end20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_ring_free_edma.__UNIQUE_ID_ddebug518, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_ring_free_edma, %if.then43)) #12
          to label %do.end51 [label %if.then43], !srcloc !241

if.then43:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %11 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %main_ndev, align 4
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %size, align 4
  %conv45 = zext i16 %14 to i32
  %15 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %va, align 4
  %ctx = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 6
  %17 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_ring_free_edma.__UNIQUE_ID_ddebug518, ptr noundef %12, ptr noundef nonnull @.str.52, i32 noundef %conv45, ptr noundef %16, ptr noundef %ring, ptr noundef %18) #12
  br label %do.end51

do.end51:                                         ; preds = %if.then43, %do.body33
  %19 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %size, align 4
  %conv53 = zext i16 %20 to i32
  %21 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %va, align 4
  %ctx56 = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 6
  %23 = ptrtoint ptr %ctx56 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctx56, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.52, i32 noundef %conv53, ptr noundef %22, ptr noundef %ring, ptr noundef %24) #12
  tail call fastcc void @wil_move_all_rx_buff_to_free_list(ptr noundef %wil)
  %edma_rx_swtail = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 7
  %25 = ptrtoint ptr %edma_rx_swtail to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %edma_rx_swtail, align 4
  %pa61 = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 7, i32 1
  %27 = ptrtoint ptr %pa61 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pa61, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef 4, ptr noundef %26, i32 noundef %28, i32 noundef 0) #12
  br label %out

if.end62:                                         ; preds = %if.end20
  %ring_tx = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 57
  %sub.ptr.lhs.cast = ptrtoint ptr %ring to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %ring_tx to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_ring_free_edma.__UNIQUE_ID_ddebug519, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_ring_free_edma, %if.then77)) #12
          to label %do.end88 [label %if.then77], !srcloc !241

if.then77:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev78 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %29 = ptrtoint ptr %main_ndev78 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %main_ndev78, align 4
  %31 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %size, align 4
  %conv80 = zext i16 %32 to i32
  %33 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %va, align 4
  %ctx83 = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 6
  %35 = ptrtoint ptr %ctx83 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ctx83, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_ring_free_edma.__UNIQUE_ID_ddebug519, ptr noundef %30, ptr noundef nonnull @.str.53, i32 noundef %sub.ptr.div, i32 noundef %conv80, ptr noundef %34, ptr noundef %ring, ptr noundef %36) #12
  br label %do.end88

do.end88:                                         ; preds = %if.then77, %if.end62
  %37 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %size, align 4
  %conv90 = zext i16 %38 to i32
  %39 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %va, align 4
  %ctx93 = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 6
  %41 = ptrtoint ptr %ctx93 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ctx93, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.53, i32 noundef %sub.ptr.div, i32 noundef %conv90, ptr noundef %40, ptr noundef %ring, ptr noundef %42) #12
  %swhead.i = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 4
  %swtail.i = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 3
  %43 = ptrtoint ptr %swhead.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %swhead.i, align 4
  %45 = ptrtoint ptr %swtail.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %swtail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp.i.not227 = icmp eq i32 %44, %46
  br i1 %cmp.i.not227, label %do.end88.out_crit_edge, label %while.body.lr.ph

do.end88.out_crit_edge:                           ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

while.body.lr.ph:                                 ; preds = %do.end88
  %main_ndev122 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %47 = phi i32 [ %46, %while.body.lr.ph ], [ %rem.i223, %cleanup.while.body_crit_edge ]
  %48 = ptrtoint ptr %ctx93 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ctx93, align 4
  %arrayidx104 = getelementptr %struct.wil_ctx, ptr %49, i32 %47
  %tobool105.not = icmp eq ptr %arrayidx104, null
  br i1 %tobool105.not, label %do.body109, label %if.end134

do.body109:                                       ; preds = %while.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_ring_free_edma.__UNIQUE_ID_ddebug520, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_ring_free_edma, %if.then121)) #12
          to label %do.end128 [label %if.then121], !srcloc !241

if.then121:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %main_ndev122 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %main_ndev122, align 4
  %52 = ptrtoint ptr %swtail.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %swtail.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_ring_free_edma.__UNIQUE_ID_ddebug520, ptr noundef %51, ptr noundef nonnull @.str.54, i32 noundef %53) #12
  br label %do.end128

do.end128:                                        ; preds = %if.then121, %do.body109
  %54 = ptrtoint ptr %swtail.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %swtail.i, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.54, i32 noundef %55) #12
  br label %cleanup

if.end134:                                        ; preds = %while.body
  %mapped_as.i = getelementptr %struct.wil_ctx, ptr %49, i32 %47, i32 2
  %56 = ptrtoint ptr %mapped_as.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %mapped_as.i, align 1
  %.off.i = add i8 %57, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %sw.epilog.sink.split.i, label %if.end134.wil_tx_desc_unmap_edma.exit_crit_edge

if.end134.wil_tx_desc_unmap_edma.exit_crit_edge:  ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_tx_desc_unmap_edma.exit

sw.epilog.sink.split.i:                           ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #14
  %58 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %va, align 4
  %arrayidx = getelementptr %union.wil_ring_desc, ptr %59, i32 %47
  %dd.sroa.17.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 30
  %60 = ptrtoint ptr %dd.sroa.17.0.arrayidx.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %dd.sroa.17.0.copyload = load i16, ptr %dd.sroa.17.0.arrayidx.sroa_idx, align 1
  %dd.sroa.11.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 20
  %61 = ptrtoint ptr %dd.sroa.11.0.arrayidx.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %dd.sroa.11.0.copyload = load i32, ptr %dd.sroa.11.0.arrayidx.sroa_idx, align 1
  %62 = tail call i16 @llvm.bswap.i16(i16 %dd.sroa.17.0.copyload) #12
  %63 = tail call i32 @llvm.bswap.i32(i32 %dd.sroa.11.0.copyload) #12
  %conv4.i = zext i16 %62 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %63, i32 noundef %conv4.i, i32 noundef 1, i32 noundef 0) #12
  br label %wil_tx_desc_unmap_edma.exit

wil_tx_desc_unmap_edma.exit:                      ; preds = %sw.epilog.sink.split.i, %if.end134.wil_tx_desc_unmap_edma.exit_crit_edge
  %64 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx104, align 4
  %tobool135.not = icmp eq ptr %65, null
  br i1 %tobool135.not, label %wil_tx_desc_unmap_edma.exit.cleanup_crit_edge, label %if.then136

wil_tx_desc_unmap_edma.exit.cleanup_crit_edge:    ; preds = %wil_tx_desc_unmap_edma.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then136:                                       ; preds = %wil_tx_desc_unmap_edma.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %65, i32 noundef 1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then136, %wil_tx_desc_unmap_edma.exit.cleanup_crit_edge, %do.end128
  %66 = ptrtoint ptr %swtail.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %swtail.i, align 4
  %add.i220 = add i32 %67, 1
  %68 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %size, align 4
  %conv.i222 = zext i16 %69 to i32
  %rem.i223 = urem i32 %add.i220, %conv.i222
  store i32 %rem.i223, ptr %swtail.i, align 4
  %70 = ptrtoint ptr %swhead.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %swhead.i, align 4
  %cmp.i.not = icmp eq i32 %71, %rem.i223
  br i1 %cmp.i.not, label %cleanup.out_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

cleanup.out_crit_edge:                            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out:                                              ; preds = %cleanup.out_crit_edge, %do.end88.out_crit_edge, %do.end51
  %72 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %va, align 4
  %74 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ring, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef %mul, ptr noundef %73, i32 noundef %75, i32 noundef 0) #12
  %ctx146 = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 6
  %76 = ptrtoint ptr %ctx146 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ctx146, align 4
  tail call void @kfree(ptr noundef %77) #12
  %78 = ptrtoint ptr %ring to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %ring, align 4
  %79 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %va, align 4
  %80 = ptrtoint ptr %ctx146 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %ctx146, align 4
  br label %cleanup150

cleanup150:                                       ; preds = %out, %entry.cleanup150_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_ring_init_bcast_edma(ptr noundef %vif, i32 noundef %ring_id, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wil1 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 2
  %0 = ptrtoint ptr %wil1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wil1, align 8
  %arrayidx = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 57, i32 %ring_id
  %arrayidx2 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 58, i32 %ring_id
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_ring_init_bcast_edma.__UNIQUE_ID_ddebug552, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_ring_init_bcast_edma, %if.then)) #12
          to label %do.end8 [label %if.then], !srcloc !241

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev, align 4
  %tx_sring_idx = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 61
  %4 = ptrtoint ptr %tx_sring_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_sring_idx, align 16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_ring_init_bcast_edma.__UNIQUE_ID_ddebug552, ptr noundef %3, ptr noundef nonnull @.str.56, i32 noundef %ring_id, i32 noundef %5) #12
  br label %do.end8

do.end8:                                          ; preds = %if.then, %entry
  %tx_sring_idx9 = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 61
  %6 = ptrtoint ptr %tx_sring_idx9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_sring_idx9, align 16
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.56, i32 noundef %ring_id, i32 noundef %7) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %8 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool13.not = icmp eq i32 %8, 0
  br i1 %tobool13.not, label %do.end8.if.end38_crit_edge, label %land.rhs

do.end8.if.end38_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

land.rhs:                                         ; preds = %do.end8
  %dep_map = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 69, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end32, label %land.rhs.if.end38_crit_edge, !prof !240

land.rhs.if.end38_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

do.end32:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1557, i32 noundef 9, ptr noundef null) #12
  br label %if.end38

if.end38:                                         ; preds = %do.end32, %land.rhs.if.end38_crit_edge, %do.end8.if.end38_crit_edge
  tail call void @wil_tx_data_init(ptr noundef %arrayidx2) #12
  %conv = trunc i32 %size to i16
  %size48 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 57, i32 %ring_id, i32 2
  %9 = ptrtoint ptr %size48 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %size48, align 4
  %is_rx = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 57, i32 %ring_id, i32 8
  %10 = ptrtoint ptr %is_rx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %is_rx, align 4
  %call49 = tail call fastcc i32 @wil_ring_alloc_desc_ring(ptr noundef %1, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end52:                                         ; preds = %if.end38
  %arrayidx53 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 62, i32 %ring_id
  %11 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 20, ptr %arrayidx53, align 2
  %arrayidx57 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 62, i32 %ring_id, i32 1
  %12 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx57, align 1
  %privacy = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 5
  %13 = ptrtoint ptr %privacy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %privacy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool58.not = icmp eq i32 %14, 0
  br i1 %tobool58.not, label %if.then59, label %if.end52.if.end60_crit_edge

if.end52.if.end60_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

if.then59:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %arrayidx2, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %if.end52.if.end60_crit_edge
  %call61 = tail call i32 @wil_wmi_bcast_desc_ring_add(ptr noundef %vif, i32 noundef %ring_id) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end60.cleanup_crit_edge, label %out_free

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

out_free:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  %lock = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 58, i32 %ring_id, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %enabled = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 58, i32 %ring_id, i32 1
  %16 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %enabled, align 4
  %17 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx2, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  tail call void @wil_ring_free_edma(ptr noundef %1, ptr noundef %arrayidx)
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end60.cleanup_crit_edge, %if.end38.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end60.cleanup_crit_edge ], [ %call49, %if.end38.cleanup_crit_edge ], [ %call61, %out_free ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_tx_init_edma(ptr noundef %wil) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %va.i = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 59, i32 0, i32 1
  %0 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %va.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.wil_find_free_sring.exit_crit_edge, label %for.inc.i

entry.wil_find_free_sring.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_find_free_sring.exit

for.inc.i:                                        ; preds = %entry
  %va.1.i = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 59, i32 1, i32 1
  %2 = ptrtoint ptr %va.1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %va.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %3, null
  br i1 %tobool.not.1.i, label %for.inc.i.wil_find_free_sring.exit_crit_edge, label %for.inc.1.i

for.inc.i.wil_find_free_sring.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_find_free_sring.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %va.2.i = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 59, i32 2, i32 1
  %4 = ptrtoint ptr %va.2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %va.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %5, null
  br i1 %tobool.not.2.i, label %for.inc.1.i.wil_find_free_sring.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.wil_find_free_sring.exit_crit_edge:   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_find_free_sring.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %va.3.i = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 59, i32 3, i32 1
  %6 = ptrtoint ptr %va.3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %va.3.i, align 4
  %tobool.not.3.i = icmp eq ptr %7, null
  br i1 %tobool.not.3.i, label %for.inc.2.i.wil_find_free_sring.exit_crit_edge, label %for.inc.3.i

for.inc.2.i.wil_find_free_sring.exit_crit_edge:   ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_find_free_sring.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %va.4.i = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 59, i32 4, i32 1
  %8 = ptrtoint ptr %va.4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %va.4.i, align 4
  %tobool.not.4.i = icmp eq ptr %9, null
  br i1 %tobool.not.4.i, label %for.inc.3.i.wil_find_free_sring.exit_crit_edge, label %for.inc.4.i

for.inc.3.i.wil_find_free_sring.exit_crit_edge:   ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_find_free_sring.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %va.5.i = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 59, i32 5, i32 1
  %10 = ptrtoint ptr %va.5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %va.5.i, align 4
  %tobool.not.5.i = icmp eq ptr %11, null
  br i1 %tobool.not.5.i, label %for.inc.4.i.wil_find_free_sring.exit_crit_edge, label %for.inc.5.i

for.inc.4.i.wil_find_free_sring.exit_crit_edge:   ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_find_free_sring.exit

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %va.6.i = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 59, i32 6, i32 1
  %12 = ptrtoint ptr %va.6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %va.6.i, align 4
  %tobool.not.6.i = icmp eq ptr %13, null
  br i1 %tobool.not.6.i, label %for.inc.5.i.wil_find_free_sring.exit_crit_edge, label %for.inc.6.i

for.inc.5.i.wil_find_free_sring.exit_crit_edge:   ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_find_free_sring.exit

for.inc.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #14
  %va.7.i = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 59, i32 7, i32 1
  %14 = ptrtoint ptr %va.7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %va.7.i, align 4
  %tobool.not.7.i = icmp eq ptr %15, null
  %spec.select.i = select i1 %tobool.not.7.i, i32 7, i32 -22
  br label %wil_find_free_sring.exit

wil_find_free_sring.exit:                         ; preds = %for.inc.6.i, %for.inc.5.i.wil_find_free_sring.exit_crit_edge, %for.inc.4.i.wil_find_free_sring.exit_crit_edge, %for.inc.3.i.wil_find_free_sring.exit_crit_edge, %for.inc.2.i.wil_find_free_sring.exit_crit_edge, %for.inc.1.i.wil_find_free_sring.exit_crit_edge, %for.inc.i.wil_find_free_sring.exit_crit_edge, %entry.wil_find_free_sring.exit_crit_edge
  %retval.0.i60 = phi i32 [ 0, %entry.wil_find_free_sring.exit_crit_edge ], [ 1, %for.inc.i.wil_find_free_sring.exit_crit_edge ], [ 2, %for.inc.1.i.wil_find_free_sring.exit_crit_edge ], [ 3, %for.inc.2.i.wil_find_free_sring.exit_crit_edge ], [ 4, %for.inc.3.i.wil_find_free_sring.exit_crit_edge ], [ 5, %for.inc.4.i.wil_find_free_sring.exit_crit_edge ], [ 6, %for.inc.5.i.wil_find_free_sring.exit_crit_edge ], [ %spec.select.i, %for.inc.6.i ]
  %tx_status_ring_order = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 102
  %16 = ptrtoint ptr %tx_status_ring_order to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_status_ring_order, align 4
  %18 = add i32 %17, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %18)
  %19 = icmp ult i32 %18, -11
  br i1 %19, label %if.then, label %wil_find_free_sring.exit.if.end_crit_edge

wil_find_free_sring.exit.if.end_crit_edge:        ; preds = %wil_find_free_sring.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %wil_find_free_sring.exit
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %tx_status_ring_order to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 14, ptr %tx_status_ring_order, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %wil_find_free_sring.exit.if.end_crit_edge
  %21 = ptrtoint ptr %tx_status_ring_order to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_status_ring_order, align 4
  %shl = shl nuw i32 1, %22
  %conv = trunc i32 %shl to i16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_tx_init_edma.__UNIQUE_ID_ddebug512, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_tx_init_edma, %if.then10)) #12
          to label %do.end14 [label %if.then10], !srcloc !241

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %23 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %main_ndev, align 4
  %conv11 = and i32 %shl, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_tx_init_edma.__UNIQUE_ID_ddebug512, ptr noundef %24, ptr noundef nonnull @.str.58, i32 noundef %conv11, i32 noundef %retval.0.i60) #12
  br label %do.end14

do.end14:                                         ; preds = %if.then10, %if.end
  %conv15 = and i32 %shl, 65535
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.58, i32 noundef %conv15, i32 noundef %retval.0.i60) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i60)
  %cmp18 = icmp slt i32 %retval.0.i60, 0
  br i1 %cmp18, label %do.end14.cleanup_crit_edge, label %if.end21

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end21:                                         ; preds = %do.end14
  %arrayidx = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 59, i32 %retval.0.i60
  %is_rx = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 59, i32 %retval.0.i60, i32 6
  %25 = ptrtoint ptr %is_rx to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %is_rx, align 4
  %size = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 59, i32 %retval.0.i60, i32 2
  %26 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv, ptr %size, align 4
  %elem_size = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 59, i32 %retval.0.i60, i32 3
  %27 = ptrtoint ptr %elem_size to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 16, ptr %elem_size, align 4
  %call22 = tail call fastcc i32 @wil_sring_alloc(ptr noundef %wil, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %call26 = tail call i32 @wil_wmi_tx_sring_cfg(ptr noundef %wil, i32 noundef %retval.0.i60) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %out_free

if.end29:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %desc_rdy_pol = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 59, i32 %retval.0.i60, i32 7
  %28 = ptrtoint ptr %desc_rdy_pol to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %desc_rdy_pol, align 1
  %tx_sring_idx = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 61
  %29 = ptrtoint ptr %tx_sring_idx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %retval.0.i60, ptr %tx_sring_idx, align 16
  br label %cleanup

out_free:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @wil_sring_free(ptr noundef %wil, ptr noundef %arrayidx)
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end29, %if.end21.cleanup_crit_edge, %do.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ %call26, %out_free ], [ 0, %if.end29 ], [ %retval.0.i60, %do.end14.cleanup_crit_edge ], [ %call22, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wil_tx_fini_edma(ptr noundef %wil) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_sring_idx = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 61
  %0 = ptrtoint ptr %tx_sring_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_sring_idx, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_tx_fini_edma.__UNIQUE_ID_ddebug553, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_tx_fini_edma, %if.then)) #12
          to label %do.end6 [label %if.then], !srcloc !241

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %2 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_tx_fini_edma.__UNIQUE_ID_ddebug553, ptr noundef %3, ptr noundef nonnull @.str.66) #12
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %arrayidx = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 59, i32 %1
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.66) #12
  tail call fastcc void @wil_sring_free(ptr noundef %wil, ptr noundef %arrayidx)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @wil_tx_desc_map_edma(ptr nocapture noundef writeonly %desc, i32 noundef %pa, i32 noundef %len, i32 noundef %ring_index) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %desc, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 24)
  %addr = getelementptr inbounds %struct.wil_tx_enhanced_desc, ptr %desc, i32 0, i32 1, i32 3
  %addr_high_high = getelementptr inbounds %struct.wil_tx_enhanced_desc, ptr %desc, i32 0, i32 1, i32 6
  %2 = tail call i32 @llvm.bswap.i32(i32 %pa) #12
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %2, ptr %addr, align 1
  %4 = ptrtoint ptr %addr_high_high to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %addr_high_high, align 2
  %conv = trunc i32 %len to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %length = getelementptr inbounds %struct.wil_tx_enhanced_desc, ptr %desc, i32 0, i32 1, i32 7
  %6 = ptrtoint ptr %length to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %5, ptr %length, align 1
  %shl = shl i32 %ring_index, 16
  %7 = ptrtoint ptr %desc to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %shl, ptr %desc, align 1
  %arrayidx6 = getelementptr [3 x i32], ptr %desc, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 1835008, ptr %arrayidx6, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__wil_tx_ring_tso_edma(ptr noundef %wil, ptr nocapture noundef readnone %vif, ptr noundef %ring, ptr noundef %skb) #0 align 64 {
entry:
  %descs_used = alloca i32, align 4
  %c = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ring_tx = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 57
  %sub.ptr.lhs.cast = ptrtoint ptr %ring to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %ring_tx to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 40
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %nr_frags1 = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nr_frags1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr_frags1, align 2
  %conv = zext i8 %3 to i32
  %add = add nuw nsw i32 %conv, 2
  %size.i = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 2
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %size.i, align 4
  %conv.i = zext i16 %5 to i32
  %swhead1.i.i = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 4
  %6 = ptrtoint ptr %swhead1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %swhead1.i.i, align 4
  %swtail2.i.i = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 3
  %8 = ptrtoint ptr %swtail2.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %swtail2.i.i, align 4
  %add.i.i = add i32 %7, %conv.i
  %sub.i.i = sub i32 %add.i.i, %9
  %rem.i.i = urem i32 %sub.i.i, %conv.i
  %10 = xor i32 %rem.i.i, -1
  %sub1.i = add nsw i32 %10, %conv.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %descs_used) #12
  %11 = ptrtoint ptr %descs_used to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %descs_used, align 4
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %gso_size, align 4
  %conv5 = zext i16 %13 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__wil_tx_ring_tso_edma.__UNIQUE_ID_ddebug546, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__wil_tx_ring_tso_edma, %if.then)) #12
          to label %do.end12 [label %if.then], !srcloc !241

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %14 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %main_ndev, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__wil_tx_ring_tso_edma.__UNIQUE_ID_ddebug546, ptr noundef %15, ptr noundef nonnull @.str.68, i32 noundef %17, i32 noundef %sub.ptr.div) #12
  br label %do.end12

do.end12:                                         ; preds = %if.then, %entry
  %len13 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %18 = ptrtoint ptr %len13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len13, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.68, i32 noundef %19, i32 noundef %sub.ptr.div) #12
  %enabled = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 58, i32 %sub.ptr.div, i32 1
  %20 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool16.not = icmp eq i32 %21, 0
  br i1 %tobool16.not, label %do.end12.cleanup235_crit_edge, label %if.end26, !prof !240

do.end12.cleanup235_crit_edge:                    ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup235

if.end26:                                         ; preds = %do.end12
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i, i32 %add)
  %cmp = icmp slt i32 %sub1.i, %add
  br i1 %cmp, label %if.then34, label %if.end35, !prof !240

if.then34:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__wil_err_ratelimited(ptr noundef %wil, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.67, i32 noundef %sub.ptr.div, i32 noundef %add) #12
  br label %cleanup235

if.end35:                                         ; preds = %if.end26
  %22 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %end.i, align 4
  %gso_type37 = getelementptr inbounds %struct.skb_shared_info, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %gso_type37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %gso_type37, align 8
  %and = and i32 %25, 17
  %26 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %if.end35.cleanup235_crit_edge [
    i32 1, label %if.end35.sw.epilog_crit_edge
    i32 16, label %sw.bb38
  ]

if.end35.sw.epilog_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end35.cleanup235_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup235

sw.bb38:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb38, %if.end35.sw.epilog_crit_edge
  %is_ipv4.0.off0 = phi i1 [ false, %sw.bb38 ], [ true, %if.end35.sw.epilog_crit_edge ]
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %27 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load = load i16, ptr %ip_summed, align 8
  %28 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %28)
  %cmp40.not = icmp eq i16 %28, 1536
  br i1 %cmp40.not, label %if.end43, label %sw.epilog.cleanup235_crit_edge

sw.epilog.cleanup235_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup235

if.end43:                                         ; preds = %sw.epilog
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %29 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head.i.i.i, align 8
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %31 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %32 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %30, i32 %conv.i.i.i
  %doff.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %33 = ptrtoint ptr %doff.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load.i.i = load i16, ptr %doff.i.i, align 4
  %34 = lshr i16 %bf.load.i.i, 10
  %35 = and i16 %34, 60
  %mul.i.i = zext i16 %35 to i32
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %36 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %network_header.i, align 4
  %conv1.i = zext i16 %37 to i32
  %sub.i = sub nsw i32 %conv.i.i.i, %conv1.i
  %add46 = add nuw nsw i32 %mul.i.i, 14
  %add47 = add nsw i32 %add46, %sub.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__wil_tx_ring_tso_edma.__UNIQUE_ID_ddebug547, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__wil_tx_ring_tso_edma, %if.then62)) #12
          to label %do.end68 [label %if.then62], !srcloc !241

if.then62:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev63 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %38 = ptrtoint ptr %main_ndev63 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %main_ndev63, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__wil_tx_ring_tso_edma.__UNIQUE_ID_ddebug547, ptr noundef %39, ptr noundef nonnull @.str.70, i32 noundef %add47) #12
  br label %do.end68

do.end68:                                         ; preds = %if.then62, %if.end43
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.70, i32 noundef %add47) #12
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data, align 4
  %call72 = call fastcc i32 @wil_tx_tso_gen_desc(ptr noundef %wil, ptr noundef %41, i32 noundef %add47, i32 noundef %7, i32 noundef 0, ptr noundef null, ptr noundef %ring, ptr noundef %skb, i1 noundef zeroext %is_ipv4.0.off0, i32 noundef %mul.i.i, i32 noundef %sub.i, i32 noundef %conv5, ptr noundef nonnull %descs_used)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %do.end68.cleanup235_crit_edge

do.end68.cleanup235_crit_edge:                    ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup235

if.end75:                                         ; preds = %do.end68
  %42 = ptrtoint ptr %len13 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len13, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %44 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %data_len.i, align 8
  %46 = add i32 %add47, %45
  %sub = sub i32 %43, %46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__wil_tx_ring_tso_edma.__UNIQUE_ID_ddebug548, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__wil_tx_ring_tso_edma, %if.then91)) #12
          to label %do.end97 [label %if.then91], !srcloc !241

if.then91:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev92 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %47 = ptrtoint ptr %main_ndev92 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %main_ndev92, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__wil_tx_ring_tso_edma.__UNIQUE_ID_ddebug548, ptr noundef %48, ptr noundef nonnull @.str.71, i32 noundef %sub) #12
  br label %do.end97

do.end97:                                         ; preds = %if.then91, %if.end75
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.71, i32 noundef %sub) #12
  %49 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %50, i32 %add47
  %51 = ptrtoint ptr %descs_used to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %descs_used, align 4
  %add101 = add i32 %52, %7
  %53 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %size.i, align 4
  %conv102 = zext i16 %54 to i32
  %rem = urem i32 %add101, %conv102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp103.not = icmp eq i8 %3, 0
  %cond = select i1 %cmp103.not, i32 3, i32 1
  %call106 = call fastcc i32 @wil_tx_tso_gen_desc(ptr noundef %wil, ptr noundef %add.ptr, i32 noundef %sub, i32 noundef %rem, i32 noundef %cond, ptr noundef null, ptr noundef %ring, ptr noundef %skb, i1 noundef zeroext %is_ipv4.0.off0, i32 noundef %mul.i.i, i32 noundef %sub.i, i32 noundef %conv5, ptr noundef nonnull %descs_used)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %for.cond.preheader, label %do.end97.mem_error_crit_edge

do.end97.mem_error_crit_edge:                     ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #14
  br label %mem_error

for.cond.preheader:                               ; preds = %do.end97
  br i1 %cmp103.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %main_ndev131 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %sub143 = add nsw i32 %conv, -1
  br label %for.body

for.cond:                                         ; preds = %do.end136
  %inc = add nuw nsw i32 %f.0395, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %f.0395 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %55 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %end.i, align 4
  %arrayidx113 = getelementptr %struct.skb_shared_info, ptr %56, i32 0, i32 12, i32 %f.0395
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %56, i32 0, i32 12, i32 %f.0395, i32 1
  %57 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bv_len.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__wil_tx_ring_tso_edma.__UNIQUE_ID_ddebug549, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__wil_tx_ring_tso_edma, %if.then130)) #12
          to label %do.end136 [label %if.then130], !srcloc !241

if.then130:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %main_ndev131 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %main_ndev131, align 4
  %61 = ptrtoint ptr %descs_used to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %descs_used, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__wil_tx_ring_tso_edma.__UNIQUE_ID_ddebug549, ptr noundef %60, ptr noundef nonnull @.str.72, i32 noundef %f.0395, i32 noundef %58, i32 noundef %62) #12
  br label %do.end136

do.end136:                                        ; preds = %if.then130, %for.body
  %63 = ptrtoint ptr %descs_used to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %descs_used, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.72, i32 noundef %f.0395, i32 noundef %58, i32 noundef %64) #12
  %add139 = add i32 %64, %7
  %65 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %size.i, align 4
  %conv141 = zext i16 %66 to i32
  %rem142 = urem i32 %add139, %conv141
  call void @__sanitizer_cov_trace_cmp4(i32 %f.0395, i32 %sub143)
  %cmp144.not = icmp eq i32 %f.0395, %sub143
  %cond146 = select i1 %cmp144.not, i32 3, i32 2
  %call148 = call fastcc i32 @wil_tx_tso_gen_desc(ptr noundef %wil, ptr noundef null, i32 noundef %58, i32 noundef %rem142, i32 noundef %cond146, ptr noundef %arrayidx113, ptr noundef %ring, ptr noundef %skb, i1 noundef zeroext %is_ipv4.0.off0, i32 noundef %mul.i.i, i32 noundef %sub.i, i32 noundef %conv5, ptr noundef nonnull %descs_used)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %for.cond, label %do.end136.mem_error_crit_edge

do.end136.mem_error_crit_edge:                    ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #14
  br label %mem_error

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %67 = ptrtoint ptr %swhead1.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %swhead1.i.i, align 4
  %69 = ptrtoint ptr %swtail2.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %swtail2.i.i, align 4
  %71 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %size.i, align 4
  %conv.i377 = zext i16 %72 to i32
  %add.i = sub i32 %68, %70
  %sub.i378 = add i32 %add.i, %conv.i377
  %rem.i = urem i32 %sub.i378, %conv.i377
  %ring_idle_trsh = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 64
  %73 = ptrtoint ptr %ring_idle_trsh to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ring_idle_trsh, align 8
  %75 = ptrtoint ptr %descs_used to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %descs_used, align 4
  %add154 = add i32 %76, %rem.i
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %rem.i)
  %cmp.not.i = icmp sge i32 %74, %rem.i
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %add154)
  %cmp1.i = icmp slt i32 %74, %add154
  %spec.select.i = and i1 %cmp.not.i, %cmp1.i
  br i1 %spec.select.i, label %if.then156, label %for.end.if.end188_crit_edge

for.end.if.end188_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end188

if.then156:                                       ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #12
  %77 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -1, ptr %c, align 4, !annotation !246
  %call158 = call i32 @read_current_timer(ptr noundef nonnull %c) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %cond.false, label %if.then156.cond.end_crit_edge

if.then156.cond.end_crit_edge:                    ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #14
  %78 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %c, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then156.cond.end_crit_edge
  %cond160 = phi i32 [ %79, %cond.false ], [ 0, %if.then156.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #12
  %last_idle = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 58, i32 %sub.ptr.div, i32 3
  %80 = ptrtoint ptr %last_idle to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %last_idle, align 4
  %sub161 = sub i32 %cond160, %81
  %idle = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 58, i32 %sub.ptr.div, i32 2
  %82 = ptrtoint ptr %idle to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %idle, align 4
  %add162 = add i32 %sub161, %83
  store i32 %add162, ptr %idle, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__wil_tx_ring_tso_edma.__UNIQUE_ID_ddebug550, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__wil_tx_ring_tso_edma, %if.then177)) #12
          to label %do.end184 [label %if.then177], !srcloc !241

if.then177:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev178 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %84 = ptrtoint ptr %main_ndev178 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %main_ndev178, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__wil_tx_ring_tso_edma.__UNIQUE_ID_ddebug550, ptr noundef %85, ptr noundef nonnull @.str.73, i32 noundef %sub.ptr.div, i32 noundef %rem.i, i32 noundef %add154) #12
  br label %do.end184

do.end184:                                        ; preds = %if.then177, %cond.end
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.73, i32 noundef %sub.ptr.div, i32 noundef %rem.i, i32 noundef %add154) #12
  br label %if.end188

if.end188:                                        ; preds = %do.end184, %for.end.if.end188_crit_edge
  %86 = ptrtoint ptr %swhead1.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %swhead1.i.i, align 4
  %add.i379 = add i32 %87, %76
  %88 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %size.i, align 4
  %conv.i381 = zext i16 %89 to i32
  %rem.i382 = urem i32 %add.i379, %conv.i381
  store i32 %rem.i382, ptr %swhead1.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__wil_tx_ring_tso_edma.__UNIQUE_ID_ddebug551, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__wil_tx_ring_tso_edma, %if.then203)) #12
          to label %do.end210 [label %if.then203], !srcloc !241

if.then203:                                       ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev204 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %90 = ptrtoint ptr %main_ndev204 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %main_ndev204, align 4
  %92 = ptrtoint ptr %swhead1.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %swhead1.i.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__wil_tx_ring_tso_edma.__UNIQUE_ID_ddebug551, ptr noundef %91, ptr noundef nonnull @.str.74, i32 noundef %7, i32 noundef %93) #12
  br label %do.end210

do.end210:                                        ; preds = %if.then203, %if.end188
  %94 = ptrtoint ptr %swhead1.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %swhead1.i.i, align 4
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.74, i32 noundef %7, i32 noundef %95) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !257
  call void @arm_heavy_mb() #12
  %tx_latency = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 80
  %96 = ptrtoint ptr %tx_latency to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %tx_latency, align 32, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool217.not = icmp eq i8 %97, 0
  br i1 %tobool217.not, label %do.end210.if.end222_crit_edge, label %if.then218

do.end210.if.end222_crit_edge:                    ; preds = %do.end210
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end222

if.then218:                                       ; preds = %do.end210
  call void @__sanitizer_cov_trace_pc() #14
  %call219 = call i64 @ktime_get() #12
  br label %if.end222

if.end222:                                        ; preds = %if.then218, %do.end210.if.end222_crit_edge
  %call219.sink = phi i64 [ %call219, %if.then218 ], [ 0, %do.end210.if.end222_crit_edge ]
  %98 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %call219.sink, ptr %98, align 8
  %hwtail = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 5
  %100 = ptrtoint ptr %hwtail to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %hwtail, align 4
  %102 = ptrtoint ptr %swhead1.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %swhead1.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !243
  call void @arm_heavy_mb() #12
  %104 = call i32 @llvm.bswap.i32(i32 %103) #12
  %csr.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %105 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %csr.i, align 4
  %sub.i383 = add i32 %101, -8912896
  %add.ptr.i = getelementptr i8, ptr %106, i32 %sub.i383
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %104) #12, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !245
  call void @arm_heavy_mb() #12
  br label %cleanup235

mem_error:                                        ; preds = %do.end136.mem_error_crit_edge, %do.end97.mem_error_crit_edge
  %rc.0 = phi i32 [ %call106, %do.end97.mem_error_crit_edge ], [ %call148, %do.end136.mem_error_crit_edge ]
  %107 = ptrtoint ptr %descs_used to i32
  call void @__asan_load4_noabort(i32 %107)
  %.pr = load i32, ptr %descs_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp224398 = icmp sgt i32 %.pr, 0
  br i1 %cmp224398, label %while.body.lr.ph, label %mem_error.cleanup235_crit_edge

mem_error.cleanup235_crit_edge:                   ; preds = %mem_error
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup235

while.body.lr.ph:                                 ; preds = %mem_error
  %ctx233 = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 6
  %va = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 1
  %wiphy = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %wil_tx_desc_unmap_edma.exit.while.body_crit_edge, %while.body.lr.ph
  %108 = phi i32 [ %.pr, %while.body.lr.ph ], [ %add227, %wil_tx_desc_unmap_edma.exit.while.body_crit_edge ]
  %add227 = add nsw i32 %108, -1
  %sub228 = add i32 %add227, %7
  %109 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %size.i, align 4
  %conv230 = zext i16 %110 to i32
  %rem231 = urem i32 %sub228, %conv230
  %111 = ptrtoint ptr %ctx233 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ctx233, align 4
  %arrayidx234 = getelementptr %struct.wil_ctx, ptr %112, i32 %rem231
  %mapped_as.i = getelementptr %struct.wil_ctx, ptr %112, i32 %rem231, i32 2
  %113 = ptrtoint ptr %mapped_as.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %mapped_as.i, align 1
  %.off.i = add i8 %114, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %sw.epilog.sink.split.i, label %while.body.wil_tx_desc_unmap_edma.exit_crit_edge

while.body.wil_tx_desc_unmap_edma.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_tx_desc_unmap_edma.exit

sw.epilog.sink.split.i:                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %115 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %va, align 4
  %arrayidx232 = getelementptr %union.wil_ring_desc, ptr %116, i32 %rem231
  %dd.sroa.17.0.arrayidx232.sroa_idx = getelementptr inbounds i8, ptr %arrayidx232, i32 30
  %117 = ptrtoint ptr %dd.sroa.17.0.arrayidx232.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %117, i32 2)
  %dd.sroa.17.0.copyload = load i16, ptr %dd.sroa.17.0.arrayidx232.sroa_idx, align 1
  %dd.sroa.11.0.arrayidx232.sroa_idx = getelementptr inbounds i8, ptr %arrayidx232, i32 20
  %118 = ptrtoint ptr %dd.sroa.11.0.arrayidx232.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %118, i32 4)
  %dd.sroa.11.0.copyload = load i32, ptr %dd.sroa.11.0.arrayidx232.sroa_idx, align 1
  %119 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %wiphy, align 8
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %120, i32 0, i32 56, i32 1
  %121 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %parent.i, align 8
  %123 = tail call i16 @llvm.bswap.i16(i16 %dd.sroa.17.0.copyload) #12
  %124 = tail call i32 @llvm.bswap.i32(i32 %dd.sroa.11.0.copyload) #12
  %conv4.i = zext i16 %123 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %122, i32 noundef %124, i32 noundef %conv4.i, i32 noundef 1, i32 noundef 0) #12
  br label %wil_tx_desc_unmap_edma.exit

wil_tx_desc_unmap_edma.exit:                      ; preds = %sw.epilog.sink.split.i, %while.body.wil_tx_desc_unmap_edma.exit_crit_edge
  %125 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_storeN_noabort(i32 %125, i32 8)
  store i64 0, ptr %arrayidx234, align 4
  %cmp224 = icmp ugt i32 %108, 1
  br i1 %cmp224, label %wil_tx_desc_unmap_edma.exit.while.body_crit_edge, label %wil_tx_desc_unmap_edma.exit.cleanup235_crit_edge

wil_tx_desc_unmap_edma.exit.cleanup235_crit_edge: ; preds = %wil_tx_desc_unmap_edma.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup235

wil_tx_desc_unmap_edma.exit.while.body_crit_edge: ; preds = %wil_tx_desc_unmap_edma.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

cleanup235:                                       ; preds = %wil_tx_desc_unmap_edma.exit.cleanup235_crit_edge, %mem_error.cleanup235_crit_edge, %if.end222, %do.end68.cleanup235_crit_edge, %sw.epilog.cleanup235_crit_edge, %if.end35.cleanup235_crit_edge, %if.then34, %do.end12.cleanup235_crit_edge
  %retval.0 = phi i32 [ -12, %if.then34 ], [ 0, %if.end222 ], [ -22, %do.end12.cleanup235_crit_edge ], [ -22, %if.end35.cleanup235_crit_edge ], [ -22, %sw.epilog.cleanup235_crit_edge ], [ -22, %do.end68.cleanup235_crit_edge ], [ %rc.0, %mem_error.cleanup235_crit_edge ], [ %rc.0, %wil_tx_desc_unmap_edma.exit.cleanup235_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %descs_used) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_tx_ring_modify_edma(ptr nocapture noundef readonly %vif, i32 noundef %ring_id, i32 noundef %cid, i32 noundef %tid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wil1 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 2
  %0 = ptrtoint ptr %wil1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wil1, align 8
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.77, ptr noundef nonnull @__func__.wil_tx_ring_modify_edma) #12
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_rx_init_edma(ptr noundef %wil, i32 noundef %desc_ring_order) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl nuw i32 1, %desc_ring_order
  %conv = trunc i32 %shl to i16
  %ring_rx = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 55
  %use_compressed_rx_status = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 100
  %0 = ptrtoint ptr %use_compressed_rx_status to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_compressed_rx_status, align 4, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %cond = select i1 %tobool.not, i32 32, i32 16
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %use_rx_hw_reordering = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 105
  %2 = ptrtoint ptr %use_rx_hw_reordering to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_rx_hw_reordering, align 1, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not = icmp eq i8 %3, 0
  br i1 %tobool5.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.78, ptr noundef nonnull @__func__.wil_rx_init_edma) #12
  br label %cleanup131

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %rx_status_ring_order = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 101
  %4 = ptrtoint ptr %rx_status_ring_order to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_status_ring_order, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %desc_ring_order)
  %cmp.not = icmp ugt i32 %5, %desc_ring_order
  br i1 %cmp.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %add = add i32 %desc_ring_order, 1
  %6 = ptrtoint ptr %rx_status_ring_order to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %rx_status_ring_order, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %rx_buff_id_count = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 103
  %7 = ptrtoint ptr %rx_buff_id_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_buff_id_count, align 32
  %conv10 = and i32 %shl, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv10)
  %cmp11.not = icmp ugt i32 %8, %conv10
  br i1 %cmp11.not, label %if.end9.if.end17_crit_edge, label %if.then13

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %add15 = add nuw nsw i32 %conv10, 512
  %9 = ptrtoint ptr %rx_buff_id_count to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add15, ptr %rx_buff_id_count, align 32
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end9.if.end17_crit_edge
  %10 = ptrtoint ptr %rx_status_ring_order to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_status_ring_order, align 8
  %12 = add i32 %11, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %12)
  %13 = icmp ult i32 %12, -11
  br i1 %13, label %if.then24, label %if.end17.if.end26_crit_edge

if.end17.if.end26_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %rx_status_ring_order to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 12, ptr %rx_status_ring_order, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end17.if.end26_crit_edge
  %15 = ptrtoint ptr %rx_status_ring_order to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_status_ring_order, align 8
  %shl28 = shl nuw i32 1, %16
  %conv29 = trunc i32 %shl28 to i16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_rx_init_edma.__UNIQUE_ID_ddebug522, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_rx_init_edma, %if.then35)) #12
          to label %do.end40 [label %if.then35], !srcloc !241

if.then35:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %17 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %main_ndev, align 4
  %conv37 = and i32 %shl28, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_rx_init_edma.__UNIQUE_ID_ddebug522, ptr noundef %18, ptr noundef nonnull @.str.79, i32 noundef %conv10, i32 noundef %conv37, i32 noundef %cond) #12
  br label %do.end40

do.end40:                                         ; preds = %if.then35, %if.end26
  %conv42 = and i32 %shl28, 65535
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.79, i32 noundef %conv10, i32 noundef %conv42, i32 noundef %cond) #12
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @rx_large_buf to i32))
  %19 = load i8, ptr @rx_large_buf, align 1, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  %cond.i = select i1 %tobool.not.i, i32 2048, i32 7912
  %rx_buf_len.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 56
  %20 = ptrtoint ptr %rx_buf_len.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond.i, ptr %rx_buf_len.i, align 8
  %num_rx_status_rings = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 60
  %21 = ptrtoint ptr %num_rx_status_rings to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %num_rx_status_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %22)
  %cmp46 = icmp ugt i8 %22, 7
  br i1 %cmp46, label %if.then48, label %do.end40.do.body53_crit_edge

do.end40.do.body53_crit_edge:                     ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body53

if.then48:                                        ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %num_rx_status_rings to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 7, ptr %num_rx_status_rings, align 4
  br label %do.body53

do.body53:                                        ; preds = %if.then48, %do.end40.do.body53_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_rx_init_edma.__UNIQUE_ID_ddebug523, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_rx_init_edma, %if.then65)) #12
          to label %do.end73 [label %if.then65], !srcloc !241

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev66 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %24 = ptrtoint ptr %main_ndev66 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %main_ndev66, align 4
  %26 = ptrtoint ptr %num_rx_status_rings to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %num_rx_status_rings, align 4
  %conv68 = zext i8 %27 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_rx_init_edma.__UNIQUE_ID_ddebug523, ptr noundef %25, ptr noundef nonnull @.str.80, i32 noundef %conv68) #12
  br label %do.end73

do.end73:                                         ; preds = %if.then65, %do.body53
  %28 = ptrtoint ptr %num_rx_status_rings to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %num_rx_status_rings, align 4
  %conv75 = zext i8 %29 to i32
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.80, i32 noundef %conv75) #12
  %30 = ptrtoint ptr %rx_buf_len.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_buf_len.i, align 8
  %conv78 = trunc i32 %31 to i16
  %call79 = tail call i32 @wil_wmi_cfg_def_rx_offload(ptr noundef %wil, i16 noundef zeroext %conv78) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %for.cond.preheader, label %do.end73.cleanup131_crit_edge

do.end73.cleanup131_crit_edge:                    ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup131

for.cond.preheader:                               ; preds = %do.end73
  %32 = ptrtoint ptr %num_rx_status_rings to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %num_rx_status_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp85223.not = icmp eq i8 %33, 0
  br i1 %cmp85223.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %va.i = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 59, i32 0, i32 1
  %va.1.i = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 59, i32 1, i32 1
  %va.2.i = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 59, i32 2, i32 1
  %va.3.i = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 59, i32 3, i32 1
  %va.4.i = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 59, i32 4, i32 1
  %va.5.i = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 59, i32 5, i32 1
  %va.6.i = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 59, i32 6, i32 1
  %va.7.i = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 59, i32 7, i32 1
  br label %for.body

for.cond:                                         ; preds = %if.end91
  %inc = add nuw nsw i32 %i.0224, 1
  %34 = ptrtoint ptr %num_rx_status_rings to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %num_rx_status_rings, align 4
  %conv84 = zext i8 %35 to i32
  %cmp85 = icmp ult i32 %inc, %conv84
  br i1 %cmp85, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0224 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %36 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %va.i, align 4
  %tobool.not.i205 = icmp eq ptr %37, null
  br i1 %tobool.not.i205, label %for.body.if.end91_crit_edge, label %for.inc.i

for.body.if.end91_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

for.inc.i:                                        ; preds = %for.body
  %38 = ptrtoint ptr %va.1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %va.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %39, null
  br i1 %tobool.not.1.i, label %for.inc.i.if.end91_crit_edge, label %for.inc.1.i

for.inc.i.if.end91_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

for.inc.1.i:                                      ; preds = %for.inc.i
  %40 = ptrtoint ptr %va.2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %va.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %41, null
  br i1 %tobool.not.2.i, label %for.inc.1.i.if.end91_crit_edge, label %for.inc.2.i

for.inc.1.i.if.end91_crit_edge:                   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %42 = ptrtoint ptr %va.3.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %va.3.i, align 4
  %tobool.not.3.i = icmp eq ptr %43, null
  br i1 %tobool.not.3.i, label %for.inc.2.i.if.end91_crit_edge, label %for.inc.3.i

for.inc.2.i.if.end91_crit_edge:                   ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %44 = ptrtoint ptr %va.4.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %va.4.i, align 4
  %tobool.not.4.i = icmp eq ptr %45, null
  br i1 %tobool.not.4.i, label %for.inc.3.i.if.end91_crit_edge, label %for.inc.4.i

for.inc.3.i.if.end91_crit_edge:                   ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %46 = ptrtoint ptr %va.5.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %va.5.i, align 4
  %tobool.not.5.i = icmp eq ptr %47, null
  br i1 %tobool.not.5.i, label %for.inc.4.i.if.end91_crit_edge, label %for.inc.5.i

for.inc.4.i.if.end91_crit_edge:                   ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %48 = ptrtoint ptr %va.6.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %va.6.i, align 4
  %tobool.not.6.i = icmp eq ptr %49, null
  br i1 %tobool.not.6.i, label %for.inc.5.i.if.end91_crit_edge, label %for.inc.6.i

for.inc.5.i.if.end91_crit_edge:                   ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %50 = ptrtoint ptr %va.7.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %va.7.i, align 4
  %tobool.not.7.i = icmp eq ptr %51, null
  br i1 %tobool.not.7.i, label %for.inc.6.i.if.end91_crit_edge, label %for.inc.6.i.err_free_status_crit_edge

for.inc.6.i.err_free_status_crit_edge:            ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_status

for.inc.6.i.if.end91_crit_edge:                   ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

if.end91:                                         ; preds = %for.inc.6.i.if.end91_crit_edge, %for.inc.5.i.if.end91_crit_edge, %for.inc.4.i.if.end91_crit_edge, %for.inc.3.i.if.end91_crit_edge, %for.inc.2.i.if.end91_crit_edge, %for.inc.1.i.if.end91_crit_edge, %for.inc.i.if.end91_crit_edge, %for.body.if.end91_crit_edge
  %retval.0.i206.ph = phi i16 [ 6, %for.inc.5.i.if.end91_crit_edge ], [ 5, %for.inc.4.i.if.end91_crit_edge ], [ 4, %for.inc.3.i.if.end91_crit_edge ], [ 3, %for.inc.2.i.if.end91_crit_edge ], [ 2, %for.inc.1.i.if.end91_crit_edge ], [ 1, %for.inc.i.if.end91_crit_edge ], [ 0, %for.body.if.end91_crit_edge ], [ 7, %for.inc.6.i.if.end91_crit_edge ]
  %call93 = tail call fastcc i32 @wil_init_rx_sring(ptr noundef %wil, i16 noundef zeroext %conv29, i32 noundef %cond, i16 noundef zeroext %retval.0.i206.ph)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %for.cond, label %if.end91.err_free_status_crit_edge

if.end91.err_free_status_crit_edge:               ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_status

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_init_rx_desc_ring.__UNIQUE_ID_ddebug521, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_rx_init_edma, %if.then.i)) #12
          to label %do.end6.i [label %if.then.i], !srcloc !241

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %52 = ptrtoint ptr %main_ndev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %main_ndev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_init_rx_desc_ring.__UNIQUE_ID_ddebug521, ptr noundef %53, ptr noundef nonnull @.str.85) #12
  br label %do.end6.i

do.end6.i:                                        ; preds = %if.then.i, %for.end
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.85) #12
  %size.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 55, i32 2
  %54 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv, ptr %size.i, align 4
  %is_rx.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 55, i32 8
  %55 = ptrtoint ptr %is_rx.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %is_rx.i, align 4
  %call9.i = tail call fastcc i32 @wil_ring_alloc_desc_ring(ptr noundef %wil, ptr noundef %ring_rx) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %do.end6.i.err_free_status_crit_edge

do.end6.i.err_free_status_crit_edge:              ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_status

if.end12.i:                                       ; preds = %do.end6.i
  %call13.i = tail call i32 @wil_wmi_rx_desc_ring_add(ptr noundef %wil, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end100, label %out_free.i

out_free.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @wil_ring_free_edma(ptr noundef %wil, ptr noundef %ring_rx) #12
  br label %err_free_status

if.end100:                                        ; preds = %if.end12.i
  %56 = ptrtoint ptr %rx_buff_id_count to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rx_buff_id_count, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %conv42)
  %cmp103.not = icmp ult i32 %57, %conv42
  br i1 %cmp103.not, label %if.end100.if.end112_crit_edge, label %if.then105

if.end100.if.end112_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end112

if.then105:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  %sub = add nsw i32 %conv42, -1
  tail call void (ptr, ptr, ...) @__wil_info(ptr noundef %wil, ptr noundef nonnull @.str.81, ptr noundef nonnull @__func__.wil_rx_init_edma, i32 noundef %57, i32 noundef %conv42, i32 noundef %sub) #12
  %58 = ptrtoint ptr %rx_buff_id_count to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %sub, ptr %rx_buff_id_count, align 32
  br label %if.end112

if.end112:                                        ; preds = %if.then105, %if.end100.if.end112_crit_edge
  %59 = phi i32 [ %sub, %if.then105 ], [ %57, %if.end100.if.end112_crit_edge ]
  %rx_buff_mgmt.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 66
  %free3.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 66, i32 3
  %add.i = add i32 %59, 1
  %60 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i, i32 16) #12
  %61 = extractvalue { i32, i1 } %60, 1
  br i1 %61, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !240

kcalloc.exit.thread.i:                            ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %rx_buff_mgmt.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %rx_buff_mgmt.i, align 16
  br label %err_free_desc

if.end7.i.i.i:                                    ; preds = %if.end112
  %63 = extractvalue { i32, i1 } %60, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %63, i32 noundef 3520) #15
  %64 = ptrtoint ptr %rx_buff_mgmt.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call8.i.i.i, ptr %rx_buff_mgmt.i, align 16
  %tobool.not.i208 = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i208, label %if.end7.i.i.i.err_free_desc_crit_edge, label %if.end.i

if.end7.i.i.i.err_free_desc_crit_edge:            ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_desc

if.end.i:                                         ; preds = %if.end7.i.i.i
  %active1.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 66, i32 2
  %65 = ptrtoint ptr %active1.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %active1.i, ptr %active1.i, align 4
  %prev.i.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 66, i32 2, i32 1
  %66 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %active1.i, ptr %prev.i.i, align 4
  %67 = ptrtoint ptr %free3.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %free3.i, ptr %free3.i, align 4
  %prev.i30.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 66, i32 3, i32 1
  %68 = ptrtoint ptr %prev.i30.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %free3.i, ptr %prev.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.not38.i = icmp eq i32 %59, 0
  br i1 %cmp.not38.i, label %if.end.i.if.end117_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.if.end117_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end117

for.body.i:                                       ; preds = %list_add.exit.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.039.i = phi i32 [ %inc.i, %list_add.exit.i.for.body.i_crit_edge ], [ 1, %if.end.i.for.body.i_crit_edge ]
  %list.i = getelementptr %struct.wil_rx_buff, ptr %call8.i.i.i, i32 %i.039.i, i32 1
  %69 = ptrtoint ptr %free3.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %free3.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %free3.i, ptr noundef %70) #12
  br i1 %call.i.i.i, label %if.end.i.i31.i, label %for.body.i.list_add.exit.i_crit_edge

for.body.i.list_add.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit.i

if.end.i.i31.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %list.i, ptr %prev1.i.i.i, align 4
  %72 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %70, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr %struct.wil_rx_buff, ptr %call8.i.i.i, i32 %i.039.i, i32 1, i32 1
  %73 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %free3.i, ptr %prev3.i.i.i, align 8
  %74 = ptrtoint ptr %free3.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %list.i, ptr %free3.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i31.i, %for.body.i.list_add.exit.i_crit_edge
  %id.i = getelementptr %struct.wil_rx_buff, ptr %call8.i.i.i, i32 %i.039.i, i32 2
  %75 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %i.039.i, ptr %id.i, align 4
  %inc.i = add i32 %i.039.i, 1
  %cmp.not.i = icmp ugt i32 %inc.i, %59
  br i1 %cmp.not.i, label %list_add.exit.i.if.end117_crit_edge, label %list_add.exit.i.for.body.i_crit_edge

list_add.exit.i.for.body.i_crit_edge:             ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

list_add.exit.i.if.end117_crit_edge:              ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end117

if.end117:                                        ; preds = %list_add.exit.i.if.end117_crit_edge, %if.end.i.if.end117_crit_edge
  %size13.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 66, i32 1
  %76 = ptrtoint ptr %size13.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %add.i, ptr %size13.i, align 4
  %call118 = tail call fastcc i32 @wil_rx_refill_edma(ptr noundef %wil)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end117.cleanup131_crit_edge, label %err_free_rx_buff_arr

if.end117.cleanup131_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup131

err_free_rx_buff_arr:                             ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @wil_free_rx_buff_arr(ptr noundef %wil)
  br label %err_free_desc

err_free_desc:                                    ; preds = %err_free_rx_buff_arr, %if.end7.i.i.i.err_free_desc_crit_edge, %kcalloc.exit.thread.i
  %rc.1 = phi i32 [ %call118, %err_free_rx_buff_arr ], [ -12, %if.end7.i.i.i.err_free_desc_crit_edge ], [ -12, %kcalloc.exit.thread.i ]
  tail call void @wil_ring_free_edma(ptr noundef %wil, ptr noundef %ring_rx)
  br label %err_free_status

err_free_status:                                  ; preds = %err_free_desc, %out_free.i, %do.end6.i.err_free_status_crit_edge, %if.end91.err_free_status_crit_edge, %for.inc.6.i.err_free_status_crit_edge
  %rc.2 = phi i32 [ %rc.1, %err_free_desc ], [ %call9.i, %do.end6.i.err_free_status_crit_edge ], [ %call13.i, %out_free.i ], [ %call93, %if.end91.err_free_status_crit_edge ], [ -14, %for.inc.6.i.err_free_status_crit_edge ]
  %77 = ptrtoint ptr %num_rx_status_rings to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %num_rx_status_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %cmp125226.not = icmp eq i8 %78, 0
  br i1 %cmp125226.not, label %err_free_status.cleanup131_crit_edge, label %err_free_status.for.body127_crit_edge

err_free_status.for.body127_crit_edge:            ; preds = %err_free_status
  br label %for.body127

err_free_status.cleanup131_crit_edge:             ; preds = %err_free_status
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup131

for.body127:                                      ; preds = %for.body127.for.body127_crit_edge, %err_free_status.for.body127_crit_edge
  %i.1227 = phi i32 [ %inc129, %for.body127.for.body127_crit_edge ], [ 0, %err_free_status.for.body127_crit_edge ]
  %arrayidx = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 59, i32 %i.1227
  tail call fastcc void @wil_sring_free(ptr noundef %wil, ptr noundef %arrayidx)
  %inc129 = add nuw nsw i32 %i.1227, 1
  %79 = ptrtoint ptr %num_rx_status_rings to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %num_rx_status_rings, align 4
  %conv124 = zext i8 %80 to i32
  %cmp125 = icmp ult i32 %inc129, %conv124
  br i1 %cmp125, label %for.body127.for.body127_crit_edge, label %for.body127.cleanup131_crit_edge

for.body127.cleanup131_crit_edge:                 ; preds = %for.body127
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup131

for.body127.for.body127_crit_edge:                ; preds = %for.body127
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body127

cleanup131:                                       ; preds = %for.body127.cleanup131_crit_edge, %err_free_status.cleanup131_crit_edge, %if.end117.cleanup131_crit_edge, %do.end73.cleanup131_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call79, %do.end73.cleanup131_crit_edge ], [ 0, %if.end117.cleanup131_crit_edge ], [ %rc.2, %err_free_status.cleanup131_crit_edge ], [ %rc.2, %for.body127.cleanup131_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_addba_rx_resp_edma(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @wil_get_reorder_params_edma(ptr nocapture noundef readonly %wil, ptr nocapture noundef readonly %skb, ptr nocapture noundef writeonly %tid, ptr nocapture noundef writeonly %cid, ptr nocapture noundef writeonly %mid, ptr nocapture noundef writeonly %seq, ptr nocapture noundef writeonly %mcast, ptr nocapture noundef writeonly %retry) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %cb.i, align 1
  %shr.i.i.i = lshr i32 %1, 8
  %2 = and i32 %1, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  %3 = trunc i32 %shr.i.i.i to i8
  %4 = lshr i8 %3, 5
  %conv6.i = and i8 %3, 7
  %retval.0.i = select i1 %tobool.not.i, i8 %conv6.i, i8 %4
  %conv = zext i8 %retval.0.i to i32
  %5 = ptrtoint ptr %tid to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %tid, align 4
  %6 = ptrtoint ptr %cb.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %cb.i, align 1
  %shr.i.i.i15 = lshr i32 %7, 8
  %8 = and i32 %7, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i16 = icmp eq i32 %8, 0
  %9 = trunc i32 %shr.i.i.i15 to i8
  %10 = lshr i8 %9, 2
  %conv3.i = and i8 %10, 7
  %11 = lshr i8 %9, 4
  %retval.0.i17 = select i1 %tobool.not.i16, i8 %11, i8 %conv3.i
  %conv3 = zext i8 %retval.0.i17 to i32
  %12 = ptrtoint ptr %cid to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv3, ptr %cid, align 4
  %13 = ptrtoint ptr %cb.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %cb.i, align 1
  %and.i = and i32 %14, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i18 = icmp eq i32 %and.i, 0
  %shr.i.i = lshr i32 %14, 21
  %and.i.i = and i32 %shr.i.i, 3
  %retval.0.i19 = select i1 %tobool.not.i18, i32 0, i32 %and.i.i
  %15 = ptrtoint ptr %mid to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %retval.0.i19, ptr %mid, align 4
  %use_compressed_rx_status.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 100
  %16 = ptrtoint ptr %use_compressed_rx_status.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %use_compressed_rx_status.i, align 4, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i20 = icmp eq i8 %17, 0
  br i1 %tobool.not.i20, label %if.end.i, label %entry.wil_rx_status_get_seq.exit_crit_edge

entry.wil_rx_status_get_seq.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_rx_status_get_seq.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %seq_num.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %18 = ptrtoint ptr %seq_num.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %seq_num.i, align 1
  br label %wil_rx_status_get_seq.exit

wil_rx_status_get_seq.exit:                       ; preds = %if.end.i, %entry.wil_rx_status_get_seq.exit_crit_edge
  %retval.0.i21 = phi i16 [ %19, %if.end.i ], [ 0, %entry.wil_rx_status_get_seq.exit_crit_edge ]
  %20 = tail call i16 @llvm.bswap.i16(i16 %retval.0.i21)
  %21 = ptrtoint ptr %seq to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %seq, align 2
  %22 = ptrtoint ptr %cb.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %cb.i, align 1
  %shr.i.i22 = lshr i32 %23, 26
  %conv.i = and i32 %shr.i.i22, 1
  %24 = ptrtoint ptr %mcast to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv.i, ptr %mcast, align 4
  %25 = ptrtoint ptr %retry to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %retry, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @wil_get_netif_rx_params_edma(ptr nocapture noundef readonly %skb, ptr nocapture noundef writeonly %cid, ptr nocapture noundef writeonly %security) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %cb.i, align 1
  %shr.i.i.i = lshr i32 %1, 8
  %2 = and i32 %1, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  %3 = trunc i32 %shr.i.i.i to i8
  %4 = lshr i8 %3, 2
  %conv3.i = and i8 %4, 7
  %5 = lshr i8 %3, 4
  %retval.0.i = select i1 %tobool.not.i, i8 %5, i8 %conv3.i
  %conv = zext i8 %retval.0.i to i32
  %6 = ptrtoint ptr %cid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %cid, align 4
  %7 = ptrtoint ptr %cb.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %cb.i, align 1
  %shr.i.i = lshr i32 %8, 28
  %and.i.i = and i32 %shr.i.i, 1
  %9 = ptrtoint ptr %security to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and.i.i, ptr %security, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_rx_crypto_check_edma(ptr noundef %wil, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %use_rx_hw_reordering = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 105
  %0 = ptrtoint ptr %use_rx_hw_reordering to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_rx_hw_reordering, align 1, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %cb.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %cb.i, align 1
  %shr.i.i.i = lshr i32 %3, 8
  %4 = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  %5 = trunc i32 %shr.i.i.i to i8
  %6 = lshr i8 %5, 2
  %conv3.i = and i8 %6, 7
  %7 = lshr i8 %5, 4
  %retval.0.i = select i1 %tobool.not.i, i8 %7, i8 %conv3.i
  %conv = zext i8 %retval.0.i to i32
  %8 = lshr i8 %5, 5
  %conv6.i = and i8 %5, 7
  %retval.0.i55 = select i1 %tobool.not.i, i8 %conv6.i, i8 %8
  %conv3 = zext i8 %retval.0.i55 to i32
  %d1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %9 = ptrtoint ptr %d1.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %d1.i, align 1
  %shr.i.i = lshr i32 %10, 31
  %shr.i.i56 = lshr i32 %3, 26
  %11 = trunc i32 %shr.i.i56 to i8
  %conv.i57 = and i8 %11, 1
  %conv7 = zext i8 %conv.i57 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i57)
  %tobool8.not = icmp eq i8 %conv.i57, 0
  %group_crypto_rx = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 63, i32 %conv, i32 11
  %arrayidx9 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 63, i32 %conv, i32 10, i32 %conv3
  %cond = select i1 %tobool8.not, ptr %arrayidx9, ptr %group_crypto_rx
  %arrayidx11 = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %cond, i32 0, i32 %shr.i.i
  %pn_15_0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %key_set = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %cond, i32 0, i32 %shr.i.i, i32 1
  %12 = ptrtoint ptr %key_set to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %key_set, align 1, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool12.not = icmp eq i8 %13, 0
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__wil_err_ratelimited(ptr noundef %wil, ptr noundef nonnull @.str.86, ptr noundef nonnull @__func__.wil_rx_crypto_check_edma, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv7, i32 noundef %shr.i.i) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %call16 = tail call i32 @reverse_memcmp(ptr noundef %pn_15_0, ptr noundef %arrayidx11, i32 noundef 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call16)
  %cmp = icmp slt i32 %call16, 1
  br i1 %cmp, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__wil_err_ratelimited(ptr noundef %wil, ptr noundef nonnull @.str.87, ptr noundef nonnull @__func__.wil_rx_crypto_check_edma, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv7, i32 noundef %shr.i.i, ptr noundef %pn_15_0, ptr noundef %arrayidx11) #12
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %14 = call ptr @memcpy(ptr %arrayidx11, ptr %pn_15_0, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then18, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then18 ], [ 0, %if.end21 ], [ -22, %if.then13 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_rx_error_check_edma(ptr noundef %wil, ptr nocapture noundef %skb, ptr nocapture noundef %stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %cb.i, align 1
  %and.i.i = and i32 %1, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.not = icmp eq i32 %and.i.i, 0
  br i1 %cmp.not, label %if.end27, label %do.body3

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_rx_error_check_edma.__UNIQUE_ID_ddebug531, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_rx_error_check_edma, %if.then7)) #12
          to label %do.end9 [label %if.then7], !srcloc !241

if.then7:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %2 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_rx_error_check_edma.__UNIQUE_ID_ddebug531, ptr noundef %3, ptr noundef nonnull @.str.89, i32 noundef %and.i.i) #12
  br label %do.end9

do.end9:                                          ; preds = %if.then7, %do.body3
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.89, i32 noundef %and.i.i) #12
  %4 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %and.i.i, label %do.end9.cleanup_crit_edge [
    i32 1, label %if.then13
    i32 2, label %if.then16
    i32 3, label %if.then20
    i32 4, label %if.then24
  ]

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then13:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__wil_err_ratelimited(ptr noundef %wil, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.88) #12
  %rx_mic_error = getelementptr inbounds %struct.wil_net_stats, ptr %stats, i32 0, i32 13
  %5 = ptrtoint ptr %rx_mic_error to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_mic_error, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %rx_mic_error, align 4
  br label %cleanup

if.then16:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__wil_err_ratelimited(ptr noundef %wil, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.88) #12
  %rx_key_error = getelementptr inbounds %struct.wil_net_stats, ptr %stats, i32 0, i32 14
  %7 = ptrtoint ptr %rx_key_error to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_key_error, align 8
  %inc17 = add i32 %8, 1
  store i32 %inc17, ptr %rx_key_error, align 8
  br label %cleanup

if.then20:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__wil_err_ratelimited(ptr noundef %wil, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.88) #12
  %rx_replay = getelementptr inbounds %struct.wil_net_stats, ptr %stats, i32 0, i32 12
  %9 = ptrtoint ptr %rx_replay to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_replay, align 8
  %inc21 = add i32 %10, 1
  store i32 %inc21, ptr %rx_replay, align 8
  br label %cleanup

if.then24:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__wil_err_ratelimited(ptr noundef %wil, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.88) #12
  %rx_amsdu_error = getelementptr inbounds %struct.wil_net_stats, ptr %stats, i32 0, i32 15
  %11 = ptrtoint ptr %rx_amsdu_error to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_amsdu_error, align 4
  %inc25 = add i32 %12, 1
  store i32 %inc25, ptr %rx_amsdu_error, align 4
  br label %cleanup

if.end27:                                         ; preds = %entry
  %shr.i.i.i = lshr i32 %1, 3
  %and.i.i.i = and i32 %shr.i.i.i, 3
  %shr.i.i16.i = lshr i32 %1, 5
  %and.i.i17.i = and i32 %shr.i.i16.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i17.i)
  %cmp.i = icmp eq i32 %and.i.i17.i, 1
  br i1 %cmp.i, label %if.end27.wil_rx_status_get_checksum.exit_crit_edge, label %if.end.i

if.end27.wil_rx_status_get_checksum.exit_crit_edge: ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_rx_status_get_checksum.exit

if.end.i:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17.i)
  %cmp2.i = icmp eq i32 %and.i.i17.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i.i)
  %cmp3.i = icmp eq i32 %and.i.i.i, 1
  %or.cond.i = select i1 %cmp2.i, i1 %cmp3.i, i1 false
  br i1 %or.cond.i, label %if.end.i.wil_rx_status_get_checksum.exit_crit_edge, label %if.end5.i

if.end.i.wil_rx_status_get_checksum.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_rx_status_get_checksum.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp6.i = icmp ne i32 %and.i.i.i, 0
  %cmp2.not.i = xor i1 %cmp2.i, true
  %brmerge.i = select i1 %cmp6.i, i1 true, i1 %cmp2.not.i
  br i1 %brmerge.i, label %if.end10.i, label %if.end5.i.wil_rx_status_get_checksum.exit_crit_edge

if.end5.i.wil_rx_status_get_checksum.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_rx_status_get_checksum.exit

if.end10.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  %rx_csum_err.i = getelementptr inbounds %struct.wil_net_stats, ptr %stats, i32 0, i32 16
  %13 = ptrtoint ptr %rx_csum_err.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_csum_err.i, align 8
  %inc.i = add i32 %14, 1
  store i32 %inc.i, ptr %rx_csum_err.i, align 8
  br label %wil_rx_status_get_checksum.exit

wil_rx_status_get_checksum.exit:                  ; preds = %if.end10.i, %if.end5.i.wil_rx_status_get_checksum.exit_crit_edge, %if.end.i.wil_rx_status_get_checksum.exit_crit_edge, %if.end27.wil_rx_status_get_checksum.exit_crit_edge
  %retval.0.i47 = phi i16 [ 0, %if.end10.i ], [ 512, %if.end27.wil_rx_status_get_checksum.exit_crit_edge ], [ 512, %if.end.i.wil_rx_status_get_checksum.exit_crit_edge ], [ 0, %if.end5.i.wil_rx_status_get_checksum.exit_crit_edge ]
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %15 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  %bf.set = or i16 %bf.clear, %retval.0.i47
  store i16 %bf.set, ptr %ip_summed, align 8
  br label %cleanup

cleanup:                                          ; preds = %wil_rx_status_get_checksum.exit, %if.then24, %if.then20, %if.then16, %if.then13, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %wil_rx_status_get_checksum.exit ], [ -14, %do.end9.cleanup_crit_edge ], [ -14, %if.then13 ], [ -14, %if.then16 ], [ -14, %if.then24 ], [ -14, %if.then20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @wil_is_rx_idle_edma(ptr nocapture noundef readonly %wil) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_rx_status_rings = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 60
  %0 = ptrtoint ptr %num_rx_status_rings to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_rx_status_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp18.not = icmp eq i8 %1, 0
  br i1 %cmp18.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.019 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %va = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 59, i32 %i.019, i32 1
  %2 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %va, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %va, align 4
  %elem_size.i = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 59, i32 %i.019, i32 3
  %6 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %elem_size.i, align 4
  %swhead.i = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 59, i32 %i.019, i32 4
  %8 = ptrtoint ptr %swhead.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %swhead.i, align 4
  %mul.i = mul i32 %9, %7
  %add.ptr.i = getelementptr i8, ptr %5, i32 %mul.i
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %add.ptr.i, align 1
  %shr.i.i = lshr i32 %11, 31
  %conv.i = trunc i32 %shr.i.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  %desc_rdy_pol = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 59, i32 %i.019, i32 7
  %12 = ptrtoint ptr %desc_rdy_pol to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %desc_rdy_pol, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %conv.i)
  %cmp4 = icmp eq i8 %13, %conv.i
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.019, 1
  %14 = ptrtoint ptr %num_rx_status_rings to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_rx_status_rings, align 4
  %conv = zext i8 %15 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp.lcssa = phi i1 [ true, %entry.cleanup_crit_edge ], [ true, %for.inc.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %cmp.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wil_rx_fini_edma(ptr noundef %wil) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ring_rx = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 55
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_rx_fini_edma.__UNIQUE_ID_ddebug554, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_rx_fini_edma, %if.then)) #12
          to label %do.end6 [label %if.then], !srcloc !241

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_rx_fini_edma.__UNIQUE_ID_ddebug554, ptr noundef %1, ptr noundef nonnull @.str.95) #12
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.95) #12
  tail call void @wil_ring_free_edma(ptr noundef %wil, ptr noundef %ring_rx)
  %num_rx_status_rings = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 60
  %2 = ptrtoint ptr %num_rx_status_rings to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_rx_status_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp27.not = icmp eq i8 %3, 0
  br i1 %cmp27.not, label %do.end6.for.end_crit_edge, label %do.end6.for.body_crit_edge

do.end6.for.body_crit_edge:                       ; preds = %do.end6
  br label %for.body

do.end6.for.end_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %wil_rx_data_free.exit.for.body_crit_edge, %do.end6.for.body_crit_edge
  %i.028 = phi i32 [ %inc, %wil_rx_data_free.exit.for.body_crit_edge ], [ 0, %do.end6.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 59, i32 %i.028
  %tobool.not.i = icmp eq ptr %arrayidx, null
  br i1 %tobool.not.i, label %for.body.wil_rx_data_free.exit_crit_edge, label %if.end.i

for.body.wil_rx_data_free.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_rx_data_free.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %rx_data.i = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 59, i32 %i.028, i32 8
  %4 = ptrtoint ptr %rx_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_data.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %5, i32 noundef 0) #12
  %6 = ptrtoint ptr %rx_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %rx_data.i, align 4
  br label %wil_rx_data_free.exit

wil_rx_data_free.exit:                            ; preds = %if.end.i, %for.body.wil_rx_data_free.exit_crit_edge
  tail call fastcc void @wil_sring_free(ptr noundef %wil, ptr noundef %arrayidx)
  %inc = add nuw nsw i32 %i.028, 1
  %7 = ptrtoint ptr %num_rx_status_rings to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_rx_status_rings, align 4
  %conv = zext i8 %8 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %wil_rx_data_free.exit.for.body_crit_edge, label %wil_rx_data_free.exit.for.end_crit_edge

wil_rx_data_free.exit.for.end_crit_edge:          ; preds = %wil_rx_data_free.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

wil_rx_data_free.exit.for.body_crit_edge:         ; preds = %wil_rx_data_free.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %wil_rx_data_free.exit.for.end_crit_edge, %do.end6.for.end_crit_edge
  %rx_buff_mgmt.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 66
  %9 = ptrtoint ptr %rx_buff_mgmt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_buff_mgmt.i, align 16
  %tobool.not.i23 = icmp eq ptr %10, null
  br i1 %tobool.not.i23, label %for.end.wil_free_rx_buff_arr.exit_crit_edge, label %if.end.i24

for.end.wil_free_rx_buff_arr.exit_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_free_rx_buff_arr.exit

if.end.i24:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @wil_move_all_rx_buff_to_free_list(ptr noundef %wil) #12
  %11 = ptrtoint ptr %rx_buff_mgmt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_buff_mgmt.i, align 16
  tail call void @kfree(ptr noundef %12) #12
  %13 = ptrtoint ptr %rx_buff_mgmt.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %rx_buff_mgmt.i, align 16
  br label %wil_free_rx_buff_arr.exit

wil_free_rx_buff_arr.exit:                        ; preds = %if.end.i24, %for.end.wil_free_rx_buff_arr.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_wil6210_rx_status(ptr noundef %wil, i8 noundef zeroext %use_compressed, i16 noundef zeroext %buff_id, ptr noundef %msg) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wil6210_rx_status, i32 0, i32 1), ptr blockaddress(@trace_wil6210_rx_status, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !241

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !230) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !248

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !230) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !258
  %call42 = tail call i32 @__traceiter_wil6210_rx_status(ptr noundef null, ptr noundef %wil, i8 noundef zeroext %use_compressed, i16 noundef zeroext %buff_id, ptr noundef %msg) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !259
  %13 = tail call i32 @llvm.read_register.i32(metadata !230) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !230) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !248

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !230) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !255
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wil6210_rx_status, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wil6210_rx_status, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_wil6210_rx_status.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_wil6210_rx_status.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 212, ptr noundef nonnull @.str.31) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !256
  %31 = tail call i32 @llvm.read_register.i32(metadata !230) #12
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
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @skb_try_coalesce(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_partial(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wil_check_bar(ptr noundef %wil, ptr noundef %msg, i32 noundef %cid, ptr nocapture noundef readonly %skb, ptr noundef %stats) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %use_compressed_rx_status.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 100
  %0 = ptrtoint ptr %use_compressed_rx_status.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_compressed_rx_status.i, align 4, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %wil_rx_status_get_frame_type.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

wil_rx_status_get_frame_type.exit:                ; preds = %entry
  %d1.i = getelementptr inbounds %struct.wil_rx_status_extended, ptr %msg, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %d1.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %d1.i, align 1
  %4 = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %wil_rx_status_get_frame_type.exit.cleanup_crit_edge, label %wil_rx_status_get_seq.exit

wil_rx_status_get_frame_type.exit.cleanup_crit_edge: ; preds = %wil_rx_status_get_frame_type.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

wil_rx_status_get_seq.exit:                       ; preds = %wil_rx_status_get_frame_type.exit
  %5 = ptrtoint ptr %d1.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %d1.i, align 1
  %and.i.i228 = shl i32 %6, 2
  %shl.i229 = and i32 %and.i.i228, 252
  %conv4 = trunc i32 %and.i.i228 to i8
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %msg, align 1
  %and.i = and i32 %8, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i232 = icmp eq i32 %and.i, 0
  %shr.i.i = lshr i32 %8, 21
  %and.i.i233 = and i32 %shr.i.i, 3
  %retval.0.i234 = select i1 %tobool.not.i232, i32 0, i32 %and.i.i233
  %shr.i.i.i = lshr i32 %8, 8
  %9 = and i32 %8, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i235 = icmp eq i32 %9, 0
  %10 = trunc i32 %shr.i.i.i to i8
  %11 = lshr i8 %10, 5
  %conv6.i = and i8 %10, 7
  %retval.0.i236 = select i1 %tobool.not.i235, i8 %conv6.i, i8 %11
  %conv7 = zext i8 %retval.0.i236 to i32
  %seq_num.i = getelementptr inbounds %struct.wil_rx_status_extended, ptr %msg, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %seq_num.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %seq_num.i, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %arrayidx = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 %retval.0.i234
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %do.body14, label %do.body32, !prof !240

do.body14:                                        ; preds = %wil_rx_status_get_seq.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_check_bar.__UNIQUE_ID_ddebug525, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_check_bar, %if.then23)) #12
          to label %do.end26 [label %if.then23], !srcloc !241

if.then23:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %17 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_check_bar.__UNIQUE_ID_ddebug525, ptr noundef %18, ptr noundef nonnull @.str.34, i32 noundef %retval.0.i234) #12
  br label %do.end26

do.end26:                                         ; preds = %if.then23, %do.body14
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.34, i32 noundef %retval.0.i234) #12
  br label %cleanup

do.body32:                                        ; preds = %wil_rx_status_get_seq.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_check_bar.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_check_bar, %if.then44)) #12
          to label %do.end52 [label %if.then44], !srcloc !241

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev45 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %19 = ptrtoint ptr %main_ndev45 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %main_ndev45, align 4
  %conv47 = zext i16 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_check_bar.__UNIQUE_ID_ddebug526, ptr noundef %20, ptr noundef nonnull @.str.35, i32 noundef %shl.i229, i32 noundef %retval.0.i234, i32 noundef %cid, i32 noundef %conv7, i32 noundef %conv47) #12
  br label %do.end52

do.end52:                                         ; preds = %if.then44, %do.body32
  %conv54 = zext i16 %14 to i32
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.35, i32 noundef %shl.i229, i32 noundef %retval.0.i234, i32 noundef %cid, i32 noundef %conv7, i32 noundef %conv54) #12
  %tobool57.not = icmp eq ptr %stats, null
  br i1 %tobool57.not, label %do.end52.if.end59_crit_edge, label %if.then58

do.end52.if.end59_crit_edge:                      ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

if.then58:                                        ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #14
  %rx_non_data_frame = getelementptr inbounds %struct.wil_net_stats, ptr %stats, i32 0, i32 9
  %21 = ptrtoint ptr %rx_non_data_frame to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_non_data_frame, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %rx_non_data_frame, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %do.end52.if.end59_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %conv4)
  %cmp.i.not = icmp eq i8 %conv4, -124
  br i1 %cmp.i.not, label %do.body65, label %if.else

do.body65:                                        ; preds = %if.end59
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_check_bar.__UNIQUE_ID_ddebug527, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_check_bar, %if.then77)) #12
          to label %do.end84 [label %if.then77], !srcloc !241

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev78 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %23 = ptrtoint ptr %main_ndev78 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %main_ndev78, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_check_bar.__UNIQUE_ID_ddebug527, ptr noundef %24, ptr noundef nonnull @.str.36, i32 noundef %retval.0.i234, i32 noundef %cid, i32 noundef %conv7, i32 noundef %conv54) #12
  br label %do.end84

do.end84:                                         ; preds = %if.then77, %do.body65
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.36, i32 noundef %retval.0.i234, i32 noundef %cid, i32 noundef %conv7, i32 noundef %conv54) #12
  %conv88 = trunc i32 %cid to i8
  tail call void @wil_rx_bar(ptr noundef %wil, ptr noundef nonnull %16, i8 noundef zeroext %conv88, i8 noundef zeroext %retval.0.i236, i16 noundef zeroext %14) #12
  br label %cleanup

if.else:                                          ; preds = %if.end59
  %25 = ptrtoint ptr %use_compressed_rx_status.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %use_compressed_rx_status.i, align 4, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool90.not = icmp eq i8 %26, 0
  %cond = select i1 %tobool90.not, i32 32, i32 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_check_bar.__UNIQUE_ID_ddebug528, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_check_bar, %if.then106)) #12
          to label %do.end114 [label %if.then106], !srcloc !241

if.then106:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev107 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %27 = ptrtoint ptr %main_ndev107 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %main_ndev107, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_check_bar.__UNIQUE_ID_ddebug528, ptr noundef %28, ptr noundef nonnull @.str.37, i32 noundef %shl.i229, i32 noundef %retval.0.i234, i32 noundef %cid, i32 noundef %conv7, i32 noundef %conv54) #12
  br label %do.end114

do.end114:                                        ; preds = %if.then106, %if.else
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.37, i32 noundef %shl.i229, i32 noundef %retval.0.i234, i32 noundef %cid, i32 noundef %conv7, i32 noundef %conv54) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_check_bar.__UNIQUE_ID_ddebug529, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_check_bar, %if.then131)) #12
          to label %do.body135 [label %if.then131], !srcloc !241

if.then131:                                       ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @print_hex_dump(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.23, i32 noundef 0, i32 noundef 32, i32 noundef 4, ptr noundef %msg, i32 noundef %cond, i1 noundef zeroext false) #12
  br label %do.body135

do.body135:                                       ; preds = %if.then131, %do.end114
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_check_bar.__UNIQUE_ID_ddebug530, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_check_bar, %if.then147)) #12
          to label %cleanup [label %if.then147], !srcloc !241

if.then147:                                       ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #14
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %31 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %33 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %32, %34
  tail call void @print_hex_dump(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.29, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %30, i32 noundef %sub.i, i1 noundef zeroext false) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then147, %do.body135, %do.end84, %do.end26, %wil_rx_status_get_frame_type.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %do.end26 ], [ 0, %wil_rx_status_get_frame_type.exit.cleanup_crit_edge ], [ -11, %if.then147 ], [ -11, %do.end84 ], [ -11, %do.body135 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_wil6210_rx_status(ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_rx_bar(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wil_err_ratelimited(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_wil6210_tx_status(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_complete_wifi_ack(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_tx_data_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wil_ring_alloc_desc_ring(ptr noundef %wil, ptr noundef %ring) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wiphy = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 2
  %0 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wiphy, align 8
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 56, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %size = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %size, align 4
  %conv = zext i16 %5 to i32
  %mul = shl nuw nsw i32 %conv, 5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_ring_alloc_desc_ring.__UNIQUE_ID_ddebug515, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_ring_alloc_desc_ring, %if.then)) #12
          to label %do.end7 [label %if.then], !srcloc !241

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %6 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_ring_alloc_desc_ring.__UNIQUE_ID_ddebug515, ptr noundef %7, ptr noundef nonnull @.str.47) #12
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.47) #12
  %swhead = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 4
  %8 = ptrtoint ptr %swhead to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %swhead, align 4
  %swtail = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 3
  %9 = ptrtoint ptr %swtail to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %swtail, align 4
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %size, align 4
  %conv14 = zext i16 %11 to i32
  %12 = shl nuw nsw i32 %conv14, 3
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3520) #15
  %ctx = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 6
  %13 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call8.i.i, ptr %ctx, align 4
  %tobool17.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool17.not, label %do.end7.cleanup_crit_edge, label %if.end19

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19:                                         ; preds = %do.end7
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %3, i32 noundef %mul, ptr noundef %ring, i32 noundef 3264, i32 noundef 0) #12
  %va = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 1
  %14 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %va, align 4
  %tobool22.not = icmp eq ptr %call.i, null
  br i1 %tobool22.not, label %if.end19.err_free_ctx_crit_edge, label %if.end24

if.end19.err_free_ctx_crit_edge:                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_ctx

if.end24:                                         ; preds = %if.end19
  %is_rx = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 8
  %15 = ptrtoint ptr %is_rx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %is_rx, align 4, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool25.not = icmp eq i8 %16, 0
  br i1 %tobool25.not, label %if.end24.do.body39_crit_edge, label %if.then26

if.end24.do.body39_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body39

if.then26:                                        ; preds = %if.end24
  %edma_rx_swtail = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 7
  %pa27 = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 7, i32 1
  %call.i124 = tail call ptr @dma_alloc_attrs(ptr noundef %3, i32 noundef 4, ptr noundef %pa27, i32 noundef 3264, i32 noundef 0) #12
  %17 = ptrtoint ptr %edma_rx_swtail to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i124, ptr %edma_rx_swtail, align 4
  %tobool33.not = icmp eq ptr %call.i124, null
  br i1 %tobool33.not, label %err_free_va, label %if.then26.do.body39_crit_edge

if.then26.do.body39_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body39

do.body39:                                        ; preds = %if.then26.do.body39_crit_edge, %if.end24.do.body39_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_ring_alloc_desc_ring.__UNIQUE_ID_ddebug517, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_ring_alloc_desc_ring, %if.then51)) #12
          to label %do.end65 [label %if.then51], !srcloc !241

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev52 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %18 = ptrtoint ptr %main_ndev52 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %main_ndev52, align 4
  %20 = ptrtoint ptr %is_rx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %is_rx, align 4, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool54.not = icmp eq i8 %21, 0
  %cond = select i1 %tobool54.not, ptr @.str.50, ptr @.str.49
  %22 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %size, align 4
  %conv57 = zext i16 %23 to i32
  %24 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %va, align 4
  %26 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_ring_alloc_desc_ring.__UNIQUE_ID_ddebug517, ptr noundef %19, ptr noundef nonnull @.str.48, ptr noundef nonnull %cond, i32 noundef %conv57, ptr noundef %25, ptr noundef %ring, ptr noundef %27) #12
  br label %do.end65

do.end65:                                         ; preds = %if.then51, %do.body39
  %28 = ptrtoint ptr %is_rx to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %is_rx, align 4, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool67.not = icmp eq i8 %29, 0
  %cond69 = select i1 %tobool67.not, ptr @.str.50, ptr @.str.49
  %30 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %size, align 4
  %conv71 = zext i16 %31 to i32
  %32 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %va, align 4
  %34 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.48, ptr noundef nonnull %cond69, i32 noundef %conv71, ptr noundef %33, ptr noundef %ring, ptr noundef %35) #12
  br label %cleanup

err_free_va:                                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %size, align 4
  %conv78 = zext i16 %37 to i32
  %mul79 = shl nuw nsw i32 %conv78, 5
  %38 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %va, align 4
  %40 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ring, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef %mul79, ptr noundef %39, i32 noundef %41, i32 noundef 0) #12
  %42 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %va, align 4
  br label %err_free_ctx

err_free_ctx:                                     ; preds = %err_free_va, %if.end19.err_free_ctx_crit_edge
  %43 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ctx, align 4
  tail call void @kfree(ptr noundef %44) #12
  %45 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %ctx, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_free_ctx, %do.end65, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end65 ], [ -12, %do.end7.cleanup_crit_edge ], [ -12, %err_free_ctx ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_wmi_tx_desc_ring_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_addba_tx_request(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wil_move_all_rx_buff_to_free_list(ptr noundef %wil) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wiphy = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 2
  %0 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wiphy, align 8
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 56, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %rx_buff_mgmt = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 66
  %active1 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 66, i32 2
  %4 = ptrtoint ptr %rx_buff_mgmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_buff_mgmt, align 16
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %6 = ptrtoint ptr %active1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %active1, align 4
  %cmp.i.not1 = icmp eq ptr %7, %active1
  br i1 %cmp.i.not1, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %rx_buf_len = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 56
  %free = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 66, i32 3
  br label %while.body

while.body:                                       ; preds = %list_move.exit.while.body_crit_edge, %while.body.lr.ph
  %8 = phi ptr [ %7, %while.body.lr.ph ], [ %30, %list_move.exit.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %8, i32 -4
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %tobool6.not = icmp eq ptr %10, null
  br i1 %tobool6.not, label %if.then11, label %if.else, !prof !240

if.then11:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %id = getelementptr i8, ptr %8, i32 8
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.wil_move_all_rx_buff_to_free_list, i32 noundef %12) #12
  br label %if.end13

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %add.ptr, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 3
  %14 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %14)
  %pa.0.copyload = load i32, ptr %cb, align 8
  %15 = ptrtoint ptr %rx_buf_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_buf_len, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %pa.0.copyload, i32 noundef %16, i32 noundef 2, i32 noundef 0) #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %10, i32 noundef 0) #12
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then11
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %8) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end13.__list_del_entry.exit.i_crit_edge

if.end13.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %8, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end13.__list_del_entry.exit.i_crit_edge
  %23 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %free, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %8, ptr noundef %free, ptr noundef %24) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %8, ptr %prev1.i.i2.i, align 4
  %26 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %8, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %free, ptr %prev3.i.i.i, align 4
  %28 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %8, ptr %free, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %29 = ptrtoint ptr %active1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %active1, align 4
  %cmp.i.not = icmp eq ptr %30, %active1
  br i1 %cmp.i.not, label %list_move.exit.cleanup_crit_edge, label %list_move.exit.while.body_crit_edge

list_move.exit.while.body_crit_edge:              ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

list_move.exit.cleanup_crit_edge:                 ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %list_move.exit.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_wmi_bcast_desc_ring_add(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wil_sring_alloc(ptr noundef %wil, ptr noundef %sring) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wiphy = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 2
  %0 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wiphy, align 8
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 56, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %elem_size = getelementptr inbounds %struct.wil_status_ring, ptr %sring, i32 0, i32 3
  %4 = ptrtoint ptr %elem_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %elem_size, align 4
  %size = getelementptr inbounds %struct.wil_status_ring, ptr %sring, i32 0, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %size, align 4
  %conv = zext i16 %7 to i32
  %mul = mul i32 %5, %conv
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_sring_alloc.__UNIQUE_ID_ddebug510, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_sring_alloc, %if.then)) #12
          to label %do.end7 [label %if.then], !srcloc !241

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %8 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_sring_alloc.__UNIQUE_ID_ddebug510, ptr noundef %9, ptr noundef nonnull @.str.60, i32 noundef %mul) #12
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.60, i32 noundef %mul) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp = icmp eq i32 %mul, 0
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.59) #12
  br label %cleanup

if.end12:                                         ; preds = %do.end7
  %swhead = getelementptr inbounds %struct.wil_status_ring, ptr %sring, i32 0, i32 4
  %10 = ptrtoint ptr %swhead to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %swhead, align 4
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %3, i32 noundef %mul, ptr noundef %sring, i32 noundef 3264, i32 noundef 0) #12
  %va = getelementptr inbounds %struct.wil_status_ring, ptr %sring, i32 0, i32 1
  %11 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %va, align 4
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %if.end12.cleanup_crit_edge, label %do.body20

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body20:                                        ; preds = %if.end12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_sring_alloc.__UNIQUE_ID_ddebug511, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_sring_alloc, %if.then32)) #12
          to label %do.end42 [label %if.then32], !srcloc !241

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev33 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %12 = ptrtoint ptr %main_ndev33 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %main_ndev33, align 4
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %size, align 4
  %conv35 = zext i16 %15 to i32
  %16 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %va, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_sring_alloc.__UNIQUE_ID_ddebug511, ptr noundef %13, ptr noundef nonnull @.str.62, i32 noundef %conv35, ptr noundef %17, ptr noundef %sring) #12
  br label %do.end42

do.end42:                                         ; preds = %if.then32, %do.body20
  %18 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %size, align 4
  %conv44 = zext i16 %19 to i32
  %20 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %va, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.62, i32 noundef %conv44, ptr noundef %21, ptr noundef %sring) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %if.end12.cleanup_crit_edge, %if.then11
  %retval.0 = phi i32 [ -22, %if.then11 ], [ 0, %do.end42 ], [ -12, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_wmi_tx_sring_cfg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wil_sring_free(ptr noundef %wil, ptr noundef %sring) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wiphy = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 2
  %0 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wiphy, align 8
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 56, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool.not = icmp eq ptr %sring, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %va = getelementptr inbounds %struct.wil_status_ring, ptr %sring, i32 0, i32 1
  %4 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %va, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %elem_size = getelementptr inbounds %struct.wil_status_ring, ptr %sring, i32 0, i32 3
  %6 = ptrtoint ptr %elem_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %elem_size, align 4
  %size = getelementptr inbounds %struct.wil_status_ring, ptr %sring, i32 0, i32 2
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %size, align 4
  %conv = zext i16 %9 to i32
  %mul = mul i32 %7, %conv
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_sring_free.__UNIQUE_ID_ddebug509, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_sring_free, %if.then8)) #12
          to label %do.end12 [label %if.then8], !srcloc !241

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %10 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %main_ndev, align 4
  %12 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %va, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_sring_free.__UNIQUE_ID_ddebug509, ptr noundef %11, ptr noundef nonnull @.str.64, i32 noundef %mul, ptr noundef %13, ptr noundef nonnull %sring) #12
  br label %do.end12

do.end12:                                         ; preds = %if.then8, %if.end
  %14 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %va, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.64, i32 noundef %mul, ptr noundef %15, ptr noundef nonnull %sring) #12
  %16 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %va, align 4
  %18 = ptrtoint ptr %sring to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sring, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef %mul, ptr noundef %17, i32 noundef %19, i32 noundef 0) #12
  %20 = ptrtoint ptr %sring to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %sring, align 4
  %21 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %va, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wil_tx_tso_gen_desc(ptr noundef %wil, ptr noundef %buff_addr, i32 noundef %len, i32 noundef %i, i32 noundef %tso_desc_type, ptr noundef readonly %frag, ptr noundef %ring, ptr noundef %skb, i1 noundef zeroext %is_ipv4, i32 noundef %tcp_hdr_len, i32 noundef %skb_net_hdr_len, i32 noundef %mss, ptr nocapture noundef %descs_used) unnamed_addr #0 align 64 {
entry:
  %desc_mem = alloca %struct.wil_tx_enhanced_desc, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wiphy = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 2
  %0 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wiphy, align 8
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 56, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %va = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 1
  %4 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %va, align 4
  %arrayidx = getelementptr %union.wil_ring_desc, ptr %5, i32 %i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc_mem) #12
  %6 = getelementptr inbounds [3 x i32], ptr %desc_mem, i32 0, i32 2
  %7 = getelementptr inbounds %struct.wil_ring_tx_enhanced_mac, ptr %desc_mem, i32 0, i32 1
  %8 = getelementptr inbounds %struct.wil_tx_enhanced_desc, ptr %desc_mem, i32 0, i32 1
  %9 = getelementptr inbounds %struct.wil_tx_enhanced_desc, ptr %desc_mem, i32 0, i32 1, i32 1
  %10 = getelementptr inbounds %struct.wil_tx_enhanced_desc, ptr %desc_mem, i32 0, i32 1, i32 2
  %11 = getelementptr inbounds %struct.wil_tx_enhanced_desc, ptr %desc_mem, i32 0, i32 1, i32 4
  %12 = getelementptr inbounds %struct.wil_tx_enhanced_desc, ptr %desc_mem, i32 0, i32 1, i32 5
  %ring_tx = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 57
  %sub.ptr.lhs.cast = ptrtoint ptr %ring to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %ring_tx to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp eq i32 %len, 0
  %13 = call ptr @memset(ptr %desc_mem, i32 255, i32 32)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %frag, null
  br i1 %tobool.not, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %buff_addr) #12
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.then1
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.end8_crit_edge, label %if.then.i, !prof !248

land.rhs.i.if.end8_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %3) #12
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %17, %if.end.i.i ], [ %15, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.42, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #12
  br label %if.end8

if.end39.i:                                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debug_dma_map_single(ptr noundef %3, ptr noundef %buff_addr, i32 noundef %len) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %18 = load ptr, ptr @mem_map, align 4
  %19 = ptrtoint ptr %buff_addr to i32
  %sub.i = add i32 %19, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %18, i32 %shr.i
  %and.i = and i32 %19, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %3, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %len, i32 noundef 1, i32 noundef 0) #12
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %frag to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %frag, align 4
  %bv_offset.i.i = getelementptr inbounds %struct.bio_vec, ptr %frag, i32 0, i32 2
  %22 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bv_offset.i.i, align 4
  %call2.i = tail call i32 @dma_map_page_attrs(ptr noundef %3, ptr noundef %21, i32 noundef %23, i32 noundef %len, i32 noundef 1, i32 noundef 0) #12
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end39.i, %dev_name.exit.i, %land.rhs.i.if.end8_crit_edge
  %.sink = phi i8 [ 2, %if.else ], [ 1, %land.rhs.i.if.end8_crit_edge ], [ 1, %dev_name.exit.i ], [ 1, %if.end39.i ]
  %pa.0 = phi i32 [ %call2.i, %if.else ], [ -1, %land.rhs.i.if.end8_crit_edge ], [ -1, %dev_name.exit.i ], [ %call41.i, %if.end39.i ]
  %ctx5 = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 6
  %24 = ptrtoint ptr %ctx5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctx5, align 4
  %mapped_as7 = getelementptr %struct.wil_ctx, ptr %25, i32 %i, i32 2
  %26 = ptrtoint ptr %mapped_as7 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %.sink, ptr %mapped_as7, align 1
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef %pa.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pa.0)
  %cmp.i.not = icmp eq i32 %pa.0, -1
  br i1 %cmp.i.not, label %if.then13, label %if.end14, !prof !240

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.75, ptr noundef nonnull @__func__.wil_tx_tso_gen_desc) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %tx_desc_map = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 6
  %27 = ptrtoint ptr %tx_desc_map to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tx_desc_map, align 8
  %call15 = call i32 %28(ptr noundef nonnull %desc_mem, i32 noundef %pa.0, i32 noundef %len, i32 noundef %sub.ptr.div) #12
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %6, align 4
  %or.i = or i32 %30, 1
  store i32 %or.i, ptr %6, align 4
  %31 = lshr i32 %mss, 2
  %conv.i = trunc i32 %31 to i16
  %32 = call i16 @llvm.bswap.i16(i16 %conv.i) #12
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %7, align 4
  %or539.i = or i16 %34, %32
  store i16 %or539.i, ptr %7, align 4
  %35 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %8, align 4
  %37 = trunc i32 %tcp_hdr_len to i8
  %conv9.i = or i8 %36, %37
  store i8 %conv9.i, ptr %8, align 4
  %38 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %9, align 1
  %tso_desc_type.tr.i = trunc i32 %tso_desc_type to i8
  %40 = shl i8 %tso_desc_type.tr.i, 3
  %41 = or i8 %40, %39
  %conv17.i = or i8 %41, -31
  store i8 %conv17.i, ptr %9, align 1
  %42 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %10, align 2
  %44 = or i16 %43, -32736
  store i16 %44, ptr %10, align 2
  %45 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %11, align 2
  %47 = trunc i32 %skb_net_hdr_len to i8
  %conv25.i = or i8 %46, %47
  store i8 %conv25.i, ptr %11, align 2
  %or28.i = select i1 %is_ipv4, i8 -114, i8 14
  %48 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %12, align 1
  %or31.i = or i8 %49, %or28.i
  store i8 %or31.i, ptr %12, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %tso_desc_type)
  %cmp17 = icmp eq i32 %tso_desc_type, 3
  br i1 %cmp17, label %if.then18, label %if.end14.do.body_crit_edge

if.end14.do.body_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then18:                                        ; preds = %if.end14
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #12
  %50 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #12, !srcloc !260
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then18.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !240

if.then18.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then18
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %51 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %.not.i.i.i.i = icmp sgt i32 %51, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.skb_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !248

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.skb_get.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then18.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then18.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %users.i, i32 noundef %.sink.i.i.i.i) #12
  br label %skb_get.exit

skb_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.skb_get.exit_crit_edge
  %ctx20 = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 6
  %52 = ptrtoint ptr %ctx20 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ctx20, align 4
  %arrayidx21 = getelementptr %struct.wil_ctx, ptr %53, i32 %i
  %54 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %skb, ptr %arrayidx21, align 4
  br label %do.body

do.body:                                          ; preds = %skb_get.exit, %if.end14.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_tx_tso_gen_desc.__UNIQUE_ID_ddebug545, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_tx_tso_gen_desc, %if.then33)) #12
          to label %do.end [label %if.then33], !srcloc !241

if.then33:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  call void @print_hex_dump(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.76, i32 noundef 0, i32 noundef 32, i32 noundef 4, ptr noundef nonnull %desc_mem, i32 noundef 32, i1 noundef zeroext false) #12
  br label %do.end

do.end:                                           ; preds = %if.then33, %do.body
  %55 = call ptr @memcpy(ptr %arrayidx, ptr %desc_mem, i32 32)
  %56 = ptrtoint ptr %descs_used to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %descs_used, align 4
  %inc = add i32 %57, 1
  store i32 %inc, ptr %descs_used, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then13 ], [ 0, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc_mem) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_wmi_cfg_def_rx_offload(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wil_init_rx_sring(ptr noundef %wil, i16 noundef zeroext %status_ring_size, i32 noundef %elem_size, i16 noundef zeroext %ring_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i16 %ring_id to i32
  %arrayidx = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 59, i32 %idxprom
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_init_rx_sring.__UNIQUE_ID_ddebug514, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_init_rx_sring, %if.then)) #12
          to label %do.end7 [label %if.then], !srcloc !241

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  %conv = zext i16 %status_ring_size to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_init_rx_sring.__UNIQUE_ID_ddebug514, ptr noundef %1, ptr noundef nonnull @.str.83, i32 noundef %conv, i32 noundef %idxprom) #12
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  %conv8 = zext i16 %status_ring_size to i32
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.83, i32 noundef %conv8, i32 noundef %idxprom) #12
  %rx_data = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 59, i32 %idxprom, i32 8
  %2 = ptrtoint ptr %rx_data to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 0, ptr %rx_data, align 4
  %is_rx = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 59, i32 %idxprom, i32 6
  %3 = ptrtoint ptr %is_rx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %is_rx, align 4
  %size = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 59, i32 %idxprom, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %status_ring_size, ptr %size, align 4
  %elem_size12 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 59, i32 %idxprom, i32 3
  %5 = ptrtoint ptr %elem_size12 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %elem_size, ptr %elem_size12, align 4
  %call13 = tail call fastcc i32 @wil_sring_alloc(ptr noundef %wil, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %do.end7.cleanup_crit_edge

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %do.end7
  %call17 = tail call i32 @wil_wmi_rx_sring_add(ptr noundef %wil, i16 noundef zeroext %ring_id) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %out_free

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %desc_rdy_pol = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 59, i32 %idxprom, i32 7
  %6 = ptrtoint ptr %desc_rdy_pol to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %desc_rdy_pol, align 1
  br label %cleanup

out_free:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @wil_sring_free(ptr noundef %wil, ptr noundef %arrayidx)
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end20, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %out_free ], [ 0, %if.end20 ], [ %call13, %do.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wil_free_rx_buff_arr(ptr noundef %wil) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_buff_mgmt = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 66
  %0 = ptrtoint ptr %rx_buff_mgmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_buff_mgmt, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @wil_move_all_rx_buff_to_free_list(ptr noundef %wil)
  %2 = ptrtoint ptr %rx_buff_mgmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_buff_mgmt, align 16
  tail call void @kfree(ptr noundef %3) #12
  %4 = ptrtoint ptr %rx_buff_mgmt to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %rx_buff_mgmt, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_wmi_rx_sring_add(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_wmi_rx_desc_ring_add(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reverse_memcmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !10, !12, !13, !15, !16, !18, !20, !22, !24, !25, !27, !28, !30, !31, !33, !34, !35, !37, !38, !40, !41, !42, !44, !46, !48, !50, !52, !53, !55, !56, !58, !60, !61, !63, !65, !67, !69, !70, !72, !73, !74, !75, !77, !78, !80, !81, !82, !84, !85, !87, !88, !90, !91, !93, !95, !97, !98, !99, !101, !103, !104, !105, !107, !108, !110, !111, !112, !114, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !129, !130, !132, !133, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !168, !169, !171, !172, !174, !175, !177, !178, !180, !181, !183, !184, !186, !187, !189, !190, !192, !193, !195, !196, !198, !199, !201, !203, !204, !205, !207, !208, !209, !211, !212, !214, !216, !217, !218, !220, !222, !224, !226, !228, !229}
!llvm.named.register.sp = !{!230}
!llvm.module.flags = !{!231, !232, !233, !234, !235, !236, !237, !238}
!llvm.ident = !{!239}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 1075, i32 3}
!2 = !{ptr @__func__.wil_rx_handle_edma, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 1078, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @wil_rx_handle_edma.__UNIQUE_ID_ddebug538, !4, !"__UNIQUE_ID_ddebug538", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 1083, i32 4}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 1099, i32 6}
!12 = !{ptr @wil_rx_handle_edma.__UNIQUE_ID_ddebug539, !11, !"__UNIQUE_ID_ddebug539", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 1185, i32 4}
!15 = !{ptr @__func__.wil_tx_sring_handler, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 1193, i32 4}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 1198, i32 4}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 1204, i32 4}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 1209, i32 4}
!24 = !{ptr @wil_tx_sring_handler.__UNIQUE_ID_ddebug540, !23, !"__UNIQUE_ID_ddebug540", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 1220, i32 3}
!27 = !{ptr @wil_tx_sring_handler.__UNIQUE_ID_ddebug541, !26, !"__UNIQUE_ID_ddebug541", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 1238, i32 4}
!30 = !{ptr @wil_tx_sring_handler.__UNIQUE_ID_ddebug542, !29, !"__UNIQUE_ID_ddebug542", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 1242, i32 4}
!33 = !{ptr @wil_tx_sring_handler.__UNIQUE_ID_ddebug543, !32, !"__UNIQUE_ID_ddebug543", i1 false, i1 false}
!34 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 1289, i32 4}
!37 = !{ptr @wil_tx_sring_handler.__UNIQUE_ID_ddebug544, !36, !"__UNIQUE_ID_ddebug544", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 888, i32 3}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @wil_sring_reap_rx_edma.__UNIQUE_ID_ddebug533, !39, !"__UNIQUE_ID_ddebug533", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 902, i32 3}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 904, i32 18}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 904, i32 28}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 919, i32 3}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 938, i32 2}
!52 = !{ptr @wil_sring_reap_rx_edma.__UNIQUE_ID_ddebug534, !51, !"__UNIQUE_ID_ddebug534", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 940, i32 2}
!55 = !{ptr @wil_sring_reap_rx_edma.__UNIQUE_ID_ddebug535, !54, !"__UNIQUE_ID_ddebug535", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 953, i32 3}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 961, i32 3}
!60 = !{ptr @wil_sring_reap_rx_edma.__UNIQUE_ID_ddebug536, !59, !"__UNIQUE_ID_ddebug536", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 968, i32 3}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 1008, i32 4}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 1047, i32 3}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 1054, i32 2}
!69 = !{ptr @wil_sring_reap_rx_edma.__UNIQUE_ID_ddebug537, !68, !"__UNIQUE_ID_ddebug537", i1 false, i1 false}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ath/wil6210/trace.h", i32 180, i32 1}
!72 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!73 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!74 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!77 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 776, i32 3}
!80 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @wil_check_bar.__UNIQUE_ID_ddebug525, !79, !"__UNIQUE_ID_ddebug525", i1 false, i1 false}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 780, i32 2}
!84 = !{ptr @wil_check_bar.__UNIQUE_ID_ddebug526, !83, !"__UNIQUE_ID_ddebug526", i1 false, i1 false}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 786, i32 3}
!87 = !{ptr @wil_check_bar.__UNIQUE_ID_ddebug527, !86, !"__UNIQUE_ID_ddebug527", i1 false, i1 false}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 798, i32 3}
!90 = !{ptr @wil_check_bar.__UNIQUE_ID_ddebug528, !89, !"__UNIQUE_ID_ddebug528", i1 false, i1 false}
!91 = !{ptr @wil_check_bar.__UNIQUE_ID_ddebug529, !92, !"__UNIQUE_ID_ddebug529", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 801, i32 3}
!93 = !{ptr @wil_check_bar.__UNIQUE_ID_ddebug530, !94, !"__UNIQUE_ID_ddebug530", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 803, i32 3}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 244, i32 5}
!97 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @wil_rx_refill_edma.__UNIQUE_ID_ddebug513, !96, !"__UNIQUE_ID_ddebug513", i1 false, i1 false}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 246, i32 5}
!101 = distinct !{null, !102, !"__already_done", i1 false, i1 false}
!102 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!103 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!105 = distinct !{null, !106, !"__already_done", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/ath/wil6210/trace.h", i32 253, i32 1}
!107 = distinct !{null, !106, !"__warned", i1 false, i1 false}
!108 = !{ptr @.str.43, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 706, i32 2}
!110 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @wil_ring_init_tx_edma.__UNIQUE_ID_ddebug524, !109, !"__UNIQUE_ID_ddebug524", i1 false, i1 false}
!112 = !{ptr @.str.45, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 723, i32 3}
!114 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 379, i32 2}
!116 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @wil_ring_alloc_desc_ring.__UNIQUE_ID_ddebug515, !115, !"__UNIQUE_ID_ddebug515", i1 false, i1 false}
!118 = !{ptr @.str.48, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 402, i32 2}
!120 = !{ptr @wil_ring_alloc_desc_ring.__UNIQUE_ID_ddebug517, !119, !"__UNIQUE_ID_ddebug517", i1 false, i1 false}
!121 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.50, !119, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.51, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 431, i32 3}
!125 = !{ptr @.str.52, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @wil_ring_free_edma.__UNIQUE_ID_ddebug518, !124, !"__UNIQUE_ID_ddebug518", i1 false, i1 false}
!127 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 445, i32 2}
!129 = !{ptr @wil_ring_free_edma.__UNIQUE_ID_ddebug519, !128, !"__UNIQUE_ID_ddebug519", i1 false, i1 false}
!130 = !{ptr @.str.54, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 459, i32 4}
!132 = !{ptr @wil_ring_free_edma.__UNIQUE_ID_ddebug520, !131, !"__UNIQUE_ID_ddebug520", i1 false, i1 false}
!133 = !{ptr @__func__.wil_move_all_rx_buff_to_free_list, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 279, i32 4}
!135 = !{ptr @.str.55, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 1554, i32 2}
!137 = !{ptr @.str.56, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @wil_ring_init_bcast_edma.__UNIQUE_ID_ddebug552, !136, !"__UNIQUE_ID_ddebug552", i1 false, i1 false}
!139 = !{ptr @.str.57, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 119, i32 2}
!141 = !{ptr @.str.58, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @wil_tx_init_edma.__UNIQUE_ID_ddebug512, !140, !"__UNIQUE_ID_ddebug512", i1 false, i1 false}
!143 = !{ptr @.str.59, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 84, i32 2}
!145 = !{ptr @.str.60, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @wil_sring_alloc.__UNIQUE_ID_ddebug510, !144, !"__UNIQUE_ID_ddebug510", i1 false, i1 false}
!147 = !{ptr @.str.61, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 87, i32 3}
!149 = !{ptr @.str.62, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 100, i32 2}
!151 = !{ptr @wil_sring_alloc.__UNIQUE_ID_ddebug511, !150, !"__UNIQUE_ID_ddebug511", i1 false, i1 false}
!152 = !{ptr @.str.63, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 70, i32 2}
!154 = !{ptr @.str.64, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @wil_sring_free.__UNIQUE_ID_ddebug509, !153, !"__UNIQUE_ID_ddebug509", i1 false, i1 false}
!156 = !{ptr @.str.65, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 1592, i32 2}
!158 = !{ptr @.str.66, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @wil_tx_fini_edma.__UNIQUE_ID_ddebug553, !157, !"__UNIQUE_ID_ddebug553", i1 false, i1 false}
!160 = !{ptr @.str.67, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 1422, i32 2}
!162 = !{ptr @.str.68, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @__wil_tx_ring_tso_edma.__UNIQUE_ID_ddebug546, !161, !"__UNIQUE_ID_ddebug546", i1 false, i1 false}
!164 = !{ptr @.str.69, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 1429, i32 3}
!166 = !{ptr @.str.70, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 1460, i32 2}
!168 = !{ptr @__wil_tx_ring_tso_edma.__UNIQUE_ID_ddebug547, !167, !"__UNIQUE_ID_ddebug547", i1 false, i1 false}
!169 = !{ptr @.str.71, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 1471, i32 2}
!171 = !{ptr @__wil_tx_ring_tso_edma.__UNIQUE_ID_ddebug548, !170, !"__UNIQUE_ID_ddebug548", i1 false, i1 false}
!172 = !{ptr @.str.72, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 1486, i32 3}
!174 = !{ptr @__wil_tx_ring_tso_edma.__UNIQUE_ID_ddebug549, !173, !"__UNIQUE_ID_ddebug549", i1 false, i1 false}
!175 = !{ptr @.str.73, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 1505, i32 3}
!177 = !{ptr @__wil_tx_ring_tso_edma.__UNIQUE_ID_ddebug550, !176, !"__UNIQUE_ID_ddebug550", i1 false, i1 false}
!178 = !{ptr @.str.74, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 1511, i32 2}
!180 = !{ptr @__wil_tx_ring_tso_edma.__UNIQUE_ID_ddebug551, !179, !"__UNIQUE_ID_ddebug551", i1 false, i1 false}
!181 = !{ptr @.str.75, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 1376, i32 3}
!183 = !{ptr @__func__.wil_tx_tso_gen_desc, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.76, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 1393, i32 2}
!186 = !{ptr @wil_tx_tso_gen_desc.__UNIQUE_ID_ddebug545, !185, !"__UNIQUE_ID_ddebug545", i1 false, i1 false}
!187 = !{ptr @.str.77, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 749, i32 2}
!189 = !{ptr @__func__.wil_tx_ring_modify_edma, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.78, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 613, i32 3}
!192 = !{ptr @__func__.wil_rx_init_edma, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.79, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 629, i32 2}
!195 = !{ptr @wil_rx_init_edma.__UNIQUE_ID_ddebug522, !194, !"__UNIQUE_ID_ddebug522", i1 false, i1 false}
!196 = !{ptr @.str.80, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 639, i32 2}
!198 = !{ptr @wil_rx_init_edma.__UNIQUE_ID_ddebug523, !197, !"__UNIQUE_ID_ddebug523", i1 false, i1 false}
!199 = !{ptr @.str.81, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 667, i32 3}
!201 = !{ptr @.str.82, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 349, i32 2}
!203 = !{ptr @.str.83, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @wil_init_rx_sring.__UNIQUE_ID_ddebug514, !202, !"__UNIQUE_ID_ddebug514", i1 false, i1 false}
!205 = !{ptr @.str.84, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 486, i32 2}
!207 = !{ptr @.str.85, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @wil_init_rx_desc_ring.__UNIQUE_ID_ddebug521, !206, !"__UNIQUE_ID_ddebug521", i1 false, i1 false}
!209 = !{ptr @.str.86, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 554, i32 3}
!211 = !{ptr @__func__.wil_rx_crypto_check_edma, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @.str.87, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 561, i32 3}
!214 = !{ptr @.str.88, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 819, i32 3}
!216 = !{ptr @.str.89, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @wil_rx_error_check_edma.__UNIQUE_ID_ddebug531, !215, !"__UNIQUE_ID_ddebug531", i1 false, i1 false}
!218 = !{ptr @.str.90, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 823, i32 4}
!220 = !{ptr @.str.91, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 828, i32 4}
!222 = !{ptr @.str.92, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 833, i32 4}
!224 = !{ptr @.str.93, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 838, i32 4}
!226 = !{ptr @.str.94, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/wireless/ath/wil6210/txrx_edma.c", i32 1611, i32 2}
!228 = !{ptr @.str.95, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @wil_rx_fini_edma.__UNIQUE_ID_ddebug554, !227, !"__UNIQUE_ID_ddebug554", i1 false, i1 false}
!230 = !{!"sp"}
!231 = !{i32 1, !"wchar_size", i32 2}
!232 = !{i32 1, !"min_enum_size", i32 4}
!233 = !{i32 8, !"branch-target-enforcement", i32 0}
!234 = !{i32 8, !"sign-return-address", i32 0}
!235 = !{i32 8, !"sign-return-address-all", i32 0}
!236 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!237 = !{i32 7, !"uwtable", i32 1}
!238 = !{i32 7, !"frame-pointer", i32 2}
!239 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!240 = !{!"branch_weights", i32 1, i32 2000}
!241 = !{i64 2148891688, i64 2148891693, i64 2148891706, i64 2148891750, i64 2148891784, i64 2148891805}
!242 = !{i8 0, i8 2}
!243 = !{i64 2158346383}
!244 = !{i64 6085097}
!245 = !{i64 2158346722}
!246 = !{!"auto-init"}
!247 = !{i64 2158755653}
!248 = !{!"branch_weights", i32 2000, i32 1}
!249 = !{i64 907364}
!250 = !{i64 2158758764}
!251 = !{i64 2158841617}
!252 = !{i64 2158854651}
!253 = !{i64 2158722751}
!254 = !{i64 2158722978}
!255 = !{i64 2149715069}
!256 = !{i64 2149716105}
!257 = !{i64 2158883611}
!258 = !{i64 2158672298}
!259 = !{i64 2158672561}
!260 = !{i64 2148411403, i64 2148411435, i64 2148411464, i64 2148411498, i64 2148411529, i64 2148411552}
