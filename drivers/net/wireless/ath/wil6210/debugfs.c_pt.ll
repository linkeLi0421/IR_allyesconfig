; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/wil6210/debugfs.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/wil6210/debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dbg_off = type { ptr, i16, i32, i32 }
%struct.anon.129 = type { ptr, i16, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.blink_on_off_time = type { i32, i32 }
%struct.fw_map = type { i32, i32, i32, ptr, i8, i8 }
%struct.wil6210_priv = type { ptr, i32, ptr, ptr, i32, ptr, [1 x i32], [32 x i8], i32, i8, ptr, ptr, ptr, i32, ptr, [1 x i32], [1 x i32], [1 x i32], i32, i32, i32, %struct.wait_queue_head, i8, [4 x ptr], %struct.mutex, %struct.atomic_t, i32, %struct.cfg80211_chan_def, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, %struct.wil6210_mbox_ctl, %struct.completion, %struct.completion, i16, i16, i8, ptr, i16, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.napi_struct, %struct.napi_struct, %struct.net_device, %struct.wil_ring, i32, [24 x %struct.wil_ring], [24 x %struct.wil_ring_tx_data], [8 x %struct.wil_status_ring], i8, i32, [24 x [2 x i8]], [20 x %struct.wil_sta_info], i32, i32, %struct.wil_rx_buff_mgmt, i8, %struct.wil_txrx_ops, %struct.mutex, %struct.rw_semaphore, %struct.atomic_t, %struct.atomic_t, ptr, [19 x %struct.wil_blob_wrapper], i8, i8, i8, %struct.wil_suspend_stats, %struct.wil_debugfs_data, i8, i32, ptr, %struct.wil_platform_ops, i8, %struct.pmc_ctx, i8, ptr, ptr, %struct.wil_halp, i32, i32, %struct.notifier_block, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i8, i8, i8, %struct.wil_fw_stats_global, i32, i32, i8, i32, [16 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.wil6210_mbox_ctl = type { %struct.wil6210_mbox_ring, %struct.wil6210_mbox_ring }
%struct.wil6210_mbox_ring = type { i32, i16, i16, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.102, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.121, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.102 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.121 = type { ptr }
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
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.124, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.124 = type { i64, i64, i8 }
%struct.wil_debugfs_iomem_data = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.125, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.126, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.127, ptr, %struct.address_space, %struct.list_head, %union.anon.128, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.125 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.126 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.127 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.128 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.wil6210_mbox_ring_desc = type { i32, i32 }
%struct.wil6210_mbox_hdr = type { i16, i16, i16, i8, i8 }
%union.wil_ring_desc = type { %union.wil_tx_desc }
%union.wil_tx_desc = type { %struct.vring_tx_desc }
%struct.vring_tx_desc = type { %struct.vring_tx_mac, %struct.vring_tx_dma }
%struct.vring_tx_mac = type { [3 x i32], i32 }
%struct.vring_tx_dma = type { i32, %struct.wil_ring_dma_addr, i8, i8, i8, i8, i16 }
%struct.wil_ring_dma_addr = type <{ i32, i16 }>
%struct.wil_rx_buff = type { ptr, %struct.list_head, i32 }
%struct.wil_ctx = type { ptr, i8, i8 }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.119, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.anon.119 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.120 }
%union.anon.120 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.wil_tid_ampdu_rx = type { ptr, i32, i16, i16, i16, i16, i16, i64, i64, i64, i8, i16, i64 }
%struct.wil6210_vif = type { %struct.wireless_dev, ptr, ptr, i8, [1 x i32], i32, i16, i8, i8, i32, i8, i32, ptr, ptr, ptr, i32, i32, i32, [32 x i8], i32, i8, [32 x i8], i32, i32, ptr, i32, %struct.timer_list, %struct.work_struct, ptr, %struct.timer_list, %struct.wil_p2p_info, %struct.list_head, %struct.mutex, %struct.work_struct, i32, i8, i64, i32, %struct.work_struct }
%struct.wil_p2p_info = type { %struct.ieee80211_channel, i8, i64, ptr, i32, %struct.timer_list, %struct.work_struct, %struct.work_struct }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.wil_ring_rx_enhanced_mac = type { [3 x i32], i16, i16 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.wmi_notify_req_cmd = type { i8, i8, i8, i8, i32, i8, i8, i8, i8 }
%struct.anon.130 = type { %struct.wmi_cmd_hdr, %struct.wmi_notify_req_done_event }
%struct.wmi_cmd_hdr = type { i8, i8, i16, i32 }
%struct.wmi_notify_req_done_event = type <{ i32, i64, i8, i8, [2 x i8], i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, [3 x i8] }>
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.cfg80211_mgmt_tx_params = type { ptr, i8, i32, ptr, i32, i8, i8, i32, ptr }
%struct.wmi_temp_sense_all_done_event = type { i8, i8, [2 x i8], [8 x i32], i32 }
%struct.station_info = type { i64, i32, i32, i64, i64, i64, i16, i16, i8, i8, i8, i8, [4 x i8], [4 x i8], %struct.rate_info, %struct.rate_info, i32, i32, i32, i32, i32, %struct.sta_bss_parameters, %struct.nl80211_sta_flag_update, i32, ptr, i32, i32, i64, i32, i32, i32, i32, i64, i64, i64, i8, i8, ptr, i8, i8, i16, i32, i32, i32, i8 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.sta_bss_parameters = type { i8, i8, i16 }
%struct.nl80211_sta_flag_update = type { i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wil6210\00", [24 x i8] zeroinitializer }, align 32
@dbg_wil_off = internal constant { [14 x %struct.dbg_off], [32 x i8] } { [14 x %struct.dbg_off] [%struct.dbg_off { ptr @.str.244, i16 420, i32 24, i32 2 }, %struct.dbg_off { ptr @.str.245, i16 292, i32 60, i32 1 }, %struct.dbg_off { ptr @.str.246, i16 292, i32 100, i32 0 }, %struct.dbg_off { ptr @.str.247, i16 420, i32 24684, i32 4 }, %struct.dbg_off { ptr @.str.248, i16 292, i32 64, i32 4 }, %struct.dbg_off { ptr @.str.249, i16 420, i32 24685, i32 4 }, %struct.dbg_off { ptr @.str.250, i16 420, i32 24686, i32 4 }, %struct.dbg_off { ptr @.str.251, i16 420, i32 24136, i32 0 }, %struct.dbg_off { ptr @.str.252, i16 420, i32 6636, i32 4 }, %struct.dbg_off { ptr @.str.253, i16 420, i32 25112, i32 0 }, %struct.dbg_off { ptr @.str.254, i16 420, i32 25116, i32 0 }, %struct.dbg_off { ptr @.str.255, i16 420, i32 25120, i32 0 }, %struct.dbg_off { ptr @.str.256, i16 420, i32 25124, i32 4 }, %struct.dbg_off zeroinitializer], [32 x i8] zeroinitializer }, align 32
@dbg_wil_regs = internal constant { [4 x %struct.dbg_off], [32 x i8] } { [4 x %struct.dbg_off] [%struct.dbg_off { ptr @.str.257, i16 292, i32 27304, i32 3 }, %struct.dbg_off { ptr @.str.258, i16 292, i32 4, i32 3 }, %struct.dbg_off { ptr @.str.259, i16 292, i32 8, i32 3 }, %struct.dbg_off zeroinitializer], [32 x i8] zeroinitializer }, align 32
@dbg_statics = internal constant { [8 x %struct.dbg_off], [32 x i8] } { [8 x %struct.dbg_off] [%struct.dbg_off { ptr @.str.260, i16 420, i32 ptrtoint (ptr @dbg_txdesc_index to i32), i32 0 }, %struct.dbg_off { ptr @.str.261, i16 420, i32 ptrtoint (ptr @dbg_ring_index to i32), i32 0 }, %struct.dbg_off { ptr @.str.262, i16 420, i32 ptrtoint (ptr @mem_addr to i32), i32 0 }, %struct.dbg_off { ptr @.str.263, i16 420, i32 ptrtoint (ptr @led_polarity to i32), i32 4 }, %struct.dbg_off { ptr @.str.264, i16 420, i32 ptrtoint (ptr @dbg_status_msg_index to i32), i32 0 }, %struct.dbg_off { ptr @.str.265, i16 420, i32 ptrtoint (ptr @dbg_sring_index to i32), i32 0 }, %struct.dbg_off { ptr @.str.266, i16 420, i32 ptrtoint (ptr @drop_if_ring_full to i32), i32 4 }, %struct.dbg_off zeroinitializer], [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dbg_files = internal constant { [32 x %struct.anon.129], [96 x i8] } { [32 x %struct.anon.129] [%struct.anon.129 { ptr @.str.1, i16 292, ptr @mbox_fops }, %struct.anon.129 { ptr @.str.2, i16 292, ptr @ring_fops }, %struct.anon.129 { ptr @.str.3, i16 292, ptr @sta_fops }, %struct.anon.129 { ptr @.str.4, i16 292, ptr @mids_fops }, %struct.anon.129 { ptr @.str.5, i16 292, ptr @txdesc_fops }, %struct.anon.129 { ptr @.str.6, i16 292, ptr @bf_fops }, %struct.anon.129 { ptr @.str.7, i16 420, ptr @memread_fops }, %struct.anon.129 { ptr @.str.8, i16 164, ptr @fops_rxon }, %struct.anon.129 { ptr @.str.9, i16 164, ptr @fops_txmgmt }, %struct.anon.129 { ptr @.str.10, i16 164, ptr @fops_wmi }, %struct.anon.129 { ptr @.str.11, i16 420, ptr @fops_back }, %struct.anon.129 { ptr @.str.12, i16 420, ptr @fops_pmccfg }, %struct.anon.129 { ptr @.str.13, i16 292, ptr @fops_pmcdata }, %struct.anon.129 { ptr @.str.14, i16 292, ptr @fops_pmcring }, %struct.anon.129 { ptr @.str.15, i16 292, ptr @temp_fops }, %struct.anon.129 { ptr @.str.16, i16 292, ptr @freq_fops }, %struct.anon.129 { ptr @.str.17, i16 292, ptr @link_fops }, %struct.anon.129 { ptr @.str.18, i16 292, ptr @info_fops }, %struct.anon.129 { ptr @.str.19, i16 420, ptr @fops_recovery }, %struct.anon.129 { ptr @.str.20, i16 420, ptr @fops_led_cfg }, %struct.anon.129 { ptr @.str.21, i16 420, ptr @fops_led_blink_time }, %struct.anon.129 { ptr @.str.22, i16 292, ptr @fops_fw_capabilities }, %struct.anon.129 { ptr @.str.23, i16 292, ptr @fops_fw_version }, %struct.anon.129 { ptr @.str.24, i16 420, ptr @fops_suspend_stats }, %struct.anon.129 { ptr @.str.25, i16 420, ptr @fops_compressed_rx_status }, %struct.anon.129 { ptr @.str.26, i16 292, ptr @srings_fops }, %struct.anon.129 { ptr @.str.27, i16 292, ptr @status_msg_fops }, %struct.anon.129 { ptr @.str.28, i16 292, ptr @rx_buff_mgmt_fops }, %struct.anon.129 { ptr @.str.29, i16 420, ptr @fops_tx_latency }, %struct.anon.129 { ptr @.str.30, i16 420, ptr @fops_link_stats }, %struct.anon.129 { ptr @.str.31, i16 420, ptr @fops_link_stats_global }, %struct.anon.129 { ptr @.str.32, i16 164, ptr @fops_rbufcap }], [96 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mbox\00", [27 x i8] zeroinitializer }, align 32
@mbox_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mbox_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rings\00", [26 x i8] zeroinitializer }, align 32
@ring_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ring_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"stations\00", [23 x i8] zeroinitializer }, align 32
@sta_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @sta_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mids\00", [27 x i8] zeroinitializer }, align 32
@mids_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mids_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"desc\00", [27 x i8] zeroinitializer }, align 32
@txdesc_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @txdesc_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"bf\00", [29 x i8] zeroinitializer }, align 32
@bf_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @bf_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mem_val\00", [24 x i8] zeroinitializer }, align 32
@memread_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @memread_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rxon\00", [27 x i8] zeroinitializer }, align 32
@fops_rxon = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr @wil_write_file_rxon, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tx_mgmt\00", [24 x i8] zeroinitializer }, align 32
@fops_txmgmt = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr @wil_write_file_txmgmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"wmi_send\00", [23 x i8] zeroinitializer }, align 32
@fops_wmi = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr @wil_write_file_wmi, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"back\00", [27 x i8] zeroinitializer }, align 32
@fops_back = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @wil_read_back, ptr @wil_write_back, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pmccfg\00", [25 x i8] zeroinitializer }, align 32
@fops_pmccfg = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @wil_read_pmccfg, ptr @wil_write_pmccfg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pmcdata\00", [24 x i8] zeroinitializer }, align 32
@fops_pmcdata = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @wil_pmc_llseek, ptr @wil_pmc_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pmcring\00", [24 x i8] zeroinitializer }, align 32
@fops_pmcring = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @wil_pmcring_seq_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"temp\00", [27 x i8] zeroinitializer }, align 32
@temp_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @temp_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"freq\00", [27 x i8] zeroinitializer }, align 32
@freq_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @freq_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"link\00", [27 x i8] zeroinitializer }, align 32
@link_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @link_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"info\00", [27 x i8] zeroinitializer }, align 32
@info_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @info_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"recovery\00", [23 x i8] zeroinitializer }, align 32
@fops_recovery = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @wil_read_file_recovery, ptr @wil_write_file_recovery, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"led_cfg\00", [24 x i8] zeroinitializer }, align 32
@fops_led_cfg = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @wil_read_file_led_cfg, ptr @wil_write_file_led_cfg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"led_blink_time\00", [17 x i8] zeroinitializer }, align 32
@fops_led_blink_time = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @wil_read_led_blink_time, ptr @wil_write_led_blink_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fw_capabilities\00", [16 x i8] zeroinitializer }, align 32
@fops_fw_capabilities = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @wil_fw_capabilities_seq_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fw_version\00", [21 x i8] zeroinitializer }, align 32
@fops_fw_version = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @wil_fw_version_seq_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"suspend_stats\00", [18 x i8] zeroinitializer }, align 32
@fops_suspend_stats = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @wil_read_suspend_stats, ptr @wil_write_suspend_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"compressed_rx_status\00", [43 x i8] zeroinitializer }, align 32
@fops_compressed_rx_status = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @wil_compressed_rx_status_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @wil_compressed_rx_status_seq_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"srings\00", [25 x i8] zeroinitializer }, align 32
@srings_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @srings_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"status_msg\00", [21 x i8] zeroinitializer }, align 32
@status_msg_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @status_msg_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx_buff_mgmt\00", [19 x i8] zeroinitializer }, align 32
@rx_buff_mgmt_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rx_buff_mgmt_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx_latency\00", [21 x i8] zeroinitializer }, align 32
@fops_tx_latency = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @wil_tx_latency_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @wil_tx_latency_seq_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"link_stats\00", [21 x i8] zeroinitializer }, align 32
@fops_link_stats = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @wil_link_stats_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @wil_link_stats_seq_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"link_stats_global\00", [46 x i8] zeroinitializer }, align 32
@fops_link_stats_global = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @wil_link_stats_global_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @wil_link_stats_global_seq_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rbufcap\00", [24 x i8] zeroinitializer }, align 32
@fops_rbufcap = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr @wil_write_file_rbufcap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ring %s = {\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"  base = 0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"  size = 0x%04x bytes -> %d entries\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"  tail = 0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"  head = 0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"  entry size = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"  ??? size is not multiple of %zd, garbage?\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"  ??? pointers are garbage?\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"  [%2x] %s %s%s 0x%08x\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"F\00", [30 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"E\00", [30 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"t\00", [30 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"h\00", [30 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c" -> %04x %04x %04x %02x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"      : \00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"}\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%3d%%\00", [26 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tx_%2d\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\0A%pM CID %d TID %d 1x%s BACK([%u] %u TU A%s) [%3d|%3d] idle %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"+\00", [30 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"-\00", [30 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\0ABroadcast 1x%s [%3d|%3d] idle %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RING %s = {\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"  pa     = %pad\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"  va     = 0x%p\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  size   = %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  swtail = %u\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  swtail = %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  swhead = %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  hwhead = %u\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"  hwtail = [0x%08x] -> \00", [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"0x%08x = %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"???\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%c\00", [29 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"unused   \00", [22 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pending  \00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"connected\00", [22 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"[%d] %pM connected (roam counter %d) MID %d AID %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%d] %pM %s MID %d AID %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"  [%2d] \00", [23 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Rx invalid frame: non-data %lu, short %lu, large %lu, replay %lu\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"mic error %lu, key error %lu, amsdu error %lu, csum error %lu\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Rx/MCS:\00", [24 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %lld\00", [26 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"([%2d]) 0x%03x [\00", [47 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"] total %llu drop %llu (dup %llu + old %llu + dup mcast %llu) last 0x%03x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"  [%2d] PN\00", [21 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"  [GR] PN\00", [22 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" [%i%s]%6phN\00", [19 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"[%d] %pM %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"[%d] unused\0A\00", [19 x i8] zeroinitializer }, align 32
@dbg_ring_index = internal global { i32, [28 x i8] } zeroinitializer, align 32
@dbg_txdesc_index = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.90 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid ring index %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"No Tx[%2d] RING\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"No Rx RING\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[%2d] TxDesc index (%d) >= size (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"RxDesc index (%d) >= size (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid buff_id %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Tx[%2d][%3d] = {\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Rx[%3d] = {\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"  MAC = 0x%08x 0x%08x 0x%08x 0x%08x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"  DMA = 0x%08x 0x%08x 0x%08x 0x%08x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"  SKB = 0x%p\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"    len = %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"    nr_frags = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"    [%2d] : len = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [167 x i8], [57 x i8] } { [167 x i8] c"CID %d {\0A  TSF = 0x%016llx\0A  TxMCS = %s TxTpt = %4d\0A  SQI = %4d\0A  RSSI = %4d\0A  Status = 0x%08x %s\0A  Sectors(rx:tx) my %2d:%2d peer %2d:%2d\0A  Goodput(rx:tx) %4d:%4d\0A}\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"12.1\00", [27 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bf_mcs\00", [25 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Failed\00", [25 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"OK\00", [29 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Retrying\00", [23 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"??\00", [29 x i8] zeroinitializer }, align 32
@mem_addr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.111 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[0x%08x] = 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"[0x%08x] = INVALID\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Invalid channel %ld\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.wil_write_file_rxon = private unnamed_addr constant [20 x i8] c"wil_write_file_rxon\00", align 1
@.str.114 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: -> %d\0A\00", [21 x i8] zeroinitializer }, align 32
@__func__.wil_write_file_txmgmt = private unnamed_addr constant [22 x i8] c"wil_write_file_txmgmt\00", align 1
@.str.115 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: 0x%04x[%d] -> %d\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.wil_write_file_wmi = private unnamed_addr constant [19 x i8] c"wil_write_file_wmi\00", align 1
@wil_read_back.text = internal constant { [287 x i8], [65 x i8] } { [287 x i8] c"block ack control, write:\0A - \22add <ringid> <agg_size> <timeout>\22 to trigger ADDBA\0AIf missing, <timeout> defaults to 0\0A - \22del_tx <ringid> <reason>\22 to trigger DELBA for Tx side\0A - \22del_rx <CID> <TID> <reason>\22 to trigger DELBA for Rx side\0AIf missing, <reason> set to \22STA_LEAVING\22 (36)\0A\00", [65 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%8s %d %d %d\00", [19 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"add\00", [28 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"del_tx\00", [25 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: BACK: invalid ring id %d\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.wil_write_back = private unnamed_addr constant [15 x i8] c"wil_write_back\00", align 1
@.str.120 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: BACK: add require at least 2 params\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"del_rx\00", [25 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: BACK: del_rx require at least 2 params\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: BACK: invalid CID %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: BACK: Unrecognized command \22%s\22\0A\00", [59 x i8] zeroinitializer }, align 32
@__const.wil_read_pmccfg.help = private unnamed_addr constant [127 x i8] c"pmc control, write:\0A - \22alloc <num descriptors> <descriptor_size>\22 to allocate pmc\0A - \22free\22 to free memory allocated for pmc\0A\00", align 1
@.str.125 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Last command status: %d\0A\0A%s\00", [36 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%8s %d %d\00", [22 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: pmccfg: no params given\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.wil_write_pmccfg = private unnamed_addr constant [17 x i8] c"wil_write_pmccfg\00", align 1
@.str.128 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"alloc\00", [26 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: pmccfg: alloc requires 2 params\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"free\00", [27 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: pmccfg: free does not have any params\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: pmccfg: Unrecognized command \22%s\22\0A\00", [57 x i8] zeroinitializer }, align 32
@temp_show.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.133, ptr @.str.134, ptr @.str.135, i8 1, i8 84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp_show\00", [22 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/wireless/ath/wil6210/debugfs.c\00", [53 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"DBG[MISC]WMI_FW_CAPABILITY_TEMPERATURE_ALL_RF is supported\00", [37 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Failed\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"T_mac   =\00", [22 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Connected RFs [0x%08x]\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RF[%d]   = \00", [20 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@temp_show.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.133, ptr @.str.134, ptr @.str.141, i8 1, i8 89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.141 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"DBG[MISC]WMI_FW_CAPABILITY_TEMPERATURE_ALL_RF is not supported\00", [33 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"T_radio =\00", [22 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s N/A\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s %s%d.%03d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Freq = %d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[%d][MID %d] %pM %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  Tx_mcs = %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sinfo->txrate.mcs\00", [46 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  Rx_mcs = %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sinfo->rxrate.mcs\00", [46 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  SQ     = %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  INVALID MID\0A\00", [17 x i8] zeroinitializer }, align 32
@info_show.rxf_old = internal global { i32, [28 x i8] } zeroinitializer, align 32
@info_show.txf_old = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.153 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AC powered : %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Rx irqs:packets : %8d : %8ld\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Tx irqs:packets : %8d : %8ld\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Tx queue[%i] state : 0x%lx%s%s%s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" DRV_XOFF\00", [22 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" STACK_XOFF\00", [20 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" FROZEN\00", [24 x i8] zeroinitializer }, align 32
@wil_read_file_recovery.sstate = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.160, ptr @.str.161, ptr @.str.162], [20 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"idle\00", [27 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pending\00", [24 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"running\00", [24 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mode = %s\0Astate = %s\0A\00", [42 x i8] zeroinitializer }, align 32
@no_fw_recovery = external dso_local local_unnamed_addr global i8, align 1
@.str.164 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"manual\00", [25 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@wil_write_file_recovery.run_command = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"run\00", [28 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: No recovery pending\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.wil_write_file_recovery = private unnamed_addr constant [24 x i8] c"wil_write_file_recovery\00", align 1
@.str.167 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: Offset [%d]\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Input too long, len = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Bad recovery command \22%s\22\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"led_id is set to %d, echo 1 to enable, 0 to disable\0A\00", [43 x i8] zeroinitializer }, align 32
@led_id = external dso_local local_unnamed_addr global i8, align 1
@.str.171 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: Invalid argument\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.wil_write_file_led_cfg = private unnamed_addr constant [23 x i8] c"wil_write_file_led_cfg\00", align 1
@.str.172 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: %s led %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Enabling\00", [23 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Disabling\00", [22 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: %s led %d failed\0A\00", [42 x i8] zeroinitializer }, align 32
@wil_read_led_blink_time.text = internal global { [400 x i8], [112 x i8] } zeroinitializer, align 32
@.str.176 = internal constant { [186 x i8], [38 x i8] } { [186 x i8] c"To set led blink on/off time variables write:\0A<blink_on_slow> <blink_off_slow> <blink_on_med> <blink_off_med> <blink_on_fast> <blink_off_fast>\0AThe current values are:\0A%d %d %d %d %d %d\0A\00", [38 x i8] zeroinitializer }, align 32
@led_blink_time = external dso_local global [3 x %struct.blink_on_off_time], align 4
@.str.177 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%d %d %d %d %d %d\00", [46 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fw_capabilities : %*pb\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"N/A\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [296 x i8], [88 x i8] } { [296 x i8] c"Radio on suspend statistics:\0Asuccessful suspends:%ld failed suspends:%ld\0Asuccessful resumes:%ld failed resumes:%ld\0Arejected by device:%ld\0ARadio off suspend statistics:\0Asuccessful suspends:%ld failed suspends:%ld\0Asuccessful resumes:%ld failed resumes:%ld\0AGeneral statistics:\0Arejected by host:%ld\0A\00", [88 x i8] zeroinitializer }, align 32
@__func__.wil_compressed_rx_status_write = private unnamed_addr constant [31 x i8] c"wil_compressed_rx_status_write\00", align 1
@.str.182 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: cannot change edma config after iface is up\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: %sable compressed_rx_status\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"En\00", [29 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Dis\00", [28 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Status Ring %s [ %d ] = {\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TX\00", [29 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"  va     = 0x%pK\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"  elem_size   = %zu\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"  desc_rdy_pol   = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"  invalid_buff_id_cnt   = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@dbg_sring_index = internal global { i32, [28 x i8] } zeroinitializer, align 32
@dbg_status_msg_index = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.194 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid status ring index %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"No %cX status ring\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%cxDesc index (%d) >= size (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%cx[%d][%3d] = {\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"  0x%08x 0x%08x 0x%08x 0x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"  size = %zu\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"  free_list_empty_cnt = %lu\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"  Active list:\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\0A  Free list:\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"  Total number of buffers: %u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\0A    \00", [26 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"[%4d] \00", [25 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\0ANumber of buffers: %u\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.wil_tx_latency_write = private unnamed_addr constant [21 x i8] c"wil_tx_latency_write\00", align 1
@.str.207 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Invalid resolution %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: %s TX latency measurements (resolution %dusec)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Tx/Latency bin:\00", [16 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Tx/Latency min/avg/max (us): %d/%lld/%d\00", [56 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%d %d\00", [26 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: request link statistics, cid %d interval %d\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.wil_link_stats_write = private unnamed_addr constant [21 x i8] c"wil_link_stats_write\00", align 1
@.str.213 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: link statistics failed for mid %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MID %d \00", [24 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unused\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"no statistics\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TSF %lld\0A\00", [22 x i8] zeroinitializer }, align 32
@__const.wil_link_stats_print_basic.per = private unnamed_addr constant [5 x i8] c"?\00\00\00\00", align 1
@.str.218 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%d%%\00", [27 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [159 x i8], [33 x i8] } { [159 x i8] c"CID %d {\0A\09TxMCS %s TxTpt %d\0A\09Goodput(rx:tx) %d:%d\0A\09RxBcastFrames %d\0A\09RSSI %d SQI %d SNR %d PER %s\0A\09Rx RFC %d Ant num %d\0A\09Sectors(rx:tx) my %d:%d peer %d:%d\0A}\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"basic->bf_mcs\00", [18 x i8] zeroinitializer }, align 32
@__func__.wil_link_stats_global_write = private unnamed_addr constant [28 x i8] c"wil_link_stats_global_write\00", align 1
@.str.221 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: request global link stats, interval %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: global link stats failed %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"Frames(rx:tx) %d:%d\0ABA Frames(rx:tx) %d:%d\0ABeacons %d\0ARx Errors (MIC:CRC) %d:%d\0ATx Errors (no ack) %d\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.wil_write_file_rbufcap = private unnamed_addr constant [23 x i8] c"wil_write_file_rbufcap\00", align 1
@.str.224 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: %s RBUFCAP, descriptors threshold - %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Invalid descriptors threshold, %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: RBUFCAP config failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@isr_off = internal constant { [8 x %struct.dbg_off], [32 x i8] } { [8 x %struct.dbg_off] [%struct.dbg_off { ptr @.str.227, i16 420, i32 0, i32 3 }, %struct.dbg_off { ptr @.str.228, i16 420, i32 4, i32 3 }, %struct.dbg_off { ptr @.str.229, i16 420, i32 8, i32 3 }, %struct.dbg_off { ptr @.str.230, i16 164, i32 12, i32 3 }, %struct.dbg_off { ptr @.str.231, i16 420, i32 16, i32 3 }, %struct.dbg_off { ptr @.str.232, i16 164, i32 20, i32 3 }, %struct.dbg_off { ptr @.str.233, i16 164, i32 24, i32 3 }, %struct.dbg_off zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ICC\00", [28 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ICR\00", [28 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ICM\00", [28 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ICS\00", [28 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IMV\00", [28 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IMS\00", [28 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IMC\00", [28 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"USER_ICR\00", [23 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DMA_EP_TX_ICR\00", [18 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DMA_EP_RX_ICR\00", [18 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DMA_EP_MISC_ICR\00", [16 x i8] zeroinitializer }, align 32
@fw_mapping = external dso_local local_unnamed_addr global [19 x %struct.fw_map], align 4
@.str.238 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"blob_%s\00", [24 x i8] zeroinitializer }, align 32
@fops_ioblob = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @wil_read_file_ioblob, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@wil_fops_ulong = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @wil_fops_ulong_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%llx\0A\00", [24 x i8] zeroinitializer }, align 32
@fops_iomem_x32 = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_iomem_x32_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"0x%08llx\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"status[0]\00", [22 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hw_version\00", [21 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"recovery_count\00", [17 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"discovery_mode\00", [17 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"chip_revision\00", [18 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"abft_len\00", [23 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wakeup_trigger\00", [17 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ring_idle_trsh\00", [17 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"num_rx_status_rings\00", [44 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx_status_ring_order\00", [43 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tx_status_ring_order\00", [43 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_buff_id_count\00", [47 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"amsdu_en\00", [23 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RGF_MAC_MTRL_COUNTER_0\00", [41 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RGF_USER_USAGE_1\00", [47 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RGF_USER_USAGE_2\00", [47 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"desc_index\00", [21 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ring_index\00", [21 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mem_addr\00", [23 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"led_polarity\00", [19 x i8] zeroinitializer }, align 32
@led_polarity = external dso_local global i8, align 1
@.str.264 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"status_index\00", [19 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sring_index\00", [20 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"drop_if_ring_full\00", [46 x i8] zeroinitializer }, align 32
@drop_if_ring_full = external dso_local global i8, align 1
@.str.267 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PSEUDO_ISR\00", [21 x i8] zeroinitializer }, align 32
@pseudo_isr_off = internal constant { [4 x %struct.dbg_off], [32 x i8] } { [4 x %struct.dbg_off] [%struct.dbg_off { ptr @.str.268, i16 292, i32 7272, i32 3 }, %struct.dbg_off { ptr @.str.269, i16 292, i32 7276, i32 3 }, %struct.dbg_off { ptr @.str.270, i16 292, i32 7280, i32 3 }, %struct.dbg_off zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CAUSE\00", [26 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MASK_SW\00", [24 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MASK_FW\00", [24 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ITR_CNT\00", [24 x i8] zeroinitializer }, align 32
@lgc_itr_cnt_off = internal constant { [4 x %struct.dbg_off], [32 x i8] } { [4 x %struct.dbg_off] [%struct.dbg_off { ptr @.str.272, i16 420, i32 7260, i32 3 }, %struct.dbg_off { ptr @.str.273, i16 420, i32 7264, i32 3 }, %struct.dbg_off { ptr @.str.274, i16 420, i32 7268, i32 3 }, %struct.dbg_off zeroinitializer], [32 x i8] zeroinitializer }, align 32
@tx_itr_cnt_off = internal constant { [7 x %struct.dbg_off], [48 x i8] } { [7 x %struct.dbg_off] [%struct.dbg_off { ptr @.str.272, i16 420, i32 7476, i32 3 }, %struct.dbg_off { ptr @.str.273, i16 420, i32 7480, i32 3 }, %struct.dbg_off { ptr @.str.274, i16 420, i32 7484, i32 3 }, %struct.dbg_off { ptr @.str.275, i16 420, i32 7520, i32 3 }, %struct.dbg_off { ptr @.str.276, i16 420, i32 7524, i32 3 }, %struct.dbg_off { ptr @.str.277, i16 420, i32 7528, i32 3 }, %struct.dbg_off zeroinitializer], [48 x i8] zeroinitializer }, align 32
@rx_itr_cnt_off = internal constant { [7 x %struct.dbg_off], [48 x i8] } { [7 x %struct.dbg_off] [%struct.dbg_off { ptr @.str.272, i16 420, i32 7492, i32 3 }, %struct.dbg_off { ptr @.str.273, i16 420, i32 7496, i32 3 }, %struct.dbg_off { ptr @.str.274, i16 420, i32 7500, i32 3 }, %struct.dbg_off { ptr @.str.275, i16 420, i32 7508, i32 3 }, %struct.dbg_off { ptr @.str.276, i16 420, i32 7512, i32 3 }, %struct.dbg_off { ptr @.str.277, i16 420, i32 7516, i32 3 }, %struct.dbg_off zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TRSH\00", [27 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DATA\00", [27 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CTL\00", [28 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IDL_TRSH\00", [23 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IDL_DATA\00", [23 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IDL_CTL\00", [24 x i8] zeroinitializer }, align 32
@switch.table.bf_show = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.107, ptr @.str.108, ptr @.str.109], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.278 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.279 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.280 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.281 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.282 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.283 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.284 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.285 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2483, i32 55 }
@___asan_gen_.289 = private unnamed_addr constant [12 x i8] c"dbg_wil_off\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2437, i32 29 }
@___asan_gen_.292 = private unnamed_addr constant [13 x i8] c"dbg_wil_regs\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2454, i32 29 }
@___asan_gen_.295 = private unnamed_addr constant [12 x i8] c"dbg_statics\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2463, i32 29 }
@___asan_gen_.298 = private unnamed_addr constant [10 x i8] c"dbg_files\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2367, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2368, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant [10 x i8] c"mbox_fops\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 372, i32 1 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2369, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant [10 x i8] c"ring_fops\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 191, i32 1 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2370, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant [9 x i8] c"sta_fops\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1698, i32 1 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2371, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant [10 x i8] c"mids_fops\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1723, i32 1 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2372, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant [12 x i8] c"txdesc_fops\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1160, i32 1 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2373, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant [8 x i8] c"bf_fops\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1335, i32 1 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2374, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant [13 x i8] c"memread_fops\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 612, i32 1 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2375, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant [10 x i8] c"fops_rxon\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 729, i32 37 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2376, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant [12 x i8] c"fops_txmgmt\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 996, i32 37 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2377, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant [9 x i8] c"fops_wmi\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1039, i32 37 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2378, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant [10 x i8] c"fops_back\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 864, i32 37 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2379, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant [12 x i8] c"fops_pmccfg\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 940, i32 37 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2380, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant [13 x i8] c"fops_pmcdata\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 946, i32 37 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2381, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant [13 x i8] c"fops_pmcring\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 957, i32 37 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2382, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant [10 x i8] c"temp_fops\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1392, i32 1 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2383, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant [10 x i8] c"freq_fops\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1405, i32 1 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2384, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant [10 x i8] c"link_fops\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1462, i32 1 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2385, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant [10 x i8] c"info_fops\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1500, i32 1 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2386, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant [14 x i8] c"fops_recovery\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1561, i32 37 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2387, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant [13 x i8] c"fops_led_cfg\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2104, i32 37 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2388, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant [20 x i8] c"fops_led_blink_time\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2169, i32 37 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2389, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant [21 x i8] c"fops_fw_capabilities\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2192, i32 37 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2390, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant [16 x i8] c"fops_fw_version\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2218, i32 37 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2391, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant [19 x i8] c"fops_suspend_stats\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2279, i32 37 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2392, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant [26 x i8] c"fops_compressed_rx_status\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2331, i32 37 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2393, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant [12 x i8] c"srings_fops\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 262, i32 1 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2394, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant [16 x i8] c"status_msg_fops\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1206, i32 1 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2395, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant [18 x i8] c"rx_buff_mgmt_fops\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1249, i32 1 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2396, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant [16 x i8] c"fops_tx_latency\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1837, i32 37 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2397, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant [16 x i8] c"fops_link_stats\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2001, i32 37 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2398, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant [23 x i8] c"fops_link_stats_global\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2055, i32 37 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2399, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant [13 x i8] c"fops_rbufcap\00", align 1
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 767, i32 37 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 363, i32 25 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 365, i32 25 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 293, i32 16 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 294, i32 16 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 295, i32 16 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 296, i32 16 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 297, i32 16 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 298, i32 16 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 301, i32 17 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 309, i32 15 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 321, i32 17 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 322, i32 16 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 322, i32 22 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 323, i32 36 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 323, i32 42 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 324, i32 36 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 329, i32 18 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 342, i32 38 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 345, i32 16 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 349, i32 14 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 160, i32 36 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 168, i32 33 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 172, i32 9 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 174, i32 30 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 174, i32 36 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 181, i32 9 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 81, i32 16 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 82, i32 16 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 83, i32 16 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 84, i32 16 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 86, i32 17 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 88, i32 17 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 89, i32 16 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 101, i32 17 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 103, i32 16 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 107, i32 17 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 109, i32 15 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 123, i32 19 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1624, i32 18 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1631, i32 13 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1634, i32 13 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1637, i32 13 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1651, i32 18 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1654, i32 18 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1665, i32 20 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1675, i32 8 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1681, i32 8 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1687, i32 16 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1690, i32 19 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1575, i32 16 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1583, i32 6 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1603, i32 17 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1605, i32 15 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1610, i32 17 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1713, i32 18 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1716, i32 18 }
@___asan_gen_.661 = private unnamed_addr constant [15 x i8] c"dbg_ring_index\00", align 1
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 21, i32 12 }
@___asan_gen_.664 = private unnamed_addr constant [17 x i8] c"dbg_txdesc_index\00", align 1
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 20, i32 12 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1082, i32 18 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1099, i32 18 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1101, i32 16 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1107, i32 18 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1110, i32 18 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1133, i32 19 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1141, i32 17 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1144, i32 17 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1145, i32 16 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1147, i32 16 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1149, i32 16 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1051, i32 16 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1055, i32 17 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1061, i32 18 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1310, i32 17 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1321, i32 7 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1256, i32 10 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1258, i32 10 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1260, i32 10 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1262, i32 10 }
@___asan_gen_.730 = private unnamed_addr constant [9 x i8] c"mem_addr\00", align 1
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 19, i32 12 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 603, i32 17 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 605, i32 17 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 711, i32 3 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 991, i32 2 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1034, i32 2 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 853, i32 20 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 796, i32 20 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 804, i32 19 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 805, i32 19 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 809, i32 4 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 815, i32 5 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 826, i32 25 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 830, i32 4 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 835, i32 4 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 843, i32 3 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 933, i32 31 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 893, i32 20 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 900, i32 3 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 904, i32 23 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 906, i32 4 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 910, i32 30 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 912, i32 4 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 917, i32 3 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1361, i32 3 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1365, i32 16 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1368, i32 17 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1370, i32 17 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1373, i32 18 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1374, i32 18 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1380, i32 3 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1388, i32 17 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1343, i32 17 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1346, i32 17 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1401, i32 16 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1436, i32 17 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1448, i32 18 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1449, i32 8 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1450, i32 18 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1451, i32 8 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1452, i32 18 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1454, i32 16 }
@___asan_gen_.862 = private unnamed_addr constant [8 x i8] c"rxf_old\00", align 1
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1472, i32 15 }
@___asan_gen_.865 = private unnamed_addr constant [8 x i8] c"txf_old\00", align 1
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1472, i32 24 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1478, i32 16 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1479, i32 16 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1480, i32 16 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1491, i32 17 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1492, i32 7 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1493, i32 7 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1494, i32 7 }
@___asan_gen_.889 = private unnamed_addr constant [7 x i8] c"sstate\00", align 1
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1512, i32 28 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1512, i32 40 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1512, i32 48 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1512, i32 59 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1514, i32 33 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1515, i32 25 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1515, i32 36 }
@___asan_gen_.910 = private unnamed_addr constant [12 x i8] c"run_command\00", align 1
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1529, i32 20 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1534, i32 3 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1539, i32 3 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1544, i32 3 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1556, i32 3 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2070, i32 8 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2089, i32 3 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2093, i32 2 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2096, i32 3 }
@___asan_gen_.943 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2150, i32 14 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2153, i32 4 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2130, i32 20 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2180, i32 16 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2205, i32 17 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2207, i32 15 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2250, i32 8 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2302, i32 3 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2306, i32 2 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2319, i32 16 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 200, i32 16 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 201, i32 21 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 201, i32 28 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 203, i32 16 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 205, i32 16 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 226, i32 16 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 227, i32 16 }
@___asan_gen_.1000 = private unnamed_addr constant [16 x i8] c"dbg_sring_index\00", align 1
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 24, i32 12 }
@___asan_gen_.1003 = private unnamed_addr constant [21 x i8] c"dbg_status_msg_index\00", align 1
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 22, i32 12 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1173, i32 17 }
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1181, i32 17 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1186, i32 17 }
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1193, i32 16 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1196, i32 16 }
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1234, i32 16 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1235, i32 16 }
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1239, i32 14 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1241, i32 14 }
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1244, i32 16 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1215, i32 16 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1216, i32 17 }
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1219, i32 16 }
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1805, i32 3 }
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1813, i32 2 }
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1760, i32 16 }
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1770, i32 18 }
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1972, i32 20 }
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1979, i32 2 }
@___asan_gen_.1065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1994, i32 4 }
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1933, i32 17 }
@___asan_gen_.1071 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1935, i32 16 }
@___asan_gen_.1074 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1901, i32 15 }
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1905, i32 16 }
@___asan_gen_.1080 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1852, i32 30 }
@___asan_gen_.1083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1854, i32 16 }
@___asan_gen_.1086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1863, i32 6 }
@___asan_gen_.1089 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2046, i32 2 }
@___asan_gen_.1092 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2050, i32 3 }
@___asan_gen_.1095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 1878, i32 16 }
@___asan_gen_.1098 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 750, i32 2 }
@___asan_gen_.1101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 754, i32 3 }
@___asan_gen_.1104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 760, i32 3 }
@___asan_gen_.1105 = private unnamed_addr constant [8 x i8] c"isr_off\00", align 1
@___asan_gen_.1107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 487, i32 29 }
@___asan_gen_.1110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 488, i32 3 }
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 489, i32 3 }
@___asan_gen_.1116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 490, i32 3 }
@___asan_gen_.1119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 491, i32 3 }
@___asan_gen_.1122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 492, i32 3 }
@___asan_gen_.1125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 493, i32 3 }
@___asan_gen_.1128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 494, i32 3 }
@___asan_gen_.1131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2417, i32 3 }
@___asan_gen_.1134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2418, i32 3 }
@___asan_gen_.1137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2419, i32 3 }
@___asan_gen_.1140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2420, i32 3 }
@___asan_gen_.1143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2357, i32 32 }
@___asan_gen_.1144 = private unnamed_addr constant [12 x i8] c"fops_ioblob\00", align 1
@___asan_gen_.1146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 677, i32 37 }
@___asan_gen_.1149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 230, i32 6 }
@___asan_gen_.1151 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.1152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 214, i32 2 }
@___asan_gen_.1154 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.1155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1154, i32 174, i32 2 }
@___asan_gen_.1156 = private unnamed_addr constant [15 x i8] c"wil_fops_ulong\00", align 1
@___asan_gen_.1161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 441, i32 1 }
@___asan_gen_.1162 = private unnamed_addr constant [15 x i8] c"fops_iomem_x32\00", align 1
@___asan_gen_.1167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 412, i32 1 }
@___asan_gen_.1170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2438, i32 2 }
@___asan_gen_.1173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2439, i32 2 }
@___asan_gen_.1176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2440, i32 2 }
@___asan_gen_.1179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2441, i32 2 }
@___asan_gen_.1182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2442, i32 2 }
@___asan_gen_.1185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2443, i32 2 }
@___asan_gen_.1188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2444, i32 2 }
@___asan_gen_.1191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2445, i32 2 }
@___asan_gen_.1194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2446, i32 2 }
@___asan_gen_.1197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2447, i32 2 }
@___asan_gen_.1200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2448, i32 2 }
@___asan_gen_.1203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2449, i32 2 }
@___asan_gen_.1206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2450, i32 2 }
@___asan_gen_.1209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2455, i32 3 }
@___asan_gen_.1212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2457, i32 3 }
@___asan_gen_.1215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2458, i32 3 }
@___asan_gen_.1218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2464, i32 3 }
@___asan_gen_.1221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2465, i32 3 }
@___asan_gen_.1224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2466, i32 3 }
@___asan_gen_.1227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2467, i32 3 }
@___asan_gen_.1230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2468, i32 3 }
@___asan_gen_.1233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2469, i32 3 }
@___asan_gen_.1236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 2470, i32 3 }
@___asan_gen_.1239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 518, i32 40 }
@___asan_gen_.1240 = private unnamed_addr constant [15 x i8] c"pseudo_isr_off\00", align 1
@___asan_gen_.1242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 508, i32 29 }
@___asan_gen_.1245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 509, i32 3 }
@___asan_gen_.1248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 510, i32 3 }
@___asan_gen_.1251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 511, i32 3 }
@___asan_gen_.1254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 568, i32 25 }
@___asan_gen_.1255 = private unnamed_addr constant [16 x i8] c"lgc_itr_cnt_off\00", align 1
@___asan_gen_.1257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 524, i32 29 }
@___asan_gen_.1258 = private unnamed_addr constant [15 x i8] c"tx_itr_cnt_off\00", align 1
@___asan_gen_.1260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 531, i32 29 }
@___asan_gen_.1261 = private unnamed_addr constant [15 x i8] c"rx_itr_cnt_off\00", align 1
@___asan_gen_.1263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 547, i32 29 }
@___asan_gen_.1266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 525, i32 3 }
@___asan_gen_.1269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 526, i32 3 }
@___asan_gen_.1272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 527, i32 3 }
@___asan_gen_.1275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 538, i32 3 }
@___asan_gen_.1278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 540, i32 3 }
@___asan_gen_.1279 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1280 = private constant [46 x i8] c"../drivers/net/wireless/ath/wil6210/debugfs.c\00", align 1
@___asan_gen_.1281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1280, i32 542, i32 3 }
@___asan_gen_.1282 = private unnamed_addr constant [21 x i8] c"switch.table.bf_show\00", align 1
@llvm.compiler.used = appending global [333 x ptr] [ptr @.str, ptr @dbg_wil_off, ptr @dbg_wil_regs, ptr @dbg_statics, ptr @dbg_files, ptr @.str.1, ptr @mbox_fops, ptr @.str.2, ptr @ring_fops, ptr @.str.3, ptr @sta_fops, ptr @.str.4, ptr @mids_fops, ptr @.str.5, ptr @txdesc_fops, ptr @.str.6, ptr @bf_fops, ptr @.str.7, ptr @memread_fops, ptr @.str.8, ptr @fops_rxon, ptr @.str.9, ptr @fops_txmgmt, ptr @.str.10, ptr @fops_wmi, ptr @.str.11, ptr @fops_back, ptr @.str.12, ptr @fops_pmccfg, ptr @.str.13, ptr @fops_pmcdata, ptr @.str.14, ptr @fops_pmcring, ptr @.str.15, ptr @temp_fops, ptr @.str.16, ptr @freq_fops, ptr @.str.17, ptr @link_fops, ptr @.str.18, ptr @info_fops, ptr @.str.19, ptr @fops_recovery, ptr @.str.20, ptr @fops_led_cfg, ptr @.str.21, ptr @fops_led_blink_time, ptr @.str.22, ptr @fops_fw_capabilities, ptr @.str.23, ptr @fops_fw_version, ptr @.str.24, ptr @fops_suspend_stats, ptr @.str.25, ptr @fops_compressed_rx_status, ptr @.str.26, ptr @srings_fops, ptr @.str.27, ptr @status_msg_fops, ptr @.str.28, ptr @rx_buff_mgmt_fops, ptr @.str.29, ptr @fops_tx_latency, ptr @.str.30, ptr @fops_link_stats, ptr @.str.31, ptr @fops_link_stats_global, ptr @.str.32, ptr @fops_rbufcap, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @dbg_ring_index, ptr @dbg_txdesc_index, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @mem_addr, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @wil_read_back.text, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @info_show.rxf_old, ptr @info_show.txf_old, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @wil_read_file_recovery.sstate, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @wil_write_file_recovery.run_command, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @wil_read_led_blink_time.text, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @dbg_sring_index, ptr @dbg_status_msg_index, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @isr_off, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @fops_ioblob, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @wil_fops_ulong, ptr @.str.242, ptr @fops_iomem_x32, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @pseudo_isr_off, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @lgc_itr_cnt_off, ptr @tx_itr_cnt_off, ptr @rx_itr_cnt_off, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @switch.table.bf_show], section "llvm.metadata"
@0 = internal global [333 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_wil_off to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_wil_regs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_statics to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_files to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ring_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mids_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txdesc_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bf_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memread_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_rxon to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_txmgmt to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_wmi to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_back to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_pmccfg to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_pmcdata to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_pmcring to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temp_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @freq_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @info_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_recovery to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_led_cfg to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_led_blink_time to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_fw_capabilities to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_fw_version to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_suspend_stats to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_compressed_rx_status to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srings_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @status_msg_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_buff_mgmt_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_tx_latency to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_link_stats to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_link_stats_global to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_rbufcap to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_ring_index to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_txdesc_index to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 167, i32 224, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_read_back.text to i32), i32 287, i32 352, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @info_show.rxf_old to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @info_show.txf_old to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_read_file_recovery.sstate to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_write_file_recovery.run_command to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_read_led_blink_time.text to i32), i32 400, i32 512, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 186, i32 224, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 296, i32 384, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_sring_index to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_status_msg_index to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 159, i32 192, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_off to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_ioblob to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_fops_ulong to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_iomem_x32 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pseudo_isr_off to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgc_itr_cnt_off to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_itr_cnt_off to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_itr_cnt_off to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bf_show to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wil6210_debugfs_init(ptr noundef %wil) local_unnamed_addr #0 align 64 {
entry:
  %name.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %wiphy = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 2
  %0 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wiphy, align 8
  %debugfsdir = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 58
  %2 = ptrtoint ptr %debugfsdir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfsdir, align 4
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef %3) #13
  %debug = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 73
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %debug, align 4
  %tobool.not.i = icmp eq ptr %call, null
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 392) #16
  %dbg_data = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 79
  %6 = ptrtoint ptr %dbg_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i.i, ptr %dbg_data, align 8
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @debugfs_remove(ptr noundef nonnull %call) #13
  %7 = ptrtoint ptr %debug to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %debug, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %iomem_data_count = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 79, i32 1
  %8 = ptrtoint ptr %iomem_data_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %iomem_data_count, align 4
  tail call void @wil_pmc_init(ptr noundef %wil) #13
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end7
  %i.07.i = phi i32 [ 0, %if.end7 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [32 x %struct.anon.129], ptr @dbg_files, i32 0, i32 %i.07.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %mode.i = getelementptr [32 x %struct.anon.129], ptr @dbg_files, i32 0, i32 %i.07.i, i32 1
  %11 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %mode.i, align 4
  %fops.i = getelementptr [32 x %struct.anon.129], ptr @dbg_files, i32 0, i32 %i.07.i, i32 2
  %13 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fops.i, align 4
  %call.i = tail call ptr @debugfs_create_file(ptr noundef %10, i16 noundef zeroext %12, ptr noundef %call, ptr noundef %wil, ptr noundef %14) #13
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %wil6210_debugfs_init_files.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

wil6210_debugfs_init_files.exit:                  ; preds = %for.body.i
  %csr.i.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %call.i.i = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.234, ptr noundef %call) #13
  %15 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 2892
  tail call fastcc void @wil6210_debugfs_init_offset(ptr noundef %wil, ptr noundef %call.i.i, ptr noundef %add.ptr.i.i, ptr noundef nonnull @isr_off) #13
  %call.i.1.i = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.235, ptr noundef %call) #13
  %17 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.1.i = getelementptr i8, ptr %18, i32 7092
  tail call fastcc void @wil6210_debugfs_init_offset(ptr noundef %wil, ptr noundef %call.i.1.i, ptr noundef %add.ptr.i.1.i, ptr noundef nonnull @isr_off) #13
  %call.i.2.i = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.236, ptr noundef %call) #13
  %19 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.2.i = getelementptr i8, ptr %20, i32 7120
  tail call fastcc void @wil6210_debugfs_init_offset(ptr noundef %wil, ptr noundef %call.i.2.i, ptr noundef %add.ptr.i.2.i, ptr noundef nonnull @isr_off) #13
  %call.i.3.i = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.237, ptr noundef %call) #13
  %21 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.3.i = getelementptr i8, ptr %22, i32 7148
  tail call fastcc void @wil6210_debugfs_init_offset(ptr noundef %wil, ptr noundef %call.i.3.i, ptr noundef %add.ptr.i.3.i, ptr noundef nonnull @isr_off) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name.i) #13
  %23 = call ptr @memset(ptr %name.i, i32 255, i32 32)
  br label %for.body.i36

for.body.i36:                                     ; preds = %cleanup.i.for.body.i36_crit_edge, %wil6210_debugfs_init_files.exit
  %i.023.i = phi i32 [ 0, %wil6210_debugfs_init_files.exit ], [ %inc.i40, %cleanup.i.for.body.i36_crit_edge ]
  %name3.i = getelementptr [19 x %struct.fw_map], ptr @fw_mapping, i32 0, i32 %i.023.i, i32 3
  %24 = ptrtoint ptr %name3.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name3.i, align 4
  %tobool.not.i35 = icmp eq ptr %25, null
  br i1 %tobool.not.i35, label %for.body.i36.cleanup.i_crit_edge, label %if.end.i

for.body.i36.cleanup.i_crit_edge:                 ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx2.i = getelementptr [19 x %struct.fw_map], ptr @fw_mapping, i32 0, i32 %i.023.i
  %arrayidx.i37 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 74, i32 %i.023.i
  %blob1.i = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 74, i32 %i.023.i, i32 1
  %26 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %wil, ptr %arrayidx.i37, align 4
  %27 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %csr.i.i, align 4
  %host.i = getelementptr [19 x %struct.fw_map], ptr @fw_mapping, i32 0, i32 %i.023.i, i32 2
  %29 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %host.i, align 4
  %sub.i = add i32 %30, -8912896
  %add.ptr.i = getelementptr i8, ptr %28, i32 %sub.i
  %31 = ptrtoint ptr %blob1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr.i, ptr %blob1.i, align 4
  %to.i = getelementptr [19 x %struct.fw_map], ptr @fw_mapping, i32 0, i32 %i.023.i, i32 1
  %32 = ptrtoint ptr %to.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %to.i, align 4
  %34 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx2.i, align 4
  %sub5.i = sub i32 %33, %35
  %size.i = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 74, i32 %i.023.i, i32 1, i32 1
  %36 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sub5.i, ptr %size.i, align 4
  %37 = ptrtoint ptr %name3.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %name3.i, align 4
  %call.i38 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 32, ptr noundef nonnull @.str.238, ptr noundef %38) #13
  %call.i.i39 = call ptr @debugfs_create_file(ptr noundef nonnull %name.i, i16 noundef zeroext 292, ptr noundef %call, ptr noundef %arrayidx.i37, ptr noundef nonnull @fops_ioblob) #13
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %for.body.i36.cleanup.i_crit_edge
  %inc.i40 = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i41 = icmp eq i32 %inc.i40, 19
  br i1 %exitcond.not.i41, label %wil6210_debugfs_init_blobs.exit, label %cleanup.i.for.body.i36_crit_edge

cleanup.i.for.body.i36_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i36

wil6210_debugfs_init_blobs.exit:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name.i) #13
  call fastcc void @wil6210_debugfs_init_offset(ptr noundef %wil, ptr noundef %call, ptr noundef %wil, ptr noundef nonnull @dbg_wil_off)
  %39 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %csr.i.i, align 4
  call fastcc void @wil6210_debugfs_init_offset(ptr noundef %wil, ptr noundef %call, ptr noundef %40, ptr noundef nonnull @dbg_wil_regs)
  call fastcc void @wil6210_debugfs_init_offset(ptr noundef %wil, ptr noundef %call, ptr noundef null, ptr noundef nonnull @dbg_statics)
  %call.i42 = call ptr @debugfs_create_dir(ptr noundef nonnull @.str.267, ptr noundef %call) #13
  %41 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %csr.i.i, align 4
  call fastcc void @wil6210_debugfs_init_offset(ptr noundef %wil, ptr noundef %call.i42, ptr noundef %42, ptr noundef nonnull @pseudo_isr_off) #13
  %call.i44 = call ptr @debugfs_create_dir(ptr noundef nonnull @.str.271, ptr noundef %call) #13
  %call1.i = call ptr @debugfs_create_dir(ptr noundef nonnull @.str.189, ptr noundef %call.i44) #13
  %call2.i = call ptr @debugfs_create_dir(ptr noundef nonnull @.str.188, ptr noundef %call.i44) #13
  %43 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %csr.i.i, align 4
  call fastcc void @wil6210_debugfs_init_offset(ptr noundef %wil, ptr noundef %call.i44, ptr noundef %44, ptr noundef nonnull @lgc_itr_cnt_off) #13
  %45 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %csr.i.i, align 4
  call fastcc void @wil6210_debugfs_init_offset(ptr noundef %wil, ptr noundef %call1.i, ptr noundef %46, ptr noundef nonnull @tx_itr_cnt_off) #13
  %47 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %csr.i.i, align 4
  call fastcc void @wil6210_debugfs_init_offset(ptr noundef %wil, ptr noundef %call2.i, ptr noundef %48, ptr noundef nonnull @rx_itr_cnt_off) #13
  br label %cleanup

cleanup:                                          ; preds = %wil6210_debugfs_init_blobs.exit, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %wil6210_debugfs_init_blobs.exit ], [ -12, %if.then5 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_pmc_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wil6210_debugfs_init_offset(ptr noundef %wil, ptr noundef %dbg, ptr noundef %base, ptr nocapture noundef readonly %tbl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tbl, align 4
  %tobool.not79 = icmp eq ptr %1, null
  br i1 %tobool.not79, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dbg_data.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 79
  %iomem_data_count.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 79, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %2 = phi ptr [ %1, %for.body.lr.ph ], [ %35, %for.inc.for.body_crit_edge ]
  %i.080 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %type = getelementptr %struct.dbg_off, ptr %tbl, i32 %i.080, i32 3
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %for.body.for.inc_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb14
    i32 3, label %sw.bb22
    i32 4, label %sw.bb30
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %mode = getelementptr %struct.dbg_off, ptr %tbl, i32 %i.080, i32 1
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mode, align 4
  %off = getelementptr %struct.dbg_off, ptr %tbl, i32 %i.080, i32 2
  %8 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %off, align 4
  %add.ptr = getelementptr i8, ptr %base, i32 %9
  tail call void @debugfs_create_u32(ptr noundef nonnull %2, i16 noundef zeroext %7, ptr noundef %dbg, ptr noundef %add.ptr) #13
  br label %for.inc

sw.bb6:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %mode10 = getelementptr %struct.dbg_off, ptr %tbl, i32 %i.080, i32 1
  %10 = ptrtoint ptr %mode10 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mode10, align 4
  %off12 = getelementptr %struct.dbg_off, ptr %tbl, i32 %i.080, i32 2
  %12 = ptrtoint ptr %off12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %off12, align 4
  %add.ptr13 = getelementptr i8, ptr %base, i32 %13
  tail call void @debugfs_create_x32(ptr noundef nonnull %2, i16 noundef zeroext %11, ptr noundef %dbg, ptr noundef %add.ptr13) #13
  br label %for.inc

sw.bb14:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %mode18 = getelementptr %struct.dbg_off, ptr %tbl, i32 %i.080, i32 1
  %14 = ptrtoint ptr %mode18 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %mode18, align 4
  %off20 = getelementptr %struct.dbg_off, ptr %tbl, i32 %i.080, i32 2
  %16 = ptrtoint ptr %off20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %off20, align 4
  %add.ptr21 = getelementptr i8, ptr %base, i32 %17
  %call = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull %2, i16 noundef zeroext %15, ptr noundef %dbg, ptr noundef %add.ptr21, ptr noundef nonnull @wil_fops_ulong) #13
  br label %for.inc

sw.bb22:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %mode26 = getelementptr %struct.dbg_off, ptr %tbl, i32 %i.080, i32 1
  %18 = ptrtoint ptr %mode26 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %mode26, align 4
  %off28 = getelementptr %struct.dbg_off, ptr %tbl, i32 %i.080, i32 2
  %20 = ptrtoint ptr %off28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %off28, align 4
  %add.ptr29 = getelementptr i8, ptr %base, i32 %21
  %22 = ptrtoint ptr %dbg_data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dbg_data.i, align 8
  %24 = ptrtoint ptr %iomem_data_count.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iomem_data_count.i, align 4
  %arrayidx.i = getelementptr %struct.wil_debugfs_iomem_data, ptr %23, i32 %25
  %wil2.i = getelementptr %struct.wil_debugfs_iomem_data, ptr %23, i32 %25, i32 1
  %26 = ptrtoint ptr %wil2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %wil, ptr %wil2.i, align 4
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr29, ptr %arrayidx.i, align 4
  %call.i = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull %2, i16 noundef zeroext %19, ptr noundef %dbg, ptr noundef %arrayidx.i, ptr noundef nonnull @fops_iomem_x32) #13
  %28 = ptrtoint ptr %iomem_data_count.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iomem_data_count.i, align 4
  %inc.i = add i32 %29, 1
  store i32 %inc.i, ptr %iomem_data_count.i, align 4
  br label %for.inc

sw.bb30:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %mode34 = getelementptr %struct.dbg_off, ptr %tbl, i32 %i.080, i32 1
  %30 = ptrtoint ptr %mode34 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %mode34, align 4
  %off36 = getelementptr %struct.dbg_off, ptr %tbl, i32 %i.080, i32 2
  %32 = ptrtoint ptr %off36 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %off36, align 4
  %add.ptr37 = getelementptr i8, ptr %base, i32 %33
  tail call void @debugfs_create_u8(ptr noundef nonnull %2, i16 noundef zeroext %31, ptr noundef %dbg, ptr noundef %add.ptr37) #13
  br label %for.inc

for.inc:                                          ; preds = %sw.bb30, %sw.bb22, %sw.bb14, %sw.bb6, %sw.bb, %for.body.for.inc_crit_edge
  %inc = add i32 %i.080, 1
  %arrayidx = getelementptr %struct.dbg_off, ptr %tbl, i32 %inc
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %35, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil6210_debugfs_remove(ptr noundef %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 73
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debug, align 4
  tail call void @debugfs_remove(ptr noundef %1) #13
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %debug, align 4
  %dbg_data = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 79
  %3 = ptrtoint ptr %dbg_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dbg_data, align 8
  tail call void @kfree(ptr noundef %4) #13
  %max_assoc_sta = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 26
  %5 = ptrtoint ptr %max_assoc_sta to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_assoc_sta, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp9.not = icmp eq i32 %6, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %tx_latency_bins = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 63, i32 %i.010, i32 4
  %7 = ptrtoint ptr %tx_latency_bins to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx_latency_bins, align 8
  tail call void @kfree(ptr noundef %8) #13
  %inc = add nuw i32 %i.010, 1
  %9 = ptrtoint ptr %max_assoc_sta to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_assoc_sta, align 8
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @wil_pmc_free(ptr noundef %wil, i32 noundef 0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_pmc_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mbox_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mbox_show, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mbox_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %call = tail call i32 @wil_pm_runtime_get(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %csr = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 700
  tail call fastcc void @wil_print_mbox_ring(ptr noundef %s, ptr noundef nonnull @.str.33, ptr noundef %add.ptr)
  %4 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 716
  tail call fastcc void @wil_print_mbox_ring(ptr noundef %s, ptr noundef nonnull @.str.34, ptr noundef %add.ptr4)
  tail call void @wil_pm_runtime_put(ptr noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_pm_runtime_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wil_print_mbox_ring(ptr noundef %s, ptr noundef %prefix, ptr noundef %off) unnamed_addr #0 align 64 {
entry:
  %r = alloca %struct.wil6210_mbox_ring, align 4
  %d = alloca %struct.wil6210_mbox_ring_desc, align 4
  %hdr = alloca %struct.wil6210_mbox_hdr, align 8
  %databuf = alloca [240 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %r) #13
  %2 = getelementptr inbounds %struct.wil6210_mbox_ring, ptr %r, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wil6210_mbox_ring, ptr %r, i32 0, i32 4
  %4 = call ptr @memset(ptr %r, i32 255, i32 16)
  tail call void @wil_halp_vote(ptr noundef %1) #13
  %call = tail call i32 @wil_mem_access_lock(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @wil_halp_unvote(ptr noundef %1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = getelementptr inbounds %struct.wil6210_mbox_ring, ptr %r, i32 0, i32 2
  %6 = getelementptr inbounds %struct.wil6210_mbox_ring, ptr %r, i32 0, i32 1
  call void @wil_memcpy_fromio_32(ptr noundef nonnull %r, ptr noundef %off, i32 noundef 16) #13
  call void @wil_mbox_ring_le2cpus(ptr noundef nonnull %r) #13
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %5, align 2
  %9 = lshr i16 %8, 3
  %div = zext i16 %9 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef %prefix) #13
  %10 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %r, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.36, i32 noundef %11) #13
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %5, align 2
  %conv2 = zext i16 %13 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.37, i32 noundef %conv2, i32 noundef %div) #13
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %2, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.38, i32 noundef %15) #13
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %3, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.39, i32 noundef %17) #13
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %6, align 4
  %conv3 = zext i16 %19 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.40, i32 noundef %conv3) #13
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %5, align 2
  %22 = and i16 %21, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool6.not = icmp eq i16 %22, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.41, i32 noundef 8) #13
  br label %out

if.end8:                                          ; preds = %if.end
  %23 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %r, align 4
  %call10 = call ptr @wmi_addr(ptr noundef %1, i32 noundef %24) #13
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end8.if.then19_crit_edge, label %lor.lhs.false

if.end8.if.then19_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then19

lor.lhs.false:                                    ; preds = %if.end8
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %2, align 4
  %call13 = call ptr @wmi_addr(ptr noundef %1, i32 noundef %26) #13
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %lor.lhs.false.if.then19_crit_edge, label %lor.lhs.false15

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then19

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %3, align 4
  %call17 = call ptr @wmi_addr(ptr noundef %1, i32 noundef %28) #13
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %lor.lhs.false15.if.then19_crit_edge, label %for.cond.preheader

lor.lhs.false15.if.then19_crit_edge:              ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then19

for.cond.preheader:                               ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %8)
  %cmp94.not = icmp ult i16 %8, 8
  br i1 %cmp94.not, label %for.cond.preheader.out_crit_edge, label %for.body.lr.ph

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %29 = getelementptr inbounds %struct.wil6210_mbox_ring_desc, ptr %d, i32 0, i32 1
  %30 = getelementptr inbounds %struct.wil6210_mbox_hdr, ptr %hdr, i32 0, i32 1
  %31 = getelementptr inbounds %struct.wil6210_mbox_hdr, ptr %hdr, i32 0, i32 2
  %32 = getelementptr inbounds %struct.wil6210_mbox_hdr, ptr %hdr, i32 0, i32 3
  %csr = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 5
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.body

if.then19:                                        ; preds = %lor.lhs.false15.if.then19_crit_edge, %lor.lhs.false.if.then19_crit_edge, %if.end8.if.then19_crit_edge
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.42) #13
  br label %out

for.body:                                         ; preds = %if.end58.for.body_crit_edge, %for.body.lr.ph
  %i.095 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end58.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %d) #13
  %33 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %d, align 4, !annotation !687
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %29, align 4, !annotation !687
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hdr) #13
  %mul = shl i32 %i.095, 3
  %35 = ptrtoint ptr %hdr to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 -1, ptr %hdr, align 8
  %36 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %csr, align 4
  %38 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %r, align 4
  %sub = add i32 %39, -8912896
  %add.ptr = getelementptr i8, ptr %37, i32 %sub
  %add.ptr23 = getelementptr i8, ptr %add.ptr, i32 %mul
  call void @wil_memcpy_fromio_32(ptr noundef nonnull %d, ptr noundef %add.ptr23, i32 noundef 8) #13
  %40 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %d, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool24.not = icmp eq i32 %41, 0
  %cond = select i1 %tobool24.not, ptr @.str.45, ptr @.str.44
  %42 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %2, align 4
  %44 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %r, align 4
  %sub27 = sub i32 %43, %45
  call void @__sanitizer_cov_trace_cmp4(i32 %sub27, i32 %mul)
  %cmp28 = icmp eq i32 %sub27, %mul
  %cond30 = select i1 %cmp28, ptr @.str.46, ptr @.str.47
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %3, align 4
  %sub33 = sub i32 %47, %45
  call void @__sanitizer_cov_trace_cmp4(i32 %sub33, i32 %mul)
  %cmp34 = icmp eq i32 %sub33, %mul
  %cond36 = select i1 %cmp34, ptr @.str.48, ptr @.str.47
  %48 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %29, align 4
  %50 = call i32 @llvm.bswap.i32(i32 %49)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.43, i32 noundef %i.095, ptr noundef nonnull %cond, ptr noundef nonnull %cond30, ptr noundef nonnull %cond36, i32 noundef %50) #13
  %51 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %29, align 4
  %call38 = call i32 @wmi_read_hdr(ptr noundef %1, i32 noundef %52, ptr noundef nonnull %hdr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %if.then41, label %if.else

if.then41:                                        ; preds = %for.body
  %53 = ptrtoint ptr %30 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %30, align 2
  %55 = call i16 @llvm.bswap.i16(i16 %54)
  %56 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %hdr, align 8
  %58 = call i16 @llvm.bswap.i16(i16 %57)
  %conv43 = zext i16 %58 to i32
  %conv44 = zext i16 %55 to i32
  %59 = ptrtoint ptr %31 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %31, align 4
  %61 = call i16 @llvm.bswap.i16(i16 %60)
  %conv45 = zext i16 %61 to i32
  %62 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %32, align 2
  %conv46 = zext i8 %63 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.49, i32 noundef %conv43, i32 noundef %conv44, i32 noundef %conv45, i32 noundef %conv46) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 241, i16 %55)
  %cmp48 = icmp ult i16 %55, 241
  br i1 %cmp48, label %if.then50, label %if.then41.if.end58_crit_edge

if.then41.if.end58_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58

if.then50:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %databuf) #13
  %64 = call ptr @memset(ptr %databuf, i32 255, i32 240)
  %65 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %29, align 4
  %call52 = call ptr @wmi_buffer(ptr noundef %1, i32 noundef %66) #13
  %add.ptr53 = getelementptr i8, ptr %call52, i32 8
  call void @wil_memcpy_fromio_32(ptr noundef nonnull %databuf, ptr noundef %add.ptr53, i32 noundef %conv44) #13
  call void @seq_hex_dump(ptr noundef %s, ptr noundef nonnull @.str.50, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %databuf, i32 noundef %conv44, i1 noundef zeroext false) #13
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %databuf) #13
  br label %if.end58

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.51) #13
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.then50, %if.then41.if.end58_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hdr) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %d) #13
  %inc = add nuw nsw i32 %i.095, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %if.end58.out_crit_edge, label %if.end58.for.body_crit_edge

if.end58.for.body_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end58.out_crit_edge:                           ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

out:                                              ; preds = %if.end58.out_crit_edge, %if.then19, %for.cond.preheader.out_crit_edge, %if.then7
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.52) #13
  call void @wil_mem_access_unlock(ptr noundef %1) #13
  call void @wil_halp_unvote(ptr noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %r) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_pm_runtime_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_halp_vote(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_mem_access_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_halp_unvote(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_memcpy_fromio_32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_mbox_ring_le2cpus(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wmi_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_read_hdr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wmi_buffer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_mem_access_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ring_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @ring_show, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ring_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  %name = alloca [10 x i8], align 1
  %sidle = alloca [10 x i8], align 4
  %c = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %ring_rx = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 55
  tail call fastcc void @wil_print_ring(ptr noundef %s, ptr noundef %1, ptr noundef nonnull @.str.34, ptr noundef %ring_rx, i8 noundef zeroext 83, i8 noundef zeroext 95)
  %max_assoc_sta = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 26
  br label %for.body

for.body:                                         ; preds = %if.end252.for.body_crit_edge, %entry
  %i.0398 = phi i32 [ 0, %entry ], [ %inc, %if.end252.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 57, i32 %i.0398
  %arrayidx1 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 58, i32 %i.0398
  %va = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 57, i32 %i.0398, i32 1
  %2 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %va, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.if.end252_crit_edge, label %if.then

for.body.if.end252_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end252

if.then:                                          ; preds = %for.body
  %arrayidx2 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 62, i32 %i.0398
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2, align 2
  %conv = zext i8 %5 to i32
  %arrayidx6 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 62, i32 %i.0398, i32 1
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %7 to i32
  %swhead8 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 57, i32 %i.0398, i32 4
  %8 = ptrtoint ptr %swhead8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %swhead8, align 4
  %swtail9 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 57, i32 %i.0398, i32 3
  %10 = ptrtoint ptr %swtail9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %swtail9, align 4
  %size = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 57, i32 %i.0398, i32 2
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %size, align 4
  %conv10 = zext i16 %13 to i32
  %add = sub i32 %9, %11
  %sub = add i32 %add, %conv10
  %rem = urem i32 %sub, %conv10
  %14 = xor i32 %rem, -1
  %sub16 = add nsw i32 %14, %conv10
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %name) #13
  %15 = call ptr @memset(ptr %name, i32 255, i32 10)
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %sidle) #13
  %16 = call ptr @memset(ptr %sidle, i32 255, i32 10)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #13
  %17 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %c, align 4, !annotation !687
  %call = call i32 @read_current_timer(ptr noundef nonnull %c) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool17.not = icmp eq i32 %call, 0
  br i1 %tobool17.not, label %cond.false, label %if.then.cond.end_crit_edge

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %c, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then.cond.end_crit_edge
  %cond = phi i32 [ %19, %cond.false ], [ 0, %if.then.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #13
  %idle18 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 58, i32 %i.0398, i32 2
  %begin = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 58, i32 %i.0398, i32 4
  %20 = ptrtoint ptr %begin to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %begin, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %21)
  %cmp22.not = icmp eq i32 %cond, %21
  br i1 %cmp22.not, label %if.else222, label %if.end218

if.end218:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  %sub20 = sub i32 %cond, %21
  %22 = ptrtoint ptr %idle18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %idle18, align 4
  %mul = mul i32 %23, 100
  %div212 = udiv i32 %mul, %sub20
  %call221 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %sidle, i32 noundef 10, ptr noundef nonnull @.str.53, i32 noundef %div212)
  br label %if.end225

if.else222:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %sidle to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1311719680, ptr %sidle, align 4
  br label %if.end225

if.end225:                                        ; preds = %if.else222, %if.end218
  %25 = ptrtoint ptr %begin to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %cond, ptr %begin, align 4
  %26 = ptrtoint ptr %idle18 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %idle18, align 4
  %call229 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 10, ptr noundef nonnull @.str.55, i32 noundef %i.0398)
  %27 = ptrtoint ptr %max_assoc_sta to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_assoc_sta, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %conv)
  %cmp230 = icmp ugt i32 %28, %conv
  br i1 %cmp230, label %if.then232, label %if.else244

if.then232:                                       ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx233 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %conv
  %29 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx1, align 4, !range !688
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool235.not = icmp eq i8 %30, 0
  %cond237 = select i1 %tobool235.not, ptr @.str.58, ptr @.str.57
  %agg_wsize = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 58, i32 %i.0398, i32 5
  %31 = ptrtoint ptr %agg_wsize to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %agg_wsize, align 4
  %conv238 = zext i8 %32 to i32
  %agg_timeout = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 58, i32 %i.0398, i32 6
  %33 = ptrtoint ptr %agg_timeout to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %agg_timeout, align 2
  %conv239 = zext i16 %34 to i32
  %agg_amsdu = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 58, i32 %i.0398, i32 7
  %35 = ptrtoint ptr %agg_amsdu to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %agg_amsdu, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool241.not = icmp eq i8 %36, 0
  %cond242 = select i1 %tobool241.not, ptr @.str.58, ptr @.str.57
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.56, ptr noundef %arrayidx233, i32 noundef %conv, i32 noundef %conv7, ptr noundef nonnull %cond237, i32 noundef %conv238, i32 noundef %conv239, ptr noundef nonnull %cond242, i32 noundef %rem, i32 noundef %sub16, ptr noundef nonnull %sidle) #13
  br label %if.end250

if.else244:                                       ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx1, align 4, !range !688
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool246.not = icmp eq i8 %38, 0
  %cond248 = select i1 %tobool246.not, ptr @.str.58, ptr @.str.57
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.59, ptr noundef nonnull %cond248, i32 noundef %rem, i32 noundef %sub16, ptr noundef nonnull %sidle) #13
  br label %if.end250

if.end250:                                        ; preds = %if.else244, %if.then232
  call fastcc void @wil_print_ring(ptr noundef %s, ptr noundef %1, ptr noundef nonnull %name, ptr noundef %arrayidx, i8 noundef zeroext 95, i8 noundef zeroext 72)
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %sidle) #13
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %name) #13
  br label %if.end252

if.end252:                                        ; preds = %if.end250, %for.body.if.end252_crit_edge
  %inc = add nuw nsw i32 %i.0398, 1
  %exitcond.not = icmp eq i32 %inc, 24
  br i1 %exitcond.not, label %for.end, label %if.end252.for.body_crit_edge

if.end252.for.body_crit_edge:                     ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wil_print_ring(ptr noundef %s, ptr noundef %wil, ptr noundef %name, ptr noundef %ring, i8 noundef zeroext %_s, i8 noundef zeroext %_h) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.60, ptr noundef %name) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.61, ptr noundef %ring) #13
  %va = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %va, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.62, ptr noundef %1) #13
  %size = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %size, align 4
  %conv = zext i16 %3 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.63, i32 noundef %conv) #13
  %use_enhanced_dma_hw = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 67
  %4 = ptrtoint ptr %use_enhanced_dma_hw to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %use_enhanced_dma_hw, align 4, !range !688
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %is_rx = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 8
  %6 = ptrtoint ptr %is_rx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_rx, align 4, !range !688
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %edma_rx_swtail = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 7
  %8 = ptrtoint ptr %edma_rx_swtail to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %edma_rx_swtail, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %swtail = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %swtail.sink = phi ptr [ %swtail, %if.else ], [ %9, %if.then ]
  %.str.65.sink = phi ptr [ @.str.65, %if.else ], [ @.str.64, %if.then ]
  %10 = ptrtoint ptr %swtail.sink to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %swtail.sink, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull %.str.65.sink, i32 noundef %11) #13
  %swhead = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 4
  %12 = ptrtoint ptr %swhead to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %swhead, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.66, i32 noundef %13) #13
  %14 = ptrtoint ptr %use_enhanced_dma_hw to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %use_enhanced_dma_hw, align 4, !range !688
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool6.not = icmp eq i8 %15, 0
  br i1 %tobool6.not, label %if.end.if.end17_crit_edge, label %if.then7

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %is_rx8 = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 8
  %16 = ptrtoint ptr %is_rx8 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_rx8, align 4, !range !688
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool9.not = icmp eq i8 %17, 0
  %ring_tx = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 57
  %sub.ptr.lhs.cast = ptrtoint ptr %ring to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %ring_tx to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 40
  %cond = select i1 %tobool9.not, i32 %sub.ptr.div, i32 0
  %div = sdiv i32 %cond, 2
  %mul = shl nsw i32 %div, 2
  %add = add nsw i32 %mul, 9134316
  %call = tail call ptr @wmi_addr(ptr noundef %wil, i32 noundef %add) #13
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %call) #13, !srcloc !689
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %20 = and i32 %cond, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool12.not = icmp eq i32 %20, 0
  %shr = lshr i32 %19, 16
  %and = and i32 %19, 65535
  %cond16 = select i1 %tobool12.not, i32 %and, i32 %shr
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.67, i32 noundef %cond16) #13
  br label %if.end17

if.end17:                                         ; preds = %if.then7, %if.end.if.end17_crit_edge
  %hwtail = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 5
  %21 = ptrtoint ptr %hwtail to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hwtail, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.68, i32 noundef %22) #13
  %23 = ptrtoint ptr %hwtail to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hwtail, align 4
  %call19 = tail call ptr @wmi_addr(ptr noundef %wil, i32 noundef %24) #13
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.else26, label %if.then21

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call19) #13, !srcloc !689
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !690
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.69, i32 noundef %26, i32 noundef %26) #13
  br label %if.end27

if.else26:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.70) #13
  br label %if.end27

if.end27:                                         ; preds = %if.else26, %if.then21
  %27 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %va, align 4
  %tobool29.not = icmp eq ptr %28, null
  br i1 %tobool29.not, label %if.end27.if.end68_crit_edge, label %land.lhs.true30

if.end27.if.end68_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end68

land.lhs.true30:                                  ; preds = %if.end27
  %29 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32767, i16 %30)
  %cmp = icmp ult i16 %30, -32767
  br i1 %cmp, label %for.cond.preheader, label %land.lhs.true30.if.end68_crit_edge

land.lhs.true30.if.end68_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end68

for.cond.preheader:                               ; preds = %land.lhs.true30
  %31 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %cmp37122.not = icmp eq i16 %32, 0
  br i1 %cmp37122.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %is_rx.i = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 8
  %rx_buff_mgmt.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 66
  %size.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 66, i32 1
  %ctx.i = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 6
  %conv42.i = zext i8 %_s to i32
  %33 = zext i8 %_h to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0123 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %rem39 = and i32 %i.0123, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem39)
  %cmp40 = icmp ne i32 %rem39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0123)
  %cmp43.not = icmp eq i32 %i.0123, 0
  %or.cond = or i1 %cmp43.not, %cmp40
  br i1 %or.cond, label %for.body.if.end46_crit_edge, label %if.then45

for.body.if.end46_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then45:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.51) #13
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %for.body.if.end46_crit_edge
  %34 = ptrtoint ptr %use_enhanced_dma_hw to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %use_enhanced_dma_hw, align 4, !range !688
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool48.not = icmp eq i8 %35, 0
  br i1 %tobool48.not, label %if.else50, label %if.then49

if.then49:                                        ; preds = %if.end46
  %36 = ptrtoint ptr %is_rx.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %is_rx.i, align 4, !range !688
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then49
  %38 = ptrtoint ptr %rx_buff_mgmt.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rx_buff_mgmt.i, align 16
  %tobool2.not.i = icmp eq ptr %39, null
  br i1 %tobool2.not.i, label %if.then.i.for.inc_crit_edge, label %land.lhs.true.i

if.then.i.for.inc_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true.i:                                  ; preds = %if.then.i
  %40 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %va, align 4
  %buff_id1.i = getelementptr %union.wil_ring_desc, ptr %41, i32 %i.0123, i32 0, i32 0, i32 0, i32 1
  %42 = ptrtoint ptr %buff_id1.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %buff_id1.i, align 1
  %44 = tail call i16 @llvm.bswap.i16(i16 %43) #13
  %conv.i = zext i16 %44 to i32
  %45 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %conv.i)
  %cmp1.i.i = icmp sgt i32 %46, %conv.i
  br i1 %cmp1.i.i, label %if.end.i, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx8.i = getelementptr %struct.wil_rx_buff, ptr %39, i32 %conv.i
  %47 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx8.i, align 4
  %tobool9.not.i = icmp eq ptr %48, null
  %spec.select65.i = select i1 %tobool9.not.i, i8 %_s, i8 %_h
  %.pre128 = zext i8 %spec.select65.i to i32
  br label %for.inc

if.else.i:                                        ; preds = %if.then49
  %49 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %va, align 4
  %arrayidx18.i = getelementptr %union.wil_ring_desc, ptr %50, i32 %i.0123, i32 0, i32 0, i32 0, i32 0, i32 2
  %51 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %arrayidx18.i, align 1
  %53 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ctx.i, align 4
  %tobool20.not.i = icmp eq ptr %54, null
  br i1 %tobool20.not.i, label %if.else.i.land.end.i_crit_edge, label %land.rhs.i

if.else.i.land.end.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end.i

land.rhs.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx22.i = getelementptr %struct.wil_ctx, ptr %54, i32 %i.0123
  %55 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx22.i, align 4
  %tobool24.i = icmp ne ptr %56, null
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %if.else.i.land.end.i_crit_edge
  %57 = phi i1 [ false, %if.else.i.land.end.i_crit_edge ], [ %tobool24.i, %land.rhs.i ]
  %conv26.i = and i32 %52, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv26.i)
  %cmp.not.i = icmp eq i32 %conv26.i, 0
  br i1 %cmp.not.i, label %if.else37.i, label %if.then28.i

if.then28.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %_h._s63.i = select i1 %57, i8 %_h, i8 %_s
  %cond36.i = zext i8 %_h._s63.i to i32
  br label %for.inc

if.else37.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %spec.select.i = select i1 %57, i32 104, i32 %conv42.i
  br label %for.inc

if.else50:                                        ; preds = %if.end46
  %58 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %va, align 4
  %status = getelementptr %union.wil_ring_desc, ptr %59, i32 %i.0123, i32 0, i32 0, i32 1, i32 5
  %60 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load volatile i8, ptr %status, align 1
  %62 = and i8 %61, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool54.not = icmp eq i8 %62, 0
  br i1 %tobool54.not, label %cond.false57, label %if.else50.for.inc_crit_edge

if.else50.for.inc_crit_edge:                      ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

cond.false57:                                     ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #15
  %63 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ctx.i, align 4
  %arrayidx58 = getelementptr %struct.wil_ctx, ptr %64, i32 %i.0123
  %65 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx58, align 4
  %tobool59.not = icmp eq ptr %66, null
  %.pre = select i1 %tobool59.not, i32 104, i32 %33
  br label %for.inc

for.inc:                                          ; preds = %cond.false57, %if.else50.for.inc_crit_edge, %if.else37.i, %if.then28.i, %if.end.i, %land.lhs.true.i.for.inc_crit_edge, %if.then.i.for.inc_crit_edge
  %cond36.sink.i.sink = phi i32 [ %cond36.i, %if.then28.i ], [ %spec.select.i, %if.else37.i ], [ %.pre128, %if.end.i ], [ %conv42.i, %land.lhs.true.i.for.inc_crit_edge ], [ %conv42.i, %if.then.i.for.inc_crit_edge ], [ %.pre, %cond.false57 ], [ %conv42.i, %if.else50.for.inc_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.71, i32 noundef %cond36.sink.i.sink) #13
  %inc = add nuw nsw i32 %i.0123, 1
  %67 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %size, align 4
  %conv36 = zext i16 %68 to i32
  %cmp37 = icmp ult i32 %inc, %conv36
  br i1 %cmp37, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.51) #13
  br label %if.end68

if.end68:                                         ; preds = %for.end, %land.lhs.true30.if.end68_crit_edge, %if.end27.if.end68_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.52) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @read_current_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sta_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @sta_show, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sta_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %max_assoc_sta = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %max_assoc_sta to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_assoc_sta, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp136.not = icmp eq i32 %3, 0
  br i1 %cmp136.not, label %entry.for.end69_crit_edge, label %for.body.lr.ph

entry.for.end69_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end69

for.body.lr.ph:                                   ; preds = %entry
  %max_vifs = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %if.end66.for.body_crit_edge, %for.body.lr.ph
  %i.0137 = phi i32 [ 0, %for.body.lr.ph ], [ %inc68, %if.end66.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0137
  %status1 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0137, i32 2
  %4 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status1, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.278)
  switch i32 %5, label %for.body.cond.end_crit_edge [
    i32 0, label %for.body.if.else_crit_edge
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
  ]

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

sw.bb2:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

sw.bb3:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %aid4 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0137, i32 12
  %7 = ptrtoint ptr %aid4 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %aid4, align 4
  br label %cond.end

cond.end:                                         ; preds = %sw.bb3, %sw.bb2, %for.body.cond.end_crit_edge
  %status.0.ph = phi ptr [ @.str.74, %sw.bb2 ], [ @.str.75, %sw.bb3 ], [ @.str.72, %for.body.cond.end_crit_edge ]
  %aid.0.ph = phi i8 [ 0, %sw.bb2 ], [ %8, %sw.bb3 ], [ 0, %for.body.cond.end_crit_edge ]
  %mid7 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0137, i32 1
  %9 = ptrtoint ptr %mid7 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mid7, align 2
  %conv9 = zext i8 %10 to i32
  %11 = ptrtoint ptr %max_vifs to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %max_vifs, align 4
  %13 = tail call i8 @llvm.umin.i8(i8 %12, i8 4)
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %10)
  %cmp17 = icmp ugt i8 %13, %10
  br i1 %cmp17, label %if.then, label %cond.end.if.else_crit_edge

cond.end.if.else_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then:                                          ; preds = %cond.end
  %arrayidx19 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 23, i32 %conv9
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx19, align 4
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp20 = icmp eq i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp23 = icmp eq i32 %5, 2
  %or.cond = select i1 %cmp20, i1 %cmp23, i1 false
  br i1 %or.cond, label %if.then27, label %if.then.if.else_crit_edge

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then27:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %ft_roams = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0137, i32 3, i32 20
  %18 = ptrtoint ptr %ft_roams to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ft_roams, align 8
  %conv29 = zext i8 %aid.0.ph to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.76, i32 noundef %i.0137, ptr noundef %arrayidx, i32 noundef %19, i32 noundef %conv9, i32 noundef %conv29) #13
  br label %if.end34

if.else:                                          ; preds = %if.then.if.else_crit_edge, %cond.end.if.else_crit_edge, %for.body.if.else_crit_edge
  %conv9150 = phi i32 [ %conv9, %if.then.if.else_crit_edge ], [ %conv9, %cond.end.if.else_crit_edge ], [ 255, %for.body.if.else_crit_edge ]
  %status.0129149 = phi ptr [ %status.0.ph, %if.then.if.else_crit_edge ], [ %status.0.ph, %cond.end.if.else_crit_edge ], [ @.str.73, %for.body.if.else_crit_edge ]
  %aid.0131148 = phi i8 [ %aid.0.ph, %if.then.if.else_crit_edge ], [ %aid.0.ph, %cond.end.if.else_crit_edge ], [ 0, %for.body.if.else_crit_edge ]
  %conv33 = zext i8 %aid.0131148 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.77, i32 noundef %i.0137, ptr noundef %arrayidx, ptr noundef nonnull %status.0129149, i32 noundef %conv9150, i32 noundef %conv33) #13
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then27
  %20 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp36 = icmp eq i32 %21, 2
  br i1 %cmp36, label %if.then38, label %if.end34.if.end66_crit_edge

if.end34.if.end66_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

if.then38:                                        ; preds = %if.end34
  %tid_rx_lock = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0137, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %tid_rx_lock) #13
  br label %for.body42

for.body42:                                       ; preds = %if.end47.for.body42_crit_edge, %if.then38
  %tid.0133 = phi i32 [ 0, %if.then38 ], [ %inc, %if.end47.for.body42_crit_edge ]
  %arrayidx43 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0137, i32 6, i32 %tid.0133
  %22 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx43, align 4
  %arrayidx44 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0137, i32 10, i32 %tid.0133
  %tobool45.not = icmp eq ptr %23, null
  br i1 %tobool45.not, label %for.body42.if.end47_crit_edge, label %if.then46

for.body42.if.end47_crit_edge:                    ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

if.then46:                                        ; preds = %for.body42
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.78, i32 noundef %tid.0133) #13
  %head_seq_num.i = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %head_seq_num.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %head_seq_num.i, align 8
  %conv.i = zext i16 %25 to i32
  %ssn.i = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %23, i32 0, i32 4
  %26 = ptrtoint ptr %ssn.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %ssn.i, align 4
  %buf_size.i = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %23, i32 0, i32 5
  %28 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %buf_size.i, align 2
  %conv2.i = zext i16 %29 to i32
  %drop_dup4.i = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %23, i32 0, i32 8
  %30 = ptrtoint ptr %drop_dup4.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %drop_dup4.i, align 8
  %drop_old5.i = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %23, i32 0, i32 9
  %32 = ptrtoint ptr %drop_old5.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %drop_old5.i, align 8
  %drop_dup_mcast6.i = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %23, i32 0, i32 12
  %34 = ptrtoint ptr %drop_dup_mcast6.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %drop_dup_mcast6.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.83, i32 noundef %conv2.i, i32 noundef %conv.i) #13
  %36 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %buf_size.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %cmp46.not.i = icmp eq i16 %37, 0
  br i1 %cmp46.not.i, label %if.then46.wil_print_rxtid.exit_crit_edge, label %for.body.lr.ph.i

if.then46.wil_print_rxtid.exit_crit_edge:         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  br label %wil_print_rxtid.exit

for.body.lr.ph.i:                                 ; preds = %if.then46
  %sub.i = sub i16 %25, %27
  %and.i = and i16 %sub.i, 4095
  %rem.i = urem i16 %and.i, %29
  %conv14.i = zext i16 %rem.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.047.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.047.i, i32 %conv14.i)
  %cmp15.i = icmp eq i32 %i.047.i, %conv14.i
  %38 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %23, align 8
  br i1 %cmp15.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr ptr, ptr %39, i32 %conv14.i
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %41, null
  %cond.i = select i1 %tobool.not.i, i32 124, i32 79
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx18.i = getelementptr ptr, ptr %39, i32 %i.047.i
  %42 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx18.i, align 4
  %tobool19.not.i = icmp eq ptr %43, null
  %cond20.i = select i1 %tobool19.not.i, i32 95, i32 42
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then.i
  %cond.sink.i = phi i32 [ %cond.i, %if.then.i ], [ %cond20.i, %if.else.i ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.71, i32 noundef %cond.sink.i) #13
  %inc.i = add nuw nsw i32 %i.047.i, 1
  %44 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %buf_size.i, align 2
  %conv12.i = zext i16 %45 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv12.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.wil_print_rxtid.exit_crit_edge

for.inc.i.wil_print_rxtid.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %wil_print_rxtid.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

wil_print_rxtid.exit:                             ; preds = %for.inc.i.wil_print_rxtid.exit_crit_edge, %if.then46.wil_print_rxtid.exit_crit_edge
  %total.i = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %23, i32 0, i32 7
  %46 = ptrtoint ptr %total.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %total.i, align 8
  %add.i = add i64 %33, %31
  %add21.i = add i64 %add.i, %35
  %ssn_last_drop.i = getelementptr inbounds %struct.wil_tid_ampdu_rx, ptr %23, i32 0, i32 6
  %48 = ptrtoint ptr %ssn_last_drop.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %ssn_last_drop.i, align 8
  %conv22.i = zext i16 %49 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.84, i64 noundef %47, i64 noundef %add21.i, i64 noundef %31, i64 noundef %33, i64 noundef %35, i32 noundef %conv22.i) #13
  br label %if.end47

if.end47:                                         ; preds = %wil_print_rxtid.exit, %for.body42.if.end47_crit_edge
  tail call fastcc void @wil_print_rxtid_crypto(ptr noundef %s, i32 noundef %tid.0133, ptr noundef %arrayidx44)
  %inc = add nuw nsw i32 %tid.0133, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %if.end47.for.body42_crit_edge

if.end47.for.body42_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body42

for.end:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  %group_crypto_rx = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0137, i32 11
  tail call fastcc void @wil_print_rxtid_crypto(ptr noundef %s, i32 noundef 16, ptr noundef %group_crypto_rx)
  tail call void @_raw_spin_unlock_bh(ptr noundef %tid_rx_lock) #13
  %rx_non_data_frame = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0137, i32 3, i32 9
  %50 = ptrtoint ptr %rx_non_data_frame to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rx_non_data_frame, align 4
  %rx_short_frame = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0137, i32 3, i32 10
  %52 = ptrtoint ptr %rx_short_frame to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rx_short_frame, align 8
  %rx_large_frame = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0137, i32 3, i32 11
  %54 = ptrtoint ptr %rx_large_frame to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rx_large_frame, align 4
  %rx_replay = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0137, i32 3, i32 12
  %56 = ptrtoint ptr %rx_replay to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rx_replay, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.79, i32 noundef %51, i32 noundef %53, i32 noundef %55, i32 noundef %57) #13
  %rx_mic_error = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0137, i32 3, i32 13
  %58 = ptrtoint ptr %rx_mic_error to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rx_mic_error, align 4
  %rx_key_error = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0137, i32 3, i32 14
  %60 = ptrtoint ptr %rx_key_error to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rx_key_error, align 8
  %rx_amsdu_error = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0137, i32 3, i32 15
  %62 = ptrtoint ptr %rx_amsdu_error to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rx_amsdu_error, align 4
  %rx_csum_err = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0137, i32 3, i32 16
  %64 = ptrtoint ptr %rx_csum_err to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rx_csum_err, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.80, i32 noundef %59, i32 noundef %61, i32 noundef %63, i32 noundef %65) #13
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.81) #13
  %arrayidx62 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0137, i32 3, i32 19, i32 0
  %66 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %arrayidx62, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.82, i64 noundef %67) #13
  %arrayidx62.1 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0137, i32 3, i32 19, i32 1
  %68 = ptrtoint ptr %arrayidx62.1 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %arrayidx62.1, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.82, i64 noundef %69) #13
  %arrayidx62.2 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0137, i32 3, i32 19, i32 2
  %70 = ptrtoint ptr %arrayidx62.2 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %arrayidx62.2, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.82, i64 noundef %71) #13
  %arrayidx62.3 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0137, i32 3, i32 19, i32 3
  %72 = ptrtoint ptr %arrayidx62.3 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %arrayidx62.3, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.82, i64 noundef %73) #13
  %arrayidx62.4 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0137, i32 3, i32 19, i32 4
  %74 = ptrtoint ptr %arrayidx62.4 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %arrayidx62.4, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.82, i64 noundef %75) #13
  %arrayidx62.5 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0137, i32 3, i32 19, i32 5
  %76 = ptrtoint ptr %arrayidx62.5 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %arrayidx62.5, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.82, i64 noundef %77) #13
  %arrayidx62.6 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0137, i32 3, i32 19, i32 6
  %78 = ptrtoint ptr %arrayidx62.6 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %arrayidx62.6, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.82, i64 noundef %79) #13
  %arrayidx62.7 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0137, i32 3, i32 19, i32 7
  %80 = ptrtoint ptr %arrayidx62.7 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %arrayidx62.7, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.82, i64 noundef %81) #13
  %arrayidx62.8 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0137, i32 3, i32 19, i32 8
  %82 = ptrtoint ptr %arrayidx62.8 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %arrayidx62.8, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.82, i64 noundef %83) #13
  %arrayidx62.9 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0137, i32 3, i32 19, i32 9
  %84 = ptrtoint ptr %arrayidx62.9 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %arrayidx62.9, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.82, i64 noundef %85) #13
  %arrayidx62.10 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0137, i32 3, i32 19, i32 10
  %86 = ptrtoint ptr %arrayidx62.10 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %arrayidx62.10, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.82, i64 noundef %87) #13
  %arrayidx62.11 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0137, i32 3, i32 19, i32 11
  %88 = ptrtoint ptr %arrayidx62.11 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %arrayidx62.11, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.82, i64 noundef %89) #13
  %arrayidx62.12 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0137, i32 3, i32 19, i32 12
  %90 = ptrtoint ptr %arrayidx62.12 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %arrayidx62.12, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.82, i64 noundef %91) #13
  %arrayidx62.13 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0137, i32 3, i32 19, i32 13
  %92 = ptrtoint ptr %arrayidx62.13 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %arrayidx62.13, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.82, i64 noundef %93) #13
  %arrayidx62.14 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0137, i32 3, i32 19, i32 14
  %94 = ptrtoint ptr %arrayidx62.14 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %arrayidx62.14, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.82, i64 noundef %95) #13
  %arrayidx62.15 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0137, i32 3, i32 19, i32 15
  %96 = ptrtoint ptr %arrayidx62.15 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %arrayidx62.15, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.82, i64 noundef %97) #13
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.51) #13
  br label %if.end66

if.end66:                                         ; preds = %for.end, %if.end34.if.end66_crit_edge
  %inc68 = add nuw i32 %i.0137, 1
  %98 = ptrtoint ptr %max_assoc_sta to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %max_assoc_sta, align 8
  %cmp = icmp ult i32 %inc68, %99
  br i1 %cmp, label %if.end66.for.body_crit_edge, label %if.end66.for.end69_crit_edge

if.end66.for.end69_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end69

if.end66.for.body_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end69:                                        ; preds = %if.end66.for.end69_crit_edge, %entry.for.end69_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wil_print_rxtid_crypto(ptr noundef %s, i32 noundef %tid, ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %key_set = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %c, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %key_set to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %key_set, align 1, !range !688
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %for.cond, label %entry.has_keys_crit_edge

entry.has_keys_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %has_keys

for.cond:                                         ; preds = %entry
  %key_set.1 = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %c, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %key_set.1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %key_set.1, align 1, !range !688
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.1 = icmp eq i8 %3, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.has_keys_crit_edge

for.cond.has_keys_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %has_keys

for.cond.1:                                       ; preds = %for.cond
  %key_set.2 = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %c, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %key_set.2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %key_set.2, align 1, !range !688
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.2 = icmp eq i8 %5, 0
  br i1 %tobool.not.2, label %for.cond.2, label %for.cond.1.has_keys_crit_edge

for.cond.1.has_keys_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %has_keys

for.cond.2:                                       ; preds = %for.cond.1
  %key_set.3 = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %c, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %key_set.3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %key_set.3, align 1, !range !688
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.3 = icmp eq i8 %7, 0
  br i1 %tobool.not.3, label %for.cond.2.cleanup15_crit_edge, label %for.cond.2.has_keys_crit_edge

for.cond.2.has_keys_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %has_keys

for.cond.2.cleanup15_crit_edge:                   ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup15

has_keys:                                         ; preds = %for.cond.2.has_keys_crit_edge, %for.cond.1.has_keys_crit_edge, %for.cond.has_keys_crit_edge, %entry.has_keys_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %tid)
  %cmp1 = icmp slt i32 %tid, 16
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %has_keys
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.85, i32 noundef %tid) #13
  br label %if.end3

if.else:                                          ; preds = %has_keys
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.86) #13
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  %8 = ptrtoint ptr %key_set to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %key_set, align 1, !range !688
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool11.not = icmp eq i8 %9, 0
  %cond = select i1 %tobool11.not, ptr @.str.58, ptr @.str.57
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.87, i32 noundef 0, ptr noundef nonnull %cond, ptr noundef %c) #13
  %arrayidx9.1 = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %c, i32 0, i32 1
  %key_set10.1 = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %c, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %key_set10.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %key_set10.1, align 1, !range !688
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool11.not.1 = icmp eq i8 %11, 0
  %cond.1 = select i1 %tobool11.not.1, ptr @.str.58, ptr @.str.57
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.87, i32 noundef 1, ptr noundef nonnull %cond.1, ptr noundef %arrayidx9.1) #13
  %arrayidx9.2 = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %c, i32 0, i32 2
  %key_set10.2 = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %c, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %key_set10.2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %key_set10.2, align 1, !range !688
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool11.not.2 = icmp eq i8 %13, 0
  %cond.2 = select i1 %tobool11.not.2, ptr @.str.58, ptr @.str.57
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.87, i32 noundef 2, ptr noundef nonnull %cond.2, ptr noundef %arrayidx9.2) #13
  %arrayidx9.3 = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %c, i32 0, i32 3
  %key_set10.3 = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %c, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %key_set10.3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %key_set10.3, align 1, !range !688
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool11.not.3 = icmp eq i8 %15, 0
  %cond.3 = select i1 %tobool11.not.3, ptr @.str.58, ptr @.str.57
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.87, i32 noundef 3, ptr noundef nonnull %cond.3, ptr noundef %arrayidx9.3) #13
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.51) #13
  br label %cleanup15

cleanup15:                                        ; preds = %if.end3, %for.cond.2.cleanup15_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mids_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mids_show, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mids_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %vif_mutex = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %vif_mutex, i32 noundef 0) #13
  %max_vifs = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %max_vifs to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %max_vifs, align 4
  %4 = tail call i8 @llvm.umin.i8(i8 %3, i8 4)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp220.not = icmp eq i8 %4, 0
  br i1 %cmp220.not, label %entry.for.end_crit_edge, label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %entry
  %arrayidx = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 23, i32 0
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %ndev4 = getelementptr inbounds %struct.wil6210_vif, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %ndev4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ndev4, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 86
  %9 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_addr, align 64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.88, i32 noundef 0, ptr noundef %10, ptr noundef %8) #13
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.89, i32 noundef 0) #13
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %11 = ptrtoint ptr %max_vifs to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %max_vifs, align 4
  %13 = tail call i8 @llvm.umin.i8(i8 %12, i8 4)
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp2 = icmp ugt i8 %13, 1
  br i1 %cmp2, label %for.body.1, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.1:                                       ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 23, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %15, null
  br i1 %tobool.not.1, label %if.else.1, label %if.then.1

if.then.1:                                        ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #15
  %ndev4.1 = getelementptr inbounds %struct.wil6210_vif, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %ndev4.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ndev4.1, align 4
  %dev_addr.1 = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 86
  %18 = ptrtoint ptr %dev_addr.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_addr.1, align 64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.88, i32 noundef 1, ptr noundef %19, ptr noundef %17) #13
  br label %for.inc.1

if.else.1:                                        ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.89, i32 noundef 1) #13
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.else.1, %if.then.1
  %20 = ptrtoint ptr %max_vifs to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %max_vifs, align 4
  %22 = tail call i8 @llvm.umin.i8(i8 %21, i8 4)
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp2.1 = icmp ugt i8 %22, 2
  br i1 %cmp2.1, label %for.body.2, label %for.inc.1.for.end_crit_edge

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.2:                                       ; preds = %for.inc.1
  %arrayidx.2 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 23, i32 2
  %23 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %24, null
  br i1 %tobool.not.2, label %if.else.2, label %if.then.2

if.then.2:                                        ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #15
  %ndev4.2 = getelementptr inbounds %struct.wil6210_vif, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %ndev4.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ndev4.2, align 4
  %dev_addr.2 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 86
  %27 = ptrtoint ptr %dev_addr.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_addr.2, align 64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.88, i32 noundef 2, ptr noundef %28, ptr noundef %26) #13
  br label %for.inc.2

if.else.2:                                        ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.89, i32 noundef 2) #13
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.else.2, %if.then.2
  %29 = ptrtoint ptr %max_vifs to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %max_vifs, align 4
  %31 = tail call i8 @llvm.umin.i8(i8 %30, i8 4)
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %31)
  %cmp2.2 = icmp ugt i8 %31, 3
  br i1 %cmp2.2, label %for.body.3, label %for.inc.2.for.end_crit_edge

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.3:                                       ; preds = %for.inc.2
  %arrayidx.3 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 23, i32 3
  %32 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %33, null
  br i1 %tobool.not.3, label %if.else.3, label %if.then.3

if.then.3:                                        ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #15
  %ndev4.3 = getelementptr inbounds %struct.wil6210_vif, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %ndev4.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ndev4.3, align 4
  %dev_addr.3 = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 86
  %36 = ptrtoint ptr %dev_addr.3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_addr.3, align 64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.88, i32 noundef 3, ptr noundef %37, ptr noundef %35) #13
  br label %for.end

if.else.3:                                        ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.89, i32 noundef 3) #13
  br label %for.end

for.end:                                          ; preds = %if.else.3, %if.then.3, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %vif_mutex) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @txdesc_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @txdesc_show, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @txdesc_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = load i32, ptr @dbg_ring_index, align 4
  %3 = load i32, ptr @dbg_txdesc_index, align 4
  %use_enhanced_dma_hw = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 67
  %4 = ptrtoint ptr %use_enhanced_dma_hw to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %use_enhanced_dma_hw, align 4, !range !688
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %2)
  %cmp = icmp sgt i32 %2, 23
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.90, i32 noundef %2) #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp2 = icmp sgt i32 %2, 0
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %2)
  %cmp3 = icmp sgt i32 %2, 24
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.90, i32 noundef %2) #13
  br label %cleanup

if.end5:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %2)
  %cmp6 = icmp ne i32 %2, 24
  br label %if.end8

if.end8:                                          ; preds = %if.end5, %if.end
  %tx.0.in = phi i1 [ %cmp2, %if.end ], [ %cmp6, %if.end5 ]
  %arrayidx = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 57, i32 %2
  %ring_rx = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 55
  %cond = select i1 %tx.0.in, ptr %arrayidx, ptr %ring_rx
  %va = getelementptr inbounds %struct.wil_ring, ptr %cond, i32 0, i32 1
  %6 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %va, align 4
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.end8
  br i1 %tx.0.in, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.91, i32 noundef %2) #13
  br label %cleanup

if.else14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.92) #13
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %size = getelementptr inbounds %struct.wil_ring, ptr %cond, i32 0, i32 2
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %size, align 4
  %conv = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp17.not = icmp slt i32 %3, %conv
  br i1 %cmp17.not, label %if.end28, label %if.then19

if.then19:                                        ; preds = %if.end16
  br i1 %tx.0.in, label %if.then21, label %if.else24

if.then21:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.93, i32 noundef %2, i32 noundef %3, i32 noundef %conv) #13
  br label %cleanup

if.else24:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, i32 noundef %3, i32 noundef %conv) #13
  br label %cleanup

if.end28:                                         ; preds = %if.end16
  %arrayidx30 = getelementptr %union.wil_ring_desc, ptr %7, i32 %3
  br i1 %tobool.not, label %if.end67, label %if.then33

if.then33:                                        ; preds = %if.end28
  br i1 %tx.0.in, label %if.then35, label %if.else44

if.then35:                                        ; preds = %if.then33
  %ctx = getelementptr inbounds %struct.wil_ring, ptr %cond, i32 0, i32 6
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 4
  %tobool36.not = icmp eq ptr %11, null
  br i1 %tobool36.not, label %if.then35.if.then69_crit_edge, label %cond.true37

if.then35.if.then69_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then69

cond.true37:                                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx39 = getelementptr %struct.wil_ctx, ptr %11, i32 %3
  %12 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx39, align 4
  br label %if.then69

if.else44:                                        ; preds = %if.then33
  %rx_buff_mgmt = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 66
  %14 = ptrtoint ptr %rx_buff_mgmt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_buff_mgmt, align 16
  %tobool45.not = icmp eq ptr %15, null
  br i1 %tobool45.not, label %if.else44.if.else70_crit_edge, label %if.then46

if.else44.if.else70_crit_edge:                    ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else70

if.then46:                                        ; preds = %if.else44
  %buff_id49 = getelementptr inbounds %struct.wil_ring_rx_enhanced_mac, ptr %arrayidx30, i32 0, i32 1
  %16 = ptrtoint ptr %buff_id49 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %buff_id49, align 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %conv50 = zext i16 %18 to i32
  %size52 = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 66, i32 1
  %19 = ptrtoint ptr %size52 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size52, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv50)
  %cmp1.i = icmp sgt i32 %20, %conv50
  br i1 %cmp1.i, label %if.else55, label %if.then53

if.then53:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.95, i32 noundef %conv50) #13
  br label %if.else70

if.else55:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx58 = getelementptr %struct.wil_rx_buff, ptr %15, i32 %conv50
  %21 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx58, align 4
  br label %if.else70

if.end67:                                         ; preds = %if.end28
  %ctx64 = getelementptr inbounds %struct.wil_ring, ptr %cond, i32 0, i32 6
  %23 = ptrtoint ptr %ctx64 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctx64, align 4
  %arrayidx65 = getelementptr %struct.wil_ctx, ptr %24, i32 %3
  %25 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx65, align 4
  br i1 %tx.0.in, label %if.end67.if.then69_crit_edge, label %if.end67.if.else70_crit_edge

if.end67.if.else70_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else70

if.end67.if.then69_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then69

if.then69:                                        ; preds = %if.end67.if.then69_crit_edge, %cond.true37, %if.then35.if.then69_crit_edge
  %skb.1164 = phi ptr [ %26, %if.end67.if.then69_crit_edge ], [ null, %if.then35.if.then69_crit_edge ], [ %13, %cond.true37 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %2, i32 noundef %3) #13
  br label %if.end71

if.else70:                                        ; preds = %if.end67.if.else70_crit_edge, %if.else55, %if.then53, %if.else44.if.else70_crit_edge
  %skb.1159 = phi ptr [ %26, %if.end67.if.else70_crit_edge ], [ null, %if.then53 ], [ %22, %if.else55 ], [ null, %if.else44.if.else70_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.97, i32 noundef %3) #13
  br label %if.end71

if.end71:                                         ; preds = %if.else70, %if.then69
  %skb.1158 = phi ptr [ %skb.1159, %if.else70 ], [ %skb.1164, %if.then69 ]
  %27 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %arrayidx30, align 4
  %arrayidx73 = getelementptr i32, ptr %arrayidx30, i32 1
  %29 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx73, align 4
  %arrayidx74 = getelementptr i32, ptr %arrayidx30, i32 2
  %31 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %arrayidx74, align 4
  %arrayidx75 = getelementptr i32, ptr %arrayidx30, i32 3
  %33 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %arrayidx75, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.98, i32 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %34) #13
  %arrayidx76 = getelementptr i32, ptr %arrayidx30, i32 4
  %35 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %arrayidx76, align 4
  %arrayidx77 = getelementptr i32, ptr %arrayidx30, i32 5
  %37 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %arrayidx77, align 4
  %arrayidx78 = getelementptr i32, ptr %arrayidx30, i32 6
  %39 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %arrayidx78, align 4
  %arrayidx79 = getelementptr i32, ptr %arrayidx30, i32 7
  %41 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %arrayidx79, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.99, i32 noundef %36, i32 noundef %38, i32 noundef %40, i32 noundef %42) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.100, ptr noundef %skb.1158) #13
  %tobool80.not = icmp eq ptr %skb.1158, null
  br i1 %tobool80.not, label %if.end71.if.end83_crit_edge, label %if.then81

if.end71.if.end83_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83

if.then81:                                        ; preds = %if.end71
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1158, i32 0, i32 21
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #13
  %43 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #13, !srcloc !691
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then81.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !692

if.then81.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then81
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %44 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %.not.i.i.i.i = icmp sgt i32 %44, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.skb_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !693

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.skb_get.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then81.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then81.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i, i32 noundef %.sink.i.i.i.i) #13
  br label %skb_get.exit

skb_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.skb_get.exit_crit_edge
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1158, i32 0, i32 6
  %45 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1158, i32 0, i32 7
  %47 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %46, %48
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1158, i32 0, i32 19
  %49 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data.i, align 4
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1158, i32 0, i32 17
  %51 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %end.i.i, align 4
  %nr_frags2.i = getelementptr inbounds %struct.skb_shared_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %nr_frags2.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %nr_frags2.i, align 2
  %conv.i = zext i8 %54 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.101, i32 noundef %sub.i.i) #13
  tail call void @seq_hex_dump(ptr noundef %s, ptr noundef nonnull @.str.50, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %50, i32 noundef %sub.i.i, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i = icmp eq i8 %54, 0
  br i1 %tobool.not.i, label %skb_get.exit.wil_seq_print_skb.exit_crit_edge, label %for.body.preheader.i

skb_get.exit.wil_seq_print_skb.exit_crit_edge:    ; preds = %skb_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %wil_seq_print_skb.exit

for.body.preheader.i:                             ; preds = %skb_get.exit
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.102, i32 noundef %conv.i) #13
  br label %for.body.i

for.body.i:                                       ; preds = %skb_frag_address_safe.exit.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.026.i = phi i32 [ %inc.i, %skb_frag_address_safe.exit.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %55 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %end.i.i, align 4
  %arrayidx.i = getelementptr %struct.skb_shared_info, ptr %56, i32 0, i32 12, i32 %i.026.i
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %56, i32 0, i32 12, i32 %i.026.i, i32 1
  %57 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bv_len.i.i, align 4
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i, align 4
  %call1.i.i = tail call ptr @page_address(ptr noundef %60) #13
  %tobool.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i.skb_frag_address_safe.exit.i_crit_edge, label %if.end.i.i, !prof !692

for.body.i.skb_frag_address_safe.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_frag_address_safe.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %bv_offset.i.i.i = getelementptr %struct.skb_shared_info, ptr %56, i32 0, i32 12, i32 %i.026.i, i32 2
  %61 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bv_offset.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %62
  br label %skb_frag_address_safe.exit.i

skb_frag_address_safe.exit.i:                     ; preds = %if.end.i.i, %for.body.i.skb_frag_address_safe.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %for.body.i.skb_frag_address_safe.exit.i_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.103, i32 noundef %i.026.i, i32 noundef %58) #13
  tail call void @seq_hex_dump(ptr noundef %s, ptr noundef nonnull @.str.50, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %retval.0.i.i, i32 noundef %58, i1 noundef zeroext false) #13
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %skb_frag_address_safe.exit.i.wil_seq_print_skb.exit_crit_edge, label %skb_frag_address_safe.exit.i.for.body.i_crit_edge

skb_frag_address_safe.exit.i.for.body.i_crit_edge: ; preds = %skb_frag_address_safe.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

skb_frag_address_safe.exit.i.wil_seq_print_skb.exit_crit_edge: ; preds = %skb_frag_address_safe.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %wil_seq_print_skb.exit

wil_seq_print_skb.exit:                           ; preds = %skb_frag_address_safe.exit.i.wil_seq_print_skb.exit_crit_edge, %skb_get.exit.wil_seq_print_skb.exit_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb.1158, i32 noundef 0) #13
  br label %if.end83

if.end83:                                         ; preds = %wil_seq_print_skb.exit, %if.end71.if.end83_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.52) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %if.else24, %if.then21, %if.else14, %if.then13, %if.then4, %if.then1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bf_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @bf_show, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bf_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  %cmd = alloca %struct.wmi_notify_req_cmd, align 1
  %reply = alloca %struct.anon.130, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd) #13
  %4 = getelementptr inbounds i8, ptr %cmd, i32 1
  %5 = call ptr @memset(ptr %4, i32 0, i32 11)
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %reply) #13
  %6 = call ptr @memset(ptr %reply, i32 0, i32 52)
  %max_assoc_sta = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 26
  %7 = ptrtoint ptr %max_assoc_sta to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_assoc_sta, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp44.not = icmp eq i32 %8, 0
  br i1 %cmp44.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mid = getelementptr i8, ptr %3, i32 3276
  %evt = getelementptr inbounds %struct.anon.130, ptr %reply, i32 0, i32 1
  %arrayidx.1.i = getelementptr inbounds %struct.anon.130, ptr %reply, i32 0, i32 1, i32 1
  %arrayidx.2.i = getelementptr inbounds i32, ptr %evt, i32 2
  %arrayidx.3.i = getelementptr inbounds %struct.anon.130, ptr %reply, i32 0, i32 1, i32 2
  %arrayidx.4.i = getelementptr inbounds %struct.anon.130, ptr %reply, i32 0, i32 1, i32 5
  %arrayidx.5.i = getelementptr inbounds %struct.anon.130, ptr %reply, i32 0, i32 1, i32 6
  %arrayidx.6.i = getelementptr inbounds %struct.anon.130, ptr %reply, i32 0, i32 1, i32 7
  %arrayidx.7.i = getelementptr inbounds %struct.anon.130, ptr %reply, i32 0, i32 1, i32 8
  %arrayidx.8.i = getelementptr inbounds %struct.anon.130, ptr %reply, i32 0, i32 1, i32 10
  %arrayidx.9.i = getelementptr inbounds %struct.anon.130, ptr %reply, i32 0, i32 1, i32 12
  %arrayidx.10.i = getelementptr inbounds %struct.anon.130, ptr %reply, i32 0, i32 1, i32 14
  %my_rx_sector = getelementptr inbounds %struct.anon.130, ptr %reply, i32 0, i32 1, i32 9
  %other_rx_sector = getelementptr inbounds %struct.anon.130, ptr %reply, i32 0, i32 1, i32 11
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.045 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %conv = trunc i32 %i.045 to i8
  %9 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %cmd, align 1
  %10 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mid, align 4
  %call1 = call i32 @wmi_call(ptr noundef %1, i16 noundef zeroext 2147, i8 noundef zeroext %11, ptr noundef nonnull %cmd, i16 noundef zeroext 12, i16 noundef zeroext 6243, ptr noundef nonnull %reply, i16 noundef zeroext 52, i32 noundef 100) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %12 = ptrtoint ptr %evt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %evt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %for.cond.i, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.cond.i:                                       ; preds = %lor.lhs.false
  %14 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.1.i = icmp eq i32 %15, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.if.end_crit_edge

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.cond.1.i:                                     ; preds = %for.cond.i
  %16 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.2.i = icmp eq i32 %17, 0
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.if.end_crit_edge

for.cond.1.i.if.end_crit_edge:                    ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %18 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.3.i = icmp eq i32 %19, 0
  br i1 %tobool.not.3.i, label %for.cond.3.i, label %for.cond.2.i.if.end_crit_edge

for.cond.2.i.if.end_crit_edge:                    ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %20 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.4.i = icmp eq i32 %21, 0
  br i1 %tobool.not.4.i, label %for.cond.4.i, label %for.cond.3.i.if.end_crit_edge

for.cond.3.i.if.end_crit_edge:                    ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %22 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.5.i = icmp eq i32 %23, 0
  br i1 %tobool.not.5.i, label %for.cond.5.i, label %for.cond.4.i.if.end_crit_edge

for.cond.4.i.if.end_crit_edge:                    ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %24 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.6.i = icmp eq i32 %25, 0
  br i1 %tobool.not.6.i, label %for.cond.6.i, label %for.cond.5.i.if.end_crit_edge

for.cond.5.i.if.end_crit_edge:                    ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %26 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.7.i = icmp eq i32 %27, 0
  br i1 %tobool.not.7.i, label %for.cond.7.i, label %for.cond.6.i.if.end_crit_edge

for.cond.6.i.if.end_crit_edge:                    ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.cond.7.i:                                     ; preds = %for.cond.6.i
  %28 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.8.i = icmp eq i32 %29, 0
  br i1 %tobool.not.8.i, label %for.cond.8.i, label %for.cond.7.i.if.end_crit_edge

for.cond.7.i.if.end_crit_edge:                    ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.cond.8.i:                                     ; preds = %for.cond.7.i
  %30 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.9.i = icmp eq i32 %31, 0
  br i1 %tobool.not.9.i, label %is_all_zeros.exit, label %for.cond.8.i.if.end_crit_edge

for.cond.8.i.if.end_crit_edge:                    ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

is_all_zeros.exit:                                ; preds = %for.cond.8.i
  %32 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.10.i = icmp eq i32 %33, 0
  br i1 %tobool.not.10.i, label %is_all_zeros.exit.cleanup_crit_edge, label %is_all_zeros.exit.if.end_crit_edge

is_all_zeros.exit.if.end_crit_edge:               ; preds = %is_all_zeros.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

is_all_zeros.exit.cleanup_crit_edge:              ; preds = %is_all_zeros.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %is_all_zeros.exit.if.end_crit_edge, %for.cond.8.i.if.end_crit_edge, %for.cond.7.i.if.end_crit_edge, %for.cond.6.i.if.end_crit_edge, %for.cond.5.i.if.end_crit_edge, %for.cond.4.i.if.end_crit_edge, %for.cond.3.i.if.end_crit_edge, %for.cond.2.i.if.end_crit_edge, %for.cond.1.i.if.end_crit_edge, %for.cond.i.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %34 = call i32 @llvm.bswap.i32(i32 %13)
  %35 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %arrayidx.7.i, align 1
  %37 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 8)
  %38 = load i64, ptr %arrayidx.1.i, align 1
  %39 = call i64 @llvm.bswap.i64(i64 %38)
  %.mask = and i16 %36, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 6656, i16 %.mask)
  %cmp11 = icmp eq i16 %.mask, 6656
  %cond = select i1 %cmp11, ptr @.str.105, ptr @.str.106
  %40 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %arrayidx.4.i, align 1
  %42 = call i32 @llvm.bswap.i32(i32 %41)
  %43 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.10.i, align 1
  %conv15 = zext i8 %44 to i32
  %45 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.3.i, align 1
  %conv17 = sext i8 %46 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %47 = icmp ult i32 %34, 3
  br i1 %47, label %switch.lookup, label %if.end.wil_bfstatus_str.exit_crit_edge

if.end.wil_bfstatus_str.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %wil_bfstatus_str.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.bf_show, i32 0, i32 %34
  %48 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %48)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %wil_bfstatus_str.exit

wil_bfstatus_str.exit:                            ; preds = %switch.lookup, %if.end.wil_bfstatus_str.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.110, %if.end.wil_bfstatus_str.exit_crit_edge ]
  %49 = ptrtoint ptr %my_rx_sector to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %my_rx_sector, align 1
  %51 = call i16 @llvm.bswap.i16(i16 %50)
  %conv20 = zext i16 %51 to i32
  %52 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %arrayidx.8.i, align 1
  %54 = call i16 @llvm.bswap.i16(i16 %53)
  %conv22 = zext i16 %54 to i32
  %55 = ptrtoint ptr %other_rx_sector to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %56 = load i16, ptr %other_rx_sector, align 1
  %57 = call i16 @llvm.bswap.i16(i16 %56)
  %conv24 = zext i16 %57 to i32
  %58 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %arrayidx.9.i, align 1
  %60 = call i16 @llvm.bswap.i16(i16 %59)
  %conv26 = zext i16 %60 to i32
  %61 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %arrayidx.6.i, align 1
  %63 = call i32 @llvm.bswap.i32(i32 %62)
  %64 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %arrayidx.5.i, align 1
  %66 = call i32 @llvm.bswap.i32(i32 %65)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.104, i32 noundef %i.045, i64 noundef %39, ptr noundef nonnull %cond, i32 noundef %42, i32 noundef %conv15, i32 noundef %conv17, i32 noundef %34, ptr noundef nonnull %retval.0.i, i32 noundef %conv20, i32 noundef %conv22, i32 noundef %conv24, i32 noundef %conv26, i32 noundef %63, i32 noundef %66) #13
  br label %cleanup

cleanup:                                          ; preds = %wil_bfstatus_str.exit, %is_all_zeros.exit.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.045, 1
  %67 = ptrtoint ptr %max_assoc_sta to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %max_assoc_sta, align 8
  %cmp = icmp ult i32 %inc, %68
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %reply) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_call(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @memread_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @memread_show, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @memread_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %call = tail call i32 @wil_pm_runtime_get(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @wil_mem_access_lock(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end3:                                          ; preds = %if.end
  %2 = load i32, ptr @mem_addr, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %call4 = tail call ptr @wmi_buffer(ptr noundef %1, i32 noundef %3) #13
  %tobool5.not = icmp eq ptr %call4, null
  %4 = load i32, ptr @mem_addr, align 4
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call4) #13, !srcloc !689
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !694
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.111, i32 noundef %4, i32 noundef %6) #13
  br label %if.end9

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.112, i32 noundef %4) #13
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  tail call void @wil_mem_access_unlock(ptr noundef %1) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end9, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end9 ], [ %call1, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @wil_pm_runtime_put(ptr noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_write_file_rxon(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %channel = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %channel) #13
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %channel, align 4, !annotation !687
  %call = tail call ptr @memdup_user_nul(ptr noundef %buf, i32 noundef %len) #13
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtol(ptr noundef %call, i32 noundef 0, ptr noundef nonnull %channel) #13
  call void @kfree(ptr noundef %call) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %6 = icmp ugt i32 %5, 4
  br i1 %6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.113, ptr noundef nonnull @__func__.wil_write_file_rxon, i32 noundef %5) #13
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool9 = icmp ne i32 %5, 0
  br i1 %tobool9, label %if.then12, label %if.end8.if.end17_crit_edge

if.end8.if.end17_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then12:                                        ; preds = %if.end8
  %call13 = call i32 @wmi_set_channel(ptr noundef %1, i32 noundef %5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.if.end17_crit_edge, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then12.if.end17_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.end17:                                         ; preds = %if.then12.if.end17_crit_edge, %if.end8.if.end17_crit_edge
  %call19 = call i32 @wmi_rxon(ptr noundef %1, i1 noundef zeroext %tobool9) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  %len.call19 = select i1 %tobool20.not, i32 %len, i32 %call19
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then12.cleanup_crit_edge, %if.then7, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ -22, %if.then7 ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call13, %if.then12.cleanup_crit_edge ], [ %len.call19, %if.end17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channel) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user_nul(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wil_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_set_channel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_rxon(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_write_file_txmgmt(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %params = alloca %struct.cfg80211_mgmt_tx_params, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %wiphy1 = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %wiphy1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy1, align 8
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %main_ndev, align 4
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 82
  %6 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ieee80211_ptr, align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %params) #13
  %8 = call ptr @memset(ptr %params, i32 0, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @memdup_user(ptr noundef %buf, i32 noundef %len) #13
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %call to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %buf6 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %params, i32 0, i32 3
  %10 = ptrtoint ptr %buf6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %buf6, align 4
  %len7 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %params, i32 0, i32 4
  %11 = ptrtoint ptr %len7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %len, ptr %len7, align 4
  %call8 = call i32 @wil_cfg80211_mgmt_tx(ptr noundef %3, ptr noundef %7, ptr noundef nonnull %params, ptr noundef null) #13
  call void @kfree(ptr noundef %call) #13
  call void (ptr, ptr, ...) @__wil_info(ptr noundef %1, ptr noundef nonnull @.str.114, ptr noundef nonnull @__func__.wil_write_file_txmgmt, i32 noundef %call8) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then3 ], [ %len, %if.end5 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %params) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_cfg80211_mgmt_tx(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wil_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_write_file_wmi(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %len, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev, align 4
  %sub = add i32 %len, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end8.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8.i:                                        ; preds = %entry
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %len, i32 noundef 3264) #17
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end8.i.cleanup_crit_edge, label %if.end3

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end8.i
  %call4 = tail call i32 @simple_write_to_buffer(ptr noundef nonnull %call9.i, i32 noundef %len, ptr noundef %ppos, ptr noundef %buf, i32 noundef %len) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call9.i) #13
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp8.not = icmp eq i32 %sub, 0
  %arrayidx = getelementptr %struct.wmi_cmd_hdr, ptr %call9.i, i32 1
  %spec.select = select i1 %cmp8.not, ptr null, ptr %arrayidx
  %command_id = getelementptr inbounds %struct.wmi_cmd_hdr, ptr %call9.i, i32 0, i32 2
  %4 = ptrtoint ptr %command_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %command_id, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %mid = getelementptr i8, ptr %3, i32 3276
  %7 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mid, align 4
  %conv = trunc i32 %sub to i16
  %call9 = tail call i32 @wmi_send(ptr noundef %1, i16 noundef zeroext %6, i8 noundef zeroext %8, ptr noundef %spec.select, i16 noundef zeroext %conv) #13
  tail call void @kfree(ptr noundef nonnull %call9.i) #13
  %conv10 = zext i16 %6 to i32
  tail call void (ptr, ptr, ...) @__wil_info(ptr noundef %1, ptr noundef nonnull @.str.115, ptr noundef nonnull @__func__.wil_write_file_wmi, i32 noundef %conv10, i32 noundef %sub, i32 noundef %call9) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %if.end8.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then6 ], [ %call4, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_write_to_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_send(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_read_back(ptr nocapture noundef readnone %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @wil_read_back.text, i32 noundef 287) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_write_back(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %len, ptr noundef %ppos) #0 align 64 {
entry:
  %cmd = alloca [9 x i8], align 1
  %p1 = alloca i32, align 4
  %p2 = alloca i32, align 4
  %p3 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add = add i32 %len, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #17
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %cmd) #13
  %2 = call ptr @memset(ptr %cmd, i32 255, i32 9)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p1) #13
  %3 = ptrtoint ptr %p1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %p1, align 4, !annotation !687
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p2) #13
  %4 = ptrtoint ptr %p2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %p2, align 4, !annotation !687
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p3) #13
  %5 = ptrtoint ptr %p3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %p3, align 4, !annotation !687
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup82_crit_edge, label %if.end

entry.cleanup82_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup82

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @simple_write_to_buffer(ptr noundef nonnull %call9.i, i32 noundef %len, ptr noundef %ppos, ptr noundef %buf, i32 noundef %len) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %len)
  %cmp.not = icmp eq i32 %call1, %len
  br i1 %cmp.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call9.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp3 = icmp sgt i32 %call1, -1
  %spec.select = select i1 %cmp3, i32 -5, i32 %call1
  br label %cleanup82

if.end4:                                          ; preds = %if.end
  %arrayidx = getelementptr i8, ptr %call9.i, i32 %len
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  %call5 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %call9.i, ptr noundef nonnull @.str.116, ptr noundef nonnull %cmd, ptr noundef nonnull %p1, ptr noundef nonnull %p2, ptr noundef nonnull %p3)
  call void @kfree(ptr noundef nonnull %call9.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.cleanup82_crit_edge, label %if.end8

if.end4.cleanup82_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup82

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call5)
  %cmp9 = icmp ult i32 %call5, 2
  br i1 %cmp9, label %if.end8.cleanup82_crit_edge, label %if.end11

if.end8.cleanup82_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup82

if.end11:                                         ; preds = %if.end8
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %cmd, ptr noundef nonnull dereferenceable(4) @.str.117, i32 4) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp14 = icmp eq i32 %bcmp, 0
  br i1 %cmp14, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end11
  %bcmp124 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %cmd, ptr noundef nonnull dereferenceable(7) @.str.118, i32 7) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp124)
  %cmp17 = icmp eq i32 %bcmp124, 0
  br i1 %cmp17, label %if.then18.thread, label %if.else47

if.then18:                                        ; preds = %if.end11
  %7 = ptrtoint ptr %p1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %p1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %8)
  %9 = icmp ugt i32 %8, 23
  br i1 %9, label %if.then18.if.then22_crit_edge, label %if.then28

if.then18.if.then22_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then22

if.then18.thread:                                 ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %p1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %p1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %11)
  %12 = icmp ugt i32 %11, 23
  br i1 %12, label %if.then18.thread.if.then22_crit_edge, label %if.else

if.then18.thread.if.then22_crit_edge:             ; preds = %if.then18.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then22

if.then22:                                        ; preds = %if.then18.thread.if.then22_crit_edge, %if.then18.if.then22_crit_edge
  %13 = phi i32 [ %11, %if.then18.thread.if.then22_crit_edge ], [ %8, %if.then18.if.then22_crit_edge ]
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.119, ptr noundef nonnull @__func__.wil_write_back, i32 noundef %13) #13
  br label %cleanup82

if.then28:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call5)
  %cmp29 = icmp ult i32 %call5, 3
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.120, ptr noundef nonnull @__func__.wil_write_back) #13
  br label %cleanup82

if.end31:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call5)
  %cmp32 = icmp eq i32 %call5, 3
  br i1 %cmp32, label %if.then33, label %if.end31.if.end34_crit_edge

if.end31.if.end34_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %p3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %p3, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end31.if.end34_crit_edge
  %mid = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 58, i32 %8, i32 9
  %15 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %mid, align 2
  %conv = trunc i32 %8 to i8
  %17 = ptrtoint ptr %p2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %p2, align 4
  %conv35 = trunc i32 %18 to i8
  %19 = ptrtoint ptr %p3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %p3, align 4
  %conv36 = trunc i32 %20 to i16
  %call37 = call i32 @wmi_addba(ptr noundef %1, i8 noundef zeroext %16, i8 noundef zeroext %conv, i8 noundef zeroext %conv35, i16 noundef zeroext %conv36) #13
  br label %cleanup82

if.else:                                          ; preds = %if.then18.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call5)
  %cmp38 = icmp ult i32 %call5, 3
  br i1 %cmp38, label %if.then40, label %if.else.if.end41_crit_edge

if.else.if.end41_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then40:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %p2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 36, ptr %p2, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.else.if.end41_crit_edge
  %mid42 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 58, i32 %11, i32 9
  %22 = ptrtoint ptr %mid42 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mid42, align 2
  %conv43 = trunc i32 %11 to i8
  %24 = ptrtoint ptr %p2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %p2, align 4
  %conv44 = trunc i32 %25 to i16
  %call45 = call i32 @wmi_delba_tx(ptr noundef %1, i8 noundef zeroext %23, i8 noundef zeroext %conv43, i16 noundef zeroext %conv44) #13
  br label %cleanup82

if.else47:                                        ; preds = %lor.lhs.false
  %bcmp125 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %cmd, ptr noundef nonnull dereferenceable(7) @.str.121, i32 7) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp125)
  %cmp50 = icmp eq i32 %bcmp125, 0
  br i1 %cmp50, label %if.then52, label %if.else78

if.then52:                                        ; preds = %if.else47
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call5)
  %cmp53 = icmp ult i32 %call5, 3
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.122, ptr noundef nonnull @__func__.wil_write_back) #13
  br label %cleanup82

if.end56:                                         ; preds = %if.then52
  %26 = ptrtoint ptr %p1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %p1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp57 = icmp slt i32 %27, 0
  br i1 %cmp57, label %if.end56.if.then62_crit_edge, label %lor.lhs.false59

if.end56.if.then62_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then62

lor.lhs.false59:                                  ; preds = %if.end56
  %max_assoc_sta = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 26
  %28 = ptrtoint ptr %max_assoc_sta to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_assoc_sta, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp60.not = icmp ult i32 %27, %29
  br i1 %cmp60.not, label %if.end63, label %lor.lhs.false59.if.then62_crit_edge

lor.lhs.false59.if.then62_crit_edge:              ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then62

if.then62:                                        ; preds = %lor.lhs.false59.if.then62_crit_edge, %if.end56.if.then62_crit_edge
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.123, ptr noundef nonnull @__func__.wil_write_back, i32 noundef %27) #13
  br label %cleanup82

if.end63:                                         ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call5)
  %cmp64 = icmp ult i32 %call5, 4
  br i1 %cmp64, label %if.then66, label %if.end63.if.end67_crit_edge

if.end63.if.end67_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %p3 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 36, ptr %p3, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.end63.if.end67_crit_edge
  %mid70 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %27, i32 1
  %31 = ptrtoint ptr %mid70 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %mid70, align 2
  %conv71 = trunc i32 %27 to i8
  %33 = ptrtoint ptr %p2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %p2, align 4
  %conv72 = trunc i32 %34 to i8
  %35 = ptrtoint ptr %p3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %p3, align 4
  %conv73 = trunc i32 %36 to i16
  %call74 = call i32 @wmi_delba_rx(ptr noundef %1, i8 noundef zeroext %32, i8 noundef zeroext %conv71, i8 noundef zeroext %conv72, i16 noundef zeroext %conv73) #13
  br label %cleanup82

if.else78:                                        ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.124, ptr noundef nonnull @__func__.wil_write_back, ptr noundef nonnull %cmd) #13
  br label %cleanup82

cleanup82:                                        ; preds = %if.else78, %if.end67, %if.then62, %if.then55, %if.end41, %if.end34, %if.then30, %if.then22, %if.end8.cleanup82_crit_edge, %if.end4.cleanup82_crit_edge, %if.then2, %entry.cleanup82_crit_edge
  %retval.2 = phi i32 [ %spec.select, %if.then2 ], [ -22, %if.else78 ], [ -12, %entry.cleanup82_crit_edge ], [ %call5, %if.end4.cleanup82_crit_edge ], [ -22, %if.end8.cleanup82_crit_edge ], [ -22, %if.then30 ], [ -22, %if.then22 ], [ -22, %if.then62 ], [ -22, %if.then55 ], [ %len, %if.end67 ], [ %len, %if.end41 ], [ %len, %if.end34 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p3) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p2) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p1) #13
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %cmd) #13
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_addba(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_delba_tx(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_delba_rx(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_read_pmccfg(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %text = alloca [256 x i8], align 1
  %help = alloca [127 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %text) #13
  %2 = call ptr @memset(ptr %text, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 127, ptr nonnull %help) #13
  %3 = call ptr @memcpy(ptr %help, ptr @__const.wil_read_pmccfg.help, i32 127)
  %call = tail call i32 @wil_pmc_last_cmd_status(ptr noundef %1) #13
  %call2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %text, i32 noundef 256, ptr noundef nonnull @.str.125, i32 noundef %call, ptr noundef nonnull %help)
  %call5 = call i32 @strlen(ptr noundef nonnull %text) #18
  %add = add i32 %call5, 1
  %call6 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %text, i32 noundef %add) #13
  call void @llvm.lifetime.end.p0(i64 127, ptr nonnull %help) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %text) #13
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_write_pmccfg(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %len, ptr noundef %ppos) #0 align 64 {
entry:
  %cmd = alloca [9 x i8], align 1
  %num_descs = alloca i32, align 4
  %desc_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add = add i32 %len, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #17
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %cmd) #13
  %2 = call ptr @memset(ptr %cmd, i32 255, i32 9)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_descs) #13
  %3 = ptrtoint ptr %num_descs to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %num_descs, align 4, !annotation !687
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc_size) #13
  %4 = ptrtoint ptr %desc_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %desc_size, align 4, !annotation !687
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @simple_write_to_buffer(ptr noundef nonnull %call9.i, i32 noundef %len, ptr noundef %ppos, ptr noundef %buf, i32 noundef %len) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %len)
  %cmp.not = icmp eq i32 %call1, %len
  br i1 %cmp.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call9.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp3 = icmp sgt i32 %call1, -1
  %spec.select = select i1 %cmp3, i32 -5, i32 %call1
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %arrayidx = getelementptr i8, ptr %call9.i, i32 %len
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx, align 1
  %call5 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %call9.i, ptr noundef nonnull @.str.126, ptr noundef nonnull %cmd, ptr noundef nonnull %num_descs, ptr noundef nonnull %desc_size)
  call void @kfree(ptr noundef nonnull %call9.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp9 = icmp eq i32 %call5, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.127, ptr noundef nonnull @__func__.wil_write_pmccfg) #13
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %cmd, ptr noundef nonnull dereferenceable(6) @.str.128, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp14 = icmp eq i32 %bcmp, 0
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call5)
  %cmp16.not = icmp eq i32 %call5, 3
  br i1 %cmp16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.129, ptr noundef nonnull @__func__.wil_write_pmccfg) #13
  br label %cleanup

if.end18:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %num_descs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_descs, align 4
  %8 = ptrtoint ptr %desc_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %desc_size, align 4
  call void @wil_pmc_alloc(ptr noundef %1, i32 noundef %7, i32 noundef %9) #13
  br label %cleanup

if.else:                                          ; preds = %if.end11
  %bcmp57 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %cmd, ptr noundef nonnull dereferenceable(5) @.str.130, i32 5) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp57)
  %cmp21 = icmp eq i32 %bcmp57, 0
  br i1 %cmp21, label %if.then22, label %if.else26

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5)
  %cmp23.not = icmp eq i32 %call5, 1
  br i1 %cmp23.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.131, ptr noundef nonnull @__func__.wil_write_pmccfg) #13
  br label %cleanup

if.end25:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  call void @wil_pmc_free(ptr noundef %1, i32 noundef 1) #13
  br label %cleanup

if.else26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.132, ptr noundef nonnull @__func__.wil_write_pmccfg, ptr noundef nonnull %cmd) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else26, %if.end25, %if.then24, %if.end18, %if.then17, %if.then10, %if.end4.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.then2 ], [ -22, %if.then10 ], [ -22, %if.then17 ], [ -22, %if.then24 ], [ -22, %if.else26 ], [ -12, %entry.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %len, %if.end25 ], [ %len, %if.end18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc_size) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_descs) #13
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_pmc_last_cmd_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_pmc_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @wil_pmc_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_pmc_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_pmcring_seq_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @wil_pmcring_read, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_pmcring_read(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @temp_show, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  %sense_all_evt = alloca %struct.wmi_temp_sense_all_done_event, align 1
  %t_m = alloca i32, align 4
  %t_r = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %fw_capabilities = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %fw_capabilities to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %fw_capabilities, align 4
  %4 = and i32 %3, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sense_all_evt) #13
  %5 = call ptr @memset(ptr %sense_all_evt, i32 255, i32 40)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @temp_show.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@temp_show, %if.then7)) #13
          to label %do.end9 [label %if.then7], !srcloc !695

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @temp_show.__UNIQUE_ID_ddebug347, ptr noundef %7, ptr noundef nonnull @.str.135) #13
  br label %do.end9

do.end9:                                          ; preds = %if.then7, %if.then
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.135) #13
  %call12 = call i32 @wmi_get_all_temperatures(ptr noundef %1, ptr noundef nonnull %sense_all_evt) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.136) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sense_all_evt) #13
  br label %cleanup49

if.end15:                                         ; preds = %do.end9
  %baseband_t1000 = getelementptr inbounds %struct.wmi_temp_sense_all_done_event, ptr %sense_all_evt, i32 0, i32 4
  %8 = ptrtoint ptr %baseband_t1000 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %baseband_t1000, align 1
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.279)
  switch i32 %10, label %sw.default.i [
    i32 0, label %if.end15.sw.bb.i_crit_edge
    i32 -1, label %if.end15.sw.bb.i_crit_edge109
  ]

if.end15.sw.bb.i_crit_edge109:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i

if.end15.sw.bb.i_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end15.sw.bb.i_crit_edge, %if.end15.sw.bb.i_crit_edge109
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.137) #13
  br label %print_temp.exit

sw.default.i:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp slt i32 %10, 0
  %cond.i = select i1 %cmp.i, ptr @.str.58, ptr @.str.140
  %div.i = sdiv i32 %10, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -999, i32 %10)
  %cmp1.i = icmp slt i32 %10, -999
  %sub.i = sub nsw i32 0, %div.i
  %cond2.i = select i1 %cmp1.i, i32 %sub.i, i32 %div.i
  %12 = mul i32 %div.i, 1000
  %rem.i.decomposed = sub i32 %10, %12
  %13 = call i32 @llvm.abs.i32(i32 %rem.i.decomposed, i1 true) #13
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.137, ptr noundef nonnull %cond.i, i32 noundef %cond2.i, i32 noundef %13) #13
  br label %print_temp.exit

print_temp.exit:                                  ; preds = %sw.default.i, %sw.bb.i
  %rf_bitmap = getelementptr inbounds %struct.wmi_temp_sense_all_done_event, ptr %sense_all_evt, i32 0, i32 1
  %14 = ptrtoint ptr %rf_bitmap to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rf_bitmap, align 1
  %conv = zext i8 %15 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.138, i32 noundef %conv) #13
  br label %for.body

for.body:                                         ; preds = %print_temp.exit85.for.body_crit_edge, %print_temp.exit
  %i.0108 = phi i32 [ 0, %print_temp.exit ], [ %inc, %print_temp.exit85.for.body_crit_edge ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.139, i32 noundef %i.0108) #13
  %arrayidx = getelementptr %struct.wmi_temp_sense_all_done_event, ptr %sense_all_evt, i32 0, i32 3, i32 %i.0108
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %arrayidx, align 1
  %18 = call i32 @llvm.bswap.i32(i32 %17)
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.280)
  switch i32 %18, label %sw.default.i84 [
    i32 0, label %for.body.sw.bb.i76_crit_edge
    i32 -1, label %for.body.sw.bb.i76_crit_edge110
  ]

for.body.sw.bb.i76_crit_edge110:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i76

for.body.sw.bb.i76_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i76

sw.bb.i76:                                        ; preds = %for.body.sw.bb.i76_crit_edge, %for.body.sw.bb.i76_crit_edge110
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.140) #13
  br label %print_temp.exit85

sw.default.i84:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i77 = icmp slt i32 %18, 0
  %cond.i78 = select i1 %cmp.i77, ptr @.str.58, ptr @.str.140
  %div.i79 = sdiv i32 %18, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -999, i32 %18)
  %cmp1.i80 = icmp slt i32 %18, -999
  %sub.i81 = sub nsw i32 0, %div.i79
  %cond2.i82 = select i1 %cmp1.i80, i32 %sub.i81, i32 %div.i79
  %20 = mul i32 %div.i79, 1000
  %rem.i83.decomposed = sub i32 %18, %20
  %21 = call i32 @llvm.abs.i32(i32 %rem.i83.decomposed, i1 true) #13
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.140, ptr noundef nonnull %cond.i78, i32 noundef %cond2.i82, i32 noundef %21) #13
  br label %print_temp.exit85

print_temp.exit85:                                ; preds = %sw.default.i84, %sw.bb.i76
  %inc = add nuw nsw i32 %i.0108, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %cleanup, label %print_temp.exit85.for.body_crit_edge

print_temp.exit85.for.body_crit_edge:             ; preds = %print_temp.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup:                                          ; preds = %print_temp.exit85
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sense_all_evt) #13
  br label %cleanup49

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t_m) #13
  %22 = ptrtoint ptr %t_m to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %t_m, align 4, !annotation !687
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t_r) #13
  %23 = ptrtoint ptr %t_r to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %t_r, align 4, !annotation !687
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @temp_show.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@temp_show, %if.then31)) #13
          to label %do.end37 [label %if.then31], !srcloc !695

if.then31:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %main_ndev32 = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %main_ndev32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %main_ndev32, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @temp_show.__UNIQUE_ID_ddebug348, ptr noundef %25, ptr noundef nonnull @.str.141) #13
  br label %do.end37

do.end37:                                         ; preds = %if.then31, %if.else
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.141) #13
  %call40 = call i32 @wmi_get_temperature(ptr noundef %1, ptr noundef nonnull %t_m, ptr noundef nonnull %t_r) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.then42

if.then42:                                        ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #15
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.136) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t_r) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t_m) #13
  br label %cleanup49

if.end43:                                         ; preds = %do.end37
  %26 = ptrtoint ptr %t_m to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %t_m, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.281)
  switch i32 %27, label %sw.default.i94 [
    i32 0, label %if.end43.sw.bb.i86_crit_edge
    i32 -1, label %if.end43.sw.bb.i86_crit_edge111
  ]

if.end43.sw.bb.i86_crit_edge111:                  ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i86

if.end43.sw.bb.i86_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i86

sw.bb.i86:                                        ; preds = %if.end43.sw.bb.i86_crit_edge, %if.end43.sw.bb.i86_crit_edge111
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.137) #13
  br label %print_temp.exit95

sw.default.i94:                                   ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i87 = icmp slt i32 %27, 0
  %cond.i88 = select i1 %cmp.i87, ptr @.str.58, ptr @.str.140
  %div.i89 = sdiv i32 %27, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -999, i32 %27)
  %cmp1.i90 = icmp slt i32 %27, -999
  %sub.i91 = sub nsw i32 0, %div.i89
  %cond2.i92 = select i1 %cmp1.i90, i32 %sub.i91, i32 %div.i89
  %29 = mul i32 %div.i89, 1000
  %rem.i93.decomposed = sub i32 %27, %29
  %30 = call i32 @llvm.abs.i32(i32 %rem.i93.decomposed, i1 true) #13
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.137, ptr noundef nonnull %cond.i88, i32 noundef %cond2.i92, i32 noundef %30) #13
  br label %print_temp.exit95

print_temp.exit95:                                ; preds = %sw.default.i94, %sw.bb.i86
  %31 = ptrtoint ptr %t_r to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %t_r, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.282)
  switch i32 %32, label %sw.default.i104 [
    i32 0, label %print_temp.exit95.sw.bb.i96_crit_edge
    i32 -1, label %print_temp.exit95.sw.bb.i96_crit_edge112
  ]

print_temp.exit95.sw.bb.i96_crit_edge112:         ; preds = %print_temp.exit95
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i96

print_temp.exit95.sw.bb.i96_crit_edge:            ; preds = %print_temp.exit95
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i96

sw.bb.i96:                                        ; preds = %print_temp.exit95.sw.bb.i96_crit_edge, %print_temp.exit95.sw.bb.i96_crit_edge112
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.142) #13
  br label %print_temp.exit105

sw.default.i104:                                  ; preds = %print_temp.exit95
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i97 = icmp slt i32 %32, 0
  %cond.i98 = select i1 %cmp.i97, ptr @.str.58, ptr @.str.140
  %div.i99 = sdiv i32 %32, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -999, i32 %32)
  %cmp1.i100 = icmp slt i32 %32, -999
  %sub.i101 = sub nsw i32 0, %div.i99
  %cond2.i102 = select i1 %cmp1.i100, i32 %sub.i101, i32 %div.i99
  %34 = mul i32 %div.i99, 1000
  %rem.i103.decomposed = sub i32 %32, %34
  %35 = call i32 @llvm.abs.i32(i32 %rem.i103.decomposed, i1 true) #13
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.142, ptr noundef nonnull %cond.i98, i32 noundef %cond2.i102, i32 noundef %35) #13
  br label %print_temp.exit105

print_temp.exit105:                               ; preds = %sw.default.i104, %sw.bb.i96
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t_r) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t_m) #13
  br label %cleanup49

cleanup49:                                        ; preds = %print_temp.exit105, %if.then42, %cleanup, %if.then14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_dbg_trace(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_get_all_temperatures(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_get_temperature(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @freq_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @freq_show, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @freq_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev, align 4
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 82
  %4 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ieee80211_ptr, align 16
  %chandef = getelementptr inbounds %struct.wireless_dev, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chandef, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %center_freq, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %9, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.145, i32 noundef %cond) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @link_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @link_show, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @link_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 208) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup49_crit_edge, label %for.cond.preheader

entry.cleanup49_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup49

for.cond.preheader:                               ; preds = %entry
  %max_assoc_sta = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 26
  %3 = ptrtoint ptr %max_assoc_sta to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_assoc_sta, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp89.not = icmp eq i32 %4, 0
  br i1 %cmp89.not, label %for.cond.preheader.out_crit_edge, label %for.body.lr.ph

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %max_vifs = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 22
  %mcs = getelementptr inbounds %struct.station_info, ptr %call7.i.i, i32 0, i32 14, i32 1
  %mcs39 = getelementptr inbounds %struct.station_info, ptr %call7.i.i, i32 0, i32 15, i32 1
  %signal = getelementptr inbounds %struct.station_info, ptr %call7.i.i, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.090 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.090
  %status1 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.090, i32 2
  %5 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status1, align 8
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.283)
  switch i32 %6, label %for.body.cond.true_crit_edge [
    i32 0, label %for.body.cond.end_crit_edge
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
  ]

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

for.body.cond.true_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.true

sw.bb2:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.true

sw.bb3:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.true

cond.true:                                        ; preds = %sw.bb3, %sw.bb2, %for.body.cond.true_crit_edge
  %status.0.ph = phi ptr [ @.str.74, %sw.bb2 ], [ @.str.75, %sw.bb3 ], [ @.str.72, %for.body.cond.true_crit_edge ]
  %mid6 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.090, i32 1
  %8 = ptrtoint ptr %mid6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mid6, align 2
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.body.cond.end_crit_edge
  %status.083 = phi ptr [ %status.0.ph, %cond.true ], [ @.str.73, %for.body.cond.end_crit_edge ]
  %cond = phi i8 [ %9, %cond.true ], [ -1, %for.body.cond.end_crit_edge ]
  %conv8 = zext i8 %cond to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.146, i32 noundef %i.090, i32 noundef %conv8, ptr noundef %arrayidx, ptr noundef nonnull %status.083) #13
  %10 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp10.not = icmp eq i32 %11, 2
  br i1 %cmp10.not, label %if.end13, label %cond.end.for.inc_crit_edge

cond.end.for.inc_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end13:                                         ; preds = %cond.end
  %12 = ptrtoint ptr %max_vifs to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %max_vifs, align 4
  %14 = tail call i8 @llvm.umin.i8(i8 %13, i8 4)
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %cond)
  %cmp22 = icmp ugt i8 %14, %cond
  br i1 %cmp22, label %cond.end27, label %if.end13.if.else_crit_edge

if.end13.if.else_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

cond.end27:                                       ; preds = %if.end13
  %arrayidx25 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 23, i32 %conv8
  %15 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx25, align 4
  %tobool29.not = icmp eq ptr %16, null
  br i1 %tobool29.not, label %cond.end27.if.else_crit_edge, label %if.then30

cond.end27.if.else_crit_edge:                     ; preds = %cond.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then30:                                        ; preds = %cond.end27
  %call31 = tail call i32 @wil_cid_fill_sinfo(ptr noundef nonnull %16, i32 noundef %i.090, ptr noundef nonnull %call7.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.then30.out_crit_edge

if.then30.out_crit_edge:                          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end34:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %mcs to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mcs, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %18)
  %cmp36 = icmp eq i8 %18, 26
  %cond38 = select i1 %cmp36, ptr @.str.105, ptr @.str.148
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.147, ptr noundef nonnull %cond38) #13
  %19 = ptrtoint ptr %mcs39 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %mcs39, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %20)
  %cmp41 = icmp eq i8 %20, 26
  %cond43 = select i1 %cmp41, ptr @.str.105, ptr @.str.150
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.149, ptr noundef nonnull %cond43) #13
  %21 = ptrtoint ptr %signal to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %signal, align 1
  %conv44 = sext i8 %22 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.151, i32 noundef %conv44) #13
  br label %for.inc

if.else:                                          ; preds = %cond.end27.if.else_crit_edge, %if.end13.if.else_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.152) #13
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.end34, %cond.end.for.inc_crit_edge
  %inc = add nuw i32 %i.090, 1
  %23 = ptrtoint ptr %max_assoc_sta to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_assoc_sta, align 8
  %cmp = icmp ult i32 %inc, %24
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.out_crit_edge

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

out:                                              ; preds = %for.inc.out_crit_edge, %if.then30.out_crit_edge, %for.cond.preheader.out_crit_edge
  %rc.3 = phi i32 [ 0, %for.cond.preheader.out_crit_edge ], [ %call31, %if.then30.out_crit_edge ], [ 0, %for.inc.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup49

cleanup49:                                        ; preds = %out, %entry.cleanup49_crit_edge
  %retval.0 = phi i32 [ %rc.3, %out ], [ -12, %entry.cleanup49_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_cid_fill_sinfo(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @info_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @info_show, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @info_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev, align 4
  %call = tail call i32 @power_supply_is_system_supplied() #13
  %isr_count_rx = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 71
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %isr_count_rx, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !696
  tail call void @llvm.prefetch.p0(ptr %isr_count_rx, i32 1, i32 3, i32 1) #13
  %4 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %isr_count_rx) #13, !srcloc !697
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !698
  %isr_count_tx = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 72
  %call.i.i30 = tail call zeroext i1 @__kasan_check_write(ptr noundef %isr_count_tx, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !696
  tail call void @llvm.prefetch.p0(ptr %isr_count_tx, i32 1, i32 3, i32 1) #13
  %5 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %isr_count_tx) #13, !srcloc !697
  %asmresult.i.i31 = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !698
  %stats = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36
  %6 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stats, align 8
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 1
  %8 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_packets, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.153, i32 noundef %call) #13
  %10 = load i32, ptr @info_show.rxf_old, align 4
  %sub = sub i32 %7, %10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.154, i32 noundef %asmresult.i.i, i32 noundef %sub) #13
  %11 = load i32, ptr @info_show.txf_old, align 4
  %sub4 = sub i32 %9, %11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.155, i32 noundef %asmresult.i.i31, i32 noundef %sub4) #13
  store i32 %7, ptr @info_show.rxf_old, align 4
  store i32 %9, ptr @info_show.txf_old, align 4
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 104
  %12 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp32.not = icmp eq i32 %13, 0
  br i1 %cmp32.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.033 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %14 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_tx.i, align 128
  %state6 = getelementptr %struct.netdev_queue, ptr %15, i32 %i.033, i32 13
  %16 = ptrtoint ptr %state6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state6, align 4
  %and = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.140, ptr @.str.157
  %and7 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %cond9 = select i1 %tobool8.not, ptr @.str.140, ptr @.str.158
  %and10 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %cond12 = select i1 %tobool11.not, ptr @.str.140, ptr @.str.159
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.156, i32 noundef %i.033, i32 noundef %17, ptr noundef nonnull %cond, ptr noundef nonnull %cond9, ptr noundef nonnull %cond12) #13
  %inc = add nuw i32 %i.033, 1
  %18 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_tx_queues, align 4
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_is_system_supplied() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_read_file_recovery(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %buf) #13
  %2 = call ptr @memset(ptr %buf, i32 255, i32 80)
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @no_fw_recovery to i32))
  %3 = load i8, ptr @no_fw_recovery, align 1, !range !688
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool.not, ptr @.str.165, ptr @.str.164
  %recovery_state = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %recovery_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %recovery_state, align 8
  %arrayidx = getelementptr [3 x ptr], ptr @wil_read_file_recovery.sstate, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 80, ptr noundef nonnull @.str.163, ptr noundef nonnull %cond, ptr noundef %7)
  %8 = tail call i32 @llvm.smin.i32(i32 %call, i32 80)
  %call3 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %8) #13
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %buf) #13
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_write_file_recovery(ptr nocapture noundef readonly %file, ptr noundef %buf_, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf) #13
  %recovery_state = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 19
  %2 = call ptr @memset(ptr %buf, i32 255, i32 5)
  %3 = ptrtoint ptr %recovery_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %recovery_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.not = icmp eq i32 %4, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.166, ptr noundef nonnull @__func__.wil_write_file_recovery) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %cmp1.not = icmp eq i64 %6, 0
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %conv = trunc i64 %6 to i32
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.167, ptr noundef nonnull @__func__.wil_write_file_recovery, i32 noundef %conv) #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %count)
  %cmp4 = icmp ugt i32 %count, 5
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.168, ptr noundef nonnull @__func__.wil_write_file_recovery, i32 noundef %count) #13
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %call = call i32 @simple_write_to_buffer(ptr noundef nonnull %buf, i32 noundef 4, ptr noundef %ppos, ptr noundef %buf_, i32 noundef %count) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp8 = icmp slt i32 %call, 0
  br i1 %cmp8, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %arrayidx = getelementptr [5 x i8], ptr %buf, i32 0, i32 %call
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx, align 1
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %buf, ptr noundef nonnull dereferenceable(4) @wil_write_file_recovery.run_command, i32 4) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp14 = icmp eq i32 %bcmp, 0
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  call void @wil_set_recovery_state(ptr noundef %1, i32 noundef 2) #13
  br label %cleanup

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.169, ptr noundef nonnull @__func__.wil_write_file_recovery, ptr noundef nonnull %buf) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then16, %if.end7.cleanup_crit_edge, %if.then6, %if.then2, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then2 ], [ -22, %if.then6 ], [ %call, %if.end7.cleanup_crit_edge ], [ %call, %if.else ], [ %call, %if.then16 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_set_recovery_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_read_file_led_cfg(ptr nocapture noundef readnone %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %buf) #13
  %0 = call ptr @memset(ptr %buf, i32 255, i32 80)
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @led_id to i32))
  %1 = load i8, ptr @led_id, align 1
  %conv = zext i8 %1 to i32
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 80, ptr noundef nonnull @.str.170, i32 noundef %conv)
  %2 = tail call i32 @llvm.smin.i32(i32 %call, i32 80)
  %call3 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %2) #13
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %buf) #13
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_write_file_led_cfg(ptr nocapture noundef readonly %file, ptr noundef %buf_, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !687
  %call = call i32 @kstrtoint_from_user(ptr noundef %buf_, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.171, ptr noundef nonnull @__func__.wil_write_file_led_cfg) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  %cond = select i1 %tobool1.not, ptr @.str.174, ptr @.str.173
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @led_id to i32))
  %5 = load i8, ptr @led_id, align 1
  %conv = zext i8 %5 to i32
  call void (ptr, ptr, ...) @__wil_info(ptr noundef %1, ptr noundef nonnull @.str.172, ptr noundef nonnull @__func__.wil_write_file_led_cfg, ptr noundef nonnull %cond, i32 noundef %conv) #13
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2 = icmp ne i32 %7, 0
  %call3 = call i32 @wmi_led_cfg(ptr noundef %1, i1 noundef zeroext %tobool2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  %cond7 = select i1 %tobool6.not, ptr @.str.174, ptr @.str.173
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @led_id to i32))
  %10 = load i8, ptr @led_id, align 1
  %conv8 = zext i8 %10 to i32
  call void (ptr, ptr, ...) @__wil_info(ptr noundef %1, ptr noundef nonnull @.str.175, ptr noundef nonnull @__func__.wil_write_file_led_cfg, ptr noundef nonnull %cond7, i32 noundef %conv8) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call3, %if.then5 ], [ %count, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_led_cfg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_read_led_blink_time(ptr nocapture noundef readnone %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @led_blink_time to i32))
  %0 = load i32, ptr @led_blink_time, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([3 x %struct.blink_on_off_time], ptr @led_blink_time, i32 0, i32 0, i32 1) to i32))
  %1 = load i32, ptr getelementptr inbounds ([3 x %struct.blink_on_off_time], ptr @led_blink_time, i32 0, i32 0, i32 1), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([3 x %struct.blink_on_off_time], ptr @led_blink_time, i32 0, i32 1) to i32))
  %2 = load i32, ptr getelementptr inbounds ([3 x %struct.blink_on_off_time], ptr @led_blink_time, i32 0, i32 1), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([3 x %struct.blink_on_off_time], ptr @led_blink_time, i32 0, i32 1, i32 1) to i32))
  %3 = load i32, ptr getelementptr inbounds ([3 x %struct.blink_on_off_time], ptr @led_blink_time, i32 0, i32 1, i32 1), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([3 x %struct.blink_on_off_time], ptr @led_blink_time, i32 0, i32 2) to i32))
  %4 = load i32, ptr getelementptr inbounds ([3 x %struct.blink_on_off_time], ptr @led_blink_time, i32 0, i32 2), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([3 x %struct.blink_on_off_time], ptr @led_blink_time, i32 0, i32 2, i32 1) to i32))
  %5 = load i32, ptr getelementptr inbounds ([3 x %struct.blink_on_off_time], ptr @led_blink_time, i32 0, i32 2, i32 1), align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @wil_read_led_blink_time.text, i32 noundef 400, ptr noundef nonnull @.str.176, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  %call1 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @wil_read_led_blink_time.text, i32 noundef 400) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_write_led_blink_time(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %len, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %len, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #17
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @simple_write_to_buffer(ptr noundef nonnull %call9.i, i32 noundef %len, ptr noundef %ppos, ptr noundef %buf, i32 noundef %len) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %len)
  %cmp.not = icmp eq i32 %call1, %len
  br i1 %cmp.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call9.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp3 = icmp sgt i32 %call1, -1
  %spec.select = select i1 %cmp3, i32 -5, i32 %call1
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %arrayidx = getelementptr i8, ptr %call9.i, i32 %len
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %arrayidx, align 1
  %call5 = tail call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %call9.i, ptr noundef nonnull @.str.177, ptr noundef nonnull @led_blink_time, ptr noundef getelementptr inbounds ([3 x %struct.blink_on_off_time], ptr @led_blink_time, i32 0, i32 0, i32 1), ptr noundef getelementptr inbounds ([3 x %struct.blink_on_off_time], ptr @led_blink_time, i32 0, i32 1), ptr noundef getelementptr inbounds ([3 x %struct.blink_on_off_time], ptr @led_blink_time, i32 0, i32 1, i32 1), ptr noundef getelementptr inbounds ([3 x %struct.blink_on_off_time], ptr @led_blink_time, i32 0, i32 2), ptr noundef getelementptr inbounds ([3 x %struct.blink_on_off_time], ptr @led_blink_time, i32 0, i32 2, i32 1))
  tail call void @kfree(ptr noundef nonnull %call9.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call5)
  %cmp9 = icmp ult i32 %call5, 6
  %.len = select i1 %cmp9, i32 -22, i32 %len
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.then2 ], [ -12, %entry.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %.len, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_fw_capabilities_seq_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @wil_fw_capabilities_debugfs_show, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_fw_capabilities_debugfs_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %fw_capabilities = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.178, i32 noundef 32, ptr noundef %fw_capabilities) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_fw_version_seq_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @wil_fw_version_debugfs_show, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_fw_version_debugfs_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %fw_version = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %fw_version to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.179, ptr noundef %fw_version) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.180) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_read_suspend_stats(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 500) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %suspend_stats = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 78
  %r_on = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 78, i32 1
  %3 = ptrtoint ptr %r_on to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %r_on, align 16
  %failed_suspends = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 78, i32 1, i32 2
  %5 = ptrtoint ptr %failed_suspends to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %failed_suspends, align 8
  %successful_resumes = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 78, i32 1, i32 1
  %7 = ptrtoint ptr %successful_resumes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %successful_resumes, align 4
  %failed_resumes = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 78, i32 1, i32 3
  %9 = ptrtoint ptr %failed_resumes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %failed_resumes, align 4
  %rejected_by_device = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 78, i32 2
  %11 = ptrtoint ptr %rejected_by_device to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rejected_by_device, align 16
  %13 = ptrtoint ptr %suspend_stats to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %suspend_stats, align 16
  %failed_suspends12 = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 78, i32 0, i32 2
  %15 = ptrtoint ptr %failed_suspends12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %failed_suspends12, align 8
  %successful_resumes15 = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 78, i32 0, i32 1
  %17 = ptrtoint ptr %successful_resumes15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %successful_resumes15, align 4
  %failed_resumes18 = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 78, i32 0, i32 3
  %19 = ptrtoint ptr %failed_resumes18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %failed_resumes18, align 4
  %rejected_by_host = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 78, i32 3
  %21 = ptrtoint ptr %rejected_by_host to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rejected_by_host, align 4
  %call20 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 500, ptr noundef nonnull @.str.181, i32 noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22)
  %23 = tail call i32 @llvm.smin.i32(i32 %call20, i32 500)
  %call21 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i, i32 noundef %23) #13
  tail call void @kfree(ptr noundef nonnull %call7.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wil_write_suspend_stats(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %buf, i32 noundef returned %len, ptr nocapture noundef readnone %ppos) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %suspend_stats = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 78
  %2 = call ptr @memset(ptr %suspend_stats, i32 0, i32 40)
  ret i32 %len
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_compressed_rx_status_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %compressed_rx_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %compressed_rx_status) #13
  %4 = ptrtoint ptr %compressed_rx_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %compressed_rx_status, align 4, !annotation !687
  %call = call i32 @kstrtoint_from_user(ptr noundef %buf, i32 noundef %len, i32 noundef 0, ptr noundef nonnull %compressed_rx_status) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %3, ptr noundef nonnull @.str.171, ptr noundef nonnull @__func__.wil_compressed_rx_status_write) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call zeroext i1 @wil_has_active_ifaces(ptr noundef %3, i1 noundef zeroext true, i1 noundef zeroext false) #13
  br i1 %call1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %3, ptr noundef nonnull @.str.182, ptr noundef nonnull @__func__.wil_compressed_rx_status_write) #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %compressed_rx_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %compressed_rx_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  %cond = select i1 %tobool4.not, ptr @.str.185, ptr @.str.184
  call void (ptr, ptr, ...) @__wil_info(ptr noundef %3, ptr noundef nonnull @.str.183, ptr noundef nonnull @__func__.wil_compressed_rx_status_write, ptr noundef nonnull %cond) #13
  %7 = ptrtoint ptr %compressed_rx_status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %compressed_rx_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5 = icmp ne i32 %8, 0
  %use_compressed_rx_status = getelementptr inbounds %struct.wil6210_priv, ptr %3, i32 0, i32 100
  %frombool = zext i1 %tobool5 to i8
  %9 = ptrtoint ptr %use_compressed_rx_status to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool, ptr %use_compressed_rx_status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ -1, %if.then2 ], [ %len, %if.end3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %compressed_rx_status) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_compressed_rx_status_seq_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @wil_compressed_rx_status_show, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wil_has_active_ifaces(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_compressed_rx_status_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %use_compressed_rx_status = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 100
  %2 = ptrtoint ptr %use_compressed_rx_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_compressed_rx_status, align 4, !range !688
  %4 = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.186, i32 noundef %4) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srings_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @srings_show, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srings_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %use_enhanced_dma_hw.i = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 67
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.09 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %va = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 59, i32 %i.09, i32 1
  %2 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %va, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 59, i32 %i.09
  %is_rx.i = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 59, i32 %i.09, i32 6
  %4 = ptrtoint ptr %is_rx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_rx.i, align 4, !range !688
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.189, ptr @.str.188
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.187, ptr noundef nonnull %cond.i, i32 noundef %i.09) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.61, ptr noundef %arrayidx) #13
  %6 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %va, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.190, ptr noundef %7) #13
  %size.i = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 59, i32 %i.09, i32 2
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %size.i, align 4
  %conv.i = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.63, i32 noundef %conv.i) #13
  %elem_size.i = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 59, i32 %i.09, i32 3
  %10 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %elem_size.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.191, i32 noundef %11) #13
  %swhead.i = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 59, i32 %i.09, i32 4
  %12 = ptrtoint ptr %swhead.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %swhead.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.66, i32 noundef %13) #13
  %14 = ptrtoint ptr %use_enhanced_dma_hw.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %use_enhanced_dma_hw.i, align 4, !range !688
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool1.not.i = icmp eq i8 %15, 0
  br i1 %tobool1.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %16 = shl nuw nsw i32 %i.09, 1
  %mul.i = and i32 %16, 2147483644
  %add.i = add nuw nsw i32 %mul.i, 9134444
  %call.i = tail call ptr @wmi_addr(ptr noundef %1, i32 noundef %add.i) #13
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %call.i) #13, !srcloc !689
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #13
  %19 = and i32 %i.09, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool3.not.i = icmp eq i32 %19, 0
  %shr.i = lshr i32 %18, 16
  %and.i = and i32 %18, 65535
  %cond4.i = select i1 %tobool3.not.i, i32 %and.i, i32 %shr.i
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.67, i32 noundef %cond4.i) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %hwtail.i = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 59, i32 %i.09, i32 5
  %20 = ptrtoint ptr %hwtail.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hwtail.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.68, i32 noundef %21) #13
  %22 = ptrtoint ptr %hwtail.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hwtail.i, align 4
  %call6.i = tail call ptr @wmi_addr(ptr noundef %1, i32 noundef %23) #13
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call6.i) #13, !srcloc !689
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.69, i32 noundef %25, i32 noundef %25) #13
  br label %if.end12.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.70) #13
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else.i, %if.then8.i
  %desc_rdy_pol.i = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 59, i32 %i.09, i32 7
  %26 = ptrtoint ptr %desc_rdy_pol.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %desc_rdy_pol.i, align 1
  %conv13.i = zext i8 %27 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.192, i32 noundef %conv13.i) #13
  %invalid_buff_id_cnt.i = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 59, i32 %i.09, i32 9
  %28 = ptrtoint ptr %invalid_buff_id_cnt.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %invalid_buff_id_cnt.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.193, i32 noundef %29) #13
  %30 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %va, align 4
  %tobool15.not.i = icmp eq ptr %31, null
  br i1 %tobool15.not.i, label %if.end12.i.wil_print_sring.exit_crit_edge, label %land.lhs.true.i

if.end12.i.wil_print_sring.exit_crit_edge:        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %wil_print_sring.exit

land.lhs.true.i:                                  ; preds = %if.end12.i
  %32 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32767, i16 %33)
  %cmp.i = icmp ult i16 %33, -32767
  br i1 %cmp.i, label %for.cond.preheader.i, label %land.lhs.true.i.wil_print_sring.exit_crit_edge

land.lhs.true.i.wil_print_sring.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %wil_print_sring.exit

for.cond.preheader.i:                             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %cmp2298.not.i = icmp eq i16 %33, 0
  br i1 %cmp2298.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i:                                       ; preds = %if.end34.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.099.i = phi i32 [ %inc.i, %if.end34.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %34 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %va, align 4
  %36 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %elem_size.i, align 4
  %mul26.i = mul i32 %37, %i.099.i
  %add.ptr.i = getelementptr i8, ptr %35, i32 %mul26.i
  %rem27.i = and i32 %i.099.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem27.i)
  %cmp28.i = icmp ne i32 %rem27.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.099.i)
  %cmp31.not.i = icmp eq i32 %i.099.i, 0
  %or.cond.i = or i1 %cmp31.not.i, %cmp28.i
  br i1 %or.cond.i, label %for.body.i.if.end34.i_crit_edge, label %if.then33.i

for.body.i.if.end34.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.i

if.then33.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.51) #13
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then33.i, %for.body.i.if.end34.i_crit_edge
  %38 = ptrtoint ptr %swhead.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %swhead.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.099.i, i32 %39)
  %cmp36.i = icmp eq i32 %i.099.i, %39
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %tobool40.not.i = icmp sgt i32 %41, -1
  %cond45.i = select i1 %tobool40.not.i, i32 48, i32 49
  %cond41.i = select i1 %tobool40.not.i, i32 120, i32 88
  %cond45.sink.i = select i1 %cmp36.i, i32 %cond41.i, i32 %cond45.i
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.71, i32 noundef %cond45.sink.i) #13
  %inc.i = add nuw nsw i32 %i.099.i, 1
  %42 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %size.i, align 4
  %conv21.i = zext i16 %43 to i32
  %cmp22.i = icmp ult i32 %inc.i, %conv21.i
  br i1 %cmp22.i, label %if.end34.i.for.body.i_crit_edge, label %if.end34.i.for.end.i_crit_edge

if.end34.i.for.end.i_crit_edge:                   ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

if.end34.i.for.body.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %if.end34.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.51) #13
  br label %wil_print_sring.exit

wil_print_sring.exit:                             ; preds = %for.end.i, %land.lhs.true.i.wil_print_sring.exit_crit_edge, %if.end12.i.wil_print_sring.exit_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.52) #13
  br label %for.inc

for.inc:                                          ; preds = %wil_print_sring.exit, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @status_msg_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @status_msg_show, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @status_msg_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = load i32, ptr @dbg_sring_index, align 4
  %3 = load i32, ptr @dbg_status_msg_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %2)
  %cmp = icmp sgt i32 %2, 7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.194, i32 noundef %2) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_rx = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 59, i32 %2, i32 6
  %4 = ptrtoint ptr %is_rx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_rx, align 4, !range !688
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %va = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 59, i32 %2, i32 1
  %6 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %va, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %cond = select i1 %tobool.not, i32 84, i32 82
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.195, i32 noundef %cond) #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %size = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 59, i32 %2, i32 2
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %size, align 4
  %conv = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp5.not = icmp ult i32 %3, %conv
  br i1 %cmp5.not, label %if.end13, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %cond10 = select i1 %tobool.not, i32 84, i32 82
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.196, i32 noundef %cond10, i32 noundef %3, i32 noundef %conv) #13
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  %elem_size = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 59, i32 %2, i32 3
  %10 = ptrtoint ptr %elem_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %elem_size, align 4
  %mul = mul i32 %11, %3
  %add.ptr = getelementptr i8, ptr %7, i32 %mul
  %cond17 = select i1 %tobool.not, i32 84, i32 82
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.197, i32 noundef %cond17, i32 noundef %2, i32 noundef %3) #13
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr, align 4
  %arrayidx19 = getelementptr i32, ptr %add.ptr, i32 1
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx19, align 4
  %arrayidx20 = getelementptr i32, ptr %add.ptr, i32 2
  %16 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx20, align 4
  %arrayidx21 = getelementptr i32, ptr %add.ptr, i32 3
  %18 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx21, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.198, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19) #13
  br i1 %tobool.not, label %if.end13.if.end29_crit_edge, label %land.lhs.true

if.end13.if.end29_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end13
  %use_compressed_rx_status = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 100
  %20 = ptrtoint ptr %use_compressed_rx_status to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %use_compressed_rx_status, align 4, !range !688
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool23.not = icmp eq i8 %21, 0
  br i1 %tobool23.not, label %if.then24, label %land.lhs.true.if.end29_crit_edge

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx25 = getelementptr i32, ptr %add.ptr, i32 4
  %22 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx25, align 4
  %arrayidx26 = getelementptr i32, ptr %add.ptr, i32 5
  %24 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx26, align 4
  %arrayidx27 = getelementptr i32, ptr %add.ptr, i32 6
  %26 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx27, align 4
  %arrayidx28 = getelementptr i32, ptr %add.ptr, i32 7
  %28 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx28, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.198, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29) #13
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %land.lhs.true.if.end29_crit_edge, %if.end13.if.end29_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.52) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then7, %if.then2, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_buff_mgmt_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @rx_buff_mgmt_show, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_buff_mgmt_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %rx_buff_mgmt = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 66
  %2 = ptrtoint ptr %rx_buff_mgmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_buff_mgmt, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 66, i32 1
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.199, i32 noundef %5) #13
  %free_list_empty_cnt = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 66, i32 4
  %6 = ptrtoint ptr %free_list_empty_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %free_list_empty_cnt, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.200, i32 noundef %7) #13
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.201) #13
  %active = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 66, i32 2
  %8 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn17.i = load ptr, ptr %active, align 4
  %cmp.not18.i = icmp eq ptr %.pn17.i, %active
  br i1 %cmp.not18.i, label %if.end.wil_print_rx_buff.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.wil_print_rx_buff.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %wil_print_rx_buff.exit

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn20.i = phi ptr [ %.pn.i, %if.end.i.for.body.i_crit_edge ], [ %.pn17.i, %if.end.for.body.i_crit_edge ]
  %i.019.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %9 = and i32 %i.019.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1.i = icmp ne i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.019.i)
  %cmp2.not.i = icmp eq i32 %i.019.i, 0
  %or.cond.i = or i1 %cmp2.not.i, %cmp1.i
  br i1 %or.cond.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.204) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %id.i = getelementptr i8, ptr %.pn20.i, i32 8
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.205, i32 noundef %11) #13
  %inc.i = add i32 %i.019.i, 1
  %12 = ptrtoint ptr %.pn20.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i = load ptr, ptr %.pn20.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %active
  br i1 %cmp.not.i, label %if.end.i.wil_print_rx_buff.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end.i.wil_print_rx_buff.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %wil_print_rx_buff.exit

wil_print_rx_buff.exit:                           ; preds = %if.end.i.wil_print_rx_buff.exit_crit_edge, %if.end.wil_print_rx_buff.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end.wil_print_rx_buff.exit_crit_edge ], [ %inc.i, %if.end.i.wil_print_rx_buff.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.206, i32 noundef %i.0.lcssa.i) #13
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.202) #13
  %free = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 66, i32 3
  %13 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn17.i16 = load ptr, ptr %free, align 4
  %cmp.not18.i17 = icmp eq ptr %.pn17.i16, %free
  br i1 %cmp.not18.i17, label %wil_print_rx_buff.exit.wil_print_rx_buff.exit31_crit_edge, label %wil_print_rx_buff.exit.for.body.i23_crit_edge

wil_print_rx_buff.exit.for.body.i23_crit_edge:    ; preds = %wil_print_rx_buff.exit
  br label %for.body.i23

wil_print_rx_buff.exit.wil_print_rx_buff.exit31_crit_edge: ; preds = %wil_print_rx_buff.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %wil_print_rx_buff.exit31

for.body.i23:                                     ; preds = %if.end.i29.for.body.i23_crit_edge, %wil_print_rx_buff.exit.for.body.i23_crit_edge
  %.pn20.i18 = phi ptr [ %.pn.i27, %if.end.i29.for.body.i23_crit_edge ], [ %.pn17.i16, %wil_print_rx_buff.exit.for.body.i23_crit_edge ]
  %i.019.i19 = phi i32 [ %inc.i26, %if.end.i29.for.body.i23_crit_edge ], [ 0, %wil_print_rx_buff.exit.for.body.i23_crit_edge ]
  %14 = and i32 %i.019.i19, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp1.i20 = icmp ne i32 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.019.i19)
  %cmp2.not.i21 = icmp eq i32 %i.019.i19, 0
  %or.cond.i22 = or i1 %cmp2.not.i21, %cmp1.i20
  br i1 %or.cond.i22, label %for.body.i23.if.end.i29_crit_edge, label %if.then.i24

for.body.i23.if.end.i29_crit_edge:                ; preds = %for.body.i23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i29

if.then.i24:                                      ; preds = %for.body.i23
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.204) #13
  br label %if.end.i29

if.end.i29:                                       ; preds = %if.then.i24, %for.body.i23.if.end.i29_crit_edge
  %id.i25 = getelementptr i8, ptr %.pn20.i18, i32 8
  %15 = ptrtoint ptr %id.i25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id.i25, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.205, i32 noundef %16) #13
  %inc.i26 = add i32 %i.019.i19, 1
  %17 = ptrtoint ptr %.pn20.i18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn.i27 = load ptr, ptr %.pn20.i18, align 4
  %cmp.not.i28 = icmp eq ptr %.pn.i27, %free
  br i1 %cmp.not.i28, label %if.end.i29.wil_print_rx_buff.exit31_crit_edge, label %if.end.i29.for.body.i23_crit_edge

if.end.i29.for.body.i23_crit_edge:                ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i23

if.end.i29.wil_print_rx_buff.exit31_crit_edge:    ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #15
  br label %wil_print_rx_buff.exit31

wil_print_rx_buff.exit31:                         ; preds = %if.end.i29.wil_print_rx_buff.exit31_crit_edge, %wil_print_rx_buff.exit.wil_print_rx_buff.exit31_crit_edge
  %i.0.lcssa.i30 = phi i32 [ 0, %wil_print_rx_buff.exit.wil_print_rx_buff.exit31_crit_edge ], [ %inc.i26, %if.end.i29.wil_print_rx_buff.exit31_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.206, i32 noundef %i.0.lcssa.i30) #13
  %add = add i32 %i.0.lcssa.i30, %i.0.lcssa.i
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.203, i32 noundef %add) #13
  br label %cleanup

cleanup:                                          ; preds = %wil_print_rx_buff.exit31, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %wil_print_rx_buff.exit31 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_tx_latency_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !687
  %call = call i32 @kstrtoint_from_user(ptr noundef %buf, i32 noundef %len, i32 noundef 0, ptr noundef nonnull %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %3, ptr noundef nonnull @.str.171, ptr noundef nonnull @__func__.wil_tx_latency_write) #13
  br label %cleanup39

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.284)
  switch i32 %6, label %land.lhs.true [
    i32 1, label %land.lhs.true.thread
    i32 0, label %if.end.if.end7_crit_edge
  ]

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

land.lhs.true.thread:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 500, ptr %val, align 4
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %9 = add i32 %6, -1001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -951, i32 %9)
  %10 = icmp ult i32 %9, -951
  br i1 %10, label %if.then6, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %3, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.wil_tx_latency_write, i32 noundef %6) #13
  br label %cleanup39

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %land.lhs.true.thread, %if.end.if.end7_crit_edge
  %11 = phi i32 [ %6, %land.lhs.true.if.end7_crit_edge ], [ %6, %if.end.if.end7_crit_edge ], [ 500, %land.lhs.true.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8 = icmp ne i32 %11, 0
  %frombool = zext i1 %tobool8 to i8
  %tx_latency = getelementptr inbounds %struct.wil6210_priv, ptr %3, i32 0, i32 80
  %12 = ptrtoint ptr %tx_latency to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tx_latency, align 32, !range !688
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %frombool)
  %cmp13 = icmp eq i8 %13, %frombool
  br i1 %cmp13, label %if.end7.cleanup39_crit_edge, label %if.end16

if.end7.cleanup39_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup39

if.end16:                                         ; preds = %if.end7
  %cond = select i1 %tobool8, ptr @.str.173, ptr @.str.174
  call void (ptr, ptr, ...) @__wil_info(ptr noundef %3, ptr noundef nonnull @.str.208, ptr noundef nonnull @__func__.wil_tx_latency_write, ptr noundef nonnull %cond, i32 noundef %11) #13
  br i1 %tobool8, label %if.then20, label %if.end16.if.end35_crit_edge

if.end16.if.end35_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then20:                                        ; preds = %if.end16
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  %tx_latency_res = getelementptr inbounds %struct.wil6210_priv, ptr %3, i32 0, i32 81
  %16 = ptrtoint ptr %tx_latency_res to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %tx_latency_res, align 4
  %max_assoc_sta = getelementptr inbounds %struct.wil6210_priv, ptr %3, i32 0, i32 26
  %17 = ptrtoint ptr %max_assoc_sta to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_assoc_sta, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp2169.not = icmp eq i32 %18, 0
  br i1 %cmp2169.not, label %if.then20.if.end35_crit_edge, label %if.then20.for.body_crit_edge

if.then20.for.body_crit_edge:                     ; preds = %if.then20
  br label %for.body

if.then20.if.end35_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

for.body:                                         ; preds = %if.end29.for.body_crit_edge, %if.then20.for.body_crit_edge
  %i.070 = phi i32 [ %inc, %if.end29.for.body_crit_edge ], [ 0, %if.then20.for.body_crit_edge ]
  %tx_latency_bins = getelementptr %struct.wil6210_priv, ptr %3, i32 0, i32 63, i32 %i.070, i32 4
  %19 = ptrtoint ptr %tx_latency_bins to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tx_latency_bins, align 8
  call void @kfree(ptr noundef %20) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 1600) #16
  %22 = ptrtoint ptr %tx_latency_bins to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %tx_latency_bins, align 8
  %tobool27.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool27.not, label %for.body.cleanup39_crit_edge, label %if.end29

for.body.cleanup39_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup39

if.end29:                                         ; preds = %for.body
  %tx_latency_min_us = getelementptr %struct.wil6210_priv, ptr %3, i32 0, i32 63, i32 %i.070, i32 3, i32 5
  %23 = ptrtoint ptr %tx_latency_min_us to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %tx_latency_min_us, align 4
  %tx_latency_max_us = getelementptr %struct.wil6210_priv, ptr %3, i32 0, i32 63, i32 %i.070, i32 3, i32 6
  %24 = ptrtoint ptr %tx_latency_max_us to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %tx_latency_max_us, align 8
  %tx_latency_total_us = getelementptr %struct.wil6210_priv, ptr %3, i32 0, i32 63, i32 %i.070, i32 3, i32 7
  %25 = ptrtoint ptr %tx_latency_total_us to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 0, ptr %tx_latency_total_us, align 8
  %inc = add nuw i32 %i.070, 1
  %26 = ptrtoint ptr %max_assoc_sta to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_assoc_sta, align 8
  %cmp21 = icmp ult i32 %inc, %27
  br i1 %cmp21, label %if.end29.for.body_crit_edge, label %if.end29.if.end35_crit_edge

if.end29.if.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end35:                                         ; preds = %if.end29.if.end35_crit_edge, %if.then20.if.end35_crit_edge, %if.end16.if.end35_crit_edge
  %28 = ptrtoint ptr %tx_latency to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %frombool, ptr %tx_latency, align 32
  br label %cleanup39

cleanup39:                                        ; preds = %if.end35, %for.body.cleanup39_crit_edge, %if.end7.cleanup39_crit_edge, %if.then6, %if.then
  %retval.3 = phi i32 [ %call, %if.then ], [ -22, %if.then6 ], [ %len, %if.end35 ], [ %len, %if.end7.cleanup39_crit_edge ], [ -12, %for.body.cleanup39_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_tx_latency_seq_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @wil_tx_latency_debugfs_show, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_tx_latency_debugfs_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %max_assoc_sta = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %max_assoc_sta to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_assoc_sta, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp372.not = icmp eq i32 %3, 0
  br i1 %cmp372.not, label %entry.for.end229_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end229_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end229

for.body:                                         ; preds = %cleanup221.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0373 = phi i32 [ %inc228, %cleanup221.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0373
  %tx_latency_bins = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0373, i32 4
  %4 = ptrtoint ptr %tx_latency_bins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_latency_bins, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.cleanup221_crit_edge, label %if.end

for.body.cleanup221_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup221

if.end:                                           ; preds = %for.body
  %status1 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0373, i32 2
  %6 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status1, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.285)
  switch i32 %7, label %if.end.cond.true_crit_edge [
    i32 0, label %if.end.cond.end_crit_edge
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
  ]

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

if.end.cond.true_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.true

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.true

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %aid4 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0373, i32 12
  %9 = ptrtoint ptr %aid4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %aid4, align 4
  br label %cond.true

cond.true:                                        ; preds = %sw.bb3, %sw.bb2, %if.end.cond.true_crit_edge
  %status.0.ph = phi ptr [ @.str.74, %sw.bb2 ], [ @.str.75, %sw.bb3 ], [ @.str.72, %if.end.cond.true_crit_edge ]
  %aid.0.ph = phi i8 [ 0, %sw.bb2 ], [ %10, %sw.bb3 ], [ 0, %if.end.cond.true_crit_edge ]
  %mid7 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0373, i32 1
  %11 = ptrtoint ptr %mid7 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mid7, align 2
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %aid.0351 = phi i8 [ %aid.0.ph, %cond.true ], [ 0, %if.end.cond.end_crit_edge ]
  %status.0349 = phi ptr [ %status.0.ph, %cond.true ], [ @.str.73, %if.end.cond.end_crit_edge ]
  %cond = phi i8 [ %12, %cond.true ], [ -1, %if.end.cond.end_crit_edge ]
  %conv9 = zext i8 %cond to i32
  %conv10 = zext i8 %aid.0351 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.77, i32 noundef %i.0373, ptr noundef %arrayidx, ptr noundef nonnull %status.0349, i32 noundef %conv9, i32 noundef %conv10) #13
  %13 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp12 = icmp eq i32 %14, 2
  br i1 %cmp12, label %if.then14, label %cond.end.cleanup221_crit_edge

cond.end.cleanup221_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup221

if.then14:                                        ; preds = %cond.end
  %tx_latency_total_us = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0373, i32 3, i32 7
  %15 = ptrtoint ptr %tx_latency_total_us to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %tx_latency_total_us, align 8
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.209) #13
  br label %for.body18

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %if.then14
  %num_packets.0371 = phi i64 [ 0, %if.then14 ], [ %add, %for.body18.for.body18_crit_edge ]
  %bin.0370 = phi i32 [ 0, %if.then14 ], [ %inc, %for.body18.for.body18_crit_edge ]
  %17 = ptrtoint ptr %tx_latency_bins to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx_latency_bins, align 8
  %arrayidx20 = getelementptr i64, ptr %18, i32 %bin.0370
  %19 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx20, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.82, i64 noundef %20) #13
  %21 = ptrtoint ptr %tx_latency_bins to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx_latency_bins, align 8
  %arrayidx22 = getelementptr i64, ptr %22, i32 %bin.0370
  %23 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx22, align 8
  %add = add i64 %24, %num_packets.0371
  %inc = add nuw nsw i32 %bin.0370, 1
  %exitcond.not = icmp eq i32 %inc, 200
  br i1 %exitcond.not, label %for.end, label %for.body18.for.body18_crit_edge

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body18

for.end:                                          ; preds = %for.body18
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.51) #13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add)
  %tobool23.not = icmp eq i64 %add, 0
  br i1 %tobool23.not, label %for.end.cleanup221_crit_edge, label %if.end25

for.end.cleanup221_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup221

if.end25:                                         ; preds = %for.end
  %conv26 = trunc i64 %add to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %16)
  %cmp201 = icmp ult i64 %16, 4294967296
  br i1 %cmp201, label %if.then205, label %if.else211, !prof !693

if.then205:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  %conv206 = trunc i64 %16 to i32
  %div209 = udiv i32 %conv206, %conv26
  %conv210 = zext i32 %div209 to i64
  br label %if.end215

if.else211:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  %25 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv26, i64 %16) #19, !srcloc !699
  %asmresult1.i = extractvalue { i64, i64 } %25, 1
  br label %if.end215

if.end215:                                        ; preds = %if.else211, %if.then205
  %tx_latency_avg.0 = phi i64 [ %conv210, %if.then205 ], [ %asmresult1.i, %if.else211 ]
  %tx_latency_min_us = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0373, i32 3, i32 5
  %26 = ptrtoint ptr %tx_latency_min_us to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_latency_min_us, align 4
  %tx_latency_max_us = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.0373, i32 3, i32 6
  %28 = ptrtoint ptr %tx_latency_max_us to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_latency_max_us, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.210, i32 noundef %27, i64 noundef %tx_latency_avg.0, i32 noundef %29) #13
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.51) #13
  br label %cleanup221

cleanup221:                                       ; preds = %if.end215, %for.end.cleanup221_crit_edge, %cond.end.cleanup221_crit_edge, %for.body.cleanup221_crit_edge
  %inc228 = add nuw i32 %i.0373, 1
  %30 = ptrtoint ptr %max_assoc_sta to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_assoc_sta, align 8
  %cmp = icmp ult i32 %inc228, %31
  br i1 %cmp, label %cleanup221.for.body_crit_edge, label %cleanup221.for.end229_crit_edge

cleanup221.for.end229_crit_edge:                  ; preds = %cleanup221
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end229

cleanup221.for.body_crit_edge:                    ; preds = %cleanup221
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end229:                                       ; preds = %cleanup221.for.end229_crit_edge, %entry.for.end229_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_link_stats_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %len, ptr noundef %ppos) #0 align 64 {
entry:
  %cid = alloca i32, align 4
  %interval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cid) #13
  %4 = ptrtoint ptr %cid to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %cid, align 4, !annotation !687
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %interval) #13
  %5 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %interval, align 4, !annotation !687
  %add = add i32 %len, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #17
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @simple_write_to_buffer(ptr noundef nonnull %call9.i, i32 noundef %len, ptr noundef %ppos, ptr noundef %buf, i32 noundef %len) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %len)
  %cmp.not = icmp eq i32 %call1, %len
  br i1 %cmp.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call9.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp3 = icmp sgt i32 %call1, -1
  %spec.select = select i1 %cmp3, i32 -5, i32 %call1
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %arrayidx = getelementptr i8, ptr %call9.i, i32 %len
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  %call5 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %call9.i, ptr noundef nonnull @.str.211, ptr noundef nonnull %cid, ptr noundef nonnull %interval)
  call void @kfree(ptr noundef nonnull %call9.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call5)
  %cmp9 = icmp ult i32 %call5, 2
  br i1 %cmp9, label %if.end8.cleanup_crit_edge, label %lor.lhs.false

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end8
  %7 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp10 = icmp slt i32 %8, 0
  br i1 %cmp10, label %lor.lhs.false.cleanup_crit_edge, label %if.end12

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  %9 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cid, align 4
  call void (ptr, ptr, ...) @__wil_info(ptr noundef %3, ptr noundef nonnull @.str.212, ptr noundef nonnull @__func__.wil_link_stats_write, i32 noundef %10, i32 noundef %8) #13
  %vif_mutex = getelementptr inbounds %struct.wil6210_priv, ptr %3, i32 0, i32 24
  %call13 = call i32 @mutex_lock_interruptible_nested(ptr noundef %vif_mutex, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %for.cond.preheader, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end12
  %max_vifs = getelementptr inbounds %struct.wil6210_priv, ptr %3, i32 0, i32 22
  %11 = ptrtoint ptr %max_vifs to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %max_vifs, align 4
  %13 = call i8 @llvm.umin.i8(i8 %12, i8 4)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp2384.not = icmp eq i8 %13, 0
  br i1 %cmp2384.not, label %for.cond.preheader.for.end_crit_edge, label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond.preheader
  %arrayidx25 = getelementptr %struct.wil6210_priv, ptr %3, i32 0, i32 23, i32 0
  %14 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx25, align 4
  %tobool26.not = icmp eq ptr %15, null
  br i1 %tobool26.not, label %for.body.for.inc_crit_edge, label %if.end28

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end28:                                         ; preds = %for.body
  %16 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cid, align 4
  %18 = trunc i32 %17 to i8
  %19 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %interval, align 4
  %call36 = call i32 @wmi_link_stats_cfg(ptr noundef nonnull %15, i32 noundef 1, i8 noundef zeroext %18, i32 noundef %20) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end28.for.inc_crit_edge, label %if.then38

if.end28.for.inc_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then38:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %3, ptr noundef nonnull @.str.213, ptr noundef nonnull @__func__.wil_link_stats_write, i32 noundef 0) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then38, %if.end28.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %21 = ptrtoint ptr %max_vifs to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %max_vifs, align 4
  %23 = call i8 @llvm.umin.i8(i8 %22, i8 4)
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp23 = icmp ugt i8 %23, 1
  br i1 %cmp23, label %for.body.1, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.1:                                       ; preds = %for.inc
  %arrayidx25.1 = getelementptr %struct.wil6210_priv, ptr %3, i32 0, i32 23, i32 1
  %24 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx25.1, align 4
  %tobool26.not.1 = icmp eq ptr %25, null
  br i1 %tobool26.not.1, label %for.body.1.for.inc.1_crit_edge, label %if.end28.1

for.body.1.for.inc.1_crit_edge:                   ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.end28.1:                                       ; preds = %for.body.1
  %26 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cid, align 4
  %28 = trunc i32 %27 to i8
  %29 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %interval, align 4
  %call36.1 = call i32 @wmi_link_stats_cfg(ptr noundef nonnull %25, i32 noundef 1, i8 noundef zeroext %28, i32 noundef %30) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.1)
  %tobool37.not.1 = icmp eq i32 %call36.1, 0
  br i1 %tobool37.not.1, label %if.end28.1.for.inc.1_crit_edge, label %if.then38.1

if.end28.1.for.inc.1_crit_edge:                   ; preds = %if.end28.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.then38.1:                                      ; preds = %if.end28.1
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %3, ptr noundef nonnull @.str.213, ptr noundef nonnull @__func__.wil_link_stats_write, i32 noundef 1) #13
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then38.1, %if.end28.1.for.inc.1_crit_edge, %for.body.1.for.inc.1_crit_edge
  %31 = ptrtoint ptr %max_vifs to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %max_vifs, align 4
  %33 = call i8 @llvm.umin.i8(i8 %32, i8 4)
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %33)
  %cmp23.1 = icmp ugt i8 %33, 2
  br i1 %cmp23.1, label %for.body.2, label %for.inc.1.for.end_crit_edge

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.2:                                       ; preds = %for.inc.1
  %arrayidx25.2 = getelementptr %struct.wil6210_priv, ptr %3, i32 0, i32 23, i32 2
  %34 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx25.2, align 4
  %tobool26.not.2 = icmp eq ptr %35, null
  br i1 %tobool26.not.2, label %for.body.2.for.inc.2_crit_edge, label %if.end28.2

for.body.2.for.inc.2_crit_edge:                   ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

if.end28.2:                                       ; preds = %for.body.2
  %36 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cid, align 4
  %38 = trunc i32 %37 to i8
  %39 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %interval, align 4
  %call36.2 = call i32 @wmi_link_stats_cfg(ptr noundef nonnull %35, i32 noundef 1, i8 noundef zeroext %38, i32 noundef %40) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.2)
  %tobool37.not.2 = icmp eq i32 %call36.2, 0
  br i1 %tobool37.not.2, label %if.end28.2.for.inc.2_crit_edge, label %if.then38.2

if.end28.2.for.inc.2_crit_edge:                   ; preds = %if.end28.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

if.then38.2:                                      ; preds = %if.end28.2
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %3, ptr noundef nonnull @.str.213, ptr noundef nonnull @__func__.wil_link_stats_write, i32 noundef 2) #13
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then38.2, %if.end28.2.for.inc.2_crit_edge, %for.body.2.for.inc.2_crit_edge
  %41 = ptrtoint ptr %max_vifs to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %max_vifs, align 4
  %43 = call i8 @llvm.umin.i8(i8 %42, i8 4)
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %43)
  %cmp23.2 = icmp ugt i8 %43, 3
  br i1 %cmp23.2, label %for.body.3, label %for.inc.2.for.end_crit_edge

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.3:                                       ; preds = %for.inc.2
  %arrayidx25.3 = getelementptr %struct.wil6210_priv, ptr %3, i32 0, i32 23, i32 3
  %44 = ptrtoint ptr %arrayidx25.3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx25.3, align 4
  %tobool26.not.3 = icmp eq ptr %45, null
  br i1 %tobool26.not.3, label %for.body.3.for.end_crit_edge, label %if.end28.3

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end28.3:                                       ; preds = %for.body.3
  %46 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cid, align 4
  %48 = trunc i32 %47 to i8
  %49 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %interval, align 4
  %call36.3 = call i32 @wmi_link_stats_cfg(ptr noundef nonnull %45, i32 noundef 1, i8 noundef zeroext %48, i32 noundef %50) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.3)
  %tobool37.not.3 = icmp eq i32 %call36.3, 0
  br i1 %tobool37.not.3, label %if.end28.3.for.end_crit_edge, label %if.then38.3

if.end28.3.for.end_crit_edge:                     ; preds = %if.end28.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.then38.3:                                      ; preds = %if.end28.3
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %3, ptr noundef nonnull @.str.213, ptr noundef nonnull @__func__.wil_link_stats_write, i32 noundef 3) #13
  br label %for.end

for.end:                                          ; preds = %if.then38.3, %if.end28.3.for.end_crit_edge, %for.body.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @mutex_unlock(ptr noundef %vif_mutex) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end12.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.then2 ], [ %len, %for.end ], [ -12, %entry.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %interval) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cid) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_link_stats_seq_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @wil_link_stats_debugfs_show, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_link_stats_cfg(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_link_stats_debugfs_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  %per.i.i = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %vif_mutex = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 24
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %vif_mutex, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %max_vifs = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %max_vifs to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %max_vifs, align 4
  %4 = call i8 @llvm.umin.i8(i8 %3, i8 4)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp225.not = icmp eq i8 %4, 0
  br i1 %cmp225.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.026 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 23, i32 %i.026
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.214, i32 noundef %i.026) #13
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %for.body.for.inc.sink.split_crit_edge, label %if.end6

for.body.for.inc.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.sink.split

if.end6:                                          ; preds = %for.body
  %wil1.i = getelementptr inbounds %struct.wil6210_vif, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %wil1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wil1.i, align 8
  %fw_stats_ready.i = getelementptr inbounds %struct.wil6210_vif, ptr %6, i32 0, i32 35
  %9 = ptrtoint ptr %fw_stats_ready.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fw_stats_ready.i, align 4, !range !688
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end6.for.inc.sink.split_crit_edge, label %if.end.i

if.end6.for.inc.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.sink.split

if.end.i:                                         ; preds = %if.end6
  %fw_stats_tsf.i = getelementptr inbounds %struct.wil6210_vif, ptr %6, i32 0, i32 36
  %11 = ptrtoint ptr %fw_stats_tsf.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %fw_stats_tsf.i, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.217, i64 noundef %12) #13
  %max_assoc_sta.i = getelementptr inbounds %struct.wil6210_priv, ptr %8, i32 0, i32 26
  %13 = ptrtoint ptr %max_assoc_sta.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_assoc_sta.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp30.not.i = icmp eq i32 %14, 0
  br i1 %cmp30.not.i, label %if.end.i.for.inc_crit_edge, label %for.body.lr.ph.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %mid7.i = getelementptr inbounds %struct.wil6210_vif, ptr %6, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.031.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %status.i = getelementptr %struct.wil6210_priv, ptr %8, i32 0, i32 63, i32 %i.031.i, i32 2
  %15 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp2.i = icmp eq i32 %16, 0
  br i1 %cmp2.i, label %for.body.i.for.inc.i_crit_edge, label %if.end4.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end4.i:                                        ; preds = %for.body.i
  %mid.i = getelementptr %struct.wil6210_priv, ptr %8, i32 0, i32 63, i32 %i.031.i, i32 1
  %17 = ptrtoint ptr %mid.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mid.i, align 2
  %19 = ptrtoint ptr %mid7.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %mid7.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %20)
  %cmp9.not.i = icmp eq i8 %18, %20
  br i1 %cmp9.not.i, label %if.end12.i, label %if.end4.i.for.inc.i_crit_edge

if.end4.i.for.inc.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end12.i:                                       ; preds = %if.end4.i
  %fw_stats_basic.i = getelementptr %struct.wil6210_priv, ptr %8, i32 0, i32 63, i32 %i.031.i, i32 5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %per.i.i) #13
  %21 = call ptr @memcpy(ptr %per.i.i, ptr @__const.wil_link_stats_print_basic.per, i32 5)
  %per_average.i.i = getelementptr %struct.wil6210_priv, ptr %8, i32 0, i32 63, i32 %i.031.i, i32 5, i32 4
  %22 = ptrtoint ptr %per_average.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %per_average.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %23)
  %cmp.not.i.i = icmp eq i8 %23, -1
  br i1 %cmp.not.i.i, label %if.end12.i.wil_link_stats_print_basic.exit.i_crit_edge, label %if.then.i.i

if.end12.i.wil_link_stats_print_basic.exit.i_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %wil_link_stats_print_basic.exit.i

if.then.i.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i = zext i8 %23 to i32
  %call.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %per.i.i, i32 noundef 5, ptr noundef nonnull @.str.218, i32 noundef %conv.i.i) #13
  br label %wil_link_stats_print_basic.exit.i

wil_link_stats_print_basic.exit.i:                ; preds = %if.then.i.i, %if.end12.i.wil_link_stats_print_basic.exit.i_crit_edge
  %24 = ptrtoint ptr %fw_stats_basic.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %fw_stats_basic.i, align 1
  %conv4.i.i = zext i8 %25 to i32
  %bf_mcs.i.i = getelementptr %struct.wil6210_priv, ptr %8, i32 0, i32 63, i32 %i.031.i, i32 5, i32 3
  %26 = ptrtoint ptr %bf_mcs.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bf_mcs.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %27)
  %cmp6.i.i = icmp eq i8 %27, 26
  %cond.i.i = select i1 %cmp6.i.i, ptr @.str.105, ptr @.str.220
  %tx_tpt.i.i = getelementptr %struct.wil6210_priv, ptr %8, i32 0, i32 63, i32 %i.031.i, i32 5, i32 13
  %28 = ptrtoint ptr %tx_tpt.i.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %tx_tpt.i.i, align 1
  %30 = call i32 @llvm.bswap.i32(i32 %29) #13
  %rx_goodput.i.i = getelementptr %struct.wil6210_priv, ptr %8, i32 0, i32 63, i32 %i.031.i, i32 5, i32 15
  %31 = ptrtoint ptr %rx_goodput.i.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %rx_goodput.i.i, align 1
  %33 = call i32 @llvm.bswap.i32(i32 %32) #13
  %tx_goodput.i.i = getelementptr %struct.wil6210_priv, ptr %8, i32 0, i32 63, i32 %i.031.i, i32 5, i32 14
  %34 = ptrtoint ptr %tx_goodput.i.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %tx_goodput.i.i, align 1
  %36 = call i32 @llvm.bswap.i32(i32 %35) #13
  %rx_bcast_frames.i.i = getelementptr %struct.wil6210_priv, ptr %8, i32 0, i32 63, i32 %i.031.i, i32 5, i32 17
  %37 = ptrtoint ptr %rx_bcast_frames.i.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %rx_bcast_frames.i.i, align 1
  %39 = call i32 @llvm.bswap.i32(i32 %38) #13
  %rssi.i.i = getelementptr %struct.wil6210_priv, ptr %8, i32 0, i32 63, i32 %i.031.i, i32 5, i32 1
  %40 = ptrtoint ptr %rssi.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %rssi.i.i, align 1
  %conv8.i.i = sext i8 %41 to i32
  %sqi.i.i = getelementptr %struct.wil6210_priv, ptr %8, i32 0, i32 63, i32 %i.031.i, i32 5, i32 2
  %42 = ptrtoint ptr %sqi.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %sqi.i.i, align 1
  %conv9.i.i = zext i8 %43 to i32
  %snr.i.i = getelementptr %struct.wil6210_priv, ptr %8, i32 0, i32 63, i32 %i.031.i, i32 5, i32 12
  %44 = ptrtoint ptr %snr.i.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %snr.i.i, align 1
  %conv10.i.i = zext i16 %45 to i32
  %selected_rfc.i.i = getelementptr %struct.wil6210_priv, ptr %8, i32 0, i32 63, i32 %i.031.i, i32 5, i32 5
  %46 = ptrtoint ptr %selected_rfc.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %selected_rfc.i.i, align 1
  %conv12.i.i = zext i8 %47 to i32
  %rx_effective_ant_num.i.i = getelementptr %struct.wil6210_priv, ptr %8, i32 0, i32 63, i32 %i.031.i, i32 5, i32 6
  %48 = ptrtoint ptr %rx_effective_ant_num.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %rx_effective_ant_num.i.i, align 1
  %conv13.i.i = zext i8 %49 to i32
  %my_rx_sector.i.i = getelementptr %struct.wil6210_priv, ptr %8, i32 0, i32 63, i32 %i.031.i, i32 5, i32 7
  %50 = ptrtoint ptr %my_rx_sector.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %my_rx_sector.i.i, align 1
  %conv14.i.i = zext i8 %51 to i32
  %my_tx_sector.i.i = getelementptr %struct.wil6210_priv, ptr %8, i32 0, i32 63, i32 %i.031.i, i32 5, i32 8
  %52 = ptrtoint ptr %my_tx_sector.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %my_tx_sector.i.i, align 1
  %conv15.i.i = zext i8 %53 to i32
  %other_rx_sector.i.i = getelementptr %struct.wil6210_priv, ptr %8, i32 0, i32 63, i32 %i.031.i, i32 5, i32 9
  %54 = ptrtoint ptr %other_rx_sector.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %other_rx_sector.i.i, align 1
  %conv16.i.i = zext i8 %55 to i32
  %other_tx_sector.i.i = getelementptr %struct.wil6210_priv, ptr %8, i32 0, i32 63, i32 %i.031.i, i32 5, i32 10
  %56 = ptrtoint ptr %other_tx_sector.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %other_tx_sector.i.i, align 1
  %conv17.i.i = zext i8 %57 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.219, i32 noundef %conv4.i.i, ptr noundef nonnull %cond.i.i, i32 noundef %30, i32 noundef %33, i32 noundef %36, i32 noundef %39, i32 noundef %conv8.i.i, i32 noundef %conv9.i.i, i32 noundef %conv10.i.i, ptr noundef nonnull %per.i.i, i32 noundef %conv12.i.i, i32 noundef %conv13.i.i, i32 noundef %conv14.i.i, i32 noundef %conv15.i.i, i32 noundef %conv16.i.i, i32 noundef %conv17.i.i) #13
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %per.i.i) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %wil_link_stats_print_basic.exit.i, %if.end4.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.031.i, 1
  %58 = ptrtoint ptr %max_assoc_sta.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %max_assoc_sta.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %59
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.inc_crit_edge

for.inc.i.for.inc_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.sink.split:                               ; preds = %if.end6.for.inc.sink.split_crit_edge, %for.body.for.inc.sink.split_crit_edge
  %.str.216.sink = phi ptr [ @.str.215, %for.body.for.inc.sink.split_crit_edge ], [ @.str.216, %if.end6.for.inc.sink.split_crit_edge ]
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull %.str.216.sink) #13
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %for.inc.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.026, 1
  %60 = ptrtoint ptr %max_vifs to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %max_vifs, align 4
  %62 = call i8 @llvm.umin.i8(i8 %61, i8 4)
  %cond = zext i8 %62 to i32
  %cmp2 = icmp ult i32 %inc, %cond
  br i1 %cmp2, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @mutex_unlock(ptr noundef %vif_mutex) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_link_stats_global_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %interval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %interval) #13
  %4 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %interval, align 4, !annotation !687
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %main_ndev, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 2304
  %call1 = call i32 @kstrtoint_from_user(ptr noundef %buf, i32 noundef %len, i32 noundef 0, ptr noundef nonnull %interval) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %7 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %3, ptr noundef nonnull @.str.171, ptr noundef nonnull @__func__.wil_link_stats_global_write) #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void (ptr, ptr, ...) @__wil_info(ptr noundef %3, ptr noundef nonnull @.str.221, ptr noundef nonnull @__func__.wil_link_stats_global_write, i32 noundef %8) #13
  %9 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %interval, align 4
  %call2 = call i32 @wmi_link_stats_cfg(ptr noundef %add.ptr.i, i32 noundef 2, i8 noundef zeroext 0, i32 noundef %10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %3, ptr noundef nonnull @.str.222, ptr noundef nonnull @__func__.wil_link_stats_global_write, i32 noundef %call2) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call2, %if.then4 ], [ %len, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %interval) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_link_stats_global_seq_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @wil_link_stats_global_debugfs_show, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_link_stats_global_debugfs_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %fw_stats_global = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 108
  %2 = ptrtoint ptr %fw_stats_global to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fw_stats_global, align 8, !range !688
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %tsf = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 108, i32 1
  %4 = ptrtoint ptr %tsf to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %tsf, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.217, i64 noundef %5) #13
  %stats = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 108, i32 2
  %6 = ptrtoint ptr %stats to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %stats, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #13
  %tx_frames.i = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 108, i32 2, i32 1
  %9 = ptrtoint ptr %tx_frames.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %tx_frames.i, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #13
  %rx_ba_frames.i = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 108, i32 2, i32 2
  %12 = ptrtoint ptr %rx_ba_frames.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %rx_ba_frames.i, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #13
  %tx_ba_frames.i = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 108, i32 2, i32 3
  %15 = ptrtoint ptr %tx_ba_frames.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %tx_ba_frames.i, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #13
  %tx_beacons.i = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 108, i32 2, i32 4
  %18 = ptrtoint ptr %tx_beacons.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %tx_beacons.i, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #13
  %rx_mic_errors.i = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 108, i32 2, i32 5
  %21 = ptrtoint ptr %rx_mic_errors.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %rx_mic_errors.i, align 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #13
  %rx_crc_errors.i = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 108, i32 2, i32 6
  %24 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %rx_crc_errors.i, align 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #13
  %tx_fail_no_ack.i = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 108, i32 2, i32 7
  %27 = ptrtoint ptr %tx_fail_no_ack.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %tx_fail_no_ack.i, align 1
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.223, i32 noundef %8, i32 noundef %11, i32 noundef %14, i32 noundef %17, i32 noundef %20, i32 noundef %23, i32 noundef %26, i32 noundef %29) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_write_file_rbufcap(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !687
  %call = call i32 @kstrtoint_from_user(ptr noundef %buf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.171, ptr noundef nonnull @__func__.wil_write_file_rbufcap) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp slt i32 %4, 0
  %cond = select i1 %cmp, ptr @.str.174, ptr @.str.173
  call void (ptr, ptr, ...) @__wil_info(ptr noundef %1, ptr noundef nonnull @.str.224, ptr noundef nonnull @__func__.wil_write_file_rbufcap, ptr noundef nonnull %cond, i32 noundef %4) #13
  %va = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 55, i32 1
  %5 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %va, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %if.end.if.then5_crit_edge, label %lor.lhs.false

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then5

lor.lhs.false:                                    ; preds = %if.end
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %size = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 55, i32 2
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %size, align 8
  %conv = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv)
  %cmp3 = icmp sgt i32 %8, %conv
  br i1 %cmp3, label %lor.lhs.false.if.then5_crit_edge, label %if.end6

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then5

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %if.end.if.then5_crit_edge
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.225, ptr noundef nonnull @__func__.wil_write_file_rbufcap, i32 noundef %12) #13
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp7 = icmp sgt i32 %8, -1
  %13 = call i32 @llvm.smax.i32(i32 %8, i32 0)
  %14 = trunc i32 %13 to i16
  %call15 = call i32 @wmi_rbufcap_cfg(ptr noundef %1, i1 noundef zeroext %cmp7, i16 noundef zeroext %14) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end6.cleanup_crit_edge, label %if.then17

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then17:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.226, ptr noundef nonnull @__func__.wil_write_file_rbufcap, i32 noundef %call15) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end6.cleanup_crit_edge, %if.then5, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ -22, %if.then5 ], [ %call15, %if.then17 ], [ %count, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_rbufcap_cfg(ptr noundef, i1 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_read_file_ioblob(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ppos, align 8
  %blob = getelementptr inbounds %struct.wil_blob_wrapper, ptr %1, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp = icmp slt i64 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct.wil_blob_wrapper, ptr %1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %conv = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %conv)
  %cmp2.not = icmp uge i64 %5, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  %or.cond = or i1 %tobool.not, %cmp2.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %conv6 = zext i32 %count to i64
  %sub = sub nsw i64 %conv, %5
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv6)
  %cmp8 = icmp slt i64 %sub, %conv6
  %conv13 = trunc i64 %sub to i32
  %spec.select = select i1 %cmp8, i32 %conv13, i32 %count
  %8 = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 4096)
  %9 = trunc i64 %5 to i32
  %conv19 = and i32 %9, 3
  %add = add nuw nsw i32 %8, %conv19
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #17
  %tobool22.not = icmp eq ptr %call9.i, null
  br i1 %tobool22.not, label %if.end5.cleanup_crit_edge, label %if.end24

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end24:                                         ; preds = %if.end5
  %call25 = tail call i32 @wil_pm_runtime_get(ptr noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call9.i) #13
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %call30 = tail call i32 @wil_mem_access_lock(ptr noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.then32

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call9.i) #13
  tail call void @wil_pm_runtime_put(ptr noundef %3) #13
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %10 = ptrtoint ptr %blob to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %blob, align 4
  %idx.ext = and i32 %9, -4
  %add.ptr = getelementptr i8, ptr %11, i32 %idx.ext
  tail call void @wil_memcpy_fromio_32(ptr noundef nonnull %call9.i, ptr noundef %add.ptr, i32 noundef %add) #13
  %add.ptr35 = getelementptr i8, ptr %call9.i, i32 %conv19
  tail call void @__check_object_size(ptr noundef %add.ptr35, i32 noundef %8, i1 noundef zeroext true) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.241, i32 noundef 174) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.end33.copy_to_user.exit_crit_edge, label %if.end.i.i91

if.end33.copy_to_user.exit_crit_edge:             ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.end.i.i91:                                     ; preds = %if.end33
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %8, i32 -1226833920) #19, !srcloc !700
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i91.copy_to_user.exit_crit_edge

if.end.i.i91.copy_to_user.exit_crit_edge:         ; preds = %if.end.i.i91
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i91
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr35, i32 noundef %8) #13
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %user_buf, ptr noundef %add.ptr35, i32 noundef %8) #13
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i91.copy_to_user.exit_crit_edge, %if.end33.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %8, %if.end33.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %8, %if.end.i.i91.copy_to_user.exit_crit_edge ]
  tail call void @wil_mem_access_unlock(ptr noundef %3) #13
  tail call void @wil_pm_runtime_put(ptr noundef %3) #13
  tail call void @kfree(ptr noundef nonnull %call9.i) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %n.addr.0.i)
  %cmp37 = icmp eq i32 %8, %n.addr.0.i
  br i1 %cmp37, label %copy_to_user.exit.cleanup_crit_edge, label %if.end40

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end40:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  %sub41 = sub i32 %8, %n.addr.0.i
  %conv42 = zext i32 %sub41 to i64
  %add43 = add nuw i64 %5, %conv42
  %13 = ptrtoint ptr %ppos to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %add43, ptr %ppos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %copy_to_user.exit.cleanup_crit_edge, %if.then32, %if.then28, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %if.then28 ], [ %call30, %if.then32 ], [ %sub41, %if.end40 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ -14, %copy_to_user.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_x32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file_unsafe(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u8(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_fops_ulong_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @wil_debugfs_ulong_get, ptr noundef nonnull @wil_debugfs_ulong_set, ptr noundef nonnull @.str.242) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wil_debugfs_ulong_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %conv = zext i32 %1 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @wil_debugfs_ulong_set(ptr nocapture noundef writeonly %data, i64 noundef %val) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %val to i32
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %conv, ptr %data, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_iomem_x32_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @wil_debugfs_iomem_x32_get, ptr noundef nonnull @wil_debugfs_iomem_x32_set, ptr noundef nonnull @.str.243) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_debugfs_iomem_x32_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %wil1 = getelementptr inbounds %struct.wil_debugfs_iomem_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %wil1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wil1, align 4
  %call = tail call i32 @wil_pm_runtime_get(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #13, !srcloc !689
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !701
  %conv = zext i32 %5 to i64
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv, ptr %val, align 8
  tail call void @wil_pm_runtime_put(ptr noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_debugfs_iomem_x32_set(ptr nocapture noundef readonly %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %wil1 = getelementptr inbounds %struct.wil_debugfs_iomem_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %wil1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wil1, align 4
  %call = tail call i32 @wil_pm_runtime_get(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv = trunc i64 %val to i32
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #13, !srcloc !702
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !703
  tail call void @arm_heavy_mb() #13
  tail call void @wil_pm_runtime_put(ptr noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 333)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 333)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin }
attributes #19 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !252, !254, !256, !257, !259, !261, !262, !264, !266, !268, !270, !272, !274, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !313, !314, !315, !317, !319, !321, !323, !325, !327, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !395, !397, !399, !401, !403, !405, !407, !408, !410, !411, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !445, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !517, !519, !521, !523, !525, !527, !529, !531, !533, !535, !537, !539, !541, !543, !545, !547, !549, !551, !553, !555, !557, !559, !561, !563, !565, !567, !569, !571, !573, !575, !577, !579, !581, !583, !585, !586, !588, !590, !592, !593, !595, !596, !598, !600, !602, !604, !606, !608, !610, !612, !614, !616, !618, !620, !622, !624, !626, !628, !630, !632, !634, !636, !638, !640, !642, !644, !646, !648, !650, !652, !654, !656, !658, !660, !662, !664, !666, !668, !670, !672, !674, !676}
!llvm.module.flags = !{!678, !679, !680, !681, !682, !683, !684, !685}
!llvm.ident = !{!686}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2483, i32 55}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2368, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2369, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2370, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2371, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2372, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2373, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2374, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2375, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2376, i32 3}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2377, i32 3}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2378, i32 3}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2379, i32 3}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2380, i32 3}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2381, i32 3}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2382, i32 3}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2383, i32 3}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2384, i32 3}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2385, i32 3}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2386, i32 3}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2387, i32 3}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2388, i32 3}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2389, i32 3}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2390, i32 3}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2391, i32 3}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2392, i32 3}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2393, i32 3}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2394, i32 3}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2395, i32 3}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2396, i32 3}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2397, i32 3}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2398, i32 3}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2399, i32 3}
!66 = !{ptr @dbg_files, !67, !"dbg_files", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2367, i32 3}
!68 = !{ptr @mbox_fops, !69, !"mbox_fops", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 372, i32 1}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 363, i32 25}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 365, i32 25}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 293, i32 16}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 294, i32 16}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 295, i32 16}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 296, i32 16}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 297, i32 16}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 298, i32 16}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 301, i32 17}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 309, i32 15}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 321, i32 17}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 322, i32 16}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 322, i32 22}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 323, i32 36}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 323, i32 42}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 324, i32 36}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 329, i32 18}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 342, i32 38}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 345, i32 16}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 349, i32 14}
!110 = !{ptr @ring_fops, !111, !"ring_fops", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 191, i32 1}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 160, i32 36}
!114 = distinct !{null, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 163, i32 36}
!116 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 168, i32 33}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 172, i32 9}
!120 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 174, i32 30}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 174, i32 36}
!124 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 181, i32 9}
!126 = !{ptr @.str.60, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 81, i32 16}
!128 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 82, i32 16}
!130 = !{ptr @.str.62, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 83, i32 16}
!132 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 84, i32 16}
!134 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 86, i32 17}
!136 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 88, i32 17}
!138 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 89, i32 16}
!140 = !{ptr @.str.67, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 101, i32 17}
!142 = !{ptr @.str.68, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 103, i32 16}
!144 = !{ptr @.str.69, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 107, i32 17}
!146 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 109, i32 15}
!148 = !{ptr @.str.71, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 123, i32 19}
!150 = !{ptr @sta_fops, !151, !"sta_fops", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1698, i32 1}
!152 = !{ptr @.str.72, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1624, i32 18}
!154 = !{ptr @.str.73, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1631, i32 13}
!156 = !{ptr @.str.74, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1634, i32 13}
!158 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1637, i32 13}
!160 = !{ptr @.str.76, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1651, i32 18}
!162 = !{ptr @.str.77, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1654, i32 18}
!164 = !{ptr @.str.78, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1665, i32 20}
!166 = !{ptr @.str.79, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1675, i32 8}
!168 = !{ptr @.str.80, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1681, i32 8}
!170 = !{ptr @.str.81, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1687, i32 16}
!172 = !{ptr @.str.82, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1690, i32 19}
!174 = !{ptr @.str.83, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1575, i32 16}
!176 = !{ptr @.str.84, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1583, i32 6}
!178 = !{ptr @.str.85, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1603, i32 17}
!180 = !{ptr @.str.86, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1605, i32 15}
!182 = !{ptr @.str.87, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1610, i32 17}
!184 = !{ptr @mids_fops, !185, !"mids_fops", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1723, i32 1}
!186 = !{ptr @.str.88, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1713, i32 18}
!188 = !{ptr @.str.89, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1716, i32 18}
!190 = !{ptr @txdesc_fops, !191, !"txdesc_fops", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1160, i32 1}
!192 = !{ptr @.str.90, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1082, i32 18}
!194 = !{ptr @.str.91, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1099, i32 18}
!196 = !{ptr @.str.92, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1101, i32 16}
!198 = !{ptr @.str.93, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1107, i32 18}
!200 = !{ptr @.str.94, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1110, i32 18}
!202 = !{ptr @.str.95, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1133, i32 19}
!204 = !{ptr @.str.96, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1141, i32 17}
!206 = !{ptr @.str.97, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1144, i32 17}
!208 = !{ptr @.str.98, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1145, i32 16}
!210 = !{ptr @.str.99, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1147, i32 16}
!212 = !{ptr @.str.100, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1149, i32 16}
!214 = !{ptr @dbg_ring_index, !215, !"dbg_ring_index", i1 false, i1 false}
!215 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 21, i32 12}
!216 = !{ptr @dbg_txdesc_index, !217, !"dbg_txdesc_index", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 20, i32 12}
!218 = !{ptr @.str.101, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1051, i32 16}
!220 = !{ptr @.str.102, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1055, i32 17}
!222 = !{ptr @.str.103, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1061, i32 18}
!224 = !{ptr @bf_fops, !225, !"bf_fops", i1 false, i1 false}
!225 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1335, i32 1}
!226 = !{ptr @.str.104, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1310, i32 17}
!228 = !{ptr @.str.105, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1321, i32 7}
!230 = !{ptr @.str.106, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @.str.107, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1256, i32 10}
!233 = !{ptr @.str.108, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1258, i32 10}
!235 = !{ptr @.str.109, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1260, i32 10}
!237 = !{ptr @.str.110, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1262, i32 10}
!239 = !{ptr @memread_fops, !240, !"memread_fops", i1 false, i1 false}
!240 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 612, i32 1}
!241 = !{ptr @.str.111, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 603, i32 17}
!243 = !{ptr @.str.112, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 605, i32 17}
!245 = !{ptr @mem_addr, !246, !"mem_addr", i1 false, i1 false}
!246 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 19, i32 12}
!247 = !{ptr @fops_rxon, !248, !"fops_rxon", i1 false, i1 false}
!248 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 729, i32 37}
!249 = !{ptr @.str.113, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 711, i32 3}
!251 = !{ptr @__func__.wil_write_file_rxon, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @fops_txmgmt, !253, !"fops_txmgmt", i1 false, i1 false}
!253 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 996, i32 37}
!254 = !{ptr @.str.114, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 991, i32 2}
!256 = !{ptr @__func__.wil_write_file_txmgmt, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @fops_wmi, !258, !"fops_wmi", i1 false, i1 false}
!258 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1039, i32 37}
!259 = !{ptr @.str.115, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1034, i32 2}
!261 = !{ptr @__func__.wil_write_file_wmi, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @fops_back, !263, !"fops_back", i1 false, i1 false}
!263 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 864, i32 37}
!264 = !{ptr @wil_read_back.text, !265, !"text", i1 false, i1 false}
!265 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 853, i32 20}
!266 = !{ptr @.str.116, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 796, i32 20}
!268 = !{ptr @.str.117, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 804, i32 19}
!270 = !{ptr @.str.118, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 805, i32 19}
!272 = !{ptr @.str.119, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 809, i32 4}
!274 = !{ptr @__func__.wil_write_back, !273, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @.str.120, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 815, i32 5}
!277 = !{ptr @.str.121, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 826, i32 25}
!279 = !{ptr @.str.122, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 830, i32 4}
!281 = !{ptr @.str.123, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 835, i32 4}
!283 = !{ptr @.str.124, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 843, i32 3}
!285 = !{ptr @fops_pmccfg, !286, !"fops_pmccfg", i1 false, i1 false}
!286 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 940, i32 37}
!287 = !{ptr @.str.125, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 933, i32 31}
!289 = !{ptr @.str.126, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 893, i32 20}
!291 = !{ptr @.str.127, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 900, i32 3}
!293 = !{ptr @__func__.wil_write_pmccfg, !292, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @.str.128, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 904, i32 23}
!296 = !{ptr @.str.129, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 906, i32 4}
!298 = !{ptr @.str.130, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 910, i32 30}
!300 = !{ptr @.str.131, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 912, i32 4}
!302 = !{ptr @.str.132, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 917, i32 3}
!304 = !{ptr @fops_pmcdata, !305, !"fops_pmcdata", i1 false, i1 false}
!305 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 946, i32 37}
!306 = !{ptr @fops_pmcring, !307, !"fops_pmcring", i1 false, i1 false}
!307 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 957, i32 37}
!308 = !{ptr @temp_fops, !309, !"temp_fops", i1 false, i1 false}
!309 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1392, i32 1}
!310 = !{ptr @.str.133, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1361, i32 3}
!312 = !{ptr @.str.134, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @.str.135, !311, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @temp_show.__UNIQUE_ID_ddebug347, !311, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!315 = !{ptr @.str.136, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1365, i32 16}
!317 = !{ptr @.str.137, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1368, i32 17}
!319 = !{ptr @.str.138, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1370, i32 17}
!321 = !{ptr @.str.139, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1373, i32 18}
!323 = !{ptr @.str.140, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1374, i32 18}
!325 = !{ptr @.str.141, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1380, i32 3}
!327 = !{ptr @temp_show.__UNIQUE_ID_ddebug348, !326, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!328 = !{ptr @.str.142, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1388, i32 17}
!330 = !{ptr @.str.143, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1343, i32 17}
!332 = !{ptr @.str.144, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1346, i32 17}
!334 = !{ptr @freq_fops, !335, !"freq_fops", i1 false, i1 false}
!335 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1405, i32 1}
!336 = !{ptr @.str.145, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1401, i32 16}
!338 = !{ptr @link_fops, !339, !"link_fops", i1 false, i1 false}
!339 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1462, i32 1}
!340 = !{ptr @.str.146, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1436, i32 17}
!342 = !{ptr @.str.147, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1448, i32 18}
!344 = !{ptr @.str.148, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1449, i32 8}
!346 = !{ptr @.str.149, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1450, i32 18}
!348 = !{ptr @.str.150, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1451, i32 8}
!350 = !{ptr @.str.151, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1452, i32 18}
!352 = !{ptr @.str.152, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1454, i32 16}
!354 = !{ptr @info_fops, !355, !"info_fops", i1 false, i1 false}
!355 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1500, i32 1}
!356 = !{ptr @info_show.rxf_old, !357, !"rxf_old", i1 false, i1 false}
!357 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1472, i32 15}
!358 = !{ptr @info_show.txf_old, !359, !"txf_old", i1 false, i1 false}
!359 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1472, i32 24}
!360 = !{ptr @.str.153, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1478, i32 16}
!362 = !{ptr @.str.154, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1479, i32 16}
!364 = !{ptr @.str.155, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1480, i32 16}
!366 = !{ptr @.str.156, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1491, i32 17}
!368 = !{ptr @.str.157, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1492, i32 7}
!370 = !{ptr @.str.158, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1493, i32 7}
!372 = !{ptr @.str.159, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1494, i32 7}
!374 = !{ptr @fops_recovery, !375, !"fops_recovery", i1 false, i1 false}
!375 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1561, i32 37}
!376 = !{ptr @.str.160, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1512, i32 40}
!378 = !{ptr @.str.161, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1512, i32 48}
!380 = !{ptr @.str.162, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1512, i32 59}
!382 = !{ptr @wil_read_file_recovery.sstate, !383, !"sstate", i1 false, i1 false}
!383 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1512, i32 28}
!384 = !{ptr @.str.163, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1514, i32 33}
!386 = !{ptr @.str.164, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1515, i32 25}
!388 = !{ptr @.str.165, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1515, i32 36}
!390 = !{ptr @wil_write_file_recovery.run_command, !391, !"run_command", i1 false, i1 false}
!391 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1529, i32 20}
!392 = !{ptr @.str.166, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1534, i32 3}
!394 = !{ptr @__func__.wil_write_file_recovery, !393, !"<string literal>", i1 false, i1 false}
!395 = !{ptr @.str.167, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1539, i32 3}
!397 = !{ptr @.str.168, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1544, i32 3}
!399 = !{ptr @.str.169, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1556, i32 3}
!401 = !{ptr @fops_led_cfg, !402, !"fops_led_cfg", i1 false, i1 false}
!402 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2104, i32 37}
!403 = !{ptr @.str.170, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2070, i32 8}
!405 = !{ptr @.str.171, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2089, i32 3}
!407 = !{ptr @__func__.wil_write_file_led_cfg, !406, !"<string literal>", i1 false, i1 false}
!408 = !{ptr @.str.172, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2093, i32 2}
!410 = !{ptr @.str.173, !409, !"<string literal>", i1 false, i1 false}
!411 = !{ptr @.str.174, !409, !"<string literal>", i1 false, i1 false}
!412 = !{ptr @.str.175, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2096, i32 3}
!414 = !{ptr @fops_led_blink_time, !415, !"fops_led_blink_time", i1 false, i1 false}
!415 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2169, i32 37}
!416 = !{ptr @wil_read_led_blink_time.text, !417, !"text", i1 false, i1 false}
!417 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2150, i32 14}
!418 = !{ptr @.str.176, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2153, i32 4}
!420 = !{ptr @.str.177, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2130, i32 20}
!422 = !{ptr @fops_fw_capabilities, !423, !"fops_fw_capabilities", i1 false, i1 false}
!423 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2192, i32 37}
!424 = !{ptr @.str.178, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2180, i32 16}
!426 = !{ptr @fops_fw_version, !427, !"fops_fw_version", i1 false, i1 false}
!427 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2218, i32 37}
!428 = !{ptr @.str.179, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2205, i32 17}
!430 = !{ptr @.str.180, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2207, i32 15}
!432 = !{ptr @fops_suspend_stats, !433, !"fops_suspend_stats", i1 false, i1 false}
!433 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2279, i32 37}
!434 = !{ptr @.str.181, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2250, i32 8}
!436 = !{ptr @fops_compressed_rx_status, !437, !"fops_compressed_rx_status", i1 false, i1 false}
!437 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2331, i32 37}
!438 = !{ptr @__func__.wil_compressed_rx_status_write, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2297, i32 3}
!440 = !{ptr @.str.182, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2302, i32 3}
!442 = !{ptr @.str.183, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2306, i32 2}
!444 = !{ptr @.str.184, !443, !"<string literal>", i1 false, i1 false}
!445 = !{ptr @.str.185, !443, !"<string literal>", i1 false, i1 false}
!446 = !{ptr @.str.186, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2319, i32 16}
!448 = !{ptr @srings_fops, !449, !"srings_fops", i1 false, i1 false}
!449 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 262, i32 1}
!450 = !{ptr @.str.187, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 200, i32 16}
!452 = !{ptr @.str.188, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 201, i32 21}
!454 = !{ptr @.str.189, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 201, i32 28}
!456 = !{ptr @.str.190, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 203, i32 16}
!458 = !{ptr @.str.191, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 205, i32 16}
!460 = !{ptr @.str.192, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 226, i32 16}
!462 = !{ptr @.str.193, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 227, i32 16}
!464 = !{ptr @status_msg_fops, !465, !"status_msg_fops", i1 false, i1 false}
!465 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1206, i32 1}
!466 = !{ptr @.str.194, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1173, i32 17}
!468 = !{ptr @.str.195, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1181, i32 17}
!470 = !{ptr @.str.196, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1186, i32 17}
!472 = !{ptr @.str.197, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1193, i32 16}
!474 = !{ptr @.str.198, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1196, i32 16}
!476 = !{ptr @dbg_sring_index, !477, !"dbg_sring_index", i1 false, i1 false}
!477 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 24, i32 12}
!478 = !{ptr @dbg_status_msg_index, !479, !"dbg_status_msg_index", i1 false, i1 false}
!479 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 22, i32 12}
!480 = !{ptr @rx_buff_mgmt_fops, !481, !"rx_buff_mgmt_fops", i1 false, i1 false}
!481 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1249, i32 1}
!482 = !{ptr @.str.199, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1234, i32 16}
!484 = !{ptr @.str.200, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1235, i32 16}
!486 = !{ptr @.str.201, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1239, i32 14}
!488 = !{ptr @.str.202, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1241, i32 14}
!490 = !{ptr @.str.203, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1244, i32 16}
!492 = !{ptr @.str.204, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1215, i32 16}
!494 = !{ptr @.str.205, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1216, i32 17}
!496 = !{ptr @.str.206, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1219, i32 16}
!498 = !{ptr @fops_tx_latency, !499, !"fops_tx_latency", i1 false, i1 false}
!499 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1837, i32 37}
!500 = !{ptr @__func__.wil_tx_latency_write, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1798, i32 3}
!502 = !{ptr @.str.207, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1805, i32 3}
!504 = !{ptr @.str.208, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1813, i32 2}
!506 = !{ptr @.str.209, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1760, i32 16}
!508 = !{ptr @.str.210, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1770, i32 18}
!510 = !{ptr @fops_link_stats, !511, !"fops_link_stats", i1 false, i1 false}
!511 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2001, i32 37}
!512 = !{ptr @.str.211, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1972, i32 20}
!514 = !{ptr @.str.212, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1979, i32 2}
!516 = !{ptr @__func__.wil_link_stats_write, !515, !"<string literal>", i1 false, i1 false}
!517 = !{ptr @.str.213, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1994, i32 4}
!519 = !{ptr @.str.214, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1933, i32 17}
!521 = !{ptr @.str.215, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1935, i32 16}
!523 = !{ptr @.str.216, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1901, i32 15}
!525 = !{ptr @.str.217, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1905, i32 16}
!527 = !{ptr @.str.218, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1852, i32 30}
!529 = !{ptr @.str.219, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1854, i32 16}
!531 = !{ptr @.str.220, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1863, i32 6}
!533 = !{ptr @fops_link_stats_global, !534, !"fops_link_stats_global", i1 false, i1 false}
!534 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2055, i32 37}
!535 = !{ptr @__func__.wil_link_stats_global_write, !536, !"<string literal>", i1 false, i1 false}
!536 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2042, i32 3}
!537 = !{ptr @.str.221, !538, !"<string literal>", i1 false, i1 false}
!538 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2046, i32 2}
!539 = !{ptr @.str.222, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2050, i32 3}
!541 = !{ptr @.str.223, !542, !"<string literal>", i1 false, i1 false}
!542 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 1878, i32 16}
!543 = !{ptr @fops_rbufcap, !544, !"fops_rbufcap", i1 false, i1 false}
!544 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 767, i32 37}
!545 = !{ptr @__func__.wil_write_file_rbufcap, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 744, i32 3}
!547 = !{ptr @.str.224, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 750, i32 2}
!549 = !{ptr @.str.225, !550, !"<string literal>", i1 false, i1 false}
!550 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 754, i32 3}
!551 = !{ptr @.str.226, !552, !"<string literal>", i1 false, i1 false}
!552 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 760, i32 3}
!553 = !{ptr @.str.227, !554, !"<string literal>", i1 false, i1 false}
!554 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 488, i32 3}
!555 = !{ptr @.str.228, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 489, i32 3}
!557 = !{ptr @.str.229, !558, !"<string literal>", i1 false, i1 false}
!558 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 490, i32 3}
!559 = !{ptr @.str.230, !560, !"<string literal>", i1 false, i1 false}
!560 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 491, i32 3}
!561 = !{ptr @.str.231, !562, !"<string literal>", i1 false, i1 false}
!562 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 492, i32 3}
!563 = !{ptr @.str.232, !564, !"<string literal>", i1 false, i1 false}
!564 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 493, i32 3}
!565 = !{ptr @.str.233, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 494, i32 3}
!567 = !{ptr @isr_off, !568, !"isr_off", i1 false, i1 false}
!568 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 487, i32 29}
!569 = !{ptr @.str.234, !570, !"<string literal>", i1 false, i1 false}
!570 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2417, i32 3}
!571 = !{ptr @.str.235, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2418, i32 3}
!573 = !{ptr @.str.236, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2419, i32 3}
!575 = !{ptr @.str.237, !576, !"<string literal>", i1 false, i1 false}
!576 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2420, i32 3}
!577 = distinct !{null, !578, !"dbg_icr", i1 false, i1 false}
!578 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2416, i32 3}
!579 = !{ptr @.str.238, !580, !"<string literal>", i1 false, i1 false}
!580 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2357, i32 32}
!581 = !{ptr @fops_ioblob, !582, !"fops_ioblob", i1 false, i1 false}
!582 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 677, i32 37}
!583 = distinct !{null, !584, !"__already_done", i1 false, i1 false}
!584 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!585 = !{ptr @.str.239, !584, !"<string literal>", i1 false, i1 false}
!586 = !{ptr @.str.240, !587, !"<string literal>", i1 false, i1 false}
!587 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!588 = !{ptr @.str.241, !589, !"<string literal>", i1 false, i1 false}
!589 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!590 = !{ptr @wil_fops_ulong, !591, !"wil_fops_ulong", i1 false, i1 false}
!591 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 441, i32 1}
!592 = !{ptr @.str.242, !591, !"<string literal>", i1 false, i1 false}
!593 = !{ptr @fops_iomem_x32, !594, !"fops_iomem_x32", i1 false, i1 false}
!594 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 412, i32 1}
!595 = !{ptr @.str.243, !594, !"<string literal>", i1 false, i1 false}
!596 = !{ptr @.str.244, !597, !"<string literal>", i1 false, i1 false}
!597 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2438, i32 2}
!598 = !{ptr @.str.245, !599, !"<string literal>", i1 false, i1 false}
!599 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2439, i32 2}
!600 = !{ptr @.str.246, !601, !"<string literal>", i1 false, i1 false}
!601 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2440, i32 2}
!602 = !{ptr @.str.247, !603, !"<string literal>", i1 false, i1 false}
!603 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2441, i32 2}
!604 = !{ptr @.str.248, !605, !"<string literal>", i1 false, i1 false}
!605 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2442, i32 2}
!606 = !{ptr @.str.249, !607, !"<string literal>", i1 false, i1 false}
!607 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2443, i32 2}
!608 = !{ptr @.str.250, !609, !"<string literal>", i1 false, i1 false}
!609 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2444, i32 2}
!610 = !{ptr @.str.251, !611, !"<string literal>", i1 false, i1 false}
!611 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2445, i32 2}
!612 = !{ptr @.str.252, !613, !"<string literal>", i1 false, i1 false}
!613 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2446, i32 2}
!614 = !{ptr @.str.253, !615, !"<string literal>", i1 false, i1 false}
!615 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2447, i32 2}
!616 = !{ptr @.str.254, !617, !"<string literal>", i1 false, i1 false}
!617 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2448, i32 2}
!618 = !{ptr @.str.255, !619, !"<string literal>", i1 false, i1 false}
!619 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2449, i32 2}
!620 = !{ptr @.str.256, !621, !"<string literal>", i1 false, i1 false}
!621 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2450, i32 2}
!622 = !{ptr @dbg_wil_off, !623, !"dbg_wil_off", i1 false, i1 false}
!623 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2437, i32 29}
!624 = !{ptr @.str.257, !625, !"<string literal>", i1 false, i1 false}
!625 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2455, i32 3}
!626 = !{ptr @.str.258, !627, !"<string literal>", i1 false, i1 false}
!627 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2457, i32 3}
!628 = !{ptr @.str.259, !629, !"<string literal>", i1 false, i1 false}
!629 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2458, i32 3}
!630 = !{ptr @dbg_wil_regs, !631, !"dbg_wil_regs", i1 false, i1 false}
!631 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2454, i32 29}
!632 = !{ptr @.str.260, !633, !"<string literal>", i1 false, i1 false}
!633 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2464, i32 3}
!634 = !{ptr @.str.261, !635, !"<string literal>", i1 false, i1 false}
!635 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2465, i32 3}
!636 = !{ptr @.str.262, !637, !"<string literal>", i1 false, i1 false}
!637 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2466, i32 3}
!638 = !{ptr @.str.263, !639, !"<string literal>", i1 false, i1 false}
!639 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2467, i32 3}
!640 = !{ptr @.str.264, !641, !"<string literal>", i1 false, i1 false}
!641 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2468, i32 3}
!642 = !{ptr @.str.265, !643, !"<string literal>", i1 false, i1 false}
!643 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2469, i32 3}
!644 = !{ptr @.str.266, !645, !"<string literal>", i1 false, i1 false}
!645 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2470, i32 3}
!646 = !{ptr @dbg_statics, !647, !"dbg_statics", i1 false, i1 false}
!647 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 2463, i32 29}
!648 = !{ptr @.str.267, !649, !"<string literal>", i1 false, i1 false}
!649 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 518, i32 40}
!650 = !{ptr @.str.268, !651, !"<string literal>", i1 false, i1 false}
!651 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 509, i32 3}
!652 = !{ptr @.str.269, !653, !"<string literal>", i1 false, i1 false}
!653 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 510, i32 3}
!654 = !{ptr @.str.270, !655, !"<string literal>", i1 false, i1 false}
!655 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 511, i32 3}
!656 = !{ptr @pseudo_isr_off, !657, !"pseudo_isr_off", i1 false, i1 false}
!657 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 508, i32 29}
!658 = !{ptr @.str.271, !659, !"<string literal>", i1 false, i1 false}
!659 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 568, i32 25}
!660 = !{ptr @.str.272, !661, !"<string literal>", i1 false, i1 false}
!661 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 525, i32 3}
!662 = !{ptr @.str.273, !663, !"<string literal>", i1 false, i1 false}
!663 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 526, i32 3}
!664 = !{ptr @.str.274, !665, !"<string literal>", i1 false, i1 false}
!665 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 527, i32 3}
!666 = !{ptr @lgc_itr_cnt_off, !667, !"lgc_itr_cnt_off", i1 false, i1 false}
!667 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 524, i32 29}
!668 = !{ptr @.str.275, !669, !"<string literal>", i1 false, i1 false}
!669 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 538, i32 3}
!670 = !{ptr @.str.276, !671, !"<string literal>", i1 false, i1 false}
!671 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 540, i32 3}
!672 = !{ptr @.str.277, !673, !"<string literal>", i1 false, i1 false}
!673 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 542, i32 3}
!674 = !{ptr @tx_itr_cnt_off, !675, !"tx_itr_cnt_off", i1 false, i1 false}
!675 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 531, i32 29}
!676 = !{ptr @rx_itr_cnt_off, !677, !"rx_itr_cnt_off", i1 false, i1 false}
!677 = !{!"../drivers/net/wireless/ath/wil6210/debugfs.c", i32 547, i32 29}
!678 = !{i32 1, !"wchar_size", i32 2}
!679 = !{i32 1, !"min_enum_size", i32 4}
!680 = !{i32 8, !"branch-target-enforcement", i32 0}
!681 = !{i32 8, !"sign-return-address", i32 0}
!682 = !{i32 8, !"sign-return-address-all", i32 0}
!683 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!684 = !{i32 7, !"uwtable", i32 1}
!685 = !{i32 7, !"frame-pointer", i32 2}
!686 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!687 = !{!"auto-init"}
!688 = !{i8 0, i8 2}
!689 = !{i64 5806762}
!690 = !{i64 2157729966}
!691 = !{i64 2148404276, i64 2148404308, i64 2148404337, i64 2148404371, i64 2148404402, i64 2148404425}
!692 = !{!"branch_weights", i32 1, i32 2000}
!693 = !{!"branch_weights", i32 2000, i32 1}
!694 = !{i64 2157743236}
!695 = !{i64 2149016123, i64 2149016128, i64 2149016141, i64 2149016185, i64 2149016219, i64 2149016240}
!696 = !{i64 2148662646}
!697 = !{i64 909514, i64 909531, i64 909555, i64 909581, i64 909599}
!698 = !{i64 2148663016}
!699 = !{i64 2148249170, i64 2148249450, i64 2148249784, i64 2148250118}
!700 = !{i64 2152479530, i64 2152479555}
!701 = !{i64 2157739562}
!702 = !{i64 5806344}
!703 = !{i64 2157739044}
