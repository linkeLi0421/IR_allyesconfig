; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/wil6210/txrx.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/wil6210/txrx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.anon.154 = type { %struct.wmi_cmd_hdr, %struct.wmi_vring_cfg_done_event }
%struct.wmi_cmd_hdr = type { i8, i8, i16, i32 }
%struct.wmi_vring_cfg_done_event = type { i8, i8, [2 x i8], i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.125 }
%union.anon.125 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.anon.158 = type { %struct.wmi_cmd_hdr, %struct.wmi_vring_cfg_done_event }
%struct.anon.159 = type { %struct.wmi_cmd_hdr, %struct.wmi_vring_cfg_done_event }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.152, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.152 = type { ptr }
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
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.150, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.anon.150 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.151 }
%union.anon.151 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.wil_p2p_info = type { %struct.ieee80211_channel, i8, i64, ptr, i32, %struct.timer_list, %struct.work_struct, %struct.work_struct }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.wil_eapol_key = type <{ i8, i16, i16, [8 x i8], [32 x i8], [16 x i8], [8 x i8], [8 x i8] }>
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.149, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.149 = type { i64, i64, i8 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%union.wil_ring_desc = type { %union.wil_tx_desc }
%union.wil_tx_desc = type { %struct.vring_tx_desc }
%struct.vring_tx_desc = type { %struct.vring_tx_mac, %struct.vring_tx_dma }
%struct.vring_tx_mac = type { [3 x i32], i32 }
%struct.vring_tx_dma = type { i32, %struct.wil_ring_dma_addr, i8, i8, i8, i8, i16 }
%struct.wil_ring_dma_addr = type <{ i32, i16 }>
%struct.vring_rx_desc = type { %struct.vring_rx_mac, %struct.vring_rx_dma }
%struct.vring_rx_mac = type { i32, i32, i16, i16, i32 }
%struct.vring_rx_dma = type { i32, %struct.wil_ring_dma_addr, i8, i8, i8, i8, i16 }
%struct.wil_ctx = type { ptr, i8, i8 }
%struct.ieee80211_hdr_3addr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16 }
%struct.ieee80211_radiotap_header = type { i8, i8, i16, i32, [0 x i32] }
%struct.wil6210_rtap = type <{ %struct.ieee80211_radiotap_header, i8, i8, i16, i16, i8, i8, i8, i8 }>
%struct.page = type { i32, %union.anon.2, %union.anon.123, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.123 = type { %struct.atomic_t }
%struct.wmi_bcast_vring_cfg_cmd = type { i32, %struct.wmi_bcast_vring_cfg }
%struct.wmi_bcast_vring_cfg = type { %struct.wmi_sw_ring_cfg, i8, i8, i8, i8 }
%struct.wmi_sw_ring_cfg = type <{ i64, i16, i16 }>
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.vlan_ethhdr = type { %union.anon.155, i16, i16, i16 }
%union.anon.155 = type { %struct.anon.156 }
%struct.anon.156 = type { [6 x i8], [6 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.wmi_vring_cfg_cmd = type { i32, %struct.wmi_vring_cfg }
%struct.wmi_vring_cfg = type { %struct.wmi_sw_ring_cfg, i8, i8, i8, i8, i8, i8, i8, i8, %struct.wmi_vring_cfg_schd, i8, i8, i8, i8 }
%struct.wmi_vring_cfg_schd = type { i16, i16 }

@__param_str_rx_align_2 = internal constant [19 x i8] c"wil6210.rx_align_2\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@rx_align_2 = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__param_rx_align_2 = internal constant %struct.kernel_param { ptr @__param_str_rx_align_2, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.124 { ptr @rx_align_2 } }, section "__param", align 4
@__UNIQUE_ID_rx_align_2type516 = internal constant [33 x i8] c"wil6210.parmtype=rx_align_2:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_rx_align_2517 = internal constant [65 x i8] c"wil6210.parm=rx_align_2: align Rx buffers on 4*n+2, default - no\00", section ".modinfo", align 1
@__param_str_rx_large_buf = internal constant [21 x i8] c"wil6210.rx_large_buf\00", align 1
@rx_large_buf = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__param_rx_large_buf = internal constant %struct.kernel_param { ptr @__param_str_rx_large_buf, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.124 { ptr @rx_large_buf } }, section "__param", align 4
@__UNIQUE_ID_rx_large_buftype518 = internal constant [35 x i8] c"wil6210.parmtype=rx_large_buf:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_rx_large_buf519 = internal constant [65 x i8] c"wil6210.parm=rx_large_buf: allocate 8KB RX buffers, default - no\00", section ".modinfo", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@wil_is_tx_idle.__UNIQUE_ID_ddebug520 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wil6210\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wil_is_tx_idle\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/wireless/ath/wil6210/txrx.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DBG[ PM ]TO waiting for idle tx\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tx vring is not empty -> NAPI\0A\00", [33 x i8] zeroinitializer }, align 32
@wil_enable_tx_key_worker.__UNIQUE_ID_ddebug542 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 -54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wil_enable_tx_key_worker\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DBG[MISC]Invalid rekey state = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: Invalid cid = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@wil_enable_tx_key_worker.__UNIQUE_ID_ddebug543 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.8, i8 0, i8 -51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"DBG[MISC]Apply PTK key after eapol was sent out\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Apply PTK key failed %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Unknown rekey state = %d\00", [35 x i8] zeroinitializer }, align 32
@__func__.wil_tx_complete_handle_eapol = private unnamed_addr constant [29 x i8] c"wil_tx_complete_handle_eapol\00", align 1
@wil_tx_complete_handle_eapol.__UNIQUE_ID_ddebug544 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.wil_tx_complete_handle_eapol, ptr @.str.2, ptr @.str.11, i8 0, i8 -39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"DBG[MISC]queue_work of enable_tx_key_worker -> %d\0A\00", [45 x i8] zeroinitializer }, align 32
@wil_netif_rx.__UNIQUE_ID_ddebug545 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 -28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wil_netif_rx\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DBG[TXRX]Rx drop %d bytes\0A\00", [37 x i8] zeroinitializer }, align 32
@wil_netif_rx.__UNIQUE_ID_ddebug546 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.14, i8 0, i8 -20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DBG[TXRX]Rx -> Tx %d bytes\0A\00", [36 x i8] zeroinitializer }, align 32
@wil_netif_rx_any.__UNIQUE_ID_ddebug547 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.13, i8 0, i8 -10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wil_netif_rx_any\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Rx IRQ while Rx not yet initialized\0A\00", [55 x i8] zeroinitializer }, align 32
@__func__.wil_rx_handle = private unnamed_addr constant [14 x i8] c"wil_rx_handle\00", align 1
@wil_rx_handle.__UNIQUE_ID_ddebug548 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.wil_rx_handle, ptr @.str.2, ptr @.str.17, i8 0, i8 -2, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DBG[TXRX]rx_handle\0A\00", [44 x i8] zeroinitializer }, align 32
@mtu_max = external dso_local local_unnamed_addr global i32, align 4
@__const.wil_vring_init_bcast.reply = private unnamed_addr constant %struct.anon.154 { %struct.wmi_cmd_hdr zeroinitializer, %struct.wmi_vring_cfg_done_event { i8 0, i8 1, [2 x i8] zeroinitializer, i32 0 } }, align 1
@wil_vring_init_bcast.__UNIQUE_ID_ddebug553 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 1, i8 80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wil_vring_init_bcast\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"DBG[MISC]vring_init_bcast: max_mpdu_size %d\0A\00", [51 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Tx ring [%d] already allocated\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Tx config failed, status 0x%02x\0A\00", [59 x i8] zeroinitializer }, align 32
@wil_start_xmit.pr_once_fw = internal global { i1, [31 x i8] } zeroinitializer, align 32
@wil_start_xmit.__UNIQUE_ID_ddebug586 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 2, i8 68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wil_start_xmit\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DBG[TXRX]start_xmit\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: FW not ready\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VIF not connected, packet dropped\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Xmit in monitor mode not supported\0A\00", [56 x i8] zeroinitializer }, align 32
@wil_start_xmit.__UNIQUE_ID_ddebug587 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.27, i8 2, i8 78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DBG[TXRX]No Tx RING found for %pM\0A\00", [61 x i8] zeroinitializer }, align 32
@drop_if_ring_full = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@wil_tx_latency_calc.__UNIQUE_ID_ddebug590 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 2, i8 89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wil_tx_latency_calc\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DBG[TXRX]skb time %dus => bin %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Tx irq[%d]: vring not initialized\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.wil_tx_complete = private unnamed_addr constant [16 x i8] c"wil_tx_complete\00", align 1
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Tx irq[%d]: vring disabled\0A\00", [32 x i8] zeroinitializer }, align 32
@wil_tx_complete.__UNIQUE_ID_ddebug591 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.wil_tx_complete, ptr @.str.2, ptr @.str.32, i8 2, i8 99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DBG[TXRX]tx_complete: (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@wil_tx_complete.__UNIQUE_ID_ddebug592 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.wil_tx_complete, ptr @.str.2, ptr @.str.33, i8 2, i8 108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"DBG[TXRX]TxC[%2d][%3d] : %d bytes, status 0x%02x err 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@wil_tx_complete.__UNIQUE_ID_ddebug593 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.wil_tx_complete, ptr @.str.2, ptr @.str.34, i8 2, i8 109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DBG[TXRX]TxCD \00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@wil_tx_complete.__UNIQUE_ID_ddebug594 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.wil_tx_complete, ptr @.str.2, ptr @.str.36, i8 2, i8 121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DBG[TXRX]Ring[%2d] idle %d -> %d\0A\00", [62 x i8] zeroinitializer }, align 32
@wil_skb_is_eap_4.__UNIQUE_ID_ddebug540 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 -58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wil_skb_is_eap_4\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DBG[MISC]EAPOL key message 2\0A\00", [34 x i8] zeroinitializer }, align 32
@wil_skb_is_eap_4.__UNIQUE_ID_ddebug541 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.39, i8 0, i8 -57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DBG[MISC]EAPOL key message 4\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: mac header was not set\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.wil_is_ptk_eapol_key = private unnamed_addr constant [21 x i8] c"wil_is_ptk_eapol_key\00", align 1
@wil_skb_is_eap_3.__UNIQUE_ID_ddebug538 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 0, i8 -64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wil_skb_is_eap_3\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DBG[MISC]EAPOL key message 3\0A\00", [34 x i8] zeroinitializer }, align 32
@wil_skb_is_eap_3.__UNIQUE_ID_ddebug539 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.43, i8 0, i8 -63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DBG[MISC]EAPOL key message 1\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: No Rx skb at [%d]\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.wil_vring_reap_rx = private unnamed_addr constant [18 x i8] c"wil_vring_reap_rx\00", align 1
@wil_vring_reap_rx.__UNIQUE_ID_ddebug528 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.wil_vring_reap_rx, ptr @.str.2, ptr @.str.45, i8 0, i8 121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DBG[TXRX]Rx[%3d] : %d bytes\0A\00", [35 x i8] zeroinitializer }, align 32
@wil_vring_reap_rx.__UNIQUE_ID_ddebug529 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.wil_vring_reap_rx, ptr @.str.2, ptr @.str.46, i8 0, i8 121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DBG[TXRX]RxD \00", [18 x i8] zeroinitializer }, align 32
@wil_vring_reap_rx.__UNIQUE_ID_ddebug530 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.wil_vring_reap_rx, ptr @.str.2, ptr @.str.47, i8 0, i8 123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"DBG[TXRX]skipped RX descriptor with invalid mid %d\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Rx size too large: %d bytes!\0A\00", [62 x i8] zeroinitializer }, align 32
@wil_vring_reap_rx.__UNIQUE_ID_ddebug531 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.wil_vring_reap_rx, ptr @.str.2, ptr @.str.49, i8 0, i8 127, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DBG[TXRX]Rx \00", [19 x i8] zeroinitializer }, align 32
@wil_vring_reap_rx.__UNIQUE_ID_ddebug532 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.wil_vring_reap_rx, ptr @.str.2, ptr @.str.50, i8 0, i8 -121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"DBG[TXRX]Non-data frame FC[7:0] 0x%02x MID %d CID %d TID %d Seq 0x%03x\0A\00", [56 x i8] zeroinitializer }, align 32
@wil_vring_reap_rx.__UNIQUE_ID_ddebug533 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.wil_vring_reap_rx, ptr @.str.2, ptr @.str.51, i8 0, i8 -119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"DBG[TXRX]BAR: MID %d CID %d TID %d Seq 0x%03x\0A\00", [49 x i8] zeroinitializer }, align 32
@wil_vring_reap_rx.__UNIQUE_ID_ddebug534 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.wil_vring_reap_rx, ptr @.str.2, ptr @.str.52, i8 0, i8 -117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"DBG[TXRX]Unhandled non-data frame FC[7:0] 0x%02x MID %d CID %d TID %d Seq 0x%03x\0A\00", [46 x i8] zeroinitializer }, align 32
@wil_vring_reap_rx.__UNIQUE_ID_ddebug535 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.wil_vring_reap_rx, ptr @.str.2, ptr @.str.46, i8 0, i8 -117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@wil_vring_reap_rx.__UNIQUE_ID_ddebug536 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.wil_vring_reap_rx, ptr @.str.2, ptr @.str.49, i8 0, i8 -116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__tracepoint_wil6210_rx = external dso_local global %struct.tracepoint, align 4
@.str.53 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/wireless/ath/wil6210/trace.h\00", [55 x i8] zeroinitializer }, align 32
@trace_wil6210_rx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.54 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Short data frame, len = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.wil_rx_get_cid_by_skb = private unnamed_addr constant [22 x i8] c"wil_rx_get_cid_by_skb\00", align 1
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Short frame, len = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"%s: Could not find cid for frame with transmit addr = %pM, iftype = %d, frametype = %d, len = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Unable to expand headroom to %d\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.wil_rx_add_radiotap_header = private unnamed_addr constant [27 x i8] c"wil_rx_add_radiotap_header\00", align 1
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Error %d in rx refill[%d]\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.wil_rx_refill = private unnamed_addr constant [14 x i8] c"wil_rx_refill\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@wil_vring_alloc.__UNIQUE_ID_ddebug521 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.2, ptr @.str.64, i8 0, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wil_vring_alloc\00", [16 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DBG[MISC]vring_alloc:\0A\00", [41 x i8] zeroinitializer }, align 32
@wil_vring_alloc.__UNIQUE_ID_ddebug523 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.2, ptr @.str.65, i8 0, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DBG[MISC]vring[%d] 0x%p:%pad 0x%p\0A\00", [61 x i8] zeroinitializer }, align 32
@wil_vring_free.__UNIQUE_ID_ddebug524 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.2, ptr @.str.67, i8 0, i8 50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wil_vring_free\00", [17 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"DBG[MISC]free Tx vring %d [%d] 0x%p:%pad 0x%p\0A\00", [49 x i8] zeroinitializer }, align 32
@wil_vring_free.__UNIQUE_ID_ddebug525 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.2, ptr @.str.68, i8 0, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"DBG[MISC]free Rx vring [%d] 0x%p:%pad 0x%p\0A\00", [52 x i8] zeroinitializer }, align 32
@wil_vring_free.__UNIQUE_ID_ddebug526 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.2, ptr @.str.69, i8 0, i8 55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"DBG[TXRX]ctx(%d) was already completed\0A\00", [56 x i8] zeroinitializer }, align 32
@__wil_update_net_queues.__UNIQUE_ID_ddebug581 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.71, i8 2, i8 48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__wil_update_net_queues\00", [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"DBG[TXRX]vring %d, mid %d, check_stop=%d, stopped=%d\00", [43 x i8] zeroinitializer }, align 32
@__wil_update_net_queues.__UNIQUE_ID_ddebug582 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.72, i8 2, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"DBG[TXRX]check_stop=%d, mid=%d, stopped=%d\00", [53 x i8] zeroinitializer }, align 32
@__wil_update_net_queues.__UNIQUE_ID_ddebug583 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.73, i8 2, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DBG[TXRX]netif_tx_stop called\0A\00", [33 x i8] zeroinitializer }, align 32
@__wil_update_net_queues.__UNIQUE_ID_ddebug584 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.74, i8 2, i8 58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DBG[TXRX]ring %d full, can't wake\0A\00", [61 x i8] zeroinitializer }, align 32
@__wil_update_net_queues.__UNIQUE_ID_ddebug585 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.75, i8 2, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DBG[TXRX]calling netif_tx_wake\0A\00", [32 x i8] zeroinitializer }, align 32
@wil_find_tx_ring_sta.__UNIQUE_ID_ddebug556 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.2, ptr @.str.77, i8 1, i8 111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wil_find_tx_ring_sta\00", [43 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DBG[TXRX]Tx -> ring %d\0A\00", [40 x i8] zeroinitializer }, align 32
@wil_find_tx_ring_sta.__UNIQUE_ID_ddebug557 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.2, ptr @.str.78, i8 1, i8 112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DBG[TXRX]Tx while no rings active?\0A\00", [60 x i8] zeroinitializer }, align 32
@wil_find_tx_bcast_2.__UNIQUE_ID_ddebug558 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.80, i8 1, i8 -117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wil_find_tx_bcast_2\00", [44 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"DBG[TXRX]Tx while no vrings active?\0A\00", [59 x i8] zeroinitializer }, align 32
@wil_find_tx_bcast_2.__UNIQUE_ID_ddebug559 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.81, i8 1, i8 -116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DBG[TXRX]BCAST -> ring %d\0A\00", [37 x i8] zeroinitializer }, align 32
@wil_find_tx_bcast_2.__UNIQUE_ID_ddebug560 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.82, i8 1, i8 -110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DBG[TXRX]BCAST DUP -> ring %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: skb_copy failed\0A\00", [43 x i8] zeroinitializer }, align 32
@wil_find_tx_ucast.__UNIQUE_ID_ddebug554 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.2, ptr @.str.85, i8 1, i8 99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wil_find_tx_ucast\00", [46 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"DBG[TXRX]find_tx_ucast: (%pM) -> [%d]\0A\00", [57 x i8] zeroinitializer }, align 32
@wil_find_tx_ucast.__UNIQUE_ID_ddebug555 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.2, ptr @.str.86, i8 1, i8 101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"DBG[TXRX]find_tx_ucast: vring[%d] not valid\0A\00", [51 x i8] zeroinitializer }, align 32
@wil_tx_ring.__UNIQUE_ID_ddebug580 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.2, ptr @.str.88, i8 2, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wil_tx_ring\00", [20 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"DBG[TXRX]suspend/resume in progress. drop packet\0A\00", [46 x i8] zeroinitializer }, align 32
@__wil_tx_ring.__UNIQUE_ID_ddebug571 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.90, i8 1, i8 -1, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"__wil_tx_ring\00", [18 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"DBG[TXRX]tx_ring: %d bytes to ring %d, nr_frags %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: Tx ring[%2d] full. No space for %d fragments\0A\00", [46 x i8] zeroinitializer }, align 32
@__wil_tx_ring.__UNIQUE_ID_ddebug572 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.92, i8 2, i8 3, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"DBG[TXRX]Tx[%2d] skb %d bytes 0x%p -> %pad\0A\00", [52 x i8] zeroinitializer }, align 32
@__wil_tx_ring.__UNIQUE_ID_ddebug573 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.93, i8 2, i8 4, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DBG[TXRX]Tx \00", [19 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: Tx[%2d] Failed to set cksum, drop packet\0A\00", [50 x i8] zeroinitializer }, align 32
@__wil_tx_ring.__UNIQUE_ID_ddebug574 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.95, i8 2, i8 11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DBG[TXRX]Tx[%2d] desc[%4d]\0A\00", [36 x i8] zeroinitializer }, align 32
@__wil_tx_ring.__UNIQUE_ID_ddebug575 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.96, i8 2, i8 12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DBG[TXRX]TxD \00", [18 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Tx[%2d] failed to map fragment\0A\00", [60 x i8] zeroinitializer }, align 32
@__wil_tx_ring.__UNIQUE_ID_ddebug576 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.95, i8 2, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__wil_tx_ring.__UNIQUE_ID_ddebug577 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.96, i8 2, i8 18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__wil_tx_ring.__UNIQUE_ID_ddebug578 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.98, i8 2, i8 22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DBG[TXRX]Ring[%2d] not idle %d -> %d\0A\00", [58 x i8] zeroinitializer }, align 32
@__wil_tx_ring.__UNIQUE_ID_ddebug579 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.99, i8 2, i8 25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DBG[TXRX]Tx[%2d] swhead %d -> %d\0A\00", [62 x i8] zeroinitializer }, align 32
@__tracepoint_wil6210_tx = external dso_local global %struct.tracepoint, align 4
@trace_wil6210_tx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_wil6210_tx_done = external dso_local global %struct.tracepoint, align 4
@trace_wil6210_tx_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__wil_tx_vring_tso.__UNIQUE_ID_ddebug561 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.2, ptr @.str.101, i8 1, i8 -71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__wil_tx_vring_tso\00", [45 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"DBG[TXRX]tx_vring_tso: %d bytes to vring %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: TSO: Tx ring[%2d] full. No space for %d fragments\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: TSO: Skb head DMA map error\0A\00", [63 x i8] zeroinitializer }, align 32
@__wil_tx_vring_tso.__UNIQUE_ID_ddebug562 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.2, ptr @.str.104, i8 1, i8 -51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"DBG[TXRX]TSO: process skb head, len %u\0A\00", [56 x i8] zeroinitializer }, align 32
@__wil_tx_vring_tso.__UNIQUE_ID_ddebug563 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.2, ptr @.str.105, i8 1, i8 -50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DBG[TXRX]TSO: frag[%d]: len %u\0A\00", [32 x i8] zeroinitializer }, align 32
@__wil_tx_vring_tso.__UNIQUE_ID_ddebug564 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.2, ptr @.str.106, i8 1, i8 -49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"DBG[TXRX]TSO: len %d, rem_data %d, descs_used %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: TSO: ring overflow\0A\00", [40 x i8] zeroinitializer }, align 32
@__wil_tx_vring_tso.__UNIQUE_ID_ddebug567 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.2, ptr @.str.108, i8 1, i8 -46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DBG[TXRX]TSO: lenmss %d, i %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: TSO: DMA map page error\0A\00", [35 x i8] zeroinitializer }, align 32
@__wil_tx_vring_tso.__UNIQUE_ID_ddebug568 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.2, ptr @.str.110, i8 1, i8 -34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"DBG[TXRX]TSO: len %d, rem_data %d, descs_used %d, sg_desc_cnt %d,\0A\00", [61 x i8] zeroinitializer }, align 32
@__wil_tx_vring_tso.__UNIQUE_ID_ddebug569 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.2, ptr @.str.98, i8 1, i8 -17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__wil_tx_vring_tso.__UNIQUE_ID_ddebug570 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.2, ptr @.str.111, i8 1, i8 -14, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DBG[TXRX]TSO: Tx swhead %d -> %d\0A\00", [62 x i8] zeroinitializer }, align 32
@__const.wil_vring_init_tx.reply = private unnamed_addr constant %struct.anon.158 { %struct.wmi_cmd_hdr zeroinitializer, %struct.wmi_vring_cfg_done_event { i8 0, i8 1, [2 x i8] zeroinitializer, i32 0 } }, align 1
@wil_vring_init_tx.__UNIQUE_ID_ddebug551 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.112, ptr @.str.2, ptr @.str.113, i8 1, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wil_vring_init_tx\00", [46 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"DBG[MISC]vring_init_tx: max_mpdu_size %d\0A\00", [54 x i8] zeroinitializer }, align 32
@agg_wsize = external dso_local local_unnamed_addr global i32, align 4
@__const.wil_tx_vring_modify.reply = private unnamed_addr constant %struct.anon.159 { %struct.wmi_cmd_hdr zeroinitializer, %struct.wmi_vring_cfg_done_event { i8 0, i8 1, [2 x i8] zeroinitializer, i32 0 } }, align 1
@wil_tx_vring_modify.__UNIQUE_ID_ddebug552 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.114, ptr @.str.2, ptr @.str.115, i8 1, i8 61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wil_tx_vring_modify\00", [44 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"DBG[MISC]vring_modify: ring %d cid %d tid %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Tx ring [%d] not allocated\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: ring info does not match cid=%u tid=%u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Tx modify failed, status 0x%02x\0A\00", [59 x i8] zeroinitializer }, align 32
@wil_rx_init.__UNIQUE_ID_ddebug549 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.119, ptr @.str.2, ptr @.str.120, i8 1, i8 7, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wil_rx_init\00", [20 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DBG[MISC]rx_init\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Rx ring already allocated\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Override RX buffer to mtu_max(%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.wil_rx_buf_len_init = private unnamed_addr constant [20 x i8] c"wil_rx_buf_len_init\00", align 1
@.str.123 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: Key missing. CID %d TID %d MCast %d KEY_ID %d\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.wil_rx_crypto_check = private unnamed_addr constant [20 x i8] c"wil_rx_crypto_check\00", align 1
@.str.124 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%s: Replay attack. CID %d TID %d MCast %d KEY_ID %d PN %6phN last %6phN\0A\00", [55 x i8] zeroinitializer }, align 32
@wil_rx_error_check.__UNIQUE_ID_ddebug537 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.125, ptr @.str.2, ptr @.str.126, i8 0, i8 -82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wil_rx_error_check\00", [45 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"DBG[TXRX]MIC error, dropping packet\0A\00", [59 x i8] zeroinitializer }, align 32
@wil_rx_fini.__UNIQUE_ID_ddebug550 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.127, ptr @.str.2, ptr @.str.128, i8 1, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.127 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wil_rx_fini\00", [20 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DBG[MISC]rx_fini\0A\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 254]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 9]
@__sancov_gen_cov_switch_values.132 = internal global [5 x i64] [i64 3, i64 16, i64 2048, i64 2054, i64 34525]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967284]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 16]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 254]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@___asan_gen_.140 = private unnamed_addr constant [11 x i8] c"rx_align_2\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 23, i32 6 }
@___asan_gen_.143 = private unnamed_addr constant [13 x i8] c"rx_large_buf\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 27, i32 6 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 88, i32 6 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 94, i32 11 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 810, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 818, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 823, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 831, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 860, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 867, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 914, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 947, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 984, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1013, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1016, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1344, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1349, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1376, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant [26 x i8] c"wil_start_xmit.pr_once_fw\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2320, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2323, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2330, i32 9 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2334, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2362, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant [18 x i8] c"drop_if_ring_full\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 32, i32 6 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2405, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2435, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2440, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2444, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2480, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2484, i32 4 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2534, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 792, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 796, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 729, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 770, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 774, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 474, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 485, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 486, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 493, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 500, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 509, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 541, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 546, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 554, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant [44 x i8] c"../drivers/net/wireless/ath/wil6210/trace.h\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 149, i32 1 }
@___asan_gen_.316 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 108, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 386, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 394, i32 4 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 425, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 328, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 619, i32 4 }
@___asan_gen_.337 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 326, i32 6 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 116, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 165, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 199, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 203, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 220, i32 5 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2240, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2244, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2260, i32 4 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2280, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2288, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1469, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1474, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1582, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1587, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1608, i32 4 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1614, i32 4 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1422, i32 4 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1427, i32 5 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2198, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2046, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2053, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2062, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2064, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2080, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2094, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2095, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2102, i32 4 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2135, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2148, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1766, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1778, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1824, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1843, i32 4 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1848, i32 4 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1852, i32 4 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1857, i32 5 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1864, i32 4 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1882, i32 5 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1910, i32 4 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1995, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1175, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1270, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1275, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1281, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1295, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1054, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1057, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1044, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 672, i32 3 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 679, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 697, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.535 = private constant [43 x i8] c"../drivers/net/wireless/ath/wil6210/txrx.c\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1088, i32 2 }
@llvm.compiler.used = appending global [139 x ptr] [ptr @__UNIQUE_ID_rx_align_2517, ptr @__UNIQUE_ID_rx_align_2type516, ptr @__UNIQUE_ID_rx_large_buf519, ptr @__UNIQUE_ID_rx_large_buftype518, ptr @__param_rx_align_2, ptr @__param_rx_large_buf, ptr @rx_align_2, ptr @rx_large_buf, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @wil_start_xmit.pr_once_fw, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @drop_if_ring_full, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128], section "llvm.metadata"
@0 = internal global [133 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_align_2 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_large_buf to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_start_xmit.pr_once_fw to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drop_if_ring_full to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @wil_is_tx_idle(ptr noundef %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %use_enhanced_dma_hw.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 67
  %0 = ptrtoint ptr %use_enhanced_dma_hw.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_enhanced_dma_hw.i, align 4, !range !355
  %2 = zext i8 %1 to i32
  %status = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 6
  %state.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 53, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %cmp73 = phi i1 [ true, %entry ], [ %cmp, %for.inc.for.body_crit_edge ]
  %i.069 = phi i32 [ %2, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %lock = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 58, i32 %i.069, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock) #15
  %va = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 57, i32 %i.069, i32 1
  %3 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %va, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %enabled = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 58, i32 %i.069, i32 1
  %5 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %lor.lhs.false.for.inc_crit_edge, label %if.end

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %7, 20
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %status, align 4
  %10 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not = icmp eq i32 %10, 0
  br i1 %tobool8.not, label %if.end.for.inc_crit_edge, label %while.cond.preheader

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

while.cond.preheader:                             ; preds = %if.end
  %swhead.i = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 57, i32 %i.069, i32 4
  %swtail.i = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 57, i32 %i.069, i32 3
  br label %while.cond

while.cond:                                       ; preds = %lor.lhs.false33.while.cond_crit_edge, %while.cond.preheader
  %11 = ptrtoint ptr %swhead.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %swhead.i, align 4
  %13 = ptrtoint ptr %swtail.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %swtail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.i.not = icmp eq i32 %12, %14
  br i1 %cmp.i.not, label %while.cond.for.inc_crit_edge, label %while.body

while.cond.for.inc_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

while.body:                                       ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp12 = icmp slt i32 %sub, 0
  br i1 %cmp12, label %do.body15, label %if.end28

do.body15:                                        ; preds = %while.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_is_tx_idle.__UNIQUE_ID_ddebug520, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_is_tx_idle, %if.then21)) #15
          to label %cleanup [label %if.then21], !srcloc !356

if.then21:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %16 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_is_tx_idle.__UNIQUE_ID_ddebug520, ptr noundef %17, ptr noundef nonnull @.str.3) #15
  br label %cleanup

if.end28:                                         ; preds = %while.body
  tail call void (ptr, ptr, ...) @wil_dbg_ratelimited(ptr noundef %wil, ptr noundef nonnull @.str.4) #15
  tail call void @_raw_spin_unlock(ptr noundef %lock) #15
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %state.i, align 4
  %and1.i1.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i1.i)
  %tobool.not2.i = icmp eq i32 %and1.i1.i, 0
  br i1 %tobool.not2.i, label %if.end28.napi_synchronize.exit_crit_edge, label %if.end28.while.body.i_crit_edge

if.end28.while.body.i_crit_edge:                  ; preds = %if.end28
  br label %while.body.i

if.end28.napi_synchronize.exit_crit_edge:         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %napi_synchronize.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end28.while.body.i_crit_edge
  tail call void @msleep(i32 noundef 1) #15
  %20 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %21, 1
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %while.body.i.napi_synchronize.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

while.body.i.napi_synchronize.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %napi_synchronize.exit

napi_synchronize.exit:                            ; preds = %while.body.i.napi_synchronize.exit_crit_edge, %if.end28.napi_synchronize.exit_crit_edge
  tail call void @msleep(i32 noundef 20) #15
  tail call void @_raw_spin_lock(ptr noundef %lock) #15
  %22 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %va, align 4
  %tobool32.not = icmp eq ptr %23, null
  br i1 %tobool32.not, label %napi_synchronize.exit.for.inc_crit_edge, label %lor.lhs.false33

napi_synchronize.exit.for.inc_crit_edge:          ; preds = %napi_synchronize.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

lor.lhs.false33:                                  ; preds = %napi_synchronize.exit
  %24 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %enabled, align 4
  %tobool35.not = icmp eq i32 %25, 0
  br i1 %tobool35.not, label %lor.lhs.false33.for.inc_crit_edge, label %lor.lhs.false33.while.cond_crit_edge

lor.lhs.false33.while.cond_crit_edge:             ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond

lor.lhs.false33.for.inc_crit_edge:                ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

cleanup:                                          ; preds = %if.then21, %do.body15
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.3) #15
  tail call void @_raw_spin_unlock(ptr noundef %lock) #15
  br label %cleanup42

for.inc:                                          ; preds = %lor.lhs.false33.for.inc_crit_edge, %napi_synchronize.exit.for.inc_crit_edge, %while.cond.for.inc_crit_edge, %if.end.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #15
  %inc = add nuw nsw i32 %i.069, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %i.069)
  %cmp = icmp ult i32 %i.069, 23
  %exitcond.not = icmp eq i32 %inc, 24
  br i1 %exitcond.not, label %for.inc.cleanup42_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.cleanup42_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup42

cleanup42:                                        ; preds = %for.inc.cleanup42_crit_edge, %cleanup
  %cmp68 = phi i1 [ %cmp73, %cleanup ], [ %cmp, %for.inc.cleanup42_crit_edge ]
  %26 = xor i1 %cmp68, true
  ret i1 %26
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
declare dso_local void @wil_dbg_ratelimited(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reverse_memcmp(ptr nocapture noundef readonly %cs, ptr nocapture noundef readonly %ct, i32 noundef %count) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp.not14 = icmp eq i32 %count, 0
  br i1 %cmp.not14, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %add.ptr2 = getelementptr i8, ptr %ct, i32 %count
  %add.ptr = getelementptr i8, ptr %cs, i32 %count
  br label %for.body

for.cond:                                         ; preds = %for.body
  %dec = add i32 %count.addr.015, -1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %add.ptr.pn.pn = phi ptr [ %su1.017, %for.cond.for.body_crit_edge ], [ %add.ptr, %for.body.preheader ]
  %add.ptr2.pn.pn = phi ptr [ %su2.016, %for.cond.for.body_crit_edge ], [ %add.ptr2, %for.body.preheader ]
  %count.addr.015 = phi i32 [ %dec, %for.cond.for.body_crit_edge ], [ %count, %for.body.preheader ]
  %su2.016 = getelementptr i8, ptr %add.ptr2.pn.pn, i32 -1
  %su1.017 = getelementptr i8, ptr %add.ptr.pn.pn, i32 -1
  %0 = ptrtoint ptr %su1.017 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %su1.017, align 1
  %conv = zext i8 %1 to i32
  %2 = ptrtoint ptr %su2.016 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %su2.016, align 1
  %conv4 = zext i8 %3 to i32
  %sub = sub nsw i32 %conv, %conv4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %for.cond, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %res.1 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %sub, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %res.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_enable_tx_key_worker(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1636
  %wil1 = getelementptr i8, ptr %work, i32 -668
  %0 = ptrtoint ptr %wil1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wil1, align 8
  tail call void @rtnl_lock() #15
  %ptk_rekey_state = getelementptr i8, ptr %work, i32 -4
  %2 = ptrtoint ptr %ptk_rekey_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ptk_rekey_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end14, label %do.body3

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_enable_tx_key_worker.__UNIQUE_ID_ddebug542, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_enable_tx_key_worker, %if.then7)) #15
          to label %do.end10 [label %if.then7], !srcloc !356

if.then7:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %main_ndev, align 4
  %6 = ptrtoint ptr %ptk_rekey_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ptk_rekey_state, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_enable_tx_key_worker.__UNIQUE_ID_ddebug542, ptr noundef %5, ptr noundef nonnull @.str.6, i32 noundef %7) #15
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body3
  %8 = ptrtoint ptr %ptk_rekey_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ptk_rekey_state, align 8
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %9) #15
  tail call void @rtnl_unlock() #15
  br label %cleanup

if.end14:                                         ; preds = %entry
  %mid = getelementptr i8, ptr %work, i32 -664
  %10 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mid, align 4
  %call15 = tail call i32 @wil_find_cid_by_idx(ptr noundef %1, i8 noundef zeroext %11, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call15)
  %cmp.i = icmp sgt i32 %call15, -1
  br i1 %cmp.i, label %wil_cid_valid.exit, label %if.end14.if.then17_crit_edge

if.end14.if.then17_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then17

wil_cid_valid.exit:                               ; preds = %if.end14
  %max_assoc_sta.i = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 26
  %12 = ptrtoint ptr %max_assoc_sta.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_assoc_sta.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %call15)
  %cmp1.i = icmp ugt i32 %13, %call15
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %call15)
  %cmp2.i = icmp ult i32 %call15, 20
  %spec.select.i = and i1 %cmp2.i, %cmp1.i
  br i1 %spec.select.i, label %do.body21, label %wil_cid_valid.exit.if.then17_crit_edge

wil_cid_valid.exit.if.then17_crit_edge:           ; preds = %wil_cid_valid.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then17

if.then17:                                        ; preds = %wil_cid_valid.exit.if.then17_crit_edge, %if.end14.if.then17_crit_edge
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef %call15) #15
  tail call void @rtnl_unlock() #15
  br label %cleanup

do.body21:                                        ; preds = %wil_cid_valid.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_enable_tx_key_worker.__UNIQUE_ID_ddebug543, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_enable_tx_key_worker, %if.then33)) #15
          to label %do.end39 [label %if.then33], !srcloc !356

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev34 = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %main_ndev34 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %main_ndev34, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_enable_tx_key_worker.__UNIQUE_ID_ddebug543, ptr noundef %15, ptr noundef nonnull @.str.8) #15
  br label %do.end39

do.end39:                                         ; preds = %if.then33, %do.body21
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.8) #15
  %arrayidx = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %call15
  %call42 = tail call i32 @wmi_add_cipher_key(ptr noundef %add.ptr, i8 noundef zeroext 0, ptr noundef %arrayidx, i32 noundef 0, ptr noundef null, i32 noundef 4) #15
  %16 = ptrtoint ptr %ptk_rekey_state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %ptk_rekey_state, align 8
  tail call void @rtnl_unlock() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool44.not = icmp eq i32 %call42, 0
  br i1 %tobool44.not, label %do.end39.cleanup_crit_edge, label %if.then45

do.end39.cleanup_crit_edge:                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then45:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, i32 noundef %call42) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %do.end39.cleanup_crit_edge, %if.then17, %do.end10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_find_cid_by_idx(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wil_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_add_cipher_key(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_tx_complete_handle_eapol(ptr noundef %vif, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %wil1 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 2
  %0 = ptrtoint ptr %wil1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wil1, align 8
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %vif, i32 0, i32 1
  %2 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %fw_capabilities = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %fw_capabilities to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %fw_capabilities, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool.not = icmp sgt i32 %5, -1
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call3 = tail call fastcc zeroext i1 @wil_skb_is_eap_4(ptr noundef %1, ptr noundef %skb)
  br i1 %call3, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %eap_lock = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 51
  tail call void @_raw_spin_lock_bh(ptr noundef %eap_lock) #15
  %ptk_rekey_state = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 37
  %6 = ptrtoint ptr %ptk_rekey_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ptk_rekey_state, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %sw.default [
    i32 0, label %if.end5.sw.epilog_crit_edge
    i32 1, label %sw.bb
    i32 2, label %if.then11.critedge
  ]

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %ptk_rekey_state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %ptk_rekey_state, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.wil_tx_complete_handle_eapol, i32 noundef %7) #15
  tail call void @_raw_spin_unlock_bh(ptr noundef %eap_lock) #15
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb, %if.end5.sw.epilog_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %eap_lock) #15
  br label %cleanup

if.then11.critedge:                               ; preds = %if.end5
  tail call void @_raw_spin_unlock_bh(ptr noundef %eap_lock) #15
  %wmi_wq = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 44
  %10 = ptrtoint ptr %wmi_wq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wmi_wq, align 16
  %enable_tx_key_worker = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 38
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %enable_tx_key_worker) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_tx_complete_handle_eapol.__UNIQUE_ID_ddebug544, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_tx_complete_handle_eapol, %if.then20)) #15
          to label %do.end24 [label %if.then20], !srcloc !356

if.then20:                                        ; preds = %if.then11.critedge
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %main_ndev, align 4
  %conv = zext i1 %call.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_tx_complete_handle_eapol.__UNIQUE_ID_ddebug544, ptr noundef %13, ptr noundef nonnull @.str.11, i32 noundef %conv) #15
  br label %do.end24

do.end24:                                         ; preds = %if.then20, %if.then11.critedge
  %conv26 = zext i1 %call.i to i32
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef %conv26) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %sw.epilog, %sw.default, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @wil_skb_is_eap_4(ptr noundef %wil, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %0 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mac_header.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %cmp.i.not.i = icmp eq i16 %1, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.wil_is_ptk_eapol_key) #15
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len1.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i.i, align 8
  %conv.i.i.i = zext i16 %1 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 %conv.i.i.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i.neg.i = sub i32 %3, %sub.ptr.lhs.cast.i.i
  %sub.i = add i32 %sub.ptr.sub.i.neg.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %sub.i)
  %cmp.i = icmp ult i32 %sub.i, 95
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %type.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 15
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp6.not.i = icmp eq i8 %9, 3
  br i1 %cmp6.not.i, label %if.end9.i, label %if.end4.i.cleanup_crit_edge

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end9.i:                                        ; preds = %if.end4.i
  %add.ptr10.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 18
  %10 = ptrtoint ptr %add.ptr10.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr10.i, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.129)
  switch i8 %11, label %if.end9.i.cleanup_crit_edge [
    i8 -2, label %if.end9.i.if.end20.i_crit_edge
    i8 2, label %if.end9.i.if.end20.i_crit_edge58
  ]

if.end9.i.if.end20.i_crit_edge58:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i

if.end9.i.if.end20.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end20.i:                                       ; preds = %if.end9.i.if.end20.i_crit_edge, %if.end9.i.if.end20.i_crit_edge58
  %key_info21.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 19
  %13 = ptrtoint ptr %key_info21.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %key_info21.i, align 1
  %15 = and i16 %14, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool23.not.i = icmp eq i16 %15, 0
  %tobool.not = icmp eq ptr %add.ptr10.i, null
  %or.cond = or i1 %tobool.not, %tobool23.not.i
  br i1 %or.cond, label %if.end20.i.cleanup_crit_edge, label %if.end

if.end20.i.cleanup_crit_edge:                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %if.end20.i
  %key_nonce = getelementptr inbounds %struct.wil_eapol_key, ptr %add.ptr10.i, i32 0, i32 4
  %16 = ptrtoint ptr %key_nonce to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %key_nonce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1.not = icmp eq i32 %17, 0
  br i1 %cmp1.not, label %for.inc, label %if.end.do.body4_crit_edge

if.end.do.body4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body4

do.body4:                                         ; preds = %for.inc.6.do.body4_crit_edge, %for.inc.5.do.body4_crit_edge, %for.inc.4.do.body4_crit_edge, %for.inc.3.do.body4_crit_edge, %for.inc.2.do.body4_crit_edge, %for.inc.1.do.body4_crit_edge, %for.inc.do.body4_crit_edge, %if.end.do.body4_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_skb_is_eap_4.__UNIQUE_ID_ddebug540, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_skb_is_eap_4, %if.then9)) #15
          to label %do.end12 [label %if.then9], !srcloc !356

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %18 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_skb_is_eap_4.__UNIQUE_ID_ddebug540, ptr noundef %19, ptr noundef nonnull @.str.38) #15
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %do.body4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.38) #15
  br label %cleanup

for.inc:                                          ; preds = %if.end
  %incdec.ptr = getelementptr i32, ptr %key_nonce, i32 1
  %20 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %incdec.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp1.not.1 = icmp eq i32 %21, 0
  br i1 %cmp1.not.1, label %for.inc.1, label %for.inc.do.body4_crit_edge

for.inc.do.body4_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body4

for.inc.1:                                        ; preds = %for.inc
  %incdec.ptr.1 = getelementptr i32, ptr %key_nonce, i32 2
  %22 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %incdec.ptr.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp1.not.2 = icmp eq i32 %23, 0
  br i1 %cmp1.not.2, label %for.inc.2, label %for.inc.1.do.body4_crit_edge

for.inc.1.do.body4_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body4

for.inc.2:                                        ; preds = %for.inc.1
  %incdec.ptr.2 = getelementptr i32, ptr %key_nonce, i32 3
  %24 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %incdec.ptr.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp1.not.3 = icmp eq i32 %25, 0
  br i1 %cmp1.not.3, label %for.inc.3, label %for.inc.2.do.body4_crit_edge

for.inc.2.do.body4_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body4

for.inc.3:                                        ; preds = %for.inc.2
  %incdec.ptr.3 = getelementptr i32, ptr %key_nonce, i32 4
  %26 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %incdec.ptr.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp1.not.4 = icmp eq i32 %27, 0
  br i1 %cmp1.not.4, label %for.inc.4, label %for.inc.3.do.body4_crit_edge

for.inc.3.do.body4_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body4

for.inc.4:                                        ; preds = %for.inc.3
  %incdec.ptr.4 = getelementptr i32, ptr %key_nonce, i32 5
  %28 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %incdec.ptr.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp1.not.5 = icmp eq i32 %29, 0
  br i1 %cmp1.not.5, label %for.inc.5, label %for.inc.4.do.body4_crit_edge

for.inc.4.do.body4_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body4

for.inc.5:                                        ; preds = %for.inc.4
  %incdec.ptr.5 = getelementptr i32, ptr %key_nonce, i32 6
  %30 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %incdec.ptr.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp1.not.6 = icmp eq i32 %31, 0
  br i1 %cmp1.not.6, label %for.inc.6, label %for.inc.5.do.body4_crit_edge

for.inc.5.do.body4_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body4

for.inc.6:                                        ; preds = %for.inc.5
  %incdec.ptr.6 = getelementptr i32, ptr %key_nonce, i32 7
  %32 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %incdec.ptr.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp1.not.7 = icmp eq i32 %33, 0
  br i1 %cmp1.not.7, label %for.inc.7, label %for.inc.6.do.body4_crit_edge

for.inc.6.do.body4_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body4

for.inc.7:                                        ; preds = %for.inc.6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_skb_is_eap_4.__UNIQUE_ID_ddebug541, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_skb_is_eap_4, %if.then30)) #15
          to label %do.end36 [label %if.then30], !srcloc !356

if.then30:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev31 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %34 = ptrtoint ptr %main_ndev31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %main_ndev31, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_skb_is_eap_4.__UNIQUE_ID_ddebug541, ptr noundef %35, ptr noundef nonnull @.str.39) #15
  br label %do.end36

do.end36:                                         ; preds = %if.then30, %for.inc.7
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.39) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %do.end12, %if.end20.i.cleanup_crit_edge, %if.end9.i.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.i
  %retval.0 = phi i1 [ false, %do.end12 ], [ true, %do.end36 ], [ false, %if.then.i ], [ false, %if.end.i.cleanup_crit_edge ], [ false, %if.end4.i.cleanup_crit_edge ], [ false, %if.end9.i.cleanup_crit_edge ], [ false, %if.end20.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_netif_rx(ptr noundef %skb, ptr noundef %ndev, i32 %cid, ptr nocapture noundef %stats, i1 noundef zeroext %gro) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 82
  %0 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211_ptr, align 16
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end7.i, !prof !357

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #15, !srcloc !358
  unreachable

do.end7.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %wdev_priv.exit, !prof !357

do.body4.i.i:                                     ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #15, !srcloc !359
  unreachable

wdev_priv.exit:                                   ; preds = %do.end7.i
  %priv.i.i = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 86
  %len3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len3, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not = icmp eq i32 %10, 0
  %iftype = getelementptr i8, ptr %ndev, i32 2308
  %11 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iftype, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %12, label %wdev_priv.exit.if.end71_crit_edge [
    i32 2, label %if.then
    i32 3, label %land.lhs.true30
  ]

wdev_priv.exit.if.end71_crit_edge:                ; preds = %wdev_priv.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end71

if.then:                                          ; preds = %wdev_priv.exit
  br i1 %tobool.i.not, label %if.then.if.end71_crit_edge, label %land.lhs.true

if.then.if.end71_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end71

land.lhs.true:                                    ; preds = %if.then
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %7, i32 0, i32 1
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 86
  %14 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_addr, align 64
  %16 = ptrtoint ptr %h_source.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %h_source.i, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %15, align 4
  %xor.i = xor i32 %19, %17
  %add.ptr.i161 = getelementptr %struct.ethhdr, ptr %7, i32 0, i32 1, i32 4
  %20 = ptrtoint ptr %add.ptr.i161 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr.i161, align 2
  %add.ptr1.i = getelementptr i8, ptr %15, i32 4
  %22 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %23, %21
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then10, label %land.lhs.true.if.end71_crit_edge

land.lhs.true.if.end71_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end71

if.then10:                                        ; preds = %land.lhs.true
  tail call void @consume_skb(ptr noundef %skb) #15
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 6
  %24 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %25, 1
  store i32 %inc, ptr %rx_dropped, align 8
  %rx_dropped12 = getelementptr inbounds %struct.wil_net_stats, ptr %stats, i32 0, i32 8
  %26 = ptrtoint ptr %rx_dropped12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_dropped12, align 8
  %inc13 = add i32 %27, 1
  store i32 %inc13, ptr %rx_dropped12, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_netif_rx.__UNIQUE_ID_ddebug545, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_netif_rx, %if.then21)) #15
          to label %do.end23 [label %if.then21], !srcloc !356

if.then21:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev = getelementptr inbounds %struct.wiphy, ptr %3, i32 1, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_netif_rx.__UNIQUE_ID_ddebug545, ptr noundef %29, ptr noundef nonnull @.str.13, i32 noundef %5) #15
  br label %do.end23

do.end23:                                         ; preds = %if.then21, %if.then10
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i.i, ptr noundef nonnull @.str.13, i32 noundef %5) #15
  br label %cleanup

land.lhs.true30:                                  ; preds = %wdev_priv.exit
  %ap_isolate = getelementptr i8, ptr %ndev, i32 3292
  %30 = ptrtoint ptr %ap_isolate to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ap_isolate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool31.not = icmp eq i32 %31, 0
  br i1 %tobool31.not, label %if.then32, label %land.lhs.true30.if.end71_crit_edge

land.lhs.true30.if.end71_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end71

if.then32:                                        ; preds = %land.lhs.true30
  br i1 %tobool.i.not, label %if.else36, label %if.then34

if.then34:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #17
  %call35 = tail call ptr @skb_copy(ptr noundef %skb, i32 noundef 2592) #15
  br label %if.end44

if.else36:                                        ; preds = %if.then32
  %mid = getelementptr i8, ptr %ndev, i32 3276
  %32 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %mid, align 4
  %call37 = tail call i32 @wil_find_cid(ptr noundef %priv.i.i, i8 noundef zeroext %33, ptr noundef %7) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call37)
  %cmp38 = icmp sgt i32 %call37, -1
  br i1 %cmp38, label %if.else36.if.end44_crit_edge, label %if.else36.if.end71_crit_edge

if.else36.if.end71_crit_edge:                     ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end71

if.else36.if.end44_crit_edge:                     ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

if.end44:                                         ; preds = %if.else36.if.end44_crit_edge, %if.then34
  %xmit_skb.1 = phi ptr [ %call35, %if.then34 ], [ %skb, %if.else36.if.end44_crit_edge ]
  %skb.addr.1 = phi ptr [ %skb, %if.then34 ], [ null, %if.else36.if.end44_crit_edge ]
  %tobool45.not = icmp eq ptr %xmit_skb.1, null
  br i1 %tobool45.not, label %if.end44.if.end71_crit_edge, label %if.then46

if.end44.if.end71_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end71

if.then46:                                        ; preds = %if.end44
  %34 = getelementptr inbounds %struct.anon.51, ptr %xmit_skb.1, i32 0, i32 2
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %ndev, ptr %34, align 8
  %priority = getelementptr inbounds %struct.sk_buff, ptr %xmit_skb.1, i32 0, i32 15, i32 0, i32 6
  %36 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %priority, align 4
  %add = add i32 %37, 256
  store i32 %add, ptr %priority, align 4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %xmit_skb.1, i32 0, i32 15, i32 0, i32 18
  %38 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %protocol, align 8
  %data.i162 = getelementptr inbounds %struct.sk_buff, ptr %xmit_skb.1, i32 0, i32 19
  %39 = ptrtoint ptr %data.i162 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i162, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %xmit_skb.1, i32 0, i32 18
  %41 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %40 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %42 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %xmit_skb.1, i32 0, i32 15, i32 0, i32 20
  %43 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv.i, ptr %network_header.i, align 4
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %xmit_skb.1, i32 0, i32 15, i32 0, i32 21
  %44 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv.i, ptr %mac_header.i, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_netif_rx.__UNIQUE_ID_ddebug546, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_netif_rx, %if.then61)) #15
          to label %do.end67 [label %if.then61], !srcloc !356

if.then61:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev62 = getelementptr inbounds %struct.wiphy, ptr %3, i32 1, i32 0, i32 1, i32 2
  %45 = ptrtoint ptr %main_ndev62 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %main_ndev62, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_netif_rx.__UNIQUE_ID_ddebug546, ptr noundef %46, ptr noundef nonnull @.str.14, i32 noundef %5) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then61, %if.then46
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i.i, ptr noundef nonnull @.str.14, i32 noundef %5) #15
  %call70 = tail call i32 @dev_queue_xmit(ptr noundef nonnull %xmit_skb.1) #15
  br label %if.end71

if.end71:                                         ; preds = %do.end67, %if.end44.if.end71_crit_edge, %if.else36.if.end71_crit_edge, %land.lhs.true30.if.end71_crit_edge, %land.lhs.true.if.end71_crit_edge, %if.then.if.end71_crit_edge, %wdev_priv.exit.if.end71_crit_edge
  %skb.addr.1174 = phi ptr [ %skb.addr.1, %do.end67 ], [ %skb.addr.1, %if.end44.if.end71_crit_edge ], [ %skb, %wdev_priv.exit.if.end71_crit_edge ], [ %skb, %if.else36.if.end71_crit_edge ], [ %skb, %land.lhs.true30.if.end71_crit_edge ], [ %skb, %if.then.if.end71_crit_edge ], [ %skb, %land.lhs.true.if.end71_crit_edge ]
  %tobool72.not = icmp eq ptr %skb.addr.1174, null
  br i1 %tobool72.not, label %if.end71.if.end88_crit_edge, label %if.then73

if.end71.if.end88_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end88

if.then73:                                        ; preds = %if.end71
  %call74 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %skb.addr.1174, ptr noundef %ndev) #15
  %protocol75 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1174, i32 0, i32 15, i32 0, i32 18
  %47 = ptrtoint ptr %protocol75 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %call74, ptr %protocol75, align 8
  %48 = getelementptr inbounds %struct.anon.51, ptr %skb.addr.1174, i32 0, i32 2
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %ndev, ptr %48, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %call74)
  %cmp78 = icmp eq i16 %call74, -30578
  br i1 %cmp78, label %if.then80, label %if.then73.if.end81_crit_edge

if.then73.if.end81_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end81

if.then80:                                        ; preds = %if.then73
  %wil1.i = getelementptr i8, ptr %ndev, i32 3272
  %50 = ptrtoint ptr %wil1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %wil1.i, align 8
  %52 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp.not.i = icmp eq i32 %53, 2
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then80.if.end81_crit_edge

if.then80.if.end81_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end81

lor.lhs.false.i:                                  ; preds = %if.then80
  %fw_capabilities.i = getelementptr inbounds %struct.wil6210_priv, ptr %51, i32 0, i32 16
  %54 = ptrtoint ptr %fw_capabilities.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %fw_capabilities.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %55)
  %tobool.not.i169 = icmp sgt i32 %55, -1
  br i1 %tobool.not.i169, label %lor.lhs.false.i.if.end81_crit_edge, label %if.end.i

lor.lhs.false.i.if.end81_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end81

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call3.i = tail call fastcc zeroext i1 @wil_skb_is_eap_3(ptr noundef %51, ptr noundef nonnull %skb.addr.1174) #15
  br i1 %call3.i, label %if.end5.i, label %if.end.i.if.end81_crit_edge

if.end.i.if.end81_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end81

if.end5.i:                                        ; preds = %if.end.i
  %ptk_rekey_state.i = getelementptr i8, ptr %ndev, i32 3936
  %56 = ptrtoint ptr %ptk_rekey_state.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ptk_rekey_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp6.i = icmp eq i32 %57, 0
  br i1 %cmp6.i, label %if.then7.i, label %if.end5.i.if.end81_crit_edge

if.end5.i.if.end81_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end81

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #17
  %58 = ptrtoint ptr %ptk_rekey_state.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %ptk_rekey_state.i, align 8
  br label %if.end81

if.end81:                                         ; preds = %if.then7.i, %if.end5.i.if.end81_crit_edge, %if.end.i.if.end81_crit_edge, %lor.lhs.false.i.if.end81_crit_edge, %if.then80.if.end81_crit_edge, %if.then73.if.end81_crit_edge
  br i1 %gro, label %if.then83, label %if.else85

if.then83:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #17
  %napi_rx = getelementptr inbounds %struct.wiphy, ptr %3, i32 1, i32 56, i32 12, i32 5, i32 1, i32 1
  %call84 = tail call i32 @napi_gro_receive(ptr noundef %napi_rx, ptr noundef nonnull %skb.addr.1174) #15
  br label %if.end88

if.else85:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #17
  %call86 = tail call i32 @netif_rx_ni(ptr noundef nonnull %skb.addr.1174) #15
  br label %if.end88

if.end88:                                         ; preds = %if.else85, %if.then83, %if.end71.if.end88_crit_edge
  %stats89 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36
  %59 = ptrtoint ptr %stats89 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %stats89, align 8
  %inc90 = add i32 %60, 1
  store i32 %inc90, ptr %stats89, align 8
  %61 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %stats, align 8
  %inc92 = add i32 %62, 1
  store i32 %inc92, ptr %stats, align 8
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 2
  %63 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rx_bytes, align 8
  %add94 = add i32 %64, %5
  store i32 %add94, ptr %rx_bytes, align 8
  %rx_bytes95 = getelementptr inbounds %struct.wil_net_stats, ptr %stats, i32 0, i32 2
  %65 = ptrtoint ptr %rx_bytes95 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rx_bytes95, align 8
  %add96 = add i32 %66, %5
  store i32 %add96, ptr %rx_bytes95, align 8
  br i1 %tobool.i.not, label %if.end88.cleanup_crit_edge, label %if.then98

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then98:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #17
  %multicast = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 8
  %67 = ptrtoint ptr %multicast to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %multicast, align 8
  %inc100 = add i32 %68, 1
  store i32 %inc100, ptr %multicast, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then98, %if.end88.cleanup_crit_edge, %do.end23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_find_cid(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_netif_rx_any(ptr noundef %skb, ptr noundef %ndev) local_unnamed_addr #0 align 64 {
entry:
  %cid = alloca i32, align 4
  %security = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cid) #15
  %0 = ptrtoint ptr %cid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cid, align 4, !annotation !360
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %security) #15
  %1 = ptrtoint ptr %security to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %security, align 4, !annotation !360
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 82
  %2 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ieee80211_ptr, align 16
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end7.i, !prof !357

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #15, !srcloc !358
  unreachable

do.end7.i:                                        ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %wdev_priv.exit, !prof !357

do.body4.i.i:                                     ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #15, !srcloc !359
  unreachable

wdev_priv.exit:                                   ; preds = %do.end7.i
  %priv.i.i = getelementptr inbounds %struct.wiphy, ptr %5, i32 0, i32 86
  %get_netif_rx_params = getelementptr inbounds %struct.wiphy, ptr %5, i32 18, i32 52
  %6 = ptrtoint ptr %get_netif_rx_params to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_netif_rx_params, align 4
  call void %7(ptr noundef %skb, ptr noundef nonnull %cid, ptr noundef nonnull %security) #15
  %8 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cid, align 4
  %stats1 = getelementptr %struct.wil6210_priv, ptr %priv.i.i, i32 0, i32 63, i32 %9, i32 3
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %10 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i55 = icmp eq ptr %11, null
  br i1 %tobool.not.i55, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %wdev_priv.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void %11(ptr noundef %skb) #15
  %12 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %destructor.i, align 4
  %13 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %13, align 4
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %wdev_priv.exit
  %15 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %tobool3.not.i = icmp eq ptr %17, null
  br i1 %tobool3.not.i, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !361

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #15, !srcloc !362
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i
  %18 = ptrtoint ptr %security to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %security, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %skb_orphan.exit.if.end20_crit_edge, label %land.lhs.true

skb_orphan.exit.if.end20_crit_edge:               ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

land.lhs.true:                                    ; preds = %skb_orphan.exit
  %rx_crypto_check = getelementptr inbounds %struct.wiphy, ptr %5, i32 18, i32 53
  %20 = ptrtoint ptr %rx_crypto_check to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx_crypto_check, align 16
  %call3 = call i32 %21(ptr noundef %priv.i.i, ptr noundef %skb) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 0
  br i1 %cmp.not, label %land.lhs.true.if.end20_crit_edge, label %do.body5

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

do.body5:                                         ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_netif_rx_any.__UNIQUE_ID_ddebug547, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_netif_rx_any, %if.then10)) #15
          to label %do.end12 [label %if.then10], !srcloc !356

if.then10:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev = getelementptr inbounds %struct.wiphy, ptr %5, i32 1, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %main_ndev, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_netif_rx_any.__UNIQUE_ID_ddebug547, ptr noundef %23, ptr noundef nonnull @.str.13, i32 noundef %25) #15
  br label %do.end12

do.end12:                                         ; preds = %if.then10, %do.body5
  %len13 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %26 = ptrtoint ptr %len13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len13, align 4
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i.i, ptr noundef nonnull @.str.13, i32 noundef %27) #15
  call void @consume_skb(ptr noundef %skb) #15
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 6
  %28 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %29, 1
  store i32 %inc, ptr %rx_dropped, align 8
  %rx_replay = getelementptr %struct.wil6210_priv, ptr %priv.i.i, i32 0, i32 63, i32 %9, i32 3, i32 12
  %30 = ptrtoint ptr %rx_replay to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_replay, align 8
  %inc17 = add i32 %31, 1
  store i32 %inc17, ptr %rx_replay, align 8
  %rx_dropped18 = getelementptr %struct.wil6210_priv, ptr %priv.i.i, i32 0, i32 63, i32 %9, i32 3, i32 8
  %32 = ptrtoint ptr %rx_dropped18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_dropped18, align 8
  %inc19 = add i32 %33, 1
  store i32 %inc19, ptr %rx_dropped18, align 8
  br label %cleanup

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %skb_orphan.exit.if.end20_crit_edge
  %rx_error_check = getelementptr inbounds %struct.wiphy, ptr %5, i32 18, i32 53, i32 1
  %34 = ptrtoint ptr %rx_error_check to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rx_error_check, align 4
  %call22 = call i32 %35(ptr noundef %priv.i.i, ptr noundef %skb, ptr noundef %stats1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end31, label %if.then30, !prof !361

if.then30:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  call void @consume_skb(ptr noundef %skb) #15
  br label %cleanup

if.end31:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  call void @wil_netif_rx(ptr noundef %skb, ptr noundef %ndev, i32 undef, ptr noundef %stats1, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then30, %do.end12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %security) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cid) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_rx_handle(ptr noundef %wil, ptr nocapture noundef %quota) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 82
  %2 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ieee80211_ptr, align 16
  %ring_rx = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 55
  %va = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 55, i32 1
  %4 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %va, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %do.body5, !prof !357

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.wil_rx_handle) #15
  br label %cleanup

do.body5:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_rx_handle.__UNIQUE_ID_ddebug548, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_rx_handle, %if.then13)) #15
          to label %do.end17 [label %if.then13], !srcloc !356

if.then13:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_rx_handle.__UNIQUE_ID_ddebug548, ptr noundef %7, ptr noundef nonnull @.str.17) #15
  br label %do.end17

do.end17:                                         ; preds = %if.then13, %do.body5
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.17) #15
  %8 = ptrtoint ptr %quota to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %quota, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp51 = icmp sgt i32 %9, 0
  br i1 %cmp51, label %land.rhs.lr.ph, label %do.end17.while.end_crit_edge

do.end17.while.end_crit_edge:                     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %do.end17
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %3, i32 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %if.end27.land.rhs_crit_edge, %land.rhs.lr.ph
  %call20 = tail call fastcc ptr @wil_vring_reap_rx(ptr noundef %wil, ptr noundef %ring_rx)
  %cmp21.not = icmp eq ptr %call20, null
  br i1 %cmp21.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %10 = ptrtoint ptr %quota to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %quota, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %quota, align 4
  %12 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %13)
  %cmp22 = icmp eq i32 %13, 6
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  %14 = getelementptr inbounds %struct.anon.51, ptr %call20, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %1, ptr %14, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call20, i32 0, i32 19
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call20, i32 0, i32 18
  %18 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %call20, i32 0, i32 15, i32 0, i32 21
  %20 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %call20, i32 0, i32 15
  %21 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, 6655
  %bf.set26 = or i16 %bf.clear, 25088
  store i16 %bf.set26, ptr %ip_summed, align 8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call20, i32 0, i32 15, i32 0, i32 18
  %22 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 4, ptr %protocol, align 8
  tail call void @wil_netif_rx_any(ptr noundef nonnull %call20, ptr noundef %1)
  br label %if.end27

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @wil_rx_reorder(ptr noundef %wil, ptr noundef nonnull %call20) #15
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then23
  %23 = ptrtoint ptr %quota to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %quota, align 4
  %cmp = icmp sgt i32 %24, 0
  br i1 %cmp, label %if.end27.land.rhs_crit_edge, label %if.end27.while.end_crit_edge

if.end27.while.end_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end27.land.rhs_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs

while.end:                                        ; preds = %if.end27.while.end_crit_edge, %land.rhs.while.end_crit_edge, %do.end17.while.end_crit_edge
  %size = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 55, i32 2
  %25 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %size, align 4
  %conv = zext i16 %26 to i32
  %call28 = tail call fastcc i32 @wil_rx_refill(ptr noundef %wil, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @wil_vring_reap_rx(ptr noundef %wil, ptr nocapture noundef %vring) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %wiphy = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 2
  %0 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wiphy, align 8
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 56, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %4 = load i8, ptr @rx_align_2, align 1, !range !355
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 6
  %rx_buf_len = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 56
  %5 = ptrtoint ptr %rx_buf_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_buf_len, align 8
  %add = add i32 %6, 14
  %add2 = add i32 %add, %cond.i
  %swhead.i = getelementptr inbounds %struct.wil_ring, ptr %vring, i32 0, i32 4
  %swtail.i = getelementptr inbounds %struct.wil_ring, ptr %vring, i32 0, i32 3
  %7 = ptrtoint ptr %swhead.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %swhead.i, align 4
  %9 = ptrtoint ptr %swtail.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %swtail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.i.not532 = icmp eq i32 %8, %10
  br i1 %cmp.i.not532, label %entry.cleanup_crit_edge, label %if.end.lr.ph, !prof !357

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  %va = getelementptr inbounds %struct.wil_ring, ptr %vring, i32 0, i32 1
  %ctx = getelementptr inbounds %struct.wil_ring, ptr %vring, i32 0, i32 6
  %size.i = getelementptr inbounds %struct.wil_ring, ptr %vring, i32 0, i32 2
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %max_assoc_sta.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 26
  %monitor_chandef.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 27
  br label %if.end

if.end:                                           ; preds = %again.backedge.if.end_crit_edge, %if.end.lr.ph
  %11 = phi i32 [ %8, %if.end.lr.ph ], [ %26, %again.backedge.if.end_crit_edge ]
  %12 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %va, align 4
  %arrayidx = getelementptr %union.wil_ring_desc, ptr %13, i32 %11
  %dma = getelementptr inbounds %struct.vring_rx_desc, ptr %arrayidx, i32 0, i32 1
  %status = getelementptr inbounds %struct.vring_rx_dma, ptr %dma, i32 0, i32 5
  %14 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load volatile i8, ptr %status, align 1
  %16 = and i8 %15, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool6.not = icmp eq i8 %16, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end16, !prof !357

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %17 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx, align 4
  %arrayidx17 = getelementptr %struct.wil_ctx, ptr %18, i32 %11
  %19 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx17, align 4
  store ptr null, ptr %arrayidx17, align 4
  %21 = ptrtoint ptr %swhead.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %swhead.i, align 4
  %add.i = add i32 %22, 1
  %23 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %size.i, align 4
  %conv.i485 = zext i16 %24 to i32
  %rem.i = urem i32 %add.i, %conv.i485
  store i32 %rem.i, ptr %swhead.i, align 4
  %tobool22.not = icmp eq ptr %20, null
  br i1 %tobool22.not, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.wil_vring_reap_rx, i32 noundef %11) #15
  br label %again.backedge

again.backedge:                                   ; preds = %if.end298, %if.then137, %if.then112, %do.end99, %if.then23
  %25 = ptrtoint ptr %swhead.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %swhead.i, align 4
  %27 = ptrtoint ptr %swtail.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %swtail.i, align 4
  %cmp.i.not = icmp eq i32 %26, %28
  br i1 %cmp.i.not, label %again.backedge.cleanup_crit_edge, label %again.backedge.if.end_crit_edge, !prof !357

again.backedge.if.end_crit_edge:                  ; preds = %again.backedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

again.backedge.cleanup_crit_edge:                 ; preds = %again.backedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 3
  %29 = call ptr @memcpy(ptr %cb.i, ptr %arrayidx, i32 32)
  %addr = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 3, i32 20
  %30 = ptrtoint ptr %addr to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %addr, align 1
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #15
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %32, i32 noundef %add2, i32 noundef 2, i32 noundef 0) #15
  %length = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 3, i32 30
  %33 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %length, align 1
  %35 = tail call i16 @llvm.bswap.i16(i16 %34)
  %conv29 = trunc i32 %11 to i16
  tail call fastcc void @trace_wil6210_rx(i16 noundef zeroext %conv29, ptr noundef %cb.i)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_vring_reap_rx.__UNIQUE_ID_ddebug528, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_vring_reap_rx, %if.then41)) #15
          to label %do.end47 [label %if.then41], !srcloc !356

if.then41:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  %36 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %main_ndev, align 4
  %conv42 = zext i16 %35 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_vring_reap_rx.__UNIQUE_ID_ddebug528, ptr noundef %37, ptr noundef nonnull @.str.45, i32 noundef %11, i32 noundef %conv42) #15
  br label %do.end47

do.end47:                                         ; preds = %if.then41, %if.end24
  %conv48 = zext i16 %35 to i32
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.45, i32 noundef %11, i32 noundef %conv48) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_vring_reap_rx.__UNIQUE_ID_ddebug529, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_vring_reap_rx, %if.then63)) #15
          to label %do.end66 [label %if.then63], !srcloc !356

if.then63:                                        ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @print_hex_dump(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.46, i32 noundef 0, i32 noundef 32, i32 noundef 4, ptr noundef %cb.i, i32 noundef 32, i1 noundef zeroext false) #15
  br label %do.end66

do.end66:                                         ; preds = %if.then63, %do.end47
  %38 = ptrtoint ptr %cb.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %cb.i, align 1
  %and.i = and i32 %39, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i486 = icmp eq i32 %and.i, 0
  %shr.i.i = lshr i32 %39, 8
  %and.i.i = and i32 %shr.i.i, 3
  %cond.i487 = select i1 %tobool.not.i486, i32 0, i32 %and.i.i
  %arrayidx68 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 %cond.i487
  %40 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx68, align 4
  %tobool69.not = icmp eq ptr %41, null
  br i1 %tobool69.not, label %do.body81, label %if.end102, !prof !357

do.body81:                                        ; preds = %do.end66
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_vring_reap_rx.__UNIQUE_ID_ddebug530, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_vring_reap_rx, %if.then93)) #15
          to label %do.end99 [label %if.then93], !srcloc !356

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #17
  %42 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_vring_reap_rx.__UNIQUE_ID_ddebug530, ptr noundef %43, ptr noundef nonnull @.str.47, i32 noundef %cond.i487) #15
  br label %do.end99

do.end99:                                         ; preds = %if.then93, %do.body81
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.47, i32 noundef %cond.i487) #15
  tail call void @kfree_skb_reason(ptr noundef nonnull %20, i32 noundef 0) #15
  br label %again.backedge

if.end102:                                        ; preds = %do.end66
  %ndev103 = getelementptr inbounds %struct.wil6210_vif, ptr %41, i32 0, i32 1
  %44 = ptrtoint ptr %ndev103 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ndev103, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add2, i32 %conv48)
  %cmp = icmp ult i32 %add2, %conv48
  br i1 %cmp, label %if.then112, label %if.end114, !prof !357

if.then112:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__wil_err_ratelimited(ptr noundef %wil, ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.wil_vring_reap_rx, i32 noundef %conv48) #15
  tail call void @kfree_skb_reason(ptr noundef nonnull %20, i32 noundef 0) #15
  br label %again.backedge

if.end114:                                        ; preds = %if.end102
  tail call void @skb_trim(ptr noundef nonnull %20, i32 noundef %conv48) #15
  %data = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 19
  %46 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %47) #15, !srcloc !363
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_vring_reap_rx.__UNIQUE_ID_ddebug531, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_vring_reap_rx, %if.then128)) #15
          to label %do.end133 [label %if.then128], !srcloc !356

if.then128:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #17
  %48 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 6
  %50 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 7
  %52 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %51, %53
  tail call void @print_hex_dump(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.49, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %49, i32 noundef %sub.i, i1 noundef zeroext false) #15
  br label %do.end133

do.end133:                                        ; preds = %if.then128, %if.end114
  %54 = ptrtoint ptr %cb.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %cb.i, align 1
  %and.i.i488 = and i32 %55, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i488)
  %tobool.not.i.i = icmp eq i32 %and.i.i488, 0
  %shr.i.i.i = lshr i32 %55, 8
  %and.i.i.i = and i32 %shr.i.i.i, 3
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %and.i.i.i
  %arrayidx.i = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 %cond.i.i
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i, align 4
  %shr.i.i114.i = lshr i32 %55, 4
  %and.i.i115.i = and i32 %shr.i.i114.i, 7
  %58 = load i8, ptr @rx_align_2, align 1, !range !355
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i116.i = icmp eq i8 %58, 0
  %iftype.i = getelementptr inbounds %struct.wireless_dev, ptr %57, i32 0, i32 1
  %59 = ptrtoint ptr %iftype.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %iftype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %60)
  %cmp.i489 = icmp eq i32 %60, 6
  br i1 %cmp.i489, label %do.end133.if.end151_crit_edge, label %if.end.i

do.end133.if.end151_crit_edge:                    ; preds = %do.end133
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end151

if.end.i:                                         ; preds = %do.end133
  %conv.i490 = and i32 %shr.i.i.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %conv.i490)
  %cmp6.i = icmp eq i32 %conv.i490, 8
  %len.i491 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 6
  %61 = ptrtoint ptr %len.i491 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len.i491, align 4
  br i1 %cmp6.i, label %if.then9.i, label %if.else.i, !prof !361

if.then9.i:                                       ; preds = %if.end.i
  %add.i492 = select i1 %tobool.not.i116.i, i32 14, i32 20
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %add.i492)
  %cmp10.i = icmp ult i32 %62, %add.i492
  br i1 %cmp10.i, label %if.then18.i, label %if.end20.i, !prof !357

if.then18.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__wil_err_ratelimited(ptr noundef %wil, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.wil_rx_get_cid_by_skb, i32 noundef %62) #15
  br label %if.then137

if.end20.i:                                       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #17
  %63 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data, align 4
  %h_source.i.i = getelementptr inbounds %struct.ethhdr, ptr %64, i32 0, i32 1
  br label %if.end34.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %62)
  %cmp23.i = icmp ult i32 %62, 24
  br i1 %cmp23.i, label %if.then31.i, label %if.end33.i, !prof !357

if.then31.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__wil_err_ratelimited(ptr noundef %wil, ptr noundef nonnull @.str.57, ptr noundef nonnull @__func__.wil_rx_get_cid_by_skb, i32 noundef %62) #15
  br label %if.then137

if.end33.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %65 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data, align 4
  %addr2.i = getelementptr inbounds %struct.ieee80211_hdr_3addr, ptr %66, i32 0, i32 3
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.end33.i, %if.end20.i
  %ta.0.i = phi ptr [ %h_source.i.i, %if.end20.i ], [ %addr2.i, %if.end33.i ]
  %67 = ptrtoint ptr %max_assoc_sta.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %max_assoc_sta.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %68)
  %cmp35.i = icmp ult i32 %68, 9
  br i1 %cmp35.i, label %if.end34.i.if.end151_crit_edge, label %if.end38.i

if.end34.i.if.end151_crit_edge:                   ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end151

if.end38.i:                                       ; preds = %if.end34.i
  %69 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %60, label %if.end38.i.if.end151_crit_edge [
    i32 9, label %if.end38.i.if.end48.i_crit_edge
    i32 3, label %if.end38.i.if.end48.i_crit_edge540
  ]

if.end38.i.if.end48.i_crit_edge540:               ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48.i

if.end38.i.if.end48.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48.i

if.end38.i.if.end151_crit_edge:                   ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end151

if.end48.i:                                       ; preds = %if.end38.i.if.end48.i_crit_edge, %if.end38.i.if.end48.i_crit_edge540
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i115.i, i32 %68)
  %cmp50122.i = icmp ult i32 %and.i.i115.i, %68
  br i1 %cmp50122.i, label %for.body.lr.ph.i, label %if.end48.i.if.then67.i_crit_edge

if.end48.i.if.then67.i_crit_edge:                 ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then67.i

for.body.lr.ph.i:                                 ; preds = %if.end48.i
  %add.ptr1.i.i = getelementptr i8, ptr %ta.0.i, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0123.i = phi i32 [ %and.i.i115.i, %for.body.lr.ph.i ], [ %add63.i, %for.inc.i.for.body.i_crit_edge ]
  %status.i = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 63, i32 %i.0123.i, i32 2
  %70 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp53.not.i = icmp eq i32 %71, 0
  br i1 %cmp53.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true55.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true55.i:                                ; preds = %for.body.i
  %arrayidx52.i = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 63, i32 %i.0123.i
  %72 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx52.i, align 4
  %74 = ptrtoint ptr %ta.0.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ta.0.i, align 4
  %xor.i.i = xor i32 %75, %73
  %add.ptr.i.i = getelementptr i8, ptr %arrayidx52.i, i32 4
  %76 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %add.ptr.i.i, align 2
  %78 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %79, %77
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %wil_rx_get_cid_by_skb.exit, label %land.lhs.true55.i.for.inc.i_crit_edge

land.lhs.true55.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true55.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %add63.i = add i32 %i.0123.i, 8
  %cmp50.i = icmp ult i32 %add63.i, %68
  br i1 %cmp50.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.then67.i_crit_edge

for.inc.i.if.then67.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then67.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

if.then67.i:                                      ; preds = %for.inc.i.if.then67.i_crit_edge, %if.end48.i.if.then67.i_crit_edge
  tail call void (ptr, ptr, ...) @__wil_err_ratelimited(ptr noundef %wil, ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.wil_rx_get_cid_by_skb, ptr noundef %ta.0.i, i32 noundef %60, i32 noundef %conv.i490, i32 noundef %62) #15
  br label %if.then137

wil_rx_get_cid_by_skb.exit:                       ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %i.0123.i)
  %cmp135 = icmp eq i32 %i.0123.i, -2
  br i1 %cmp135, label %wil_rx_get_cid_by_skb.exit.if.then137_crit_edge, label %wil_rx_get_cid_by_skb.exit.if.end151_crit_edge

wil_rx_get_cid_by_skb.exit.if.end151_crit_edge:   ; preds = %wil_rx_get_cid_by_skb.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end151

wil_rx_get_cid_by_skb.exit.if.then137_crit_edge:  ; preds = %wil_rx_get_cid_by_skb.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then137

if.then137:                                       ; preds = %wil_rx_get_cid_by_skb.exit.if.then137_crit_edge, %if.then67.i, %if.then31.i, %if.then18.i
  tail call void @kfree_skb_reason(ptr noundef %20, i32 noundef 0) #15
  br label %again.backedge

if.end151:                                        ; preds = %wil_rx_get_cid_by_skb.exit.if.end151_crit_edge, %if.end38.i.if.end151_crit_edge, %if.end34.i.if.end151_crit_edge, %do.end133.if.end151_crit_edge
  %retval.0.i493525 = phi i32 [ %i.0123.i, %wil_rx_get_cid_by_skb.exit.if.end151_crit_edge ], [ %and.i.i115.i, %do.end133.if.end151_crit_edge ], [ %and.i.i115.i, %if.end34.i.if.end151_crit_edge ], [ %and.i.i115.i, %if.end38.i.if.end151_crit_edge ]
  %conv139 = trunc i32 %retval.0.i493525 to i8
  %rx_info.i = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 3, i32 32
  %80 = ptrtoint ptr %rx_info.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv139, ptr %rx_info.i, align 1
  %d1.i = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 3, i32 4
  %81 = ptrtoint ptr %d1.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %d1.i, align 1
  %shr.i.i494 = lshr i32 %82, 21
  %and.i.i495 = and i32 %shr.i.i494, 15
  %conv143 = trunc i32 %and.i.i495 to i16
  %last_mcs_rx = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 63, i32 %retval.0.i493525, i32 3, i32 17
  %83 = ptrtoint ptr %last_mcs_rx to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv143, ptr %last_mcs_rx, align 4
  %arrayidx150 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 63, i32 %retval.0.i493525, i32 3, i32 19, i32 %and.i.i495
  %84 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %arrayidx150, align 8
  %inc = add i64 %85, 1
  store i64 %inc, ptr %arrayidx150, align 8
  %type = getelementptr inbounds %struct.net_device, ptr %45, i32 0, i32 32
  %86 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 803, i16 %87)
  %cmp153 = icmp eq i16 %87, 803
  br i1 %cmp153, label %if.then155, label %if.end151.if.end156_crit_edge

if.end151.if.end156_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end156

if.then155:                                       ; preds = %if.end151
  %88 = ptrtoint ptr %monitor_chandef.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %monitor_chandef.i, align 4
  %90 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %data, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 18
  %92 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %91 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %93 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %sub.ptr.sub.i.i)
  %cmp.i497 = icmp ult i32 %sub.ptr.sub.i.i, 18
  br i1 %cmp.i497, label %land.lhs.true.i, label %if.then155.if.end.i500_crit_edge

if.then155.if.end.i500_crit_edge:                 ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i500

land.lhs.true.i:                                  ; preds = %if.then155
  %call2.i = tail call i32 @pskb_expand_head(ptr noundef %20, i32 noundef 18, i32 noundef 0, i32 noundef 2592) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i498 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i498, label %land.lhs.true.i.if.end.i500_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i500_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i500

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__.wil_rx_add_radiotap_header, i32 noundef 18) #15
  br label %if.end156thread-pre-split

if.end.i500:                                      ; preds = %land.lhs.true.i.if.end.i500_crit_edge, %if.then155.if.end.i500_crit_edge
  %call3.i = tail call ptr @skb_push(ptr noundef %20, i32 noundef 18) #15
  %it_len.i = getelementptr inbounds %struct.ieee80211_radiotap_header, ptr %call3.i, i32 0, i32 2
  %94 = call ptr @memset(ptr %call3.i, i32 0, i32 18)
  %95 = ptrtoint ptr %it_len.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 4608, ptr %it_len.i, align 2
  %it_present.i = getelementptr inbounds %struct.ieee80211_radiotap_header, ptr %call3.i, i32 0, i32 3
  %96 = ptrtoint ptr %it_present.i to i32
  call void @__asan_storeN_noabort(i32 %96, i32 4)
  store i32 167774208, ptr %it_present.i, align 2
  %status.i499 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 3, i32 29
  %97 = ptrtoint ptr %status.i499 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %status.i499, align 1
  %99 = and i8 %98, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool7.not.i = icmp eq i8 %99, 0
  br i1 %tobool7.not.i, label %if.end.i500.if.end11.i_crit_edge, label %if.then8.i

if.end.i500.if.end11.i_crit_edge:                 ; preds = %if.end.i500
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i

if.then8.i:                                       ; preds = %if.end.i500
  call void @__sanitizer_cov_trace_pc() #17
  %flags.i = getelementptr inbounds %struct.wil6210_rtap, ptr %call3.i, i32 0, i32 1
  %100 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %flags.i, align 2
  %102 = or i8 %101, 64
  store i8 %102, ptr %flags.i, align 2
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %if.end.i500.if.end11.i_crit_edge
  %tobool12.not.i = icmp eq ptr %89, null
  br i1 %tobool12.not.i, label %if.end11.i.cond.end.i_crit_edge, label %cond.true.i

if.end11.i.cond.end.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %89, i32 0, i32 1
  %103 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %center_freq.i, align 4
  %phi.cast.i = trunc i32 %104 to i16
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end11.i.cond.end.i_crit_edge
  %cond.i501 = phi i16 [ %phi.cast.i, %cond.true.i ], [ -7216, %if.end11.i.cond.end.i_crit_edge ]
  %105 = tail call i16 @llvm.bswap.i16(i16 %cond.i501) #15
  %chnl_freq.i = getelementptr inbounds %struct.wil6210_rtap, ptr %call3.i, i32 0, i32 3
  %106 = ptrtoint ptr %chnl_freq.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %105, ptr %chnl_freq.i, align 2
  %chnl_flags.i = getelementptr inbounds %struct.wil6210_rtap, ptr %call3.i, i32 0, i32 4
  %107 = ptrtoint ptr %chnl_flags.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 0, ptr %chnl_flags.i, align 2
  %mcs_present.i = getelementptr inbounds %struct.wil6210_rtap, ptr %call3.i, i32 0, i32 5
  %108 = ptrtoint ptr %mcs_present.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 2, ptr %mcs_present.i, align 2
  %mcs_flags.i = getelementptr inbounds %struct.wil6210_rtap, ptr %call3.i, i32 0, i32 6
  %109 = ptrtoint ptr %mcs_flags.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %mcs_flags.i, align 1
  %110 = ptrtoint ptr %d1.i to i32
  call void @__asan_loadN_noabort(i32 %110, i32 4)
  %111 = load i32, ptr %d1.i, align 1
  %shr.i.i.i502 = lshr i32 %111, 21
  %112 = trunc i32 %shr.i.i.i502 to i8
  %conv15.i = and i8 %112, 15
  %mcs_index.i = getelementptr inbounds %struct.wil6210_rtap, ptr %call3.i, i32 0, i32 7
  %113 = ptrtoint ptr %mcs_index.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv15.i, ptr %mcs_index.i, align 2
  br label %if.end156thread-pre-split

if.end156thread-pre-split:                        ; preds = %cond.end.i, %if.then.i
  %114 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %114)
  %.pr = load i16, ptr %type, align 16
  br label %if.end156

if.end156:                                        ; preds = %if.end156thread-pre-split, %if.end151.if.end156_crit_edge
  %115 = phi i16 [ %.pr, %if.end156thread-pre-split ], [ %87, %if.end151.if.end156_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %115)
  %cmp159.not = icmp eq i16 %115, 1
  br i1 %cmp159.not, label %if.end162, label %if.end156.cleanup_crit_edge

if.end156.cleanup_crit_edge:                      ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end162:                                        ; preds = %if.end156
  %116 = ptrtoint ptr %cb.i to i32
  call void @__asan_loadN_noabort(i32 %116, i32 4)
  %117 = load i32, ptr %cb.i, align 1
  %118 = and i32 %117, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %118)
  %cmp166.not = icmp eq i32 %118, 2048
  br i1 %cmp166.not, label %if.end299, label %if.then174, !prof !361

if.then174:                                       ; preds = %if.end162
  %sh.diff.i = lshr i32 %117, 8
  %tr.sh.diff.i = trunc i32 %sh.diff.i to i8
  %call.tr.i = and i8 %tr.sh.diff.i, -4
  %and.i.i505 = and i32 %117, 15
  %shr.i.i506 = lshr i32 %117, 16
  %and.i.i507 = and i32 %shr.i.i506, 4095
  %conv178 = trunc i32 %and.i.i507 to i16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_vring_reap_rx.__UNIQUE_ID_ddebug532, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_vring_reap_rx, %if.then193)) #15
          to label %do.end201 [label %if.then193], !srcloc !356

if.then193:                                       ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #17
  %119 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %main_ndev, align 4
  %conv195 = zext i8 %call.tr.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_vring_reap_rx.__UNIQUE_ID_ddebug532, ptr noundef %120, ptr noundef nonnull @.str.50, i32 noundef %conv195, i32 noundef %cond.i487, i32 noundef %retval.0.i493525, i32 noundef %and.i.i505, i32 noundef %and.i.i507) #15
  br label %do.end201

do.end201:                                        ; preds = %if.then193, %if.then174
  %conv202 = zext i8 %call.tr.i to i32
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.50, i32 noundef %conv202, i32 noundef %cond.i487, i32 noundef %retval.0.i493525, i32 noundef %and.i.i505, i32 noundef %and.i.i507) #15
  %rx_non_data_frame = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 63, i32 %retval.0.i493525, i32 3, i32 9
  %121 = ptrtoint ptr %rx_non_data_frame to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %rx_non_data_frame, align 4
  %inc206 = add i32 %122, 1
  store i32 %inc206, ptr %rx_non_data_frame, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %call.tr.i)
  %cmp.i508.not = icmp eq i8 %call.tr.i, -124
  br i1 %cmp.i508.not, label %do.body212, label %do.body239

do.body212:                                       ; preds = %do.end201
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_vring_reap_rx.__UNIQUE_ID_ddebug533, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_vring_reap_rx, %if.then224)) #15
          to label %do.end231 [label %if.then224], !srcloc !356

if.then224:                                       ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #17
  %123 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_vring_reap_rx.__UNIQUE_ID_ddebug533, ptr noundef %124, ptr noundef nonnull @.str.51, i32 noundef %cond.i487, i32 noundef %retval.0.i493525, i32 noundef %and.i.i505, i32 noundef %and.i.i507) #15
  br label %do.end231

do.end231:                                        ; preds = %if.then224, %do.body212
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.51, i32 noundef %cond.i487, i32 noundef %retval.0.i493525, i32 noundef %and.i.i505, i32 noundef %and.i.i507) #15
  %conv236 = trunc i32 %and.i.i505 to i8
  tail call void @wil_rx_bar(ptr noundef %wil, ptr noundef nonnull %41, i8 noundef zeroext %conv139, i8 noundef zeroext %conv236, i16 noundef zeroext %conv178) #15
  br label %if.end298

do.body239:                                       ; preds = %do.end201
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_vring_reap_rx.__UNIQUE_ID_ddebug534, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_vring_reap_rx, %if.then251)) #15
          to label %do.end259 [label %if.then251], !srcloc !356

if.then251:                                       ; preds = %do.body239
  call void @__sanitizer_cov_trace_pc() #17
  %125 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_vring_reap_rx.__UNIQUE_ID_ddebug534, ptr noundef %126, ptr noundef nonnull @.str.52, i32 noundef %conv202, i32 noundef %cond.i487, i32 noundef %retval.0.i493525, i32 noundef %and.i.i505, i32 noundef %and.i.i507) #15
  br label %do.end259

do.end259:                                        ; preds = %if.then251, %do.body239
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.52, i32 noundef %conv202, i32 noundef %cond.i487, i32 noundef %retval.0.i493525, i32 noundef %and.i.i505, i32 noundef %and.i.i507) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_vring_reap_rx.__UNIQUE_ID_ddebug535, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_vring_reap_rx, %if.then276)) #15
          to label %do.body280 [label %if.then276], !srcloc !356

if.then276:                                       ; preds = %do.end259
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @print_hex_dump(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.46, i32 noundef 0, i32 noundef 32, i32 noundef 4, ptr noundef %cb.i, i32 noundef 32, i1 noundef zeroext false) #15
  br label %do.body280

do.body280:                                       ; preds = %if.then276, %do.end259
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_vring_reap_rx.__UNIQUE_ID_ddebug536, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_vring_reap_rx, %if.then292)) #15
          to label %if.end298 [label %if.then292], !srcloc !356

if.then292:                                       ; preds = %do.body280
  call void @__sanitizer_cov_trace_pc() #17
  %127 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %data, align 4
  %len.i509 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 6
  %129 = ptrtoint ptr %len.i509 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %len.i509, align 4
  %data_len.i510 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 7
  %131 = ptrtoint ptr %data_len.i510 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %data_len.i510, align 8
  %sub.i511 = sub i32 %130, %132
  tail call void @print_hex_dump(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.49, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %128, i32 noundef %sub.i511, i1 noundef zeroext false) #15
  br label %if.end298

if.end298:                                        ; preds = %if.then292, %do.body280, %do.end231
  tail call void @kfree_skb_reason(ptr noundef %20, i32 noundef 0) #15
  br label %again.backedge

if.end299:                                        ; preds = %if.end162
  %status301 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 3, i32 29
  %133 = ptrtoint ptr %status301 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %status301, align 1
  %135 = and i8 %134, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool304.not = icmp eq i8 %135, 0
  br i1 %tobool304.not, label %if.end299.if.end327_crit_edge, label %if.then311, !prof !357

if.end299.if.end327_crit_edge:                    ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end327

if.then311:                                       ; preds = %if.end299
  %error = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 3, i32 28
  %136 = ptrtoint ptr %error to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %error, align 1
  %138 = and i8 %137, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %cmp315 = icmp eq i8 %138, 0
  br i1 %cmp315, label %if.then323, label %if.else324, !prof !361

if.then323:                                       ; preds = %if.then311
  call void @__sanitizer_cov_trace_pc() #17
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 15
  %139 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %139)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  %bf.set = or i16 %bf.clear, 512
  store i16 %bf.set, ptr %ip_summed, align 8
  br label %if.end327

if.else324:                                       ; preds = %if.then311
  call void @__sanitizer_cov_trace_pc() #17
  %rx_csum_err = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 63, i32 %retval.0.i493525, i32 3, i32 16
  %140 = ptrtoint ptr %rx_csum_err to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %rx_csum_err, align 8
  %inc325 = add i32 %141, 1
  store i32 %inc325, ptr %rx_csum_err, align 8
  br label %if.end327

if.end327:                                        ; preds = %if.else324, %if.then323, %if.end299.if.end327_crit_edge
  br i1 %tobool.not.i, label %if.end327.cleanup_crit_edge, label %if.then329

if.end327.cleanup_crit_edge:                      ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then329:                                       ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #17
  %142 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %143, i32 %cond.i
  %144 = call ptr @memmove(ptr %add.ptr, ptr %143, i32 12)
  %call332 = tail call ptr @skb_pull(ptr noundef nonnull %20, i32 noundef %cond.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then329, %if.end327.cleanup_crit_edge, %if.end156.cleanup_crit_edge, %again.backedge.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %20, %if.then329 ], [ %20, %if.end327.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %again.backedge.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %20, %if.end156.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_rx_reorder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wil_rx_refill(ptr noundef %wil, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  %dd.sroa.0.i = alloca i32, align 4
  %dd.sroa.4.i = alloca i32, align 4
  %dd.sroa.5.i = alloca i16, align 4
  %dd.sroa.6.i = alloca i16, align 2
  %dd.sroa.7.i = alloca i32, align 4
  %dd.sroa.8.i = alloca i32, align 4
  %dd.sroa.10.i = alloca i32, align 4
  %dd.sroa.12.i = alloca i16, align 4
  %dd.sroa.14.i = alloca i8, align 2
  %dd.sroa.15.i = alloca i8, align 1
  %dd.sroa.16.i = alloca i8, align 4
  %dd.sroa.17.i = alloca i8, align 1
  %dd.sroa.19.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 803, i16 %3)
  %cmp = icmp eq i16 %3, 803
  %cond = select i1 %cmp, i32 128, i32 0
  %swtail.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 55, i32 3
  %size.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 55, i32 2
  %swhead = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 55, i32 4
  %4 = ptrtoint ptr %swtail.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %swtail.i, align 4
  %add.i40 = add i32 %5, 1
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %size.i, align 4
  %conv.i41 = zext i16 %7 to i32
  %rem.i42 = urem i32 %add.i40, %conv.i41
  %8 = ptrtoint ptr %swhead to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %swhead, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i42, i32 %9)
  %cmp2.not43 = icmp eq i32 %rem.i42, %9
  br i1 %cmp2.not43, label %entry.do.body_crit_edge, label %land.rhs.lr.ph

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

land.rhs.lr.ph:                                   ; preds = %entry
  %wiphy.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 2
  %rx_buf_len.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 56
  %va.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 55, i32 1
  %ctx.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 55, i32 6
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %rem.i45 = phi i32 [ %rem.i42, %land.rhs.lr.ph ], [ %rem.i, %for.inc.land.rhs_crit_edge ]
  %count.addr.044 = phi i32 [ %count, %land.rhs.lr.ph ], [ %dec, %for.inc.land.rhs_crit_edge ]
  %dec = add i32 %count.addr.044, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.044)
  %cmp4 = icmp sgt i32 %count.addr.044, 0
  br i1 %cmp4, label %for.body, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

for.body:                                         ; preds = %land.rhs
  %10 = ptrtoint ptr %swtail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %swtail.i, align 4
  %12 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wiphy.i, align 8
  %parent.i.i = getelementptr inbounds %struct.wiphy, ptr %13, i32 0, i32 56, i32 1
  %14 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent.i.i, align 8
  %16 = ptrtoint ptr %rx_buf_len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_buf_len.i, align 8
  %add.i26 = add i32 %17, 14
  %18 = load i8, ptr @rx_align_2, align 1, !range !355
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.i = icmp eq i8 %18, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 6
  %add2.i = add i32 %add.i26, %cond.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dd.sroa.0.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dd.sroa.4.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dd.sroa.5.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dd.sroa.6.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dd.sroa.7.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dd.sroa.8.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dd.sroa.10.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dd.sroa.12.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dd.sroa.14.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dd.sroa.15.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dd.sroa.16.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dd.sroa.17.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dd.sroa.19.i)
  %19 = ptrtoint ptr %dd.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %dd.sroa.0.i, align 4
  %20 = ptrtoint ptr %dd.sroa.4.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %dd.sroa.4.i, align 4
  %21 = ptrtoint ptr %dd.sroa.5.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -1, ptr %dd.sroa.5.i, align 4
  %22 = ptrtoint ptr %dd.sroa.6.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -1, ptr %dd.sroa.6.i, align 2
  %23 = ptrtoint ptr %dd.sroa.7.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %dd.sroa.7.i, align 4
  %24 = ptrtoint ptr %dd.sroa.14.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %dd.sroa.14.i, align 2
  %25 = ptrtoint ptr %dd.sroa.15.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %dd.sroa.15.i, align 1
  %26 = ptrtoint ptr %dd.sroa.16.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %dd.sroa.16.i, align 4
  %27 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %va.i, align 4
  %arrayidx.i = getelementptr %union.wil_ring_desc, ptr %28, i32 %11
  %add3.i = add i32 %add2.i, %cond
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add3.i, i32 noundef 2592) #15
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %for.body.if.then_crit_edge, label %if.end.i, !prof !357

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.end.i:                                         ; preds = %for.body
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %29 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 %cond
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %31 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %32, i32 %cond
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call8.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %add2.i) #15
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15
  %33 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  store i16 %bf.clear.i, ptr %ip_summed.i, align 8
  %34 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %36 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len.i, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %35) #15
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.end.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !361

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %15) #15
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 3
  %38 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %40 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %15, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %41, %if.end.i.i.i ], [ %39, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.62, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #15
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %15, i32 noundef -1) #15
  br label %if.then18.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end.i
  tail call void @debug_dma_map_single(ptr noundef %15, ptr noundef %35, i32 noundef %37) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %42 = load ptr, ptr @mem_map, align 4
  %43 = ptrtoint ptr %35 to i32
  %sub.i.i = add i32 %43, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i50.i = getelementptr %struct.page, ptr %42, i32 %shr.i.i
  %and.i.i = and i32 %43, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %15, ptr noundef %add.ptr.i50.i, i32 noundef %and.i.i, i32 noundef %37, i32 noundef 2, i32 noundef 0) #15
  tail call void @debug_dma_mapping_error(ptr noundef %15, i32 noundef %call41.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.if.then18.i_crit_edge, label %for.inc

dma_map_single_attrs.exit.i.if.then18.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then18.i

if.then18.i:                                      ; preds = %dma_map_single_attrs.exit.i.if.then18.i_crit_edge, %dma_map_single_attrs.exit.thread.i
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #15
  br label %if.then

if.then:                                          ; preds = %if.then18.i, %for.body.if.then_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dd.sroa.0.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dd.sroa.4.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dd.sroa.5.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dd.sroa.6.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dd.sroa.7.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dd.sroa.8.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dd.sroa.10.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dd.sroa.12.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dd.sroa.14.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dd.sroa.15.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dd.sroa.16.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dd.sroa.17.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dd.sroa.19.i)
  %44 = ptrtoint ptr %swtail.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %swtail.i, align 4
  tail call void (ptr, ptr, ...) @__wil_err_ratelimited(ptr noundef %wil, ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.wil_rx_refill, i32 noundef -12, i32 noundef %45) #15
  br label %do.body

for.inc:                                          ; preds = %dma_map_single_attrs.exit.i
  %46 = ptrtoint ptr %dd.sroa.8.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1536, ptr %dd.sroa.8.i, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %call41.i.i) #15
  %48 = ptrtoint ptr %dd.sroa.10.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %dd.sroa.10.i, align 4
  %49 = ptrtoint ptr %dd.sroa.12.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %dd.sroa.12.i, align 4
  %50 = ptrtoint ptr %dd.sroa.17.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %dd.sroa.17.i, align 1
  %conv.i27 = trunc i32 %add2.i to i16
  %51 = tail call i16 @llvm.bswap.i16(i16 %conv.i27) #15
  %52 = ptrtoint ptr %dd.sroa.19.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %dd.sroa.19.i, align 2
  %53 = ptrtoint ptr %dd.sroa.0.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %dd.sroa.0.i.0.dd.sroa.0.i.0.dd.sroa.0.0.dd.sroa.0.0.dd.sroa.0.0.copyload.i = load volatile i32, ptr %dd.sroa.0.i, align 4
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store volatile i32 %dd.sroa.0.i.0.dd.sroa.0.i.0.dd.sroa.0.0.dd.sroa.0.0.dd.sroa.0.0.copyload.i, ptr %arrayidx.i, align 1
  %dd.sroa.4.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 4
  %55 = ptrtoint ptr %dd.sroa.4.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %dd.sroa.4.i.0.dd.sroa.4.i.0.dd.sroa.4.0.dd.sroa.4.0.dd.sroa.4.0.copyload.i = load volatile i32, ptr %dd.sroa.4.i, align 4
  %56 = ptrtoint ptr %dd.sroa.4.0.arrayidx.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store volatile i32 %dd.sroa.4.i.0.dd.sroa.4.i.0.dd.sroa.4.0.dd.sroa.4.0.dd.sroa.4.0.copyload.i, ptr %dd.sroa.4.0.arrayidx.sroa_idx.i, align 1
  %dd.sroa.5.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 8
  %57 = ptrtoint ptr %dd.sroa.5.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %dd.sroa.5.i.0.dd.sroa.5.i.0.dd.sroa.5.0.dd.sroa.5.0.dd.sroa.5.0.copyload.i = load volatile i16, ptr %dd.sroa.5.i, align 4
  %58 = ptrtoint ptr %dd.sroa.5.0.arrayidx.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %58, i32 2)
  store volatile i16 %dd.sroa.5.i.0.dd.sroa.5.i.0.dd.sroa.5.0.dd.sroa.5.0.dd.sroa.5.0.copyload.i, ptr %dd.sroa.5.0.arrayidx.sroa_idx.i, align 1
  %dd.sroa.6.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 10
  %59 = ptrtoint ptr %dd.sroa.6.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %dd.sroa.6.i.0.dd.sroa.6.i.0.dd.sroa.6.0.dd.sroa.6.0.dd.sroa.6.0.copyload.i = load volatile i16, ptr %dd.sroa.6.i, align 2
  %60 = ptrtoint ptr %dd.sroa.6.0.arrayidx.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %60, i32 2)
  store volatile i16 %dd.sroa.6.i.0.dd.sroa.6.i.0.dd.sroa.6.0.dd.sroa.6.0.dd.sroa.6.0.copyload.i, ptr %dd.sroa.6.0.arrayidx.sroa_idx.i, align 1
  %dd.sroa.7.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 12
  %61 = ptrtoint ptr %dd.sroa.7.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %dd.sroa.7.i.0.dd.sroa.7.i.0.dd.sroa.7.0.dd.sroa.7.0.dd.sroa.7.0.copyload.i = load volatile i32, ptr %dd.sroa.7.i, align 4
  %62 = ptrtoint ptr %dd.sroa.7.0.arrayidx.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store volatile i32 %dd.sroa.7.i.0.dd.sroa.7.i.0.dd.sroa.7.0.dd.sroa.7.0.dd.sroa.7.0.copyload.i, ptr %dd.sroa.7.0.arrayidx.sroa_idx.i, align 1
  %dd.sroa.8.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 16
  %63 = ptrtoint ptr %dd.sroa.8.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %dd.sroa.8.i.0.dd.sroa.8.i.0.dd.sroa.8.0.dd.sroa.8.0.dd.sroa.8.0.copyload.i = load volatile i32, ptr %dd.sroa.8.i, align 4
  %64 = ptrtoint ptr %dd.sroa.8.0.arrayidx.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store volatile i32 %dd.sroa.8.i.0.dd.sroa.8.i.0.dd.sroa.8.0.dd.sroa.8.0.dd.sroa.8.0.copyload.i, ptr %dd.sroa.8.0.arrayidx.sroa_idx.i, align 1
  %dd.sroa.10.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 20
  %65 = ptrtoint ptr %dd.sroa.10.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %dd.sroa.10.i.0.dd.sroa.10.i.0.dd.sroa.10.0.dd.sroa.10.0.dd.sroa.10.0.copyload.i = load volatile i32, ptr %dd.sroa.10.i, align 4
  %66 = ptrtoint ptr %dd.sroa.10.0.arrayidx.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store volatile i32 %dd.sroa.10.i.0.dd.sroa.10.i.0.dd.sroa.10.0.dd.sroa.10.0.dd.sroa.10.0.copyload.i, ptr %dd.sroa.10.0.arrayidx.sroa_idx.i, align 1
  %dd.sroa.12.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 24
  %67 = ptrtoint ptr %dd.sroa.12.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %dd.sroa.12.i.0.dd.sroa.12.i.0.dd.sroa.12.0.dd.sroa.12.0.dd.sroa.12.0.copyload.i = load volatile i16, ptr %dd.sroa.12.i, align 4
  %68 = ptrtoint ptr %dd.sroa.12.0.arrayidx.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %68, i32 2)
  store volatile i16 %dd.sroa.12.i.0.dd.sroa.12.i.0.dd.sroa.12.0.dd.sroa.12.0.dd.sroa.12.0.copyload.i, ptr %dd.sroa.12.0.arrayidx.sroa_idx.i, align 1
  %dd.sroa.14.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 26
  %69 = ptrtoint ptr %dd.sroa.14.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %dd.sroa.14.i.0.dd.sroa.14.i.0.dd.sroa.14.0.dd.sroa.14.0.dd.sroa.14.0.copyload.i = load volatile i8, ptr %dd.sroa.14.i, align 2
  %70 = ptrtoint ptr %dd.sroa.14.0.arrayidx.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store volatile i8 %dd.sroa.14.i.0.dd.sroa.14.i.0.dd.sroa.14.0.dd.sroa.14.0.dd.sroa.14.0.copyload.i, ptr %dd.sroa.14.0.arrayidx.sroa_idx.i, align 1
  %dd.sroa.15.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 27
  %71 = ptrtoint ptr %dd.sroa.15.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %dd.sroa.15.i.0.dd.sroa.15.i.0.dd.sroa.15.0.dd.sroa.15.0.dd.sroa.15.0.copyload.i = load volatile i8, ptr %dd.sroa.15.i, align 1
  %72 = ptrtoint ptr %dd.sroa.15.0.arrayidx.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store volatile i8 %dd.sroa.15.i.0.dd.sroa.15.i.0.dd.sroa.15.0.dd.sroa.15.0.dd.sroa.15.0.copyload.i, ptr %dd.sroa.15.0.arrayidx.sroa_idx.i, align 1
  %dd.sroa.16.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 28
  %73 = ptrtoint ptr %dd.sroa.16.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %dd.sroa.16.i.0.dd.sroa.16.i.0.dd.sroa.16.0.dd.sroa.16.0.dd.sroa.16.0.copyload.i = load volatile i8, ptr %dd.sroa.16.i, align 4
  %74 = ptrtoint ptr %dd.sroa.16.0.arrayidx.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store volatile i8 %dd.sroa.16.i.0.dd.sroa.16.i.0.dd.sroa.16.0.dd.sroa.16.0.dd.sroa.16.0.copyload.i, ptr %dd.sroa.16.0.arrayidx.sroa_idx.i, align 1
  %dd.sroa.17.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 29
  %75 = ptrtoint ptr %dd.sroa.17.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %dd.sroa.17.i.0.dd.sroa.17.i.0.dd.sroa.17.0.dd.sroa.17.0.dd.sroa.17.0.copyload.i = load volatile i8, ptr %dd.sroa.17.i, align 1
  %76 = ptrtoint ptr %dd.sroa.17.0.arrayidx.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store volatile i8 %dd.sroa.17.i.0.dd.sroa.17.i.0.dd.sroa.17.0.dd.sroa.17.0.dd.sroa.17.0.copyload.i, ptr %dd.sroa.17.0.arrayidx.sroa_idx.i, align 1
  %dd.sroa.19.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 30
  %dd.sroa.19.i.0.dd.sroa.19.i.0.dd.sroa.19.0.dd.sroa.19.0.dd.sroa.19.0.copyload.i = load volatile i16, ptr %dd.sroa.19.i, align 2
  %77 = ptrtoint ptr %dd.sroa.19.0.arrayidx.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %77, i32 2)
  store volatile i16 %dd.sroa.19.i.0.dd.sroa.19.i.0.dd.sroa.19.0.dd.sroa.19.0.dd.sroa.19.0.copyload.i, ptr %dd.sroa.19.0.arrayidx.sroa_idx.i, align 1
  %78 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ctx.i, align 4
  %arrayidx23.i = getelementptr %struct.wil_ctx, ptr %79, i32 %11
  %80 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call.i.i.i, ptr %arrayidx23.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dd.sroa.0.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dd.sroa.4.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dd.sroa.5.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dd.sroa.6.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dd.sroa.7.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dd.sroa.8.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dd.sroa.10.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dd.sroa.12.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dd.sroa.14.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dd.sroa.15.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dd.sroa.16.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dd.sroa.17.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dd.sroa.19.i)
  %81 = ptrtoint ptr %swtail.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %rem.i45, ptr %swtail.i, align 4
  %add.i = add nsw i32 %rem.i45, 1
  %82 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %size.i, align 4
  %conv.i = zext i16 %83 to i32
  %rem.i = urem i32 %add.i, %conv.i
  %84 = ptrtoint ptr %swhead to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %swhead, align 4
  %cmp2.not = icmp eq i32 %rem.i, %85
  br i1 %cmp2.not, label %for.inc.do.body_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %if.then, %land.rhs.do.body_crit_edge, %entry.do.body_crit_edge
  %rc.1 = phi i32 [ -12, %if.then ], [ 0, %entry.do.body_crit_edge ], [ 0, %land.rhs.do.body_crit_edge ], [ 0, %for.inc.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !364
  tail call void @arm_heavy_mb() #15
  %hwtail = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 55, i32 5
  %86 = ptrtoint ptr %hwtail to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %hwtail, align 4
  %88 = ptrtoint ptr %swtail.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %swtail.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !365
  tail call void @arm_heavy_mb() #15
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #15
  %csr.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %91 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %csr.i, align 4
  %sub.i = add i32 %87, -8912896
  %add.ptr.i = getelementptr i8, ptr %92, i32 %sub.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %90) #15, !srcloc !366
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !367
  tail call void @arm_heavy_mb() #15
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_tx_data_init(ptr noundef %txdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.wil_ring_tx_data, ptr %txdata, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #15
  %0 = ptrtoint ptr %txdata to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %txdata, align 4
  %enabled = getelementptr inbounds %struct.wil_ring_tx_data, ptr %txdata, i32 0, i32 1
  %agg_timeout = getelementptr inbounds %struct.wil_ring_tx_data, ptr %txdata, i32 0, i32 6
  %mid = getelementptr inbounds %struct.wil_ring_tx_data, ptr %txdata, i32 0, i32 9
  %1 = call ptr @memset(ptr %enabled, i32 0, i32 17)
  %2 = ptrtoint ptr %agg_timeout to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 0, ptr %agg_timeout, align 2
  %3 = ptrtoint ptr %mid to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %mid, align 2
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wil_vring_init_bcast(ptr nocapture noundef readonly %vif, i32 noundef %id, i32 noundef %size) #0 align 64 {
entry:
  %cmd = alloca %struct.wmi_bcast_vring_cfg_cmd, align 4
  %reply = alloca %struct.anon.154, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %wil1 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 2
  %0 = ptrtoint ptr %wil1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wil1, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cmd) #15
  %2 = getelementptr inbounds %struct.wmi_bcast_vring_cfg_cmd, ptr %cmd, i32 0, i32 1
  %3 = getelementptr inbounds %struct.wmi_bcast_vring_cfg_cmd, ptr %cmd, i32 0, i32 1, i32 0, i32 1
  %4 = getelementptr inbounds %struct.wmi_bcast_vring_cfg_cmd, ptr %cmd, i32 0, i32 1, i32 0, i32 2
  %5 = getelementptr inbounds %struct.wmi_bcast_vring_cfg_cmd, ptr %cmd, i32 0, i32 1, i32 1
  %6 = getelementptr inbounds %struct.wmi_bcast_vring_cfg_cmd, ptr %cmd, i32 0, i32 1, i32 2
  %7 = getelementptr inbounds %struct.wmi_bcast_vring_cfg_cmd, ptr %cmd, i32 0, i32 1, i32 3
  %8 = getelementptr inbounds %struct.wmi_bcast_vring_cfg_cmd, ptr %cmd, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %cmd, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 0, ptr %2, align 4
  %conv = trunc i32 %size to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mtu_max to i32))
  %13 = load i32, ptr @mtu_max, align 4
  %14 = trunc i32 %13 to i16
  %15 = add i16 %14, 69
  %conv2 = and i16 %15, -8
  %16 = tail call i16 @llvm.bswap.i16(i16 %conv2)
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %4, align 2
  %conv3 = trunc i32 %id to i8
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv3, ptr %5, align 4
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %6, align 1
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %7, align 2
  %21 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %reply) #15
  %22 = call ptr @memcpy(ptr %reply, ptr @__const.wil_vring_init_bcast.reply, i32 16)
  %arrayidx = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 57, i32 %id
  %arrayidx4 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 58, i32 %id
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_vring_init_bcast.__UNIQUE_ID_ddebug553, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_vring_init_bcast, %if.then)) #15
          to label %do.end15 [label %if.then], !srcloc !356

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %main_ndev, align 4
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %4, align 2
  %conv13 = zext i16 %26 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_vring_init_bcast.__UNIQUE_ID_ddebug553, ptr noundef %24, ptr noundef nonnull @.str.19, i32 noundef %conv13) #15
  br label %do.end15

do.end15:                                         ; preds = %if.then, %entry
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %4, align 2
  %conv19 = zext i16 %28 to i32
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %conv19) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %29 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool23.not = icmp eq i32 %29, 0
  br i1 %tobool23.not, label %do.end15.if.end49_crit_edge, label %land.rhs

do.end15.if.end49_crit_edge:                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end49

land.rhs:                                         ; preds = %do.end15
  %dep_map = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 69, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end43, label %land.rhs.if.end49_crit_edge, !prof !357

land.rhs.if.end49_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end49

do.end43:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1346, i32 noundef 9, ptr noundef null) #15
  br label %if.end49

if.end49:                                         ; preds = %do.end43, %land.rhs.if.end49_crit_edge, %do.end15.if.end49_crit_edge
  %va = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 57, i32 %id, i32 1
  %30 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %va, align 4
  %tobool59.not = icmp eq ptr %31, null
  br i1 %tobool59.not, label %if.end61, label %if.then60

if.then60:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, i32 noundef %id) #15
  br label %cleanup

if.end61:                                         ; preds = %if.end49
  %lock.i = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 58, i32 %id, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #15
  %32 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %arrayidx4, align 4
  %enabled.i = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 58, i32 %id, i32 1
  %agg_timeout.i = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 58, i32 %id, i32 6
  %mid.i = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 58, i32 %id, i32 9
  %33 = call ptr @memset(ptr %enabled.i, i32 0, i32 17)
  %34 = ptrtoint ptr %agg_timeout.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 0, ptr %agg_timeout.i, align 2
  %35 = ptrtoint ptr %mid.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -1, ptr %mid.i, align 2
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #15
  %is_rx = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 57, i32 %id, i32 8
  %36 = ptrtoint ptr %is_rx to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %is_rx, align 4
  %size63 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 57, i32 %id, i32 2
  %37 = ptrtoint ptr %size63 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv, ptr %size63, align 4
  %call64 = tail call fastcc i32 @wil_vring_alloc(ptr noundef %1, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end67:                                         ; preds = %if.end61
  %max_assoc_sta = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 26
  %38 = ptrtoint ptr %max_assoc_sta to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_assoc_sta, align 8
  %conv68 = trunc i32 %39 to i8
  %arrayidx69 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 62, i32 %id
  %40 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv68, ptr %arrayidx69, align 2
  %arrayidx73 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 62, i32 %id, i32 1
  %41 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %arrayidx73, align 1
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx, align 4
  %conv74 = zext i32 %43 to i64
  %44 = tail call i64 @llvm.bswap.i64(i64 %conv74)
  %45 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 8)
  store i64 %44, ptr %2, align 4
  %privacy = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 5
  %46 = ptrtoint ptr %privacy to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %privacy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool78.not = icmp eq i32 %47, 0
  br i1 %tobool78.not, label %if.then79, label %if.end67.if.end80_crit_edge

if.end67.if.end80_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end80

if.then79:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #17
  %48 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %arrayidx4, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %if.end67.if.end80_crit_edge
  %mid = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 3
  %49 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %mid, align 4
  %call81 = call i32 @wmi_call(ptr noundef %1, i16 noundef zeroext 2082, i8 noundef zeroext %50, ptr noundef nonnull %cmd, i16 noundef zeroext 20, i16 noundef zeroext 6177, ptr noundef nonnull %reply, i16 noundef zeroext 16, i32 noundef 100) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %if.end80.out_free_crit_edge

if.end80.out_free_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

if.end84:                                         ; preds = %if.end80
  %status = getelementptr inbounds %struct.anon.154, ptr %reply, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %cmp87.not = icmp eq i8 %52, 0
  br i1 %cmp87.not, label %if.end93, label %if.then89

if.then89:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #17
  %conv86 = zext i8 %52 to i32
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.18, i32 noundef %conv86) #15
  br label %out_free

if.end93:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #17
  call void @_raw_spin_lock_bh(ptr noundef %lock.i) #15
  %tx_vring_tail_ptr = getelementptr inbounds %struct.anon.154, ptr %reply, i32 0, i32 1, i32 3
  %53 = ptrtoint ptr %tx_vring_tail_ptr to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %tx_vring_tail_ptr, align 1
  %55 = call i32 @llvm.bswap.i32(i32 %54)
  %hwtail = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 57, i32 %id, i32 5
  %56 = ptrtoint ptr %hwtail to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %hwtail, align 4
  %57 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %mid, align 4
  %59 = ptrtoint ptr %mid.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %mid.i, align 2
  %60 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %enabled.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #15
  br label %cleanup

out_free:                                         ; preds = %if.then89, %if.end80.out_free_crit_edge
  %rc.0 = phi i32 [ %call81, %if.end80.out_free_crit_edge ], [ -22, %if.then89 ]
  call void @_raw_spin_lock_bh(ptr noundef %lock.i) #15
  %61 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %enabled.i, align 4
  %62 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %arrayidx4, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #15
  call void @wil_vring_free(ptr noundef %1, ptr noundef %arrayidx)
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end93, %if.end61.cleanup_crit_edge, %if.then60
  %retval.0 = phi i32 [ 0, %if.end93 ], [ -22, %if.then60 ], [ %call64, %if.end61.cleanup_crit_edge ], [ %rc.0, %out_free ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reply) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cmd) #15
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wil_vring_alloc(ptr noundef %wil, ptr noundef %vring) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %wiphy = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 2
  %0 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wiphy, align 8
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 56, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %size = getelementptr inbounds %struct.wil_ring, ptr %vring, i32 0, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %size, align 4
  %conv = zext i16 %5 to i32
  %mul = shl nuw nsw i32 %conv, 5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_vring_alloc.__UNIQUE_ID_ddebug521, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_vring_alloc, %if.then)) #15
          to label %do.end7 [label %if.then], !srcloc !356

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %6 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_vring_alloc.__UNIQUE_ID_ddebug521, ptr noundef %7, ptr noundef nonnull @.str.64) #15
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.64) #15
  %swhead = getelementptr inbounds %struct.wil_ring, ptr %vring, i32 0, i32 4
  %8 = ptrtoint ptr %swhead to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %swhead, align 4
  %swtail = getelementptr inbounds %struct.wil_ring, ptr %vring, i32 0, i32 3
  %9 = ptrtoint ptr %swtail to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %swtail, align 4
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %size, align 4
  %conv14 = zext i16 %11 to i32
  %12 = shl nuw nsw i32 %conv14, 3
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3520) #18
  %ctx = getelementptr inbounds %struct.wil_ring, ptr %vring, i32 0, i32 6
  %13 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call8.i.i, ptr %ctx, align 4
  %tobool17.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool17.not, label %if.then18, label %if.end19

if.then18:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #17
  %va = getelementptr inbounds %struct.wil_ring, ptr %vring, i32 0, i32 1
  %14 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %va, align 4
  br label %cleanup

if.end19:                                         ; preds = %do.end7
  %dma_addr_size = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 65
  %15 = ptrtoint ptr %dma_addr_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_addr_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %16)
  %cmp = icmp ugt i32 %16, 32
  br i1 %cmp, label %if.then21, label %if.end19.if.end23_crit_edge

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.then21:                                        ; preds = %if.end19
  %call.i = tail call i32 @dma_set_mask(ptr noundef %3, i64 noundef 4294967295) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.then21.if.end23_crit_edge

if.then21.if.end23_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.then.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %3, i64 noundef 4294967295) #15
  br label %if.end23

if.end23:                                         ; preds = %if.then.i, %if.then21.if.end23_crit_edge, %if.end19.if.end23_crit_edge
  %call.i118 = tail call ptr @dma_alloc_attrs(ptr noundef %3, i32 noundef %mul, ptr noundef %vring, i32 noundef 3264, i32 noundef 0) #15
  %va25 = getelementptr inbounds %struct.wil_ring, ptr %vring, i32 0, i32 1
  %17 = ptrtoint ptr %va25 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i118, ptr %va25, align 4
  %tobool27.not = icmp eq ptr %call.i118, null
  br i1 %tobool27.not, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx, align 4
  tail call void @kfree(ptr noundef %19) #15
  %20 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %ctx, align 4
  br label %cleanup

if.end31:                                         ; preds = %if.end23
  %21 = ptrtoint ptr %dma_addr_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma_addr_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %22)
  %cmp33 = icmp ugt i32 %22, 32
  br i1 %cmp33, label %if.then35, label %if.end31.if.end41_crit_edge

if.end31.if.end41_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %22)
  %cmp37 = icmp eq i32 %22, 64
  br i1 %cmp37, label %if.then35.cond.end_crit_edge, label %cond.false

if.then35.cond.end_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.false:                                       ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #17
  %sh_prom = zext i32 %22 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then35.cond.end_crit_edge
  %cond = phi i64 [ %sub, %cond.false ], [ -1, %if.then35.cond.end_crit_edge ]
  %call.i119 = tail call i32 @dma_set_mask(ptr noundef %3, i64 noundef %cond) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %cmp.i120 = icmp eq i32 %call.i119, 0
  br i1 %cmp.i120, label %if.then.i122, label %cond.end.if.end41_crit_edge

cond.end.if.end41_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

if.then.i122:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i121 = tail call i32 @dma_set_coherent_mask(ptr noundef %3, i64 noundef %cond) #15
  br label %if.end41

if.end41:                                         ; preds = %if.then.i122, %cond.end.if.end41_crit_edge, %if.end31.if.end41_crit_edge
  %23 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp44136.not = icmp eq i16 %24, 0
  br i1 %cmp44136.not, label %if.end41.do.body49_crit_edge, label %if.end41.for.body_crit_edge

if.end41.for.body_crit_edge:                      ; preds = %if.end41
  br label %for.body

if.end41.do.body49_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body49

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end41.for.body_crit_edge
  %i.0137 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end41.for.body_crit_edge ]
  %25 = ptrtoint ptr %va25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %va25, align 4
  %status = getelementptr %union.wil_ring_desc, ptr %26, i32 %i.0137, i32 0, i32 0, i32 1, i32 5
  %27 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %27)
  store volatile i8 1, ptr %status, align 1
  %inc = add nuw nsw i32 %i.0137, 1
  %28 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %size, align 4
  %conv43 = zext i16 %29 to i32
  %cmp44 = icmp ult i32 %inc, %conv43
  br i1 %cmp44, label %for.body.for.body_crit_edge, label %for.body.do.body49_crit_edge

for.body.do.body49_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body49

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

do.body49:                                        ; preds = %for.body.do.body49_crit_edge, %if.end41.do.body49_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_vring_alloc.__UNIQUE_ID_ddebug523, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_vring_alloc, %if.then61)) #15
          to label %do.end72 [label %if.then61], !srcloc !356

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev62 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %30 = ptrtoint ptr %main_ndev62 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %main_ndev62, align 4
  %32 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %size, align 4
  %conv64 = zext i16 %33 to i32
  %34 = ptrtoint ptr %va25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %va25, align 4
  %36 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_vring_alloc.__UNIQUE_ID_ddebug523, ptr noundef %31, ptr noundef nonnull @.str.65, i32 noundef %conv64, ptr noundef %35, ptr noundef %vring, ptr noundef %37) #15
  br label %do.end72

do.end72:                                         ; preds = %if.then61, %do.body49
  %38 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %size, align 4
  %conv74 = zext i16 %39 to i32
  %40 = ptrtoint ptr %va25 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %va25, align 4
  %42 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.65, i32 noundef %conv74, ptr noundef %41, ptr noundef %vring, ptr noundef %43) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end72, %if.then28, %if.then18
  %retval.0 = phi i32 [ 0, %do.end72 ], [ -12, %if.then28 ], [ -12, %if.then18 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_call(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wil_vring_free(ptr noundef %wil, ptr noundef %vring) #0 align 64 {
entry:
  %dd.sroa.0 = alloca i32, align 4
  %dd.sroa.5 = alloca i32, align 4
  %dd.sroa.6 = alloca i32, align 4
  %dd.sroa.7 = alloca i32, align 4
  %dd.sroa.8 = alloca i32, align 4
  %dd.sroa.9 = alloca i32, align 4
  %dd.sroa.11 = alloca i16, align 4
  %dd.sroa.12 = alloca i8, align 2
  %dd.sroa.13 = alloca i8, align 1
  %dd.sroa.14 = alloca i8, align 4
  %dd.sroa.15 = alloca i8, align 1
  %dd.sroa.16 = alloca i16, align 2
  %dd141.sroa.0 = alloca i32, align 4
  %dd141.sroa.4 = alloca i32, align 4
  %dd141.sroa.5 = alloca i16, align 4
  %dd141.sroa.6 = alloca i16, align 2
  %dd141.sroa.7 = alloca i32, align 4
  %dd141.sroa.8 = alloca i32, align 4
  %dd141.sroa.9 = alloca i32, align 4
  %dd141.sroa.11 = alloca i16, align 4
  %dd141.sroa.12 = alloca i8, align 2
  %dd141.sroa.13 = alloca i8, align 1
  %dd141.sroa.14 = alloca i8, align 4
  %dd141.sroa.15 = alloca i8, align 1
  %dd141.sroa.16 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %wiphy = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 2
  %0 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wiphy, align 8
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 56, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %size = getelementptr inbounds %struct.wil_ring, ptr %vring, i32 0, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 69, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !357

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 195, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %is_rx = getelementptr inbounds %struct.wil_ring, ptr %vring, i32 0, i32 8
  %7 = ptrtoint ptr %is_rx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_rx, align 4, !range !355
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool26.not = icmp eq i8 %8, 0
  br i1 %tobool26.not, label %if.then27, label %do.body57

if.then27:                                        ; preds = %if.end
  %ring_tx = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 57
  %sub.ptr.lhs.cast = ptrtoint ptr %vring to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %ring_tx to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_vring_free.__UNIQUE_ID_ddebug524, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_vring_free, %if.then40)) #15
          to label %do.end47 [label %if.then40], !srcloc !356

if.then40:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %9 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %main_ndev, align 4
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %size, align 4
  %conv42 = zext i16 %12 to i32
  %va = getelementptr inbounds %struct.wil_ring, ptr %vring, i32 0, i32 1
  %13 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %va, align 4
  %ctx = getelementptr inbounds %struct.wil_ring, ptr %vring, i32 0, i32 6
  %15 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_vring_free.__UNIQUE_ID_ddebug524, ptr noundef %10, ptr noundef nonnull @.str.67, i32 noundef %sub.ptr.div, i32 noundef %conv42, ptr noundef %14, ptr noundef %vring, ptr noundef %16) #15
  br label %do.end47

do.end47:                                         ; preds = %if.then40, %if.then27
  %17 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %size, align 4
  %conv49 = zext i16 %18 to i32
  %va50 = getelementptr inbounds %struct.wil_ring, ptr %vring, i32 0, i32 1
  %19 = ptrtoint ptr %va50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %va50, align 4
  %ctx52 = getelementptr inbounds %struct.wil_ring, ptr %vring, i32 0, i32 6
  %21 = ptrtoint ptr %ctx52 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx52, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.67, i32 noundef %sub.ptr.div, i32 noundef %conv49, ptr noundef %20, ptr noundef %vring, ptr noundef %22) #15
  br label %if.end88

do.body57:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_vring_free.__UNIQUE_ID_ddebug525, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_vring_free, %if.then69)) #15
          to label %do.end80 [label %if.then69], !srcloc !356

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev70 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %23 = ptrtoint ptr %main_ndev70 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %main_ndev70, align 4
  %25 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %size, align 4
  %conv72 = zext i16 %26 to i32
  %va73 = getelementptr inbounds %struct.wil_ring, ptr %vring, i32 0, i32 1
  %27 = ptrtoint ptr %va73 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %va73, align 4
  %ctx75 = getelementptr inbounds %struct.wil_ring, ptr %vring, i32 0, i32 6
  %29 = ptrtoint ptr %ctx75 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctx75, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_vring_free.__UNIQUE_ID_ddebug525, ptr noundef %24, ptr noundef nonnull @.str.68, i32 noundef %conv72, ptr noundef %28, ptr noundef %vring, ptr noundef %30) #15
  br label %do.end80

do.end80:                                         ; preds = %if.then69, %do.body57
  %31 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %size, align 4
  %conv82 = zext i16 %32 to i32
  %va83 = getelementptr inbounds %struct.wil_ring, ptr %vring, i32 0, i32 1
  %33 = ptrtoint ptr %va83 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %va83, align 4
  %ctx85 = getelementptr inbounds %struct.wil_ring, ptr %vring, i32 0, i32 6
  %35 = ptrtoint ptr %ctx85 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ctx85, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.68, i32 noundef %conv82, ptr noundef %34, ptr noundef %vring, ptr noundef %36) #15
  br label %if.end88

if.end88:                                         ; preds = %do.end80, %do.end47
  %swhead.i = getelementptr inbounds %struct.wil_ring, ptr %vring, i32 0, i32 4
  %swtail.i = getelementptr inbounds %struct.wil_ring, ptr %vring, i32 0, i32 3
  %37 = ptrtoint ptr %swhead.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %swhead.i, align 4
  %39 = ptrtoint ptr %swtail.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %swtail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp.i.not246 = icmp eq i32 %38, %40
  br i1 %cmp.i.not246, label %if.end88.while.end_crit_edge, label %while.body.lr.ph

if.end88.while.end_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end88
  %va144 = getelementptr inbounds %struct.wil_ring, ptr %vring, i32 0, i32 1
  %ctx146 = getelementptr inbounds %struct.wil_ring, ptr %vring, i32 0, i32 6
  %main_ndev119 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %cleanup154.while.body_crit_edge, %while.body.lr.ph
  %41 = phi i32 [ %40, %while.body.lr.ph ], [ %146, %cleanup154.while.body_crit_edge ]
  %42 = phi i32 [ %38, %while.body.lr.ph ], [ %144, %cleanup154.while.body_crit_edge ]
  %43 = ptrtoint ptr %is_rx to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %is_rx, align 4, !range !355
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool96.not = icmp eq i8 %44, 0
  br i1 %tobool96.not, label %if.then97, label %if.else140

if.then97:                                        ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dd.sroa.0)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dd.sroa.5)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dd.sroa.6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dd.sroa.7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dd.sroa.8)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dd.sroa.9)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dd.sroa.11)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dd.sroa.12)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dd.sroa.13)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dd.sroa.14)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dd.sroa.15)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dd.sroa.16)
  %45 = ptrtoint ptr %dd.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %dd.sroa.0, align 4
  %46 = ptrtoint ptr %dd.sroa.5 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %dd.sroa.5, align 4
  %47 = ptrtoint ptr %dd.sroa.6 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %dd.sroa.6, align 4
  %48 = ptrtoint ptr %dd.sroa.7 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %dd.sroa.7, align 4
  %49 = ptrtoint ptr %dd.sroa.8 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %dd.sroa.8, align 4
  %50 = ptrtoint ptr %dd.sroa.9 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %dd.sroa.9, align 4
  %51 = ptrtoint ptr %dd.sroa.11 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 -1, ptr %dd.sroa.11, align 4
  %52 = ptrtoint ptr %dd.sroa.12 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -1, ptr %dd.sroa.12, align 2
  %53 = ptrtoint ptr %dd.sroa.13 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -1, ptr %dd.sroa.13, align 1
  %54 = ptrtoint ptr %dd.sroa.14 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -1, ptr %dd.sroa.14, align 4
  %55 = ptrtoint ptr %dd.sroa.15 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -1, ptr %dd.sroa.15, align 1
  %56 = ptrtoint ptr %dd.sroa.16 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 -1, ptr %dd.sroa.16, align 2
  %57 = ptrtoint ptr %ctx146 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ctx146, align 4
  %arrayidx101 = getelementptr %struct.wil_ctx, ptr %58, i32 %41
  %tobool102.not = icmp eq ptr %arrayidx101, null
  br i1 %tobool102.not, label %do.body106, label %if.end131

do.body106:                                       ; preds = %if.then97
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_vring_free.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_vring_free, %if.then118)) #15
          to label %do.end125 [label %if.then118], !srcloc !356

if.then118:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #17
  %59 = ptrtoint ptr %main_ndev119 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %main_ndev119, align 4
  %61 = ptrtoint ptr %swtail.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %swtail.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_vring_free.__UNIQUE_ID_ddebug526, ptr noundef %60, ptr noundef nonnull @.str.69, i32 noundef %62) #15
  br label %do.end125

do.end125:                                        ; preds = %if.then118, %do.body106
  %63 = ptrtoint ptr %swtail.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %swtail.i, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.69, i32 noundef %64) #15
  %65 = ptrtoint ptr %swtail.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %swtail.i, align 4
  %add.i = add i32 %66, 1
  %67 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %size, align 4
  %conv.i232 = zext i16 %68 to i32
  %rem.i = urem i32 %add.i, %conv.i232
  store i32 %rem.i, ptr %swtail.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dd.sroa.0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dd.sroa.5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dd.sroa.6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dd.sroa.7)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dd.sroa.8)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dd.sroa.9)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dd.sroa.11)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dd.sroa.12)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dd.sroa.13)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dd.sroa.14)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dd.sroa.15)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dd.sroa.16)
  br label %cleanup154

if.end131:                                        ; preds = %if.then97
  %69 = ptrtoint ptr %va144 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %va144, align 4
  %arrayidx = getelementptr %union.wil_ring_desc, ptr %70, i32 %41
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %dd.sroa.0.0.copyload = load volatile i32, ptr %arrayidx, align 1
  %72 = ptrtoint ptr %dd.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile i32 %dd.sroa.0.0.copyload, ptr %dd.sroa.0, align 4
  %dd.sroa.5.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 4
  %73 = ptrtoint ptr %dd.sroa.5.0.arrayidx.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %dd.sroa.5.0.copyload = load volatile i32, ptr %dd.sroa.5.0.arrayidx.sroa_idx, align 1
  %74 = ptrtoint ptr %dd.sroa.5 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile i32 %dd.sroa.5.0.copyload, ptr %dd.sroa.5, align 4
  %dd.sroa.6.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 8
  %75 = ptrtoint ptr %dd.sroa.6.0.arrayidx.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %dd.sroa.6.0.copyload = load volatile i32, ptr %dd.sroa.6.0.arrayidx.sroa_idx, align 1
  %76 = ptrtoint ptr %dd.sroa.6 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile i32 %dd.sroa.6.0.copyload, ptr %dd.sroa.6, align 4
  %dd.sroa.7.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 12
  %77 = ptrtoint ptr %dd.sroa.7.0.arrayidx.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %dd.sroa.7.0.copyload = load volatile i32, ptr %dd.sroa.7.0.arrayidx.sroa_idx, align 1
  %78 = ptrtoint ptr %dd.sroa.7 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile i32 %dd.sroa.7.0.copyload, ptr %dd.sroa.7, align 4
  %dd.sroa.8.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 16
  %79 = ptrtoint ptr %dd.sroa.8.0.arrayidx.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %dd.sroa.8.0.copyload = load volatile i32, ptr %dd.sroa.8.0.arrayidx.sroa_idx, align 1
  %80 = ptrtoint ptr %dd.sroa.8 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile i32 %dd.sroa.8.0.copyload, ptr %dd.sroa.8, align 4
  %dd.sroa.9.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 20
  %81 = ptrtoint ptr %dd.sroa.9.0.arrayidx.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %dd.sroa.9.0.copyload = load volatile i32, ptr %dd.sroa.9.0.arrayidx.sroa_idx, align 1
  %82 = ptrtoint ptr %dd.sroa.9 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile i32 %dd.sroa.9.0.copyload, ptr %dd.sroa.9, align 4
  %dd.sroa.11.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 24
  %83 = ptrtoint ptr %dd.sroa.11.0.arrayidx.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %83, i32 2)
  %dd.sroa.11.0.copyload = load volatile i16, ptr %dd.sroa.11.0.arrayidx.sroa_idx, align 1
  %84 = ptrtoint ptr %dd.sroa.11 to i32
  call void @__asan_store2_noabort(i32 %84)
  store volatile i16 %dd.sroa.11.0.copyload, ptr %dd.sroa.11, align 4
  %dd.sroa.12.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 26
  %85 = ptrtoint ptr %dd.sroa.12.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %85)
  %dd.sroa.12.0.copyload = load volatile i8, ptr %dd.sroa.12.0.arrayidx.sroa_idx, align 1
  %86 = ptrtoint ptr %dd.sroa.12 to i32
  call void @__asan_store1_noabort(i32 %86)
  store volatile i8 %dd.sroa.12.0.copyload, ptr %dd.sroa.12, align 2
  %dd.sroa.13.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 27
  %87 = ptrtoint ptr %dd.sroa.13.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %87)
  %dd.sroa.13.0.copyload = load volatile i8, ptr %dd.sroa.13.0.arrayidx.sroa_idx, align 1
  %88 = ptrtoint ptr %dd.sroa.13 to i32
  call void @__asan_store1_noabort(i32 %88)
  store volatile i8 %dd.sroa.13.0.copyload, ptr %dd.sroa.13, align 1
  %dd.sroa.14.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 28
  %89 = ptrtoint ptr %dd.sroa.14.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %89)
  %dd.sroa.14.0.copyload = load volatile i8, ptr %dd.sroa.14.0.arrayidx.sroa_idx, align 1
  %90 = ptrtoint ptr %dd.sroa.14 to i32
  call void @__asan_store1_noabort(i32 %90)
  store volatile i8 %dd.sroa.14.0.copyload, ptr %dd.sroa.14, align 4
  %dd.sroa.15.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 29
  %91 = ptrtoint ptr %dd.sroa.15.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %91)
  %dd.sroa.15.0.copyload = load volatile i8, ptr %dd.sroa.15.0.arrayidx.sroa_idx, align 1
  %92 = ptrtoint ptr %dd.sroa.15 to i32
  call void @__asan_store1_noabort(i32 %92)
  store volatile i8 %dd.sroa.15.0.copyload, ptr %dd.sroa.15, align 1
  %dd.sroa.16.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 30
  %93 = ptrtoint ptr %dd.sroa.16.0.arrayidx.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %93, i32 2)
  %dd.sroa.16.0.copyload = load volatile i16, ptr %dd.sroa.16.0.arrayidx.sroa_idx, align 1
  %94 = ptrtoint ptr %dd.sroa.16 to i32
  call void @__asan_store2_noabort(i32 %94)
  store volatile i16 %dd.sroa.16.0.copyload, ptr %dd.sroa.16, align 2
  %mapped_as.i = getelementptr %struct.wil_ctx, ptr %58, i32 %41, i32 2
  %95 = ptrtoint ptr %mapped_as.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %mapped_as.i, align 1
  %.off.i = add i8 %96, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %sw.epilog.sink.split.i, label %if.end131.wil_txdesc_unmap.exit_crit_edge

if.end131.wil_txdesc_unmap.exit_crit_edge:        ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #17
  br label %wil_txdesc_unmap.exit

sw.epilog.sink.split.i:                           ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #17
  %97 = tail call i16 @llvm.bswap.i16(i16 %dd.sroa.16.0.copyload) #15
  %98 = tail call i32 @llvm.bswap.i32(i32 %dd.sroa.9.0.copyload) #15
  %conv4.i = zext i16 %97 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %98, i32 noundef %conv4.i, i32 noundef 1, i32 noundef 0) #15
  br label %wil_txdesc_unmap.exit

wil_txdesc_unmap.exit:                            ; preds = %sw.epilog.sink.split.i, %if.end131.wil_txdesc_unmap.exit_crit_edge
  %99 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx101, align 4
  %tobool132.not = icmp eq ptr %100, null
  br i1 %tobool132.not, label %wil_txdesc_unmap.exit.if.end135_crit_edge, label %if.then133

wil_txdesc_unmap.exit.if.end135_crit_edge:        ; preds = %wil_txdesc_unmap.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end135

if.then133:                                       ; preds = %wil_txdesc_unmap.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %100, i32 noundef 1) #15
  br label %if.end135

if.end135:                                        ; preds = %if.then133, %wil_txdesc_unmap.exit.if.end135_crit_edge
  %101 = ptrtoint ptr %swtail.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %swtail.i, align 4
  %add.i234 = add i32 %102, 1
  %103 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %size, align 4
  %conv.i236 = zext i16 %104 to i32
  %rem.i237 = urem i32 %add.i234, %conv.i236
  store i32 %rem.i237, ptr %swtail.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dd.sroa.0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dd.sroa.5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dd.sroa.6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dd.sroa.7)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dd.sroa.8)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dd.sroa.9)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dd.sroa.11)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dd.sroa.12)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dd.sroa.13)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dd.sroa.14)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dd.sroa.15)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dd.sroa.16)
  br label %cleanup154

if.else140:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dd141.sroa.0)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dd141.sroa.4)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dd141.sroa.5)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dd141.sroa.6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dd141.sroa.7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dd141.sroa.8)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dd141.sroa.9)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dd141.sroa.11)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dd141.sroa.12)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dd141.sroa.13)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dd141.sroa.14)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dd141.sroa.15)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dd141.sroa.16)
  %105 = ptrtoint ptr %dd141.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 -1, ptr %dd141.sroa.0, align 4
  %106 = ptrtoint ptr %dd141.sroa.4 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 -1, ptr %dd141.sroa.4, align 4
  %107 = ptrtoint ptr %dd141.sroa.5 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 -1, ptr %dd141.sroa.5, align 4
  %108 = ptrtoint ptr %dd141.sroa.6 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 -1, ptr %dd141.sroa.6, align 2
  %109 = ptrtoint ptr %dd141.sroa.7 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 -1, ptr %dd141.sroa.7, align 4
  %110 = ptrtoint ptr %dd141.sroa.8 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 -1, ptr %dd141.sroa.8, align 4
  %111 = ptrtoint ptr %dd141.sroa.9 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 -1, ptr %dd141.sroa.9, align 4
  %112 = ptrtoint ptr %dd141.sroa.11 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 -1, ptr %dd141.sroa.11, align 4
  %113 = ptrtoint ptr %dd141.sroa.12 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 -1, ptr %dd141.sroa.12, align 2
  %114 = ptrtoint ptr %dd141.sroa.13 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 -1, ptr %dd141.sroa.13, align 1
  %115 = ptrtoint ptr %dd141.sroa.14 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 -1, ptr %dd141.sroa.14, align 4
  %116 = ptrtoint ptr %dd141.sroa.15 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 -1, ptr %dd141.sroa.15, align 1
  %117 = ptrtoint ptr %dd141.sroa.16 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 -1, ptr %dd141.sroa.16, align 2
  %118 = ptrtoint ptr %va144 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %va144, align 4
  %arrayidx145 = getelementptr %union.wil_ring_desc, ptr %119, i32 %42
  %120 = ptrtoint ptr %ctx146 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ctx146, align 4
  %arrayidx148 = getelementptr %struct.wil_ctx, ptr %121, i32 %42
  %122 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_loadN_noabort(i32 %122, i32 4)
  %dd141.sroa.0.0.copyload = load volatile i32, ptr %arrayidx145, align 1
  store volatile i32 %dd141.sroa.0.0.copyload, ptr %dd141.sroa.0, align 4
  %dd141.sroa.4.0.arrayidx145.sroa_idx = getelementptr inbounds i8, ptr %arrayidx145, i32 4
  %123 = ptrtoint ptr %dd141.sroa.4.0.arrayidx145.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %123, i32 4)
  %dd141.sroa.4.0.copyload = load volatile i32, ptr %dd141.sroa.4.0.arrayidx145.sroa_idx, align 1
  store volatile i32 %dd141.sroa.4.0.copyload, ptr %dd141.sroa.4, align 4
  %dd141.sroa.5.0.arrayidx145.sroa_idx = getelementptr inbounds i8, ptr %arrayidx145, i32 8
  %124 = ptrtoint ptr %dd141.sroa.5.0.arrayidx145.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %124, i32 2)
  %dd141.sroa.5.0.copyload = load volatile i16, ptr %dd141.sroa.5.0.arrayidx145.sroa_idx, align 1
  store volatile i16 %dd141.sroa.5.0.copyload, ptr %dd141.sroa.5, align 4
  %dd141.sroa.6.0.arrayidx145.sroa_idx = getelementptr inbounds i8, ptr %arrayidx145, i32 10
  %125 = ptrtoint ptr %dd141.sroa.6.0.arrayidx145.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %125, i32 2)
  %dd141.sroa.6.0.copyload = load volatile i16, ptr %dd141.sroa.6.0.arrayidx145.sroa_idx, align 1
  store volatile i16 %dd141.sroa.6.0.copyload, ptr %dd141.sroa.6, align 2
  %dd141.sroa.7.0.arrayidx145.sroa_idx = getelementptr inbounds i8, ptr %arrayidx145, i32 12
  %126 = ptrtoint ptr %dd141.sroa.7.0.arrayidx145.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %126, i32 4)
  %dd141.sroa.7.0.copyload = load volatile i32, ptr %dd141.sroa.7.0.arrayidx145.sroa_idx, align 1
  store volatile i32 %dd141.sroa.7.0.copyload, ptr %dd141.sroa.7, align 4
  %dd141.sroa.8.0.arrayidx145.sroa_idx = getelementptr inbounds i8, ptr %arrayidx145, i32 16
  %127 = ptrtoint ptr %dd141.sroa.8.0.arrayidx145.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %127, i32 4)
  %dd141.sroa.8.0.copyload = load volatile i32, ptr %dd141.sroa.8.0.arrayidx145.sroa_idx, align 1
  store volatile i32 %dd141.sroa.8.0.copyload, ptr %dd141.sroa.8, align 4
  %dd141.sroa.9.0.arrayidx145.sroa_idx = getelementptr inbounds i8, ptr %arrayidx145, i32 20
  %128 = ptrtoint ptr %dd141.sroa.9.0.arrayidx145.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %128, i32 4)
  %dd141.sroa.9.0.copyload = load volatile i32, ptr %dd141.sroa.9.0.arrayidx145.sroa_idx, align 1
  store volatile i32 %dd141.sroa.9.0.copyload, ptr %dd141.sroa.9, align 4
  %dd141.sroa.11.0.arrayidx145.sroa_idx = getelementptr inbounds i8, ptr %arrayidx145, i32 24
  %129 = ptrtoint ptr %dd141.sroa.11.0.arrayidx145.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %129, i32 2)
  %dd141.sroa.11.0.copyload = load volatile i16, ptr %dd141.sroa.11.0.arrayidx145.sroa_idx, align 1
  store volatile i16 %dd141.sroa.11.0.copyload, ptr %dd141.sroa.11, align 4
  %dd141.sroa.12.0.arrayidx145.sroa_idx = getelementptr inbounds i8, ptr %arrayidx145, i32 26
  %130 = ptrtoint ptr %dd141.sroa.12.0.arrayidx145.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %130)
  %dd141.sroa.12.0.copyload = load volatile i8, ptr %dd141.sroa.12.0.arrayidx145.sroa_idx, align 1
  store volatile i8 %dd141.sroa.12.0.copyload, ptr %dd141.sroa.12, align 2
  %dd141.sroa.13.0.arrayidx145.sroa_idx = getelementptr inbounds i8, ptr %arrayidx145, i32 27
  %131 = ptrtoint ptr %dd141.sroa.13.0.arrayidx145.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %131)
  %dd141.sroa.13.0.copyload = load volatile i8, ptr %dd141.sroa.13.0.arrayidx145.sroa_idx, align 1
  store volatile i8 %dd141.sroa.13.0.copyload, ptr %dd141.sroa.13, align 1
  %dd141.sroa.14.0.arrayidx145.sroa_idx = getelementptr inbounds i8, ptr %arrayidx145, i32 28
  %132 = ptrtoint ptr %dd141.sroa.14.0.arrayidx145.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %132)
  %dd141.sroa.14.0.copyload = load volatile i8, ptr %dd141.sroa.14.0.arrayidx145.sroa_idx, align 1
  store volatile i8 %dd141.sroa.14.0.copyload, ptr %dd141.sroa.14, align 4
  %dd141.sroa.15.0.arrayidx145.sroa_idx = getelementptr inbounds i8, ptr %arrayidx145, i32 29
  %133 = ptrtoint ptr %dd141.sroa.15.0.arrayidx145.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %133)
  %dd141.sroa.15.0.copyload = load volatile i8, ptr %dd141.sroa.15.0.arrayidx145.sroa_idx, align 1
  store volatile i8 %dd141.sroa.15.0.copyload, ptr %dd141.sroa.15, align 1
  %dd141.sroa.16.0.arrayidx145.sroa_idx = getelementptr inbounds i8, ptr %arrayidx145, i32 30
  %134 = ptrtoint ptr %dd141.sroa.16.0.arrayidx145.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %134, i32 2)
  %dd141.sroa.16.0.copyload = load volatile i16, ptr %dd141.sroa.16.0.arrayidx145.sroa_idx, align 1
  store volatile i16 %dd141.sroa.16.0.copyload, ptr %dd141.sroa.16, align 2
  %135 = tail call i32 @llvm.bswap.i32(i32 %dd141.sroa.9.0.copyload) #15
  %136 = tail call i16 @llvm.bswap.i16(i16 %dd141.sroa.16.0.copyload)
  %conv151 = zext i16 %136 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %135, i32 noundef %conv151, i32 noundef 2, i32 noundef 0) #15
  %137 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx148, align 4
  tail call void @kfree_skb_reason(ptr noundef %138, i32 noundef 0) #15
  %139 = ptrtoint ptr %swhead.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %swhead.i, align 4
  %add.i239 = add i32 %140, 1
  %141 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %size, align 4
  %conv.i241 = zext i16 %142 to i32
  %rem.i242 = urem i32 %add.i239, %conv.i241
  store i32 %rem.i242, ptr %swhead.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dd141.sroa.0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dd141.sroa.4)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dd141.sroa.5)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dd141.sroa.6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dd141.sroa.7)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dd141.sroa.8)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dd141.sroa.9)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dd141.sroa.11)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dd141.sroa.12)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dd141.sroa.13)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dd141.sroa.14)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dd141.sroa.15)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dd141.sroa.16)
  br label %cleanup154

cleanup154:                                       ; preds = %if.else140, %if.end135, %do.end125
  %143 = ptrtoint ptr %swhead.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %swhead.i, align 4
  %145 = ptrtoint ptr %swtail.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %swtail.i, align 4
  %cmp.i.not = icmp eq i32 %144, %146
  br i1 %cmp.i.not, label %cleanup154.while.end_crit_edge, label %cleanup154.while.body_crit_edge

cleanup154.while.body_crit_edge:                  ; preds = %cleanup154
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

cleanup154.while.end_crit_edge:                   ; preds = %cleanup154
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %cleanup154.while.end_crit_edge, %if.end88.while.end_crit_edge
  %conv = zext i16 %5 to i32
  %mul = shl nuw nsw i32 %conv, 5
  %va159 = getelementptr inbounds %struct.wil_ring, ptr %vring, i32 0, i32 1
  %147 = ptrtoint ptr %va159 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %va159, align 4
  %149 = ptrtoint ptr %vring to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %vring, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef %mul, ptr noundef %148, i32 noundef %150, i32 noundef 0) #15
  %ctx161 = getelementptr inbounds %struct.wil_ring, ptr %vring, i32 0, i32 6
  %151 = ptrtoint ptr %ctx161 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %ctx161, align 4
  tail call void @kfree(ptr noundef %152) #15
  %153 = ptrtoint ptr %vring to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 0, ptr %vring, align 4
  %154 = ptrtoint ptr %va159 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr null, ptr %va159, align 4
  %155 = ptrtoint ptr %ctx161 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr null, ptr %ctx161, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_update_net_queues(ptr noundef %wil, ptr noundef %vif, ptr noundef %ring, i1 noundef zeroext %check_stop) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %net_queue_lock = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 50
  tail call void @_raw_spin_lock(ptr noundef %net_queue_lock) #15
  tail call fastcc void @__wil_update_net_queues(ptr noundef %wil, ptr noundef %vif, ptr noundef %ring, i1 noundef zeroext %check_stop)
  tail call void @_raw_spin_unlock(ptr noundef %net_queue_lock) #15
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__wil_update_net_queues(ptr noundef %wil, ptr noundef %vif, ptr noundef %ring, i1 noundef zeroext %check_stop) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %use_enhanced_dma_hw.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 67
  %0 = ptrtoint ptr %use_enhanced_dma_hw.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_enhanced_dma_hw.i, align 4, !range !355
  %2 = zext i8 %1 to i32
  %tobool.not = icmp eq ptr %vif, null
  br i1 %tobool.not, label %entry.cleanup219_crit_edge, label %if.end, !prof !357

entry.cleanup219_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup219

if.end:                                           ; preds = %entry
  %tobool4.not = icmp eq ptr %ring, null
  br i1 %tobool4.not, label %do.body38, label %do.body7

do.body7:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__wil_update_net_queues.__UNIQUE_ID_ddebug581, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__wil_update_net_queues, %if.then17)) #15
          to label %do.end22 [label %if.then17], !srcloc !356

if.then17:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %3 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %main_ndev, align 4
  %ring_tx = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 57
  %sub.ptr.lhs.cast = ptrtoint ptr %ring to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %ring_tx to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 40
  %mid = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 3
  %5 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mid, align 4
  %conv = zext i8 %6 to i32
  %conv19 = zext i1 %check_stop to i32
  %net_queue_stopped = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 34
  %7 = ptrtoint ptr %net_queue_stopped to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %net_queue_stopped, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__wil_update_net_queues.__UNIQUE_ID_ddebug581, ptr noundef %4, ptr noundef nonnull @.str.71, i32 noundef %sub.ptr.div, i32 noundef %conv, i32 noundef %conv19, i32 noundef %8) #15
  br label %do.end22

do.end22:                                         ; preds = %if.then17, %do.body7
  %ring_tx23 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 57
  %sub.ptr.lhs.cast25 = ptrtoint ptr %ring to i32
  %sub.ptr.rhs.cast26 = ptrtoint ptr %ring_tx23 to i32
  %sub.ptr.sub27 = sub i32 %sub.ptr.lhs.cast25, %sub.ptr.rhs.cast26
  %sub.ptr.div28 = sdiv exact i32 %sub.ptr.sub27, 40
  %mid29 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 3
  %9 = ptrtoint ptr %mid29 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mid29, align 4
  %conv30 = zext i8 %10 to i32
  %conv32 = zext i1 %check_stop to i32
  %net_queue_stopped33 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 34
  %11 = ptrtoint ptr %net_queue_stopped33 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %net_queue_stopped33, align 8
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.71, i32 noundef %sub.ptr.div28, i32 noundef %conv30, i32 noundef %conv32, i32 noundef %12) #15
  %13 = load i8, ptr @drop_if_ring_full, align 1, !range !355
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool71.not = icmp eq i8 %13, 0
  br i1 %tobool71.not, label %do.end22.if.end74_crit_edge, label %do.end22.cleanup219_crit_edge

do.end22.cleanup219_crit_edge:                    ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup219

do.end22.if.end74_crit_edge:                      ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end74

do.body38:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__wil_update_net_queues.__UNIQUE_ID_ddebug582, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__wil_update_net_queues, %if.then50)) #15
          to label %do.end61 [label %if.then50], !srcloc !356

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev51 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %14 = ptrtoint ptr %main_ndev51 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %main_ndev51, align 4
  %conv53 = zext i1 %check_stop to i32
  %mid54 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 3
  %16 = ptrtoint ptr %mid54 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mid54, align 4
  %conv55 = zext i8 %17 to i32
  %net_queue_stopped56 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 34
  %18 = ptrtoint ptr %net_queue_stopped56 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %net_queue_stopped56, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__wil_update_net_queues.__UNIQUE_ID_ddebug582, ptr noundef %15, ptr noundef nonnull @.str.72, i32 noundef %conv53, i32 noundef %conv55, i32 noundef %19) #15
  br label %do.end61

do.end61:                                         ; preds = %if.then50, %do.body38
  %conv63 = zext i1 %check_stop to i32
  %mid64 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 3
  %20 = ptrtoint ptr %mid64 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %mid64, align 4
  %conv65 = zext i8 %21 to i32
  %net_queue_stopped66 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 34
  %22 = ptrtoint ptr %net_queue_stopped66 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %net_queue_stopped66, align 8
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.72, i32 noundef %conv63, i32 noundef %conv65, i32 noundef %23) #15
  br label %if.end74

if.end74:                                         ; preds = %do.end61, %do.end22.if.end74_crit_edge
  %conv76.pre-phi = phi i32 [ %conv63, %do.end61 ], [ %conv32, %do.end22.if.end74_crit_edge ]
  %net_queue_stopped77 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 34
  %24 = ptrtoint ptr %net_queue_stopped77 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %net_queue_stopped77, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv76.pre-phi)
  %cmp = icmp eq i32 %25, %conv76.pre-phi
  br i1 %cmp, label %if.end74.cleanup219_crit_edge, label %if.end80

if.end74.cleanup219_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup219

if.end80:                                         ; preds = %if.end74
  br i1 %check_stop, label %if.then82, label %if.end118

if.then82:                                        ; preds = %if.end80
  br i1 %tobool4.not, label %if.then82.if.then92_crit_edge, label %lor.lhs.false

if.then82.if.then92_crit_edge:                    ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then92

lor.lhs.false:                                    ; preds = %if.then82
  %size.i.i = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 2
  %26 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %size.i.i, align 4
  %conv.i.i = zext i16 %27 to i32
  %swhead1.i.i.i = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 4
  %28 = ptrtoint ptr %swhead1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %swhead1.i.i.i, align 4
  %swtail2.i.i.i = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 3
  %30 = ptrtoint ptr %swtail2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %swtail2.i.i.i, align 4
  %add.i.i.i = add i32 %29, %conv.i.i
  %sub.i.i.i = sub i32 %add.i.i.i, %31
  %rem.i.i.i = urem i32 %sub.i.i.i, %conv.i.i
  %32 = xor i32 %rem.i.i.i, -1
  %sub1.i.i = add nsw i32 %32, %conv.i.i
  %33 = lshr i16 %27, 3
  %div.i.i = zext i16 %33 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i.i, i32 %div.i.i)
  %cmp.i.not = icmp slt i32 %sub1.i.i, %div.i.i
  br i1 %cmp.i.not, label %lor.lhs.false.if.then92_crit_edge, label %lor.lhs.false.cleanup219_crit_edge, !prof !357

lor.lhs.false.cleanup219_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup219

lor.lhs.false.if.then92_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then92

if.then92:                                        ; preds = %lor.lhs.false.if.then92_crit_edge, %if.then82.if.then92_crit_edge
  %ndev = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 1
  %34 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ndev, align 4
  tail call void @netif_tx_stop_all_queues(ptr noundef %35) #15
  %36 = ptrtoint ptr %net_queue_stopped77 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %net_queue_stopped77, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__wil_update_net_queues.__UNIQUE_ID_ddebug583, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__wil_update_net_queues, %if.then108)) #15
          to label %do.end114 [label %if.then108], !srcloc !356

if.then108:                                       ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev109 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %37 = ptrtoint ptr %main_ndev109 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %main_ndev109, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__wil_update_net_queues.__UNIQUE_ID_ddebug583, ptr noundef %38, ptr noundef nonnull @.str.73) #15
  br label %do.end114

do.end114:                                        ; preds = %if.then108, %if.then92
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.73) #15
  br label %cleanup219

if.end118:                                        ; preds = %if.end80
  %status = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 6
  %39 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %status, align 4
  %41 = and i32 %40, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool121.not = icmp eq i32 %41, 0
  br i1 %tobool121.not, label %lor.lhs.false122, label %if.end118.cleanup219_crit_edge

if.end118.cleanup219_crit_edge:                   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup219

lor.lhs.false122:                                 ; preds = %if.end118
  %42 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %status, align 4
  %44 = and i32 %43, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool126.not = icmp eq i32 %44, 0
  br i1 %tobool126.not, label %for.cond.preheader, label %lor.lhs.false122.cleanup219_crit_edge

lor.lhs.false122.cleanup219_crit_edge:            ; preds = %lor.lhs.false122
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup219

for.cond.preheader:                               ; preds = %lor.lhs.false122
  %mid135 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 3
  %45 = ptrtoint ptr %mid135 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %mid135, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0324 = phi i32 [ %2, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 57, i32 %i.0324
  %mid133 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 58, i32 %i.0324, i32 9
  %47 = ptrtoint ptr %mid133 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %mid133, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %48, i8 %46)
  %cmp137.not = icmp eq i8 %48, %46
  br i1 %cmp137.not, label %lor.lhs.false139, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

lor.lhs.false139:                                 ; preds = %for.body
  %va = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 57, i32 %i.0324, i32 1
  %49 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %va, align 4
  %tobool140.not = icmp eq ptr %50, null
  br i1 %tobool140.not, label %lor.lhs.false139.for.inc_crit_edge, label %lor.lhs.false141

lor.lhs.false139.for.inc_crit_edge:               ; preds = %lor.lhs.false139
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

lor.lhs.false141:                                 ; preds = %lor.lhs.false139
  %enabled = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 58, i32 %i.0324, i32 1
  %51 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool142.not = icmp eq i32 %52, 0
  %cmp144 = icmp eq ptr %arrayidx, %ring
  %or.cond = select i1 %tobool142.not, i1 true, i1 %cmp144
  br i1 %or.cond, label %lor.lhs.false141.for.inc_crit_edge, label %if.end147

lor.lhs.false141.for.inc_crit_edge:               ; preds = %lor.lhs.false141
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end147:                                        ; preds = %lor.lhs.false141
  %size.i.i291 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 57, i32 %i.0324, i32 2
  %53 = ptrtoint ptr %size.i.i291 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %size.i.i291, align 4
  %conv.i.i292 = zext i16 %54 to i32
  %swhead1.i.i.i293 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 57, i32 %i.0324, i32 4
  %55 = ptrtoint ptr %swhead1.i.i.i293 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %swhead1.i.i.i293, align 4
  %swtail2.i.i.i294 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 57, i32 %i.0324, i32 3
  %57 = ptrtoint ptr %swtail2.i.i.i294 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %swtail2.i.i.i294, align 4
  %add.i.i.i295 = add i32 %56, %conv.i.i292
  %sub.i.i.i296 = sub i32 %add.i.i.i295, %58
  %rem.i.i.i297 = urem i32 %sub.i.i.i296, %conv.i.i292
  %59 = xor i32 %rem.i.i.i297, -1
  %sub1.i.i298 = add nsw i32 %59, %conv.i.i292
  %60 = lshr i16 %54, 3
  %div.i.i299 = zext i16 %60 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i.i298, i32 %div.i.i299)
  %cmp.i300.not = icmp slt i32 %sub1.i.i298, %div.i.i299
  br i1 %cmp.i300.not, label %do.body153, label %if.end147.for.inc_crit_edge

if.end147.for.inc_crit_edge:                      ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

do.body153:                                       ; preds = %if.end147
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__wil_update_net_queues.__UNIQUE_ID_ddebug584, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__wil_update_net_queues, %if.then165)) #15
          to label %cleanup [label %if.then165], !srcloc !356

if.then165:                                       ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev166 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %61 = ptrtoint ptr %main_ndev166 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %main_ndev166, align 4
  %arrayidx.idx276 = mul i32 %i.0324, 40
  %sub.ptr.div172 = sdiv exact i32 %arrayidx.idx276, 40
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__wil_update_net_queues.__UNIQUE_ID_ddebug584, ptr noundef %62, ptr noundef nonnull @.str.74, i32 noundef %sub.ptr.div172) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then165, %do.body153
  %arrayidx.idx = mul i32 %i.0324, 40
  %sub.ptr.div183 = sdiv exact i32 %arrayidx.idx, 40
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.74, i32 noundef %sub.ptr.div183) #15
  br label %cleanup219

for.inc:                                          ; preds = %if.end147.for.inc_crit_edge, %lor.lhs.false141.for.inc_crit_edge, %lor.lhs.false139.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0324, 1
  %exitcond.not = icmp eq i32 %inc, 24
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %tobool4.not, label %for.end.do.body195_crit_edge, label %lor.lhs.false189

for.end.do.body195_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body195

lor.lhs.false189:                                 ; preds = %for.end
  %size.i.i302 = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 2
  %63 = ptrtoint ptr %size.i.i302 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %size.i.i302, align 4
  %conv.i.i303 = zext i16 %64 to i32
  %swhead1.i.i.i304 = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 4
  %65 = ptrtoint ptr %swhead1.i.i.i304 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %swhead1.i.i.i304, align 4
  %swtail2.i.i.i305 = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 3
  %67 = ptrtoint ptr %swtail2.i.i.i305 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %swtail2.i.i.i305, align 4
  %add.i.i.i306 = add i32 %66, %conv.i.i303
  %sub.i.i.i307 = sub i32 %add.i.i.i306, %68
  %rem.i.i.i308 = urem i32 %sub.i.i.i307, %conv.i.i303
  %69 = xor i32 %rem.i.i.i308, -1
  %sub1.i.i309 = add nsw i32 %69, %conv.i.i303
  %70 = lshr i16 %64, 2
  %div.i.i310 = zext i16 %70 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i.i309, i32 %div.i.i310)
  %cmp.i311.not = icmp sgt i32 %sub1.i.i309, %div.i.i310
  br i1 %cmp.i311.not, label %lor.lhs.false189.do.body195_crit_edge, label %lor.lhs.false189.cleanup219_crit_edge

lor.lhs.false189.cleanup219_crit_edge:            ; preds = %lor.lhs.false189
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup219

lor.lhs.false189.do.body195_crit_edge:            ; preds = %lor.lhs.false189
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body195

do.body195:                                       ; preds = %lor.lhs.false189.do.body195_crit_edge, %for.end.do.body195_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__wil_update_net_queues.__UNIQUE_ID_ddebug585, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__wil_update_net_queues, %if.then207)) #15
          to label %do.end213 [label %if.then207], !srcloc !356

if.then207:                                       ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev208 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %71 = ptrtoint ptr %main_ndev208 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %main_ndev208, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__wil_update_net_queues.__UNIQUE_ID_ddebug585, ptr noundef %72, ptr noundef nonnull @.str.75) #15
  br label %do.end213

do.end213:                                        ; preds = %if.then207, %do.body195
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.75) #15
  %ndev216 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 1
  %73 = ptrtoint ptr %ndev216 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ndev216, align 4
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %74, i32 0, i32 104
  %75 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp4.not.i = icmp eq i32 %76, 0
  br i1 %cmp4.not.i, label %do.end213.netif_tx_wake_all_queues.exit_crit_edge, label %for.body.lr.ph.i

do.end213.netif_tx_wake_all_queues.exit_crit_edge: ; preds = %do.end213
  call void @__sanitizer_cov_trace_pc() #17
  br label %netif_tx_wake_all_queues.exit

for.body.lr.ph.i:                                 ; preds = %do.end213
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %74, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %77 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %78, i32 %i.05.i
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i) #15
  %inc.i = add nuw i32 %i.05.i, 1
  %79 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i313 = icmp ult i32 %inc.i, %80
  br i1 %cmp.i313, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_wake_all_queues.exit_crit_edge

for.body.i.netif_tx_wake_all_queues.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netif_tx_wake_all_queues.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

netif_tx_wake_all_queues.exit:                    ; preds = %for.body.i.netif_tx_wake_all_queues.exit_crit_edge, %do.end213.netif_tx_wake_all_queues.exit_crit_edge
  %81 = ptrtoint ptr %net_queue_stopped77 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %net_queue_stopped77, align 8
  br label %cleanup219

cleanup219:                                       ; preds = %netif_tx_wake_all_queues.exit, %lor.lhs.false189.cleanup219_crit_edge, %cleanup, %lor.lhs.false122.cleanup219_crit_edge, %if.end118.cleanup219_crit_edge, %do.end114, %lor.lhs.false.cleanup219_crit_edge, %if.end74.cleanup219_crit_edge, %do.end22.cleanup219_crit_edge, %entry.cleanup219_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_update_net_queues_bh(ptr noundef %wil, ptr noundef %vif, ptr noundef %ring, i1 noundef zeroext %check_stop) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %net_queue_lock = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 50
  tail call void @_raw_spin_lock_bh(ptr noundef %net_queue_lock) #15
  tail call fastcc void @__wil_update_net_queues(ptr noundef %wil, ptr noundef %vif, ptr noundef %ring, i1 noundef zeroext %check_stop)
  tail call void @_raw_spin_unlock_bh(ptr noundef %net_queue_lock) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wil_start_xmit(ptr noundef %skb, ptr noundef %ndev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %wil1 = getelementptr i8, ptr %ndev, i32 3272
  %0 = ptrtoint ptr %wil1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wil1, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_start_xmit.__UNIQUE_ID_ddebug586, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_start_xmit, %if.then)) #15
          to label %do.end11 [label %if.then], !srcloc !356

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_start_xmit.__UNIQUE_ID_ddebug586, ptr noundef %8, ptr noundef nonnull @.str.23) #15
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.23) #15
  %status = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %status, align 4
  %and1.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool15.not = icmp eq i32 %and1.i, 0
  br i1 %tobool15.not, label %if.then24, label %if.end28, !prof !357

if.then24:                                        ; preds = %do.end11
  %.b164 = load i1, ptr @wil_start_xmit.pr_once_fw, align 1
  br i1 %.b164, label %if.then24.drop_crit_edge, label %if.then26

if.then24.drop_crit_edge:                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #17
  br label %drop

if.then26:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22) #15
  store i1 true, ptr @wil_start_xmit.pr_once_fw, align 1
  br label %drop

if.end28:                                         ; preds = %do.end11
  %status29 = getelementptr i8, ptr %ndev, i32 3280
  %11 = ptrtoint ptr %status29 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %status29, align 4
  %13 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool32.not = icmp eq i32 %13, 0
  br i1 %tobool32.not, label %if.then41, label %if.end42, !prof !357

if.then41:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @wil_dbg_ratelimited(ptr noundef %1, ptr noundef nonnull @.str.25) #15
  br label %drop

if.end42:                                         ; preds = %if.end28
  %iftype = getelementptr i8, ptr %ndev, i32 2308
  %14 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %15)
  %cmp = icmp eq i32 %15, 6
  br i1 %cmp, label %if.then49, label %if.end50, !prof !357

if.then49:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.22) #15
  br label %drop

if.end50:                                         ; preds = %if.end42
  store i1 false, ptr @wil_start_xmit.pr_once_fw, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp53 = icmp eq i32 %15, 2
  br i1 %cmp53, label %land.lhs.true, label %if.end50.if.else_crit_edge

if.end50.if.else_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true:                                    ; preds = %if.end50
  %pbss = getelementptr i8, ptr %ndev, i32 3296
  %16 = ptrtoint ptr %pbss to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pbss, align 8, !range !355
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool54.not = icmp eq i8 %17, 0
  br i1 %tobool54.not, label %if.then55, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then55:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %call56 = tail call fastcc ptr @wil_find_tx_ring_sta(ptr noundef %1, ptr noundef %add.ptr.i, ptr noundef %skb)
  br label %if.end77

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end50.if.else_crit_edge
  br i1 %tobool.i.not, label %if.else74, label %if.then58

if.then58:                                        ; preds = %if.else
  %pbss59 = getelementptr i8, ptr %ndev, i32 3296
  %18 = ptrtoint ptr %pbss59 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pbss59, align 8, !range !355
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool60.not = icmp eq i8 %19, 0
  br i1 %tobool60.not, label %lor.lhs.false, label %if.then58.if.then62_crit_edge

if.then58.if.then62_crit_edge:                    ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then62

lor.lhs.false:                                    ; preds = %if.then58
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %multicast_to_unicast.i = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 111
  %22 = ptrtoint ptr %multicast_to_unicast.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %multicast_to_unicast.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %lor.lhs.false.if.else64_crit_edge, label %if.end.i

lor.lhs.false.if.else64_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else64

if.end.i:                                         ; preds = %lor.lhs.false
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %21, i32 0, i32 2
  %24 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %h_proto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %25)
  %cmp.i = icmp eq i16 %25, -32512
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %26 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %27)
  %cmp3.i = icmp ugt i32 %27, 17
  br i1 %cmp3.i, label %if.then5.i, label %land.lhs.true.i.if.else64_crit_edge

land.lhs.true.i.if.else64_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else64

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %h_vlan_encapsulated_proto.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %21, i32 0, i32 3
  %28 = ptrtoint ptr %h_vlan_encapsulated_proto.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %h_vlan_encapsulated_proto.i, align 2
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end.i.if.end6.i_crit_edge
  %ethertype.0.i = phi i16 [ %29, %if.then5.i ], [ %25, %if.end.i.if.end6.i_crit_edge ]
  %30 = zext i16 %ethertype.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.132)
  switch i16 %ethertype.0.i, label %if.end6.i.if.else64_crit_edge [
    i16 2054, label %if.end6.i.if.then62_crit_edge
    i16 2048, label %if.end6.i.if.then62_crit_edge181
    i16 -31011, label %if.end6.i.if.then62_crit_edge182
  ]

if.end6.i.if.then62_crit_edge182:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then62

if.end6.i.if.then62_crit_edge181:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then62

if.end6.i.if.then62_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then62

if.end6.i.if.else64_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else64

if.then62:                                        ; preds = %if.end6.i.if.then62_crit_edge, %if.end6.i.if.then62_crit_edge181, %if.end6.i.if.then62_crit_edge182, %if.then58.if.then62_crit_edge
  %call63 = tail call fastcc ptr @wil_find_tx_bcast_2(ptr noundef %1, ptr noundef %add.ptr.i, ptr noundef %skb)
  br label %if.end77

if.else64:                                        ; preds = %if.end6.i.if.else64_crit_edge, %land.lhs.true.i.if.else64_crit_edge, %lor.lhs.false.if.else64_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp67 = icmp eq i32 %15, 3
  br i1 %cmp67, label %if.then68, label %if.else70

if.then68:                                        ; preds = %if.else64
  %bcast_ring.i = getelementptr i8, ptr %ndev, i32 3404
  %31 = ptrtoint ptr %bcast_ring.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bcast_ring.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i171 = icmp slt i32 %32, 0
  br i1 %cmp.i171, label %if.then68.do.body90_crit_edge, label %if.end.i173

if.then68.do.body90_crit_edge:                    ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body90

if.end.i173:                                      ; preds = %if.then68
  %arrayidx.i = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 57, i32 %32
  %arrayidx1.i = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 58, i32 %32
  %va.i = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 57, i32 %32, i32 1
  %33 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %va.i, align 4
  %tobool.not.i172 = icmp eq ptr %34, null
  br i1 %tobool.not.i172, label %if.end.i173.do.body90_crit_edge, label %lor.lhs.false.i

if.end.i173.do.body90_crit_edge:                  ; preds = %if.end.i173
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body90

lor.lhs.false.i:                                  ; preds = %if.end.i173
  %enabled.i = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 58, i32 %32, i32 1
  %35 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool2.not.i = icmp eq i32 %36, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.do.body90_crit_edge, label %if.end4.i

lor.lhs.false.i.do.body90_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body90

if.end4.i:                                        ; preds = %lor.lhs.false.i
  %37 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx1.i, align 4, !range !355
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool7.not.i = icmp eq i8 %38, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i174, label %if.end4.i.if.end77_crit_edge

if.end4.i.if.end77_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end77

land.lhs.true.i174:                               ; preds = %if.end4.i
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %39 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %40)
  %cmp8.not.i = icmp eq i16 %40, -30578
  br i1 %cmp8.not.i, label %land.lhs.true.i174.if.end77_crit_edge, label %land.lhs.true.i174.do.body90_crit_edge

land.lhs.true.i174.do.body90_crit_edge:           ; preds = %land.lhs.true.i174
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body90

land.lhs.true.i174.if.end77_crit_edge:            ; preds = %land.lhs.true.i174
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end77

if.else70:                                        ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #17
  %call71 = tail call fastcc ptr @wil_find_tx_bcast_2(ptr noundef %1, ptr noundef %add.ptr.i, ptr noundef %skb)
  br label %if.end77

if.else74:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %call75 = tail call fastcc ptr @wil_find_tx_ucast(ptr noundef %1, ptr noundef %add.ptr.i, ptr noundef %skb)
  br label %if.end77

if.end77:                                         ; preds = %if.else74, %if.else70, %land.lhs.true.i174.if.end77_crit_edge, %if.end4.i.if.end77_crit_edge, %if.then62, %if.then55
  %ring.0 = phi ptr [ %call63, %if.then62 ], [ %call71, %if.else70 ], [ %call75, %if.else74 ], [ %call56, %if.then55 ], [ %arrayidx.i, %land.lhs.true.i174.if.end77_crit_edge ], [ %arrayidx.i, %if.end4.i.if.end77_crit_edge ]
  %tobool78.not = icmp eq ptr %ring.0, null
  br i1 %tobool78.not, label %if.end77.do.body90_crit_edge, label %if.end111, !prof !357

if.end77.do.body90_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body90

do.body90:                                        ; preds = %if.end77.do.body90_crit_edge, %land.lhs.true.i174.do.body90_crit_edge, %lor.lhs.false.i.do.body90_crit_edge, %if.end.i173.do.body90_crit_edge, %if.then68.do.body90_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_start_xmit.__UNIQUE_ID_ddebug587, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_start_xmit, %if.then102)) #15
          to label %do.end108 [label %if.then102], !srcloc !356

if.then102:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev103 = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %41 = ptrtoint ptr %main_ndev103 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %main_ndev103, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_start_xmit.__UNIQUE_ID_ddebug587, ptr noundef %42, ptr noundef nonnull @.str.27, ptr noundef %3) #15
  br label %do.end108

do.end108:                                        ; preds = %if.then102, %do.body90
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.27, ptr noundef %3) #15
  br label %drop

if.end111:                                        ; preds = %if.end77
  %call112 = tail call fastcc i32 @wil_tx_ring(ptr noundef %1, ptr noundef %add.ptr.i, ptr noundef nonnull %ring.0, ptr noundef %skb)
  %43 = zext i32 %call112 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %call112, label %if.end111.drop_crit_edge [
    i32 0, label %sw.bb
    i32 -12, label %sw.bb113
  ]

if.end111.drop_crit_edge:                         ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #17
  br label %drop

sw.bb:                                            ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #17
  %net_queue_lock.i = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 50
  tail call void @_raw_spin_lock_bh(ptr noundef %net_queue_lock.i) #15
  tail call fastcc void @__wil_update_net_queues(ptr noundef %1, ptr noundef %add.ptr.i, ptr noundef nonnull %ring.0, i1 noundef zeroext true) #15
  tail call void @_raw_spin_unlock_bh(ptr noundef %net_queue_lock.i) #15
  br label %cleanup.sink.split

sw.bb113:                                         ; preds = %if.end111
  %44 = load i8, ptr @drop_if_ring_full, align 1, !range !355
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool114.not = icmp eq i8 %44, 0
  br i1 %tobool114.not, label %sw.bb113.cleanup_crit_edge, label %sw.bb113.drop_crit_edge

sw.bb113.drop_crit_edge:                          ; preds = %sw.bb113
  call void @__sanitizer_cov_trace_pc() #17
  br label %drop

sw.bb113.cleanup_crit_edge:                       ; preds = %sw.bb113
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

drop:                                             ; preds = %sw.bb113.drop_crit_edge, %if.end111.drop_crit_edge, %do.end108, %if.then49, %if.then41, %if.then26, %if.then24.drop_crit_edge
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 7
  %45 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %46, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %drop, %sw.bb
  %retval.0.ph = phi i32 [ 0, %sw.bb ], [ 1, %drop ]
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb113.cleanup_crit_edge
  %retval.0 = phi i32 [ 16, %sw.bb113.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @wil_find_tx_ring_sta(ptr noundef %wil, ptr nocapture noundef readonly %vif, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %use_enhanced_dma_hw.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 67
  %0 = ptrtoint ptr %use_enhanced_dma_hw.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_enhanced_dma_hw.i, align 4, !range !355
  %2 = zext i8 %1 to i32
  %mid4 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 3
  %max_assoc_sta = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 26
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.087 = phi i32 [ %2, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx1 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 58, i32 %i.087
  %va = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 57, i32 %i.087, i32 1
  %3 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %va, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %enabled = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 58, i32 %i.087, i32 1
  %5 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false3

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %mid = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 58, i32 %i.087, i32 9
  %7 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mid, align 2
  %9 = ptrtoint ptr %mid4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mid4, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %10)
  %cmp6.not = icmp eq i8 %8, %10
  br i1 %cmp6.not, label %if.end, label %lor.lhs.false3.for.inc_crit_edge

lor.lhs.false3.for.inc_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false3
  %arrayidx8 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 62, i32 %i.087
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx8, align 2
  %conv10 = zext i8 %12 to i32
  %13 = ptrtoint ptr %max_assoc_sta to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_assoc_sta, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv10)
  %cmp11.not = icmp ugt i32 %14, %conv10
  br i1 %cmp11.not, label %if.end14, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end14:                                         ; preds = %if.end
  %15 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx1, align 4, !range !355
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool17.not = icmp eq i8 %16, 0
  br i1 %tobool17.not, label %land.lhs.true, label %if.end14.do.body24_crit_edge

if.end14.do.body24_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body24

land.lhs.true:                                    ; preds = %if.end14
  %17 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %18)
  %cmp19.not = icmp eq i16 %18, -30578
  br i1 %cmp19.not, label %land.lhs.true.do.body24_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true.do.body24_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body24

do.body24:                                        ; preds = %land.lhs.true.do.body24_crit_edge, %if.end14.do.body24_crit_edge
  %arrayidx.le = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 57, i32 %i.087
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_find_tx_ring_sta.__UNIQUE_ID_ddebug556, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_find_tx_ring_sta, %if.then29)) #15
          to label %do.end32 [label %if.then29], !srcloc !356

if.then29:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %19 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_find_tx_ring_sta.__UNIQUE_ID_ddebug556, ptr noundef %20, ptr noundef nonnull @.str.77, i32 noundef %i.087) #15
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %do.body24
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.77, i32 noundef %i.087) #15
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end.for.inc_crit_edge, %lor.lhs.false3.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.087, 1
  %exitcond.not = icmp eq i32 %inc, 24
  br i1 %exitcond.not, label %do.body37, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

do.body37:                                        ; preds = %for.inc
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_find_tx_ring_sta.__UNIQUE_ID_ddebug557, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_find_tx_ring_sta, %if.then49)) #15
          to label %do.end55 [label %if.then49], !srcloc !356

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev50 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %21 = ptrtoint ptr %main_ndev50 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %main_ndev50, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_find_tx_ring_sta.__UNIQUE_ID_ddebug557, ptr noundef %22, ptr noundef nonnull @.str.78) #15
  br label %do.end55

do.end55:                                         ; preds = %if.then49, %do.body37
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.78) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end55, %do.end32
  %retval.0 = phi ptr [ %arrayidx.le, %do.end32 ], [ null, %do.end55 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @wil_find_tx_bcast_2(ptr noundef %wil, ptr noundef %vif, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %1, i32 0, i32 1
  %use_enhanced_dma_hw.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 67
  %2 = ptrtoint ptr %use_enhanced_dma_hw.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_enhanced_dma_hw.i, align 4, !range !355
  %4 = zext i8 %3 to i32
  %mid5 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 3
  %max_assoc_sta = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 26
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0227 = phi i32 [ %4, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx2 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 58, i32 %i.0227
  %va = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 57, i32 %i.0227, i32 1
  %5 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %va, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %enabled = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 58, i32 %i.0227, i32 1
  %7 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not = icmp eq i32 %8, 0
  br i1 %tobool3.not, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false4

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %mid = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 58, i32 %i.0227, i32 9
  %9 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mid, align 2
  %11 = ptrtoint ptr %mid5 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mid5, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %12)
  %cmp7.not = icmp eq i8 %10, %12
  br i1 %cmp7.not, label %if.end, label %lor.lhs.false4.for.inc_crit_edge

lor.lhs.false4.for.inc_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false4
  %arrayidx9 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 62, i32 %i.0227
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx9, align 2
  %conv11 = zext i8 %14 to i32
  %15 = ptrtoint ptr %max_assoc_sta to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_assoc_sta, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv11)
  %cmp12.not = icmp ugt i32 %16, %conv11
  br i1 %cmp12.not, label %if.end15, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end15:                                         ; preds = %if.end
  %17 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx2, align 4, !range !355
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool18.not = icmp eq i8 %18, 0
  br i1 %tobool18.not, label %land.lhs.true, label %if.end15.if.end23_crit_edge

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end15
  %19 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %20)
  %cmp20.not = icmp eq i16 %20, -30578
  br i1 %cmp20.not, label %land.lhs.true.if.end23_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.end23:                                         ; preds = %land.lhs.true.if.end23_crit_edge, %if.end15.if.end23_crit_edge
  %arrayidx24 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 63, i32 %conv11
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %arrayidx24, ptr noundef dereferenceable(6) %h_source.i, i32 6) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp26 = icmp eq i32 %bcmp, 0
  br i1 %cmp26, label %if.end23.for.inc_crit_edge, label %do.body44

if.end23.for.inc_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

for.inc:                                          ; preds = %if.end23.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.end.for.inc_crit_edge, %lor.lhs.false4.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0227, 1
  %exitcond.not = icmp eq i32 %inc, 24
  br i1 %exitcond.not, label %do.body31, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

do.body31:                                        ; preds = %for.inc
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_find_tx_bcast_2.__UNIQUE_ID_ddebug558, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_find_tx_bcast_2, %if.then36)) #15
          to label %do.end39 [label %if.then36], !srcloc !356

if.then36:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %21 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_find_tx_bcast_2.__UNIQUE_ID_ddebug558, ptr noundef %22, ptr noundef nonnull @.str.80) #15
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body31
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.80) #15
  br label %cleanup

do.body44:                                        ; preds = %if.end23
  %arrayidx.le = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 57, i32 %i.0227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_find_tx_bcast_2.__UNIQUE_ID_ddebug559, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_find_tx_bcast_2, %if.then56)) #15
          to label %do.end62 [label %if.then56], !srcloc !356

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev57 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %23 = ptrtoint ptr %main_ndev57 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %main_ndev57, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_find_tx_bcast_2.__UNIQUE_ID_ddebug559, ptr noundef %24, ptr noundef nonnull @.str.81, i32 noundef %i.0227) #15
  br label %do.end62

do.end62:                                         ; preds = %if.then56, %do.body44
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.81, i32 noundef %i.0227) #15
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i, align 4
  %27 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx9, align 2
  %conv.i = zext i8 %28 to i32
  %arrayidx2.i = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 63, i32 %conv.i
  %29 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx2.i, align 4
  %31 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %26, align 4
  %add.ptr.i.i = getelementptr i8, ptr %arrayidx2.i, i32 4
  %32 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %26, i32 4
  %34 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %add.ptr1.i.i, align 2
  %i.1229 = add nuw i32 %i.0227, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %i.1229)
  %cmp67230 = icmp slt i32 %i.1229, 24
  br i1 %cmp67230, label %for.body69.lr.ph, label %do.end62.cleanup_crit_edge

do.end62.cleanup_crit_edge:                       ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body69.lr.ph:                                 ; preds = %do.end62
  %main_ndev133 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  br label %for.body69

for.body69:                                       ; preds = %for.inc143.for.body69_crit_edge, %for.body69.lr.ph
  %i.1231 = phi i32 [ %i.1229, %for.body69.lr.ph ], [ %i.1, %for.inc143.for.body69_crit_edge ]
  %arrayidx71 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 57, i32 %i.1231
  %arrayidx73 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 58, i32 %i.1231
  %va74 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 57, i32 %i.1231, i32 1
  %35 = ptrtoint ptr %va74 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %va74, align 4
  %tobool75.not = icmp eq ptr %36, null
  br i1 %tobool75.not, label %for.body69.for.inc143_crit_edge, label %lor.lhs.false76

for.body69.for.inc143_crit_edge:                  ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc143

lor.lhs.false76:                                  ; preds = %for.body69
  %mid77 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 58, i32 %i.1231, i32 9
  %37 = ptrtoint ptr %mid77 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %mid77, align 2
  %39 = ptrtoint ptr %mid5 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %mid5, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %40)
  %cmp81.not = icmp eq i8 %38, %40
  br i1 %cmp81.not, label %if.end84, label %lor.lhs.false76.for.inc143_crit_edge

lor.lhs.false76.for.inc143_crit_edge:             ; preds = %lor.lhs.false76
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc143

if.end84:                                         ; preds = %lor.lhs.false76
  %arrayidx86 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 62, i32 %i.1231
  %41 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx86, align 2
  %conv88 = zext i8 %42 to i32
  %43 = ptrtoint ptr %max_assoc_sta to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_assoc_sta, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %conv88)
  %cmp90.not = icmp ugt i32 %44, %conv88
  br i1 %cmp90.not, label %if.end93, label %if.end84.for.inc143_crit_edge

if.end84.for.inc143_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc143

if.end93:                                         ; preds = %if.end84
  %45 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx73, align 4, !range !355
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool97.not = icmp eq i8 %46, 0
  br i1 %tobool97.not, label %land.lhs.true98, label %if.end93.if.end104_crit_edge

if.end93.if.end104_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end104

land.lhs.true98:                                  ; preds = %if.end93
  %47 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %48)
  %cmp101.not = icmp eq i16 %48, -30578
  br i1 %cmp101.not, label %land.lhs.true98.if.end104_crit_edge, label %land.lhs.true98.for.inc143_crit_edge

land.lhs.true98.for.inc143_crit_edge:             ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc143

land.lhs.true98.if.end104_crit_edge:              ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end104

if.end104:                                        ; preds = %land.lhs.true98.if.end104_crit_edge, %if.end93.if.end104_crit_edge
  %arrayidx107 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 63, i32 %conv88
  %bcmp210 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %arrayidx107, ptr noundef dereferenceable(6) %h_source.i, i32 6) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp210)
  %cmp111 = icmp eq i32 %bcmp210, 0
  br i1 %cmp111, label %if.end104.for.inc143_crit_edge, label %if.end114

if.end104.for.inc143_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc143

if.end114:                                        ; preds = %if.end104
  %call115 = tail call ptr @skb_copy(ptr noundef %skb, i32 noundef 2592) #15
  %tobool116.not = icmp eq ptr %call115, null
  br i1 %tobool116.not, label %if.else, label %do.body120

do.body120:                                       ; preds = %if.end114
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_find_tx_bcast_2.__UNIQUE_ID_ddebug560, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_find_tx_bcast_2, %if.then132)) #15
          to label %do.end138 [label %if.then132], !srcloc !356

if.then132:                                       ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #17
  %49 = ptrtoint ptr %main_ndev133 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %main_ndev133, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_find_tx_bcast_2.__UNIQUE_ID_ddebug560, ptr noundef %50, ptr noundef nonnull @.str.82, i32 noundef %i.1231) #15
  br label %do.end138

do.end138:                                        ; preds = %if.then132, %do.body120
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.82, i32 noundef %i.1231) #15
  %data.i.i217 = getelementptr inbounds %struct.sk_buff, ptr %call115, i32 0, i32 19
  %51 = ptrtoint ptr %data.i.i217 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data.i.i217, align 4
  %53 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx86, align 2
  %conv.i219 = zext i8 %54 to i32
  %arrayidx2.i220 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 63, i32 %conv.i219
  %55 = ptrtoint ptr %arrayidx2.i220 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx2.i220, align 4
  %57 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %52, align 4
  %add.ptr.i.i221 = getelementptr i8, ptr %arrayidx2.i220, i32 4
  %58 = ptrtoint ptr %add.ptr.i.i221 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %add.ptr.i.i221, align 2
  %add.ptr1.i.i222 = getelementptr i8, ptr %52, i32 4
  %60 = ptrtoint ptr %add.ptr1.i.i222 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %add.ptr1.i.i222, align 2
  %call141 = tail call fastcc i32 @wil_tx_ring(ptr noundef %wil, ptr noundef %vif, ptr noundef %arrayidx71, ptr noundef nonnull %call115)
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call115, i32 noundef 1) #15
  br label %for.inc143

if.else:                                          ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.79) #15
  br label %for.inc143

for.inc143:                                       ; preds = %if.else, %do.end138, %if.end104.for.inc143_crit_edge, %land.lhs.true98.for.inc143_crit_edge, %if.end84.for.inc143_crit_edge, %lor.lhs.false76.for.inc143_crit_edge, %for.body69.for.inc143_crit_edge
  %i.1 = add nuw nsw i32 %i.1231, 1
  %exitcond233.not = icmp eq i32 %i.1, 24
  br i1 %exitcond233.not, label %for.inc143.cleanup_crit_edge, label %for.inc143.for.body69_crit_edge

for.inc143.for.body69_crit_edge:                  ; preds = %for.inc143
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body69

for.inc143.cleanup_crit_edge:                     ; preds = %for.inc143
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.inc143.cleanup_crit_edge, %do.end62.cleanup_crit_edge, %do.end39
  %retval.0 = phi ptr [ null, %do.end39 ], [ %arrayidx.le, %do.end62.cleanup_crit_edge ], [ %arrayidx.le, %for.inc143.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @wil_find_tx_ucast(ptr noundef %wil, ptr nocapture noundef readonly %vif, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %use_enhanced_dma_hw.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 67
  %2 = ptrtoint ptr %use_enhanced_dma_hw.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_enhanced_dma_hw.i, align 4, !range !355
  %mid = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 3
  %4 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mid, align 4
  %call2 = tail call i32 @wil_find_cid(ptr noundef %wil, i8 noundef zeroext %5, ptr noundef %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup59_crit_edge, label %lor.lhs.false

entry.cleanup59_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup59

lor.lhs.false:                                    ; preds = %entry
  %max_assoc_sta = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 26
  %6 = ptrtoint ptr %max_assoc_sta to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_assoc_sta, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %7)
  %cmp3.not = icmp ult i32 %call2, %7
  br i1 %cmp3.not, label %for.cond.preheader, label %lor.lhs.false.cleanup59_crit_edge

lor.lhs.false.cleanup59_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup59

for.cond.preheader:                               ; preds = %lor.lhs.false
  %8 = zext i8 %3 to i32
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.096 = phi i32 [ %8, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 58, i32 %i.096
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 4, !range !355
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.body.if.end8_crit_edge

for.body.if.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

land.lhs.true:                                    ; preds = %for.body
  %11 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %12)
  %cmp5.not = icmp eq i16 %12, -30578
  br i1 %cmp5.not, label %land.lhs.true.if.end8_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %for.body.if.end8_crit_edge
  %arrayidx9 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 62, i32 %i.096
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx9, align 2
  %conv11 = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %conv11)
  %cmp12 = icmp eq i32 %call2, %conv11
  br i1 %cmp12, label %if.then14, label %if.end8.for.inc_crit_edge

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then14:                                        ; preds = %if.end8
  %arrayidx15 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 57, i32 %i.096
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_find_tx_ucast.__UNIQUE_ID_ddebug554, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_find_tx_ucast, %if.then24)) #15
          to label %do.end27 [label %if.then24], !srcloc !356

if.then24:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %15 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_find_tx_ucast.__UNIQUE_ID_ddebug554, ptr noundef %16, ptr noundef nonnull @.str.85, ptr noundef %1, i32 noundef %i.096) #15
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %if.then14
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.85, ptr noundef %1, i32 noundef %i.096) #15
  %va = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 57, i32 %i.096, i32 1
  %17 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %va, align 4
  %tobool30.not = icmp eq ptr %18, null
  br i1 %tobool30.not, label %do.end27.do.body36_crit_edge, label %land.lhs.true31

do.end27.do.body36_crit_edge:                     ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body36

land.lhs.true31:                                  ; preds = %do.end27
  %enabled = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 58, i32 %i.096, i32 1
  %19 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool32.not = icmp eq i32 %20, 0
  br i1 %tobool32.not, label %land.lhs.true31.do.body36_crit_edge, label %land.lhs.true31.cleanup59_crit_edge

land.lhs.true31.cleanup59_crit_edge:              ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup59

land.lhs.true31.do.body36_crit_edge:              ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body36

do.body36:                                        ; preds = %land.lhs.true31.do.body36_crit_edge, %do.end27.do.body36_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_find_tx_ucast.__UNIQUE_ID_ddebug555, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_find_tx_ucast, %if.then48)) #15
          to label %do.end54 [label %if.then48], !srcloc !356

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev49 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %21 = ptrtoint ptr %main_ndev49 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %main_ndev49, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_find_tx_ucast.__UNIQUE_ID_ddebug555, ptr noundef %22, ptr noundef nonnull @.str.86, i32 noundef %i.096) #15
  br label %do.end54

do.end54:                                         ; preds = %if.then48, %do.body36
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.86, i32 noundef %i.096) #15
  br label %cleanup59

for.inc:                                          ; preds = %if.end8.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.096, 1
  %exitcond.not = icmp eq i32 %inc, 24
  br i1 %exitcond.not, label %for.inc.cleanup59_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.cleanup59_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup59

cleanup59:                                        ; preds = %for.inc.cleanup59_crit_edge, %do.end54, %land.lhs.true31.cleanup59_crit_edge, %lor.lhs.false.cleanup59_crit_edge, %entry.cleanup59_crit_edge
  %retval.1 = phi ptr [ null, %lor.lhs.false.cleanup59_crit_edge ], [ null, %entry.cleanup59_crit_edge ], [ null, %do.end54 ], [ %arrayidx15, %land.lhs.true31.cleanup59_crit_edge ], [ null, %for.inc.cleanup59_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wil_tx_ring(ptr noundef %wil, ptr noundef %vif, ptr noundef %ring, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ring_tx = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 57
  %sub.ptr.lhs.cast = ptrtoint ptr %ring to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %ring_tx to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 40
  %lock = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 58, i32 %sub.ptr.div, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock) #15
  %status = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 6
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status, align 4
  %2 = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.body12_crit_edge

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body12

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %status, align 4
  %5 = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false.do.body12_crit_edge

lor.lhs.false.do.body12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body12

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %status, align 4
  %8 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10.not = icmp eq i32 %8, 0
  br i1 %tobool10.not, label %if.end23, label %lor.lhs.false6.do.body12_crit_edge

lor.lhs.false6.do.body12_crit_edge:               ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body12

do.body12:                                        ; preds = %lor.lhs.false6.do.body12_crit_edge, %lor.lhs.false.do.body12_crit_edge, %entry.do.body12_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_tx_ring.__UNIQUE_ID_ddebug580, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_tx_ring, %if.then17)) #15
          to label %do.end19 [label %if.then17], !srcloc !356

if.then17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %9 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_tx_ring.__UNIQUE_ID_ddebug580, ptr noundef %10, ptr noundef nonnull @.str.88) #15
  br label %do.end19

do.end19:                                         ; preds = %if.then17, %do.body12
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.88) #15
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false6
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %11 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.i.not = icmp eq i16 %14, 0
  br i1 %tobool.i.not, label %if.end23.cond.end_crit_edge, label %cond.true

if.end23.cond.end_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.true:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  %tx_ring_tso = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 8
  %15 = ptrtoint ptr %tx_ring_tso to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_ring_tso, align 16
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end23.cond.end_crit_edge
  %cond = phi ptr [ %16, %cond.true ], [ @__wil_tx_ring, %if.end23.cond.end_crit_edge ]
  %call25 = tail call i32 %cond(ptr noundef %wil, ptr noundef %vif, ptr noundef %ring, ptr noundef %skb) #15
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %do.end19
  %retval.0 = phi i32 [ -22, %do.end19 ], [ %call25, %cond.end ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_tx_latency_calc(ptr noundef %wil, ptr nocapture noundef readonly %skb, ptr nocapture noundef %sta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_latency = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 80
  %0 = ptrtoint ptr %tx_latency to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tx_latency, align 32, !range !355
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %cb, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp8.i.i = icmp slt i64 %3, 0
  %4 = tail call i64 @llvm.abs.i64(i64 %3, i1 false) #15
  %5 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %4) #20, !srcloc !368
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %4, i64 %5, i32 0) #20, !srcloc !369
  %asmresult10.i.i.i = extractvalue { i64, i32 } %6, 0
  %div181.i1.i = lshr i64 %asmresult10.i.i.i, 18
  %sub210.i.i = sub nsw i64 0, %div181.i1.i
  %spec.select.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div181.i1.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %spec.select.i.i)
  %cmp = icmp eq i64 %spec.select.i.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call3 = tail call i64 @ktime_get() #15
  %7 = ptrtoint ptr %cb to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %cb, align 8
  %sub.i = sub i64 %call3, %8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %9 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #15
  %10 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %9, i32 0) #20, !srcloc !370
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %10, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %10, 1
  %11 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %9, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #20, !srcloc !369
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %11, 0
  %div181.i1.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %div181.i1.i.i
  %spec.select.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div181.i1.i.i
  %conv = trunc i64 %spec.select.i.i.i to i32
  %tx_latency_res = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 81
  %12 = ptrtoint ptr %tx_latency_res to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_latency_res, align 4
  %div = udiv i32 %conv, %13
  %14 = tail call i32 @llvm.smin.i32(i32 %div, i32 199)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_tx_latency_calc.__UNIQUE_ID_ddebug590, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_tx_latency_calc, %if.then15)) #15
          to label %do.end18 [label %if.then15], !srcloc !356

if.then15:                                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %15 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_tx_latency_calc.__UNIQUE_ID_ddebug590, ptr noundef %16, ptr noundef nonnull @.str.29, i32 noundef %conv, i32 noundef %14) #15
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %if.end2
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.29, i32 noundef %conv, i32 noundef %14) #15
  %tx_latency_bins = getelementptr inbounds %struct.wil_sta_info, ptr %sta, i32 0, i32 4
  %17 = ptrtoint ptr %tx_latency_bins to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx_latency_bins, align 8
  %arrayidx = getelementptr i64, ptr %18, i32 %14
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx, align 8
  %inc = add i64 %20, 1
  store i64 %inc, ptr %arrayidx, align 8
  %conv21 = sext i32 %conv to i64
  %tx_latency_total_us = getelementptr inbounds %struct.wil_sta_info, ptr %sta, i32 0, i32 3, i32 7
  %21 = ptrtoint ptr %tx_latency_total_us to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %tx_latency_total_us, align 8
  %add = add i64 %22, %conv21
  store i64 %add, ptr %tx_latency_total_us, align 8
  %tx_latency_min_us = getelementptr inbounds %struct.wil_sta_info, ptr %sta, i32 0, i32 3, i32 5
  %23 = ptrtoint ptr %tx_latency_min_us to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_latency_min_us, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv)
  %cmp23 = icmp ugt i32 %24, %conv
  br i1 %cmp23, label %if.then25, label %do.end18.if.end28_crit_edge

do.end18.if.end28_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

if.then25:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %tx_latency_min_us to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv, ptr %tx_latency_min_us, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %do.end18.if.end28_crit_edge
  %tx_latency_max_us = getelementptr inbounds %struct.wil_sta_info, ptr %sta, i32 0, i32 3, i32 6
  %26 = ptrtoint ptr %tx_latency_max_us to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_latency_max_us, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %conv)
  %cmp30 = icmp ult i32 %27, %conv
  br i1 %cmp30, label %if.then32, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  %28 = ptrtoint ptr %tx_latency_max_us to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv, ptr %tx_latency_max_us, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end28.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wil_tx_complete(ptr noundef %vif, i32 noundef %ringid) local_unnamed_addr #0 align 64 {
entry:
  %dd = alloca %struct.vring_tx_desc, align 4
  %c = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %wil1 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 2
  %0 = ptrtoint ptr %wil1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wil1, align 8
  %ndev2 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 1
  %2 = ptrtoint ptr %ndev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev2, align 4
  %wiphy = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wiphy, align 8
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %5, i32 0, i32 56, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %arrayidx = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 57, i32 %ringid
  %arrayidx4 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 62, i32 %ringid
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx4, align 2
  %conv = zext i8 %9 to i32
  %va = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 57, i32 %ringid, i32 1
  %10 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %va, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.then, label %if.end, !prof !357

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.wil_tx_complete, i32 noundef %ringid) #15
  br label %cleanup230

if.end:                                           ; preds = %entry
  %enabled = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 58, i32 %ringid, i32 1
  %12 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool9.not = icmp eq i32 %13, 0
  br i1 %tobool9.not, label %if.then18, label %do.body21, !prof !357

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__wil_info(ptr noundef %1, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.wil_tx_complete, i32 noundef %ringid) #15
  br label %cleanup230

do.body21:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_tx_complete.__UNIQUE_ID_ddebug591, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_tx_complete, %if.then30)) #15
          to label %do.end33 [label %if.then30], !srcloc !356

if.then30:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_tx_complete.__UNIQUE_ID_ddebug591, ptr noundef %15, ptr noundef nonnull @.str.32, i32 noundef %ringid) #15
  br label %do.end33

do.end33:                                         ; preds = %if.then30, %do.body21
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.32, i32 noundef %ringid) #15
  %swhead1.i = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 57, i32 %ringid, i32 4
  %16 = ptrtoint ptr %swhead1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %swhead1.i, align 4
  %swtail2.i = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 57, i32 %ringid, i32 3
  %18 = ptrtoint ptr %swtail2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %swtail2.i, align 4
  %size.i = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 57, i32 %ringid, i32 2
  %20 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %size.i, align 4
  %conv.i = zext i16 %21 to i32
  %add.i = sub i32 %17, %19
  %sub.i = add i32 %add.i, %conv.i
  %rem.i = urem i32 %sub.i, %conv.i
  %ctx46 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 57, i32 %ringid, i32 6
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp.i.not364 = icmp eq i32 %17, %19
  br i1 %cmp.i.not364, label %do.end33.while.end196_crit_edge, label %while.body.lr.ph

do.end33.while.end196_crit_edge:                  ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end196

while.body.lr.ph:                                 ; preds = %do.end33
  %max_assoc_sta = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 26
  %22 = ptrtoint ptr %max_assoc_sta to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_assoc_sta, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv)
  %cmp = icmp ugt i32 %23, %conv
  %stats40 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %conv, i32 3
  %spec.select = select i1 %cmp, ptr %stats40, ptr null
  %24 = getelementptr inbounds %struct.vring_tx_desc, ptr %dd, i32 0, i32 1, i32 4
  %25 = getelementptr inbounds %struct.vring_tx_desc, ptr %dd, i32 0, i32 1, i32 5
  %26 = getelementptr inbounds %struct.vring_tx_desc, ptr %dd, i32 0, i32 1, i32 6
  %conv82 = trunc i32 %ringid to i8
  %main_ndev102 = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %tx_desc_unmap = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 68, i32 7
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 5
  %tobool171.not = icmp eq ptr %spec.select, null
  %tx_errors173 = getelementptr inbounds %struct.wil_net_stats, ptr %spec.select, i32 0, i32 4
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 1
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 3
  %tx_packets161 = getelementptr inbounds %struct.wil_net_stats, ptr %spec.select, i32 0, i32 1
  %tx_bytes164 = getelementptr inbounds %struct.wil_net_stats, ptr %spec.select, i32 0, i32 3
  %arrayidx167 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %conv
  br label %while.body

while.cond.loopexit:                              ; preds = %if.end187.while.cond.loopexit_crit_edge, %if.end64.while.cond.loopexit_crit_edge
  %done.1.lcssa = phi i32 [ %done.0365, %if.end64.while.cond.loopexit_crit_edge ], [ %inc193, %if.end187.while.cond.loopexit_crit_edge ]
  %27 = ptrtoint ptr %swhead1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %swhead1.i, align 4
  %29 = ptrtoint ptr %swtail2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %swtail2.i, align 4
  %cmp.i.not = icmp eq i32 %28, %30
  br i1 %cmp.i.not, label %while.cond.loopexit.while.end196_crit_edge, label %while.cond.loopexit.while.body_crit_edge

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.cond.loopexit.while.end196_crit_edge:       ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end196

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  %done.0365 = phi i32 [ 0, %while.body.lr.ph ], [ %done.1.lcssa, %while.cond.loopexit.while.body_crit_edge ]
  %31 = ptrtoint ptr %ctx46 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctx46, align 4
  %33 = ptrtoint ptr %swtail2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %swtail2.i, align 4
  %nr_frags = getelementptr %struct.wil_ctx, ptr %32, i32 %34, i32 1
  %35 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %nr_frags, align 4
  %conv49 = zext i8 %36 to i32
  %add = add i32 %34, %conv49
  %37 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %size.i, align 4
  %conv50 = zext i16 %38 to i32
  %rem = urem i32 %add, %conv50
  %39 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %va, align 4
  %status = getelementptr %union.wil_ring_desc, ptr %40, i32 %rem, i32 0, i32 0, i32 1, i32 5
  %41 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load volatile i8, ptr %status, align 1
  %43 = and i8 %42, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool54.not = icmp eq i8 %43, 0
  br i1 %tobool54.not, label %while.body.while.end196_crit_edge, label %if.end64, !prof !357

while.body.while.end196_crit_edge:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end196

if.end64:                                         ; preds = %while.body
  %44 = trunc i32 %rem to i16
  %rem68.lhs.trunc = add nuw i16 %44, 1
  %rem68360 = urem i16 %rem68.lhs.trunc, %38
  %rem68.zext = zext i16 %rem68360 to i32
  %45 = ptrtoint ptr %swtail2.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %swtail2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %rem68.zext)
  %cmp71.not362 = icmp eq i32 %46, %rem68.zext
  br i1 %cmp71.not362, label %if.end64.while.cond.loopexit_crit_edge, label %if.end64.while.body73_crit_edge

if.end64.while.body73_crit_edge:                  ; preds = %if.end64
  br label %while.body73

if.end64.while.cond.loopexit_crit_edge:           ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.loopexit

while.body73:                                     ; preds = %if.end187.while.body73_crit_edge, %if.end64.while.body73_crit_edge
  %done.1363 = phi i32 [ %inc193, %if.end187.while.body73_crit_edge ], [ %done.0365, %if.end64.while.body73_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dd) #15
  %47 = call ptr @memset(ptr %dd, i32 255, i32 32)
  %48 = ptrtoint ptr %ctx46 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ctx46, align 4
  %50 = ptrtoint ptr %swtail2.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %swtail2.i, align 4
  %arrayidx76 = getelementptr %struct.wil_ctx, ptr %49, i32 %51
  %52 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx76, align 4
  %54 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %va, align 4
  %arrayidx80 = getelementptr %union.wil_ring_desc, ptr %55, i32 %51
  %56 = call ptr @memcpy(ptr %dd, ptr %arrayidx80, i32 32)
  %57 = ptrtoint ptr %26 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %26, align 2
  %59 = call i16 @llvm.bswap.i16(i16 %58)
  %60 = ptrtoint ptr %swtail2.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %swtail2.i, align 4
  %conv84 = trunc i32 %61 to i16
  %conv85 = zext i16 %59 to i32
  %62 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %24, align 4
  call fastcc void @trace_wil6210_tx_done(i8 noundef zeroext %conv82, i16 noundef zeroext %conv84, i32 noundef %conv85, i8 noundef zeroext %63)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_tx_complete.__UNIQUE_ID_ddebug592, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_tx_complete, %if.then101)) #15
          to label %do.end115 [label %if.then101], !srcloc !356

if.then101:                                       ; preds = %while.body73
  call void @__sanitizer_cov_trace_pc() #17
  %64 = ptrtoint ptr %main_ndev102 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %main_ndev102, align 4
  %66 = ptrtoint ptr %swtail2.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %swtail2.i, align 4
  %68 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %25, align 1
  %conv107 = zext i8 %69 to i32
  %70 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %24, align 4
  %conv110 = zext i8 %71 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_tx_complete.__UNIQUE_ID_ddebug592, ptr noundef %65, ptr noundef nonnull @.str.33, i32 noundef %ringid, i32 noundef %67, i32 noundef %conv85, i32 noundef %conv107, i32 noundef %conv110) #15
  br label %do.end115

do.end115:                                        ; preds = %if.then101, %while.body73
  %72 = ptrtoint ptr %swtail2.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %swtail2.i, align 4
  %74 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %25, align 1
  %conv120 = zext i8 %75 to i32
  %76 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %24, align 4
  %conv123 = zext i8 %77 to i32
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.33, i32 noundef %ringid, i32 noundef %73, i32 noundef %conv85, i32 noundef %conv120, i32 noundef %conv123) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_tx_complete.__UNIQUE_ID_ddebug593, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_tx_complete, %if.then138)) #15
          to label %do.end141 [label %if.then138], !srcloc !356

if.then138:                                       ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #17
  call void @print_hex_dump(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.34, i32 noundef 0, i32 noundef 32, i32 noundef 4, ptr noundef nonnull %dd, i32 noundef 32, i1 noundef zeroext false) #15
  br label %do.end141

do.end141:                                        ; preds = %if.then138, %do.end115
  %78 = ptrtoint ptr %tx_desc_unmap to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %tx_desc_unmap, align 4
  call void %79(ptr noundef %7, ptr noundef nonnull %dd, ptr noundef %arrayidx76) #15
  %tobool142.not = icmp eq ptr %53, null
  br i1 %tobool142.not, label %do.end141.if.end187_crit_edge, label %if.then143

do.end141.if.end187_crit_edge:                    ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end187

if.then143:                                       ; preds = %do.end141
  %80 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %cmp147 = icmp eq i8 %81, 0
  br i1 %cmp147, label %if.then155, label %if.else, !prof !361

if.then155:                                       ; preds = %if.then143
  %82 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %83, 1
  store i32 %inc, ptr %tx_packets, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 6
  %84 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %len, align 4
  %86 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %tx_bytes, align 4
  %add158 = add i32 %87, %85
  store i32 %add158, ptr %tx_bytes, align 4
  br i1 %tobool171.not, label %if.then155.if.end176_crit_edge, label %if.then160

if.then155.if.end176_crit_edge:                   ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end176

if.then160:                                       ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #17
  %88 = ptrtoint ptr %tx_packets161 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tx_packets161, align 4
  %inc162 = add i32 %89, 1
  store i32 %inc162, ptr %tx_packets161, align 4
  %90 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %len, align 4
  %92 = ptrtoint ptr %tx_bytes164 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tx_bytes164, align 4
  %add165 = add i32 %93, %91
  store i32 %add165, ptr %tx_bytes164, align 4
  call void @wil_tx_latency_calc(ptr noundef %1, ptr noundef nonnull %53, ptr noundef %arrayidx167)
  br label %if.end176

if.else:                                          ; preds = %if.then143
  %94 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %tx_errors, align 4
  %inc170 = add i32 %95, 1
  store i32 %inc170, ptr %tx_errors, align 4
  br i1 %tobool171.not, label %if.else.if.end176_crit_edge, label %if.then172

if.else.if.end176_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end176

if.then172:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %96 = ptrtoint ptr %tx_errors173 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %tx_errors173, align 8
  %inc174 = add i32 %97, 1
  store i32 %inc174, ptr %tx_errors173, align 8
  br label %if.end176

if.end176:                                        ; preds = %if.then172, %if.else.if.end176_crit_edge, %if.then160, %if.then155.if.end176_crit_edge
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 15, i32 0, i32 18
  %98 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %99)
  %cmp178 = icmp eq i16 %99, -30578
  br i1 %cmp178, label %if.then180, label %if.end176.if.end181_crit_edge

if.end176.if.end181_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end181

if.then180:                                       ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #17
  call void @wil_tx_complete_handle_eapol(ptr noundef %vif, ptr noundef nonnull %53)
  br label %if.end181

if.end181:                                        ; preds = %if.then180, %if.end176.if.end181_crit_edge
  %100 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %cmp185 = icmp eq i8 %101, 0
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 19
  %102 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %data.i.i.i, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %103, align 4
  %106 = and i32 %105, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool.i.not.i.i.i = icmp eq i32 %106, 0
  br i1 %tobool.i.not.i.i.i, label %land.lhs.true.i.i, label %if.end181.if.else.i_crit_edge

if.end181.if.else.i_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

land.lhs.true.i.i:                                ; preds = %if.end181
  %107 = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 1
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 4
  %tobool.not.i.i = icmp eq ptr %109, null
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.if.else.i_crit_edge, label %wil_need_txstat.exit.i

land.lhs.true.i.i.if.else.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

wil_need_txstat.exit.i:                           ; preds = %land.lhs.true.i.i
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 17
  %110 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %end.i.i.i, align 4
  %tx_flags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %111, i32 0, i32 3
  %112 = ptrtoint ptr %tx_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %tx_flags.i.i, align 1
  %114 = and i8 %113, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool3.i.not.i = icmp eq i8 %114, 0
  br i1 %tobool3.i.not.i, label %wil_need_txstat.exit.i.if.else.i_crit_edge, label %if.then.i, !prof !361

wil_need_txstat.exit.i.if.else.i_crit_edge:       ; preds = %wil_need_txstat.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

if.then.i:                                        ; preds = %wil_need_txstat.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @skb_complete_wifi_ack(ptr noundef nonnull %53, i1 noundef zeroext %cmp185) #15
  br label %if.end187

if.else.i:                                        ; preds = %wil_need_txstat.exit.i.if.else.i_crit_edge, %land.lhs.true.i.i.if.else.i_crit_edge, %if.end181.if.else.i_crit_edge
  br i1 %cmp185, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__dev_kfree_skb_any(ptr noundef nonnull %53, i32 noundef 0) #15
  br label %if.end187

cond.false.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__dev_kfree_skb_any(ptr noundef nonnull %53, i32 noundef 1) #15
  br label %if.end187

if.end187:                                        ; preds = %cond.false.i, %cond.true.i, %if.then.i, %do.end141.if.end187_crit_edge
  %115 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_storeN_noabort(i32 %115, i32 8)
  store i64 0, ptr %arrayidx76, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !371
  call void @arm_heavy_mb() #15
  %116 = ptrtoint ptr %swtail2.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %swtail2.i, align 4
  %add.i342 = add i32 %117, 1
  %118 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %size.i, align 4
  %conv.i344 = zext i16 %119 to i32
  %rem.i345 = urem i32 %add.i342, %conv.i344
  store i32 %rem.i345, ptr %swtail2.i, align 4
  %inc193 = add i32 %done.1363, 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dd) #15
  %120 = ptrtoint ptr %swtail2.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %swtail2.i, align 4
  %cmp71.not = icmp eq i32 %121, %rem68.zext
  br i1 %cmp71.not, label %if.end187.while.cond.loopexit_crit_edge, label %if.end187.while.body73_crit_edge

if.end187.while.body73_crit_edge:                 ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body73

if.end187.while.cond.loopexit_crit_edge:          ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.loopexit

while.end196:                                     ; preds = %while.body.while.end196_crit_edge, %while.cond.loopexit.while.end196_crit_edge, %do.end33.while.end196_crit_edge
  %done.0.lcssa = phi i32 [ 0, %do.end33.while.end196_crit_edge ], [ %done.0365, %while.body.while.end196_crit_edge ], [ %done.1.lcssa, %while.cond.loopexit.while.end196_crit_edge ]
  %122 = ptrtoint ptr %swhead1.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %swhead1.i, align 4
  %124 = ptrtoint ptr %swtail2.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %swtail2.i, align 4
  %126 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %size.i, align 4
  %conv.i349 = zext i16 %127 to i32
  %add.i350 = sub i32 %123, %125
  %sub.i351 = add i32 %add.i350, %conv.i349
  %rem.i352 = urem i32 %sub.i351, %conv.i349
  %ring_idle_trsh = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 64
  %128 = ptrtoint ptr %ring_idle_trsh to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %ring_idle_trsh, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %rem.i352)
  %cmp.not.i = icmp sge i32 %129, %rem.i352
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %rem.i)
  %cmp1.i = icmp slt i32 %129, %rem.i
  %spec.select.i = and i1 %cmp.not.i, %cmp1.i
  br i1 %spec.select.i, label %do.body202, label %while.end196.if.end226_crit_edge

while.end196.if.end226_crit_edge:                 ; preds = %while.end196
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end226

do.body202:                                       ; preds = %while.end196
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_tx_complete.__UNIQUE_ID_ddebug594, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_tx_complete, %if.then214)) #15
          to label %do.end220 [label %if.then214], !srcloc !356

if.then214:                                       ; preds = %do.body202
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev215 = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %130 = ptrtoint ptr %main_ndev215 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %main_ndev215, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_tx_complete.__UNIQUE_ID_ddebug594, ptr noundef %131, ptr noundef nonnull @.str.36, i32 noundef %ringid, i32 noundef %rem.i, i32 noundef %rem.i352) #15
  br label %do.end220

do.end220:                                        ; preds = %if.then214, %do.body202
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef %ringid, i32 noundef %rem.i, i32 noundef %rem.i352) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #15
  %132 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 -1, ptr %c, align 4, !annotation !360
  %call224 = call i32 @read_current_timer(ptr noundef nonnull %c) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224)
  %tobool225.not = icmp eq i32 %call224, 0
  br i1 %tobool225.not, label %cond.false, label %do.end220.cond.end_crit_edge

do.end220.cond.end_crit_edge:                     ; preds = %do.end220
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.false:                                       ; preds = %do.end220
  call void @__sanitizer_cov_trace_pc() #17
  %133 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %c, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %do.end220.cond.end_crit_edge
  %cond = phi i32 [ %134, %cond.false ], [ 0, %do.end220.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #15
  %last_idle = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 58, i32 %ringid, i32 3
  %135 = ptrtoint ptr %last_idle to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %cond, ptr %last_idle, align 4
  br label %if.end226

if.end226:                                        ; preds = %cond.end, %while.end196.if.end226_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %done.0.lcssa)
  %tobool227.not = icmp eq i32 %done.0.lcssa, 0
  br i1 %tobool227.not, label %if.end226.cleanup230_crit_edge, label %if.then228

if.end226.cleanup230_crit_edge:                   ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup230

if.then228:                                       ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #17
  %net_queue_lock.i = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 50
  call void @_raw_spin_lock(ptr noundef %net_queue_lock.i) #15
  call fastcc void @__wil_update_net_queues(ptr noundef %1, ptr noundef %vif, ptr noundef %arrayidx, i1 noundef zeroext false) #15
  call void @_raw_spin_unlock(ptr noundef %net_queue_lock.i) #15
  br label %cleanup230

cleanup230:                                       ; preds = %if.then228, %if.end226.cleanup230_crit_edge, %if.then18, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then18 ], [ %done.0.lcssa, %if.then228 ], [ 0, %if.end226.cleanup230_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wil_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_wil6210_tx_done(i8 noundef zeroext %vring, i16 noundef zeroext %index, i32 noundef %len, i8 noundef zeroext %err) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wil6210_tx_done, i32 0, i32 1), ptr blockaddress(@trace_wil6210_tx_done, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !356

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !345) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !361

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  %9 = tail call i32 @llvm.read_register.i32(metadata !345) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !372
  %call42 = tail call i32 @__traceiter_wil6210_tx_done(ptr noundef null, i8 noundef zeroext %vring, i16 noundef zeroext %index, i32 noundef %len, i8 noundef zeroext %err) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !373
  %13 = tail call i32 @llvm.read_register.i32(metadata !345) #15
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !345) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !361

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !345) #15
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !374
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wil6210_tx_done, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wil6210_tx_done, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_wil6210_tx_done.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_wil6210_tx_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 251, ptr noundef nonnull @.str.54) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !375
  %31 = tail call i32 @llvm.read_register.i32(metadata !345) #15
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @read_current_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @wil_init_txrx_ops_legacy_dma(ptr nocapture noundef writeonly %wil) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %txrx_ops = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68
  %0 = ptrtoint ptr %txrx_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @wil_configure_interrupt_moderation, ptr %txrx_ops, align 16
  %tx_desc_map = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 6
  %1 = ptrtoint ptr %tx_desc_map to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @wil_tx_desc_map, ptr %tx_desc_map, align 8
  %tx_desc_unmap = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 7
  %2 = ptrtoint ptr %tx_desc_unmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @wil_txdesc_unmap, ptr %tx_desc_unmap, align 4
  %tx_ring_tso = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 8
  %3 = ptrtoint ptr %tx_ring_tso to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @__wil_tx_vring_tso, ptr %tx_ring_tso, align 16
  %ring_init_tx = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 1
  %4 = ptrtoint ptr %ring_init_tx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @wil_vring_init_tx, ptr %ring_init_tx, align 4
  %ring_fini_tx = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 2
  %5 = ptrtoint ptr %ring_fini_tx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @wil_vring_free, ptr %ring_fini_tx, align 8
  %ring_init_bcast = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 3
  %6 = ptrtoint ptr %ring_init_bcast to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @wil_vring_init_bcast, ptr %ring_init_bcast, align 4
  %tx_init = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 4
  %7 = ptrtoint ptr %tx_init to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @wil_tx_init, ptr %tx_init, align 16
  %tx_fini = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 5
  %8 = ptrtoint ptr %tx_fini to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @wil_tx_fini, ptr %tx_fini, align 4
  %tx_ring_modify = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 9
  %9 = ptrtoint ptr %tx_ring_modify to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @wil_tx_vring_modify, ptr %tx_ring_modify, align 4
  %rx_init = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 11
  %10 = ptrtoint ptr %rx_init to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @wil_rx_init, ptr %rx_init, align 4
  %wmi_addba_rx_resp = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 13
  %11 = ptrtoint ptr %wmi_addba_rx_resp to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @wmi_addba_rx_resp, ptr %wmi_addba_rx_resp, align 4
  %get_reorder_params = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 14
  %12 = ptrtoint ptr %get_reorder_params to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @wil_get_reorder_params, ptr %get_reorder_params, align 8
  %get_netif_rx_params = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 15
  %13 = ptrtoint ptr %get_netif_rx_params to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @wil_get_netif_rx_params, ptr %get_netif_rx_params, align 4
  %rx_crypto_check = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 16
  %14 = ptrtoint ptr %rx_crypto_check to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @wil_rx_crypto_check, ptr %rx_crypto_check, align 16
  %rx_error_check = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 17
  %15 = ptrtoint ptr %rx_error_check to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @wil_rx_error_check, ptr %rx_error_check, align 4
  %is_rx_idle = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 18
  %16 = ptrtoint ptr %is_rx_idle to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @wil_is_rx_idle, ptr %is_rx_idle, align 8
  %rx_fini = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 12
  %17 = ptrtoint ptr %rx_fini to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @wil_rx_fini, ptr %rx_fini, align 16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_configure_interrupt_moderation(ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @wil_tx_desc_map(ptr nocapture noundef writeonly %desc, i32 noundef %pa, i32 noundef %len, i32 noundef %vring_index) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dma = getelementptr inbounds %struct.vring_tx_desc, ptr %desc, i32 0, i32 1
  %addr = getelementptr inbounds %struct.vring_tx_desc, ptr %desc, i32 0, i32 1, i32 1
  %0 = tail call i32 @llvm.bswap.i32(i32 %pa) #15
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 %0, ptr %addr, align 1
  %addr_high.i = getelementptr inbounds %struct.vring_tx_desc, ptr %desc, i32 0, i32 1, i32 1, i32 1
  %conv = trunc i32 %len to i16
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %length = getelementptr inbounds %struct.vring_tx_desc, ptr %desc, i32 0, i32 1, i32 6
  %3 = call ptr @memset(ptr %addr_high.i, i32 0, i32 6)
  %4 = ptrtoint ptr %length to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %2, ptr %length, align 1
  %shl = shl i32 %vring_index, 16
  %5 = ptrtoint ptr %dma to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %shl, ptr %dma, align 1
  %arrayidx13 = getelementptr [3 x i32], ptr %desc, i32 0, i32 2
  %6 = call ptr @memset(ptr %desc, i32 0, i32 16)
  %7 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 1310720, ptr %arrayidx13, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wil_txdesc_unmap(ptr noundef %dev, ptr nocapture noundef readonly %desc, ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %length = getelementptr inbounds %struct.vring_tx_desc, ptr %desc, i32 0, i32 1, i32 6
  %2 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %length, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %addr = getelementptr inbounds %struct.vring_tx_desc, ptr %desc, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %addr, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #15
  %conv4 = zext i16 %4 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %7, i32 noundef %conv4, i32 noundef 1, i32 noundef 0) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__wil_tx_vring_tso(ptr noundef %wil, ptr nocapture noundef readnone %vif, ptr noundef %vring, ptr noundef %skb) #0 align 64 {
entry:
  %desc_mem = alloca %struct.vring_tx_desc, align 4
  %hdr_desc_mem = alloca %struct.vring_tx_desc, align 4
  %first_desc_mem = alloca %struct.vring_tx_desc, align 4
  %c = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %desc_mem.sroa.gep751 = getelementptr inbounds %struct.vring_tx_desc, ptr %desc_mem, i32 0, i32 1, i32 2
  %desc_mem.sroa.gep748 = getelementptr inbounds %struct.vring_tx_desc, ptr %desc_mem, i32 0, i32 1, i32 3
  %desc_mem.sroa.gep = getelementptr inbounds %struct.vring_tx_desc, ptr %desc_mem, i32 0, i32 1
  %first_desc_mem.sroa.gep750 = getelementptr inbounds %struct.vring_tx_desc, ptr %first_desc_mem, i32 0, i32 1, i32 2
  %first_desc_mem.sroa.gep747 = getelementptr inbounds %struct.vring_tx_desc, ptr %first_desc_mem, i32 0, i32 1, i32 3
  %first_desc_mem.sroa.gep = getelementptr inbounds %struct.vring_tx_desc, ptr %first_desc_mem, i32 0, i32 1
  %wiphy = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 2
  %0 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wiphy, align 8
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 56, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc_mem) #15
  %4 = call ptr @memset(ptr %desc_mem, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %hdr_desc_mem) #15
  %5 = getelementptr inbounds [3 x i32], ptr %hdr_desc_mem, i32 0, i32 2
  %6 = getelementptr inbounds %struct.vring_tx_desc, ptr %hdr_desc_mem, i32 0, i32 1
  %7 = getelementptr inbounds %struct.vring_tx_desc, ptr %hdr_desc_mem, i32 0, i32 1, i32 2
  %8 = getelementptr inbounds %struct.vring_tx_desc, ptr %hdr_desc_mem, i32 0, i32 1, i32 3
  %9 = call ptr @memset(ptr %hdr_desc_mem, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %first_desc_mem) #15
  %10 = getelementptr inbounds [3 x i32], ptr %first_desc_mem, i32 0, i32 2
  %swhead1 = getelementptr inbounds %struct.wil_ring, ptr %vring, i32 0, i32 4
  %11 = call ptr @memset(ptr %first_desc_mem, i32 255, i32 32)
  %12 = ptrtoint ptr %swhead1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %swhead1, align 4
  %size.i = getelementptr inbounds %struct.wil_ring, ptr %vring, i32 0, i32 2
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %size.i, align 4
  %conv.i = zext i16 %15 to i32
  %swtail2.i.i = getelementptr inbounds %struct.wil_ring, ptr %vring, i32 0, i32 3
  %16 = ptrtoint ptr %swtail2.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %swtail2.i.i, align 4
  %add.i.i = add i32 %13, %conv.i
  %sub.i.i = sub i32 %add.i.i, %17
  %rem.i.i = urem i32 %sub.i.i, %conv.i
  %18 = xor i32 %rem.i.i, -1
  %sub1.i = add nsw i32 %18, %conv.i
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %19 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %end.i, align 4
  %nr_frags4 = getelementptr inbounds %struct.skb_shared_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %nr_frags4 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %nr_frags4, align 2
  %conv = zext i8 %22 to i32
  %add = add nuw nsw i32 %conv, 1
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %20, i32 0, i32 4
  %23 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %gso_size, align 4
  %conv6 = zext i16 %24 to i32
  %ring_tx = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 57
  %sub.ptr.lhs.cast = ptrtoint ptr %vring to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %ring_tx to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__wil_tx_vring_tso.__UNIQUE_ID_ddebug561, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__wil_tx_vring_tso, %if.then)) #15
          to label %do.end14 [label %if.then], !srcloc !356

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %25 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %main_ndev, align 4
  %len12 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %27 = ptrtoint ptr %len12 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len12, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__wil_tx_vring_tso.__UNIQUE_ID_ddebug561, ptr noundef %26, ptr noundef nonnull @.str.101, i32 noundef %28, i32 noundef %sub.ptr.div) #15
  br label %do.end14

do.end14:                                         ; preds = %if.then, %entry
  %len15 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %29 = ptrtoint ptr %len15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len15, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.101, i32 noundef %30, i32 noundef %sub.ptr.div) #15
  %enabled = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 58, i32 %sub.ptr.div, i32 1
  %31 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool18.not = icmp eq i32 %32, 0
  br i1 %tobool18.not, label %do.end14.cleanup_crit_edge, label %if.end28, !prof !357

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end28:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i, i32 %conv)
  %cmp.not = icmp sgt i32 %sub1.i, %conv
  br i1 %cmp.not, label %if.end37, label %if.then36, !prof !361

if.then36:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__wil_err_ratelimited(ptr noundef %wil, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.100, i32 noundef %sub.ptr.div, i32 noundef %add) #15
  br label %cleanup

if.end37:                                         ; preds = %if.end28
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %33 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %transport_header.i, align 2
  %conv.i666 = zext i16 %34 to i32
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %35 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %network_header.i, align 4
  %conv1.i = zext i16 %36 to i32
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %37 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %head.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %38, i32 %conv.i666
  %doff.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %39 = ptrtoint ptr %doff.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %bf.load.i.i = load i16, ptr %doff.i.i, align 4
  %40 = lshr i16 %bf.load.i.i, 10
  %41 = and i16 %40, 60
  %mul.i.i = zext i16 %41 to i32
  %sub.i = add nuw nsw i32 %conv.i666, 14
  %add39 = sub nsw i32 %sub.i, %conv1.i
  %add41 = add nsw i32 %add39, %mul.i.i
  %42 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %end.i, align 4
  %gso_type43 = getelementptr inbounds %struct.skb_shared_info, ptr %43, i32 0, i32 8
  %44 = ptrtoint ptr %gso_type43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %gso_type43, align 8
  %and = and i32 %45, 17
  %46 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %and, label %if.end37.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 16, label %sw.bb46
  ]

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 %conv1.i
  %tot_len = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 2
  %47 = ptrtoint ptr %tot_len to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %tot_len, align 2
  %48 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %head.i.i.i, align 8
  %50 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %network_header.i, align 4
  %conv.i.i670 = zext i16 %51 to i32
  %add.ptr.i.i671 = getelementptr i8, ptr %49, i32 %conv.i.i670
  %check = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i671, i32 0, i32 7
  %52 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %check, align 2
  br label %sw.epilog

sw.bb46:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i675 = getelementptr i8, ptr %38, i32 %conv1.i
  %payload_len = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i675, i32 0, i32 2
  %53 = ptrtoint ptr %payload_len to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %payload_len, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb46, %sw.bb
  %is_ipv4.0.off0 = phi i1 [ false, %sw.bb46 ], [ true, %sw.bb ]
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %54 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %54)
  %bf.load = load i16, ptr %ip_summed, align 8
  %55 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %55)
  %cmp49.not = icmp eq i16 %55, 1536
  br i1 %cmp49.not, label %if.end52, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end52:                                         ; preds = %sw.epilog
  %56 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %head.i.i.i, align 8
  %58 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %transport_header.i, align 2
  %conv.i.i.i678 = zext i16 %59 to i32
  %add.ptr.i.i.i679 = getelementptr i8, ptr %57, i32 %conv.i.i.i678
  %doff.i.i680 = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i679, i32 0, i32 4
  %60 = ptrtoint ptr %doff.i.i680 to i32
  call void @__asan_load2_noabort(i32 %60)
  %bf.load.i.i681 = load i16, ptr %doff.i.i680, align 4
  %61 = lshr i16 %bf.load.i.i681, 10
  %62 = and i16 %61, 60
  %mul.i.i682 = zext i16 %62 to i32
  %63 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %network_header.i, align 4
  %sub.i687 = sub i16 %59, %64
  %va = getelementptr inbounds %struct.wil_ring, ptr %vring, i32 0, i32 1
  %65 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %va, align 4
  %arrayidx55 = getelementptr %union.wil_ring_desc, ptr %66, i32 %13
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %67 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %68) #15
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end52
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !361

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %3) #15
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %69 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %70, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %71 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %3, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %72, %if.end.i.i ], [ %70, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.62, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #15
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef -1) #15
  br label %if.then65

dma_map_single_attrs.exit:                        ; preds = %if.end52
  tail call void @debug_dma_map_single(ptr noundef %3, ptr noundef %68, i32 noundef %add41) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %73 = load ptr, ptr @mem_map, align 4
  %74 = ptrtoint ptr %68 to i32
  %sub.i688 = add i32 %74, 1073741824
  %shr.i = lshr i32 %sub.i688, 12
  %add.ptr.i = getelementptr %struct.page, ptr %73, i32 %shr.i
  %and.i = and i32 %74, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %3, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %add41, i32 noundef 1, i32 noundef 0) #15
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef %call41.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.if.then65_crit_edge, label %if.end66

dma_map_single_attrs.exit.if.then65_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then65

if.then65:                                        ; preds = %dma_map_single_attrs.exit.if.then65_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.100) #15
  br label %cleanup

if.end66:                                         ; preds = %dma_map_single_attrs.exit
  %tx_desc_map = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 6
  %75 = ptrtoint ptr %tx_desc_map to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tx_desc_map, align 8
  %call67 = call i32 %76(ptr noundef nonnull %hdr_desc_mem, i32 noundef %call41.i, i32 noundef %add41, i32 noundef %sub.ptr.div) #15
  %conv4.i = select i1 %is_ipv4.0.off0, i8 -114, i8 14
  %77 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv4.i, ptr %8, align 1
  %78 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %6, align 4
  %shl17.i = select i1 %is_ipv4.0.off0, i32 16384, i32 0
  %or11.i = or i32 %shl17.i, %mul.i.i682
  %conv21.i = trunc i16 %sub.i687 to i8
  %80 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv21.i, ptr %7, align 2
  %or14.i = or i32 %or11.i, %79
  %or.i = or i32 %or14.i, -2145343744
  store i32 %or.i, ptr %6, align 4
  %ctx = getelementptr inbounds %struct.wil_ring, ptr %vring, i32 0, i32 6
  %81 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ctx, align 4
  %mapped_as = getelementptr %struct.wil_ctx, ptr %82, i32 %13, i32 2
  %83 = ptrtoint ptr %mapped_as to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %mapped_as, align 1
  %84 = ptrtoint ptr %len15 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %len15, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %86 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %data_len.i, align 8
  %88 = add i32 %add41, %87
  %sub = sub i32 %85, %88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool73.not = icmp ne i32 %sub, 0
  %cond = sext i1 %tobool73.not to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %conv)
  %cmp74827 = icmp slt i32 %cond, %conv
  br i1 %cmp74827, label %for.body.lr.ph, label %if.end66.while.body381.preheader_crit_edge

if.end66.while.body381.preheader_crit_edge:       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body381.preheader

for.body.lr.ph:                                   ; preds = %if.end66
  %89 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ctx, align 4
  %main_ndev93 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %init_name.i.i702 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %sub254 = add nsw i32 %conv, -1
  %nr_frags263 = getelementptr %struct.wil_ctx, ptr %90, i32 %13, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %_desc.0842 = phi ptr [ null, %for.body.lr.ph ], [ %_desc.1.lcssa, %for.inc.for.body_crit_edge ]
  %_first_desc.0841 = phi ptr [ null, %for.body.lr.ph ], [ %_first_desc.1.lcssa, %for.inc.for.body_crit_edge ]
  %d.0840 = phi ptr [ %hdr_desc_mem, %for.body.lr.ph ], [ %d.1.lcssa, %for.inc.for.body_crit_edge ]
  %first_ctx.0839 = phi ptr [ null, %for.body.lr.ph ], [ %first_ctx.1.lcssa, %for.inc.for.body_crit_edge ]
  %descs_used.0838 = phi i32 [ 1, %for.body.lr.ph ], [ %descs_used.1.lcssa, %for.inc.for.body_crit_edge ]
  %sg_desc_cnt.0837 = phi i32 [ 0, %for.body.lr.ph ], [ %sg_desc_cnt.1.lcssa, %for.inc.for.body_crit_edge ]
  %f.0834 = phi i32 [ %cond, %for.body.lr.ph ], [ %inc288, %for.inc.for.body_crit_edge ]
  %desc_tso_type.0833 = phi i32 [ 1, %for.body.lr.ph ], [ %desc_tso_type.1.lcssa, %for.inc.for.body_crit_edge ]
  %hdr_compensation_need.0832 = phi i32 [ 1, %for.body.lr.ph ], [ %hdr_compensation_need.1.lcssa, %for.inc.for.body_crit_edge ]
  %rem_data.0831 = phi i32 [ %conv6, %for.body.lr.ph ], [ %rem_data.1.lcssa, %for.inc.for.body_crit_edge ]
  %frag.0830 = phi ptr [ null, %for.body.lr.ph ], [ %frag.1860, %for.inc.for.body_crit_edge ]
  %i.0829 = phi i32 [ %13, %for.body.lr.ph ], [ %i.1.lcssa, %for.inc.for.body_crit_edge ]
  %headlen.0828 = phi i32 [ %sub, %for.body.lr.ph ], [ %headlen.1.lcssa, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %headlen.0828)
  %tobool76.not = icmp eq i32 %headlen.0828, 0
  br i1 %tobool76.not, label %if.else, label %if.then77

if.then77:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__wil_tx_vring_tso.__UNIQUE_ID_ddebug562, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__wil_tx_vring_tso, %if.then92)) #15
          to label %if.end127.thread [label %if.then92], !srcloc !356

if.then92:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #17
  %91 = ptrtoint ptr %main_ndev93 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %main_ndev93, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__wil_tx_vring_tso.__UNIQUE_ID_ddebug562, ptr noundef %92, ptr noundef nonnull @.str.104, i32 noundef %headlen.0828) #15
  br label %if.end127.thread

if.end127.thread:                                 ; preds = %if.then92, %if.then77
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.104, i32 noundef %headlen.0828) #15
  br label %do.body131.lr.ph

if.else:                                          ; preds = %for.body
  %93 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %end.i, align 4
  %arrayidx102 = getelementptr %struct.skb_shared_info, ptr %94, i32 0, i32 12, i32 %f.0834
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %94, i32 0, i32 12, i32 %f.0834, i32 1
  %95 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %bv_len.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__wil_tx_vring_tso.__UNIQUE_ID_ddebug563, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__wil_tx_vring_tso, %if.then118)) #15
          to label %if.end127 [label %if.then118], !srcloc !356

if.then118:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %97 = ptrtoint ptr %main_ndev93 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %main_ndev93, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__wil_tx_vring_tso.__UNIQUE_ID_ddebug563, ptr noundef %98, ptr noundef nonnull @.str.105, i32 noundef %f.0834, i32 noundef %96) #15
  br label %if.end127

if.end127:                                        ; preds = %if.then118, %if.else
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.105, i32 noundef %f.0834, i32 noundef %96) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool128.not804 = icmp eq i32 %96, 0
  br i1 %tobool128.not804, label %if.end127.for.inc_crit_edge, label %if.end127.do.body131.lr.ph_crit_edge

if.end127.do.body131.lr.ph_crit_edge:             ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body131.lr.ph

if.end127.for.inc_crit_edge:                      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

do.body131.lr.ph:                                 ; preds = %if.end127.do.body131.lr.ph_crit_edge, %if.end127.thread
  %frag.1859 = phi ptr [ %frag.0830, %if.end127.thread ], [ %arrayidx102, %if.end127.do.body131.lr.ph_crit_edge ]
  %len.0858 = phi i32 [ %headlen.0828, %if.end127.thread ], [ %96, %if.end127.do.body131.lr.ph_crit_edge ]
  %bv_len.i694 = getelementptr inbounds %struct.bio_vec, ptr %frag.1859, i32 0, i32 1
  %bv_offset.i.i = getelementptr inbounds %struct.bio_vec, ptr %frag.1859, i32 0, i32 2
  call void @__sanitizer_cov_trace_cmp4(i32 %f.0834, i32 %sub254)
  %cmp255 = icmp eq i32 %f.0834, %sub254
  call void @__sanitizer_cov_trace_cmp4(i32 %f.0834, i32 %sub254)
  %cmp275 = icmp slt i32 %f.0834, %sub254
  br label %do.body131

do.body131:                                       ; preds = %if.end287.do.body131_crit_edge, %do.body131.lr.ph
  %_first_desc.1816 = phi ptr [ %_first_desc.0841, %do.body131.lr.ph ], [ %_first_desc.3, %if.end287.do.body131_crit_edge ]
  %first_ctx.1815 = phi ptr [ %first_ctx.0839, %do.body131.lr.ph ], [ %first_ctx.2, %if.end287.do.body131_crit_edge ]
  %descs_used.1814 = phi i32 [ %descs_used.0838, %do.body131.lr.ph ], [ %inc225, %if.end287.do.body131_crit_edge ]
  %sg_desc_cnt.1812 = phi i32 [ %sg_desc_cnt.0837, %do.body131.lr.ph ], [ %sg_desc_cnt.2, %if.end287.do.body131_crit_edge ]
  %desc_tso_type.1811 = phi i32 [ %desc_tso_type.0833, %do.body131.lr.ph ], [ 2, %if.end287.do.body131_crit_edge ]
  %hdr_compensation_need.1809 = phi i32 [ %hdr_compensation_need.0832, %do.body131.lr.ph ], [ %hdr_compensation_need.3, %if.end287.do.body131_crit_edge ]
  %rem_data.1808 = phi i32 [ %rem_data.0831, %do.body131.lr.ph ], [ %rem_data.2, %if.end287.do.body131_crit_edge ]
  %headlen.1807 = phi i32 [ %headlen.0828, %do.body131.lr.ph ], [ %headlen.2, %if.end287.do.body131_crit_edge ]
  %len.1805 = phi i32 [ %len.0858, %do.body131.lr.ph ], [ %sub227, %if.end287.do.body131_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__wil_tx_vring_tso.__UNIQUE_ID_ddebug564, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__wil_tx_vring_tso, %if.then143)) #15
          to label %do.end149 [label %if.then143], !srcloc !356

if.then143:                                       ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #17
  %99 = ptrtoint ptr %main_ndev93 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %main_ndev93, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__wil_tx_vring_tso.__UNIQUE_ID_ddebug564, ptr noundef %100, ptr noundef nonnull @.str.106, i32 noundef %len.1805, i32 noundef %rem_data.1808, i32 noundef %descs_used.1814) #15
  br label %do.end149

do.end149:                                        ; preds = %if.then143, %do.body131
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.106, i32 noundef %len.1805, i32 noundef %rem_data.1808, i32 noundef %descs_used.1814) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %descs_used.1814, i32 %sub1.i)
  %cmp152 = icmp eq i32 %descs_used.1814, %sub1.i
  br i1 %cmp152, label %if.then154, label %if.end155

if.then154:                                       ; preds = %do.end149
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__wil_err_ratelimited(ptr noundef %wil, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.100) #15
  br label %mem_error

if.end155:                                        ; preds = %do.end149
  %101 = call i32 @llvm.smin.i32(i32 %rem_data.1808, i32 %len.1805)
  %add160 = add i32 %descs_used.1814, %13
  %102 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %size.i, align 4
  %conv161 = zext i16 %103 to i32
  %rem = urem i32 %add160, %conv161
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__wil_tx_vring_tso.__UNIQUE_ID_ddebug567, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__wil_tx_vring_tso, %if.then176)) #15
          to label %do.end182 [label %if.then176], !srcloc !356

if.then176:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #17
  %104 = ptrtoint ptr %main_ndev93 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %main_ndev93, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__wil_tx_vring_tso.__UNIQUE_ID_ddebug567, ptr noundef %105, ptr noundef nonnull @.str.108, i32 noundef %101, i32 noundef %rem) #15
  br label %do.end182

do.end182:                                        ; preds = %if.then176, %if.end155
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.108, i32 noundef %101, i32 noundef %rem) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %headlen.1807)
  %tobool185.not = icmp eq i32 %headlen.1807, 0
  br i1 %tobool185.not, label %if.then186, label %if.else193

if.then186:                                       ; preds = %do.end182
  call void @__sanitizer_cov_trace_pc() #17
  %106 = ptrtoint ptr %bv_len.i694 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %bv_len.i694, align 4
  %sub188 = sub i32 %107, %len.1805
  %108 = ptrtoint ptr %frag.1859 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %frag.1859, align 4
  %110 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %bv_offset.i.i, align 4
  %add.i = add i32 %sub188, %111
  %call2.i = call i32 @dma_map_page_attrs(ptr noundef %3, ptr noundef %109, i32 noundef %add.i, i32 noundef %101, i32 noundef 1, i32 noundef 0) #15
  %112 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ctx, align 4
  %mapped_as192 = getelementptr %struct.wil_ctx, ptr %113, i32 %rem, i32 2
  %114 = ptrtoint ptr %mapped_as192 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 2, ptr %mapped_as192, align 1
  br label %if.end202

if.else193:                                       ; preds = %do.end182
  %115 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %data, align 4
  %117 = ptrtoint ptr %len15 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %len15, align 4
  %119 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %data_len.i, align 8
  %sub.i697 = sub i32 %118, %120
  %add.ptr = getelementptr i8, ptr %116, i32 %sub.i697
  %idx.neg = sub i32 0, %headlen.1807
  %add.ptr196 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %call.i698 = call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr196) #15
  br i1 %call.i698, label %land.rhs.i700, label %if.end39.i713

land.rhs.i700:                                    ; preds = %if.else193
  %.b1.i699 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i699, label %land.rhs.i700.dma_map_single_attrs.exit715_crit_edge, label %if.then.i704, !prof !361

land.rhs.i700.dma_map_single_attrs.exit715_crit_edge: ; preds = %land.rhs.i700
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_map_single_attrs.exit715

if.then.i704:                                     ; preds = %land.rhs.i700
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i701 = call ptr @dev_driver_string(ptr noundef %3) #15
  %121 = ptrtoint ptr %init_name.i.i702 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %init_name.i.i702, align 8
  %tobool.not.i.i703 = icmp eq ptr %122, null
  br i1 %tobool.not.i.i703, label %if.end.i.i705, label %if.then.i704.dev_name.exit.i707_crit_edge

if.then.i704.dev_name.exit.i707_crit_edge:        ; preds = %if.then.i704
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i707

if.end.i.i705:                                    ; preds = %if.then.i704
  call void @__sanitizer_cov_trace_pc() #17
  %123 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %3, align 4
  br label %dev_name.exit.i707

dev_name.exit.i707:                               ; preds = %if.end.i.i705, %if.then.i704.dev_name.exit.i707_crit_edge
  %retval.0.i.i706 = phi ptr [ %124, %if.end.i.i705 ], [ %122, %if.then.i704.dev_name.exit.i707_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.62, ptr noundef %call16.i701, ptr noundef %retval.0.i.i706) #15
  br label %dma_map_single_attrs.exit715

if.end39.i713:                                    ; preds = %if.else193
  call void @__sanitizer_cov_trace_pc() #17
  call void @debug_dma_map_single(ptr noundef %3, ptr noundef %add.ptr196, i32 noundef %101) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %125 = load ptr, ptr @mem_map, align 4
  %126 = ptrtoint ptr %add.ptr196 to i32
  %sub.i708 = add i32 %126, 1073741824
  %shr.i709 = lshr i32 %sub.i708, 12
  %add.ptr.i710 = getelementptr %struct.page, ptr %125, i32 %shr.i709
  %and.i711 = and i32 %126, 4095
  %call41.i712 = call i32 @dma_map_page_attrs(ptr noundef %3, ptr noundef %add.ptr.i710, i32 noundef %and.i711, i32 noundef %101, i32 noundef 1, i32 noundef 0) #15
  br label %dma_map_single_attrs.exit715

dma_map_single_attrs.exit715:                     ; preds = %if.end39.i713, %dev_name.exit.i707, %land.rhs.i700.dma_map_single_attrs.exit715_crit_edge
  %retval.0.i714 = phi i32 [ %call41.i712, %if.end39.i713 ], [ -1, %dev_name.exit.i707 ], [ -1, %land.rhs.i700.dma_map_single_attrs.exit715_crit_edge ]
  %127 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ctx, align 4
  %mapped_as200 = getelementptr %struct.wil_ctx, ptr %128, i32 %rem, i32 2
  %129 = ptrtoint ptr %mapped_as200 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 1, ptr %mapped_as200, align 1
  %sub201 = sub i32 %headlen.1807, %101
  br label %if.end202

if.end202:                                        ; preds = %dma_map_single_attrs.exit715, %if.then186
  %headlen.2 = phi i32 [ %sub201, %dma_map_single_attrs.exit715 ], [ 0, %if.then186 ]
  %pa.0 = phi i32 [ %retval.0.i714, %dma_map_single_attrs.exit715 ], [ %call2.i, %if.then186 ]
  call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef %pa.0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pa.0)
  %cmp.i716.not = icmp eq i32 %pa.0, -1
  br i1 %cmp.i716.not, label %if.then211, label %if.end212, !prof !357

if.then211:                                       ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.100) #15
  br label %mem_error

if.end212:                                        ; preds = %if.end202
  %130 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %va, align 4
  %arrayidx214 = getelementptr %union.wil_ring_desc, ptr %131, i32 %rem
  %tobool215.not = icmp eq ptr %_first_desc.1816, null
  br i1 %tobool215.not, label %if.then216, label %if.end212.if.end220_crit_edge

if.end212.if.end220_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end220

if.then216:                                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #17
  %132 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ctx, align 4
  %arrayidx218 = getelementptr %struct.wil_ctx, ptr %133, i32 %rem
  br label %if.end220

if.end220:                                        ; preds = %if.then216, %if.end212.if.end220_crit_edge
  %first_ctx.2 = phi ptr [ %arrayidx218, %if.then216 ], [ %first_ctx.1815, %if.end212.if.end220_crit_edge ]
  %d.2 = phi ptr [ %first_desc_mem, %if.then216 ], [ %desc_mem, %if.end212.if.end220_crit_edge ]
  %_first_desc.2 = phi ptr [ %arrayidx214, %if.then216 ], [ %_first_desc.1816, %if.end212.if.end220_crit_edge ]
  %d.2.sroa.phi = phi ptr [ %first_desc_mem.sroa.gep, %if.then216 ], [ %desc_mem.sroa.gep, %if.end212.if.end220_crit_edge ]
  %d.2.sroa.phi746 = phi ptr [ %first_desc_mem.sroa.gep747, %if.then216 ], [ %desc_mem.sroa.gep748, %if.end212.if.end220_crit_edge ]
  %d.2.sroa.phi749 = phi ptr [ %first_desc_mem.sroa.gep750, %if.then216 ], [ %desc_mem.sroa.gep751, %if.end212.if.end220_crit_edge ]
  %134 = ptrtoint ptr %tx_desc_map to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %tx_desc_map, align 8
  %call223 = call i32 %135(ptr noundef nonnull %d.2, i32 noundef %pa.0, i32 noundef %101, i32 noundef %sub.ptr.div) #15
  %136 = ptrtoint ptr %d.2.sroa.phi746 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %conv4.i, ptr %d.2.sroa.phi746, align 1
  %137 = ptrtoint ptr %d.2.sroa.phi to i32
  call void @__asan_loadN_noabort(i32 %137, i32 4)
  %138 = load i32, ptr %d.2.sroa.phi, align 1
  %shl10.i = shl i32 %desc_tso_type.1811, 11
  %139 = ptrtoint ptr %d.2.sroa.phi749 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %conv21.i, ptr %d.2.sroa.phi749, align 1
  %or11.i723 = or i32 %or11.i, %shl10.i
  %or14.i724 = or i32 %or11.i723, %138
  %or28.i727 = or i32 %or14.i724, -2145345536
  store i32 %or28.i727, ptr %d.2.sroa.phi, align 1
  %inc225 = add i32 %descs_used.1814, 1
  %inc226 = add i32 %sg_desc_cnt.1812, 1
  %sub227 = sub i32 %len.1805, %101
  %sub228 = sub i32 %rem_data.1808, %101
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__wil_tx_vring_tso.__UNIQUE_ID_ddebug568, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__wil_tx_vring_tso, %if.then243)) #15
          to label %do.end249 [label %if.then243], !srcloc !356

if.then243:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #17
  %140 = ptrtoint ptr %main_ndev93 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %main_ndev93, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__wil_tx_vring_tso.__UNIQUE_ID_ddebug568, ptr noundef %141, ptr noundef nonnull @.str.110, i32 noundef %sub227, i32 noundef %sub228, i32 noundef %inc225, i32 noundef %inc226) #15
  br label %do.end249

do.end249:                                        ; preds = %if.then243, %if.end220
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.110, i32 noundef %sub227, i32 noundef %sub228, i32 noundef %inc225, i32 noundef %inc226) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub228)
  %cmp252 = icmp eq i32 %sub228, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub227)
  %cmp257 = icmp eq i32 %sub227, 0
  %or.cond = select i1 %cmp255, i1 %cmp257, i1 false
  %or.cond850 = select i1 %cmp252, i1 true, i1 %or.cond
  br i1 %or.cond850, label %if.then259, label %if.else282

if.then259:                                       ; preds = %do.end249
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hdr_compensation_need.1809)
  %tobool260.not = icmp eq i32 %hdr_compensation_need.1809, 0
  br i1 %tobool260.not, label %if.then259.if.end266_crit_edge, label %if.then261

if.then259.if.end266_crit_edge:                   ; preds = %if.then259
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end266

if.then261:                                       ; preds = %if.then259
  call void @__sanitizer_cov_trace_pc() #17
  %conv262 = trunc i32 %inc226 to i8
  %142 = ptrtoint ptr %nr_frags263 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %conv262, ptr %nr_frags263, align 4
  %add264 = add i32 %sg_desc_cnt.1812, 2
  br label %if.end266

if.end266:                                        ; preds = %if.then261, %if.then259.if.end266_crit_edge
  %inc226.sink = phi i32 [ %add264, %if.then261 ], [ %inc226, %if.then259.if.end266_crit_edge ]
  %143 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %10, align 4
  %or.i730 = or i32 %144, %inc226.sink
  store i32 %or.i730, ptr %10, align 4
  %conv268 = trunc i32 %sg_desc_cnt.1812 to i8
  %nr_frags269 = getelementptr inbounds %struct.wil_ctx, ptr %first_ctx.2, i32 0, i32 1
  %145 = ptrtoint ptr %nr_frags269 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %conv268, ptr %nr_frags269, align 4
  %dma.i731 = getelementptr inbounds %struct.vring_tx_desc, ptr %d.2, i32 0, i32 1
  %146 = ptrtoint ptr %dma.i731 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %dma.i731, align 4
  %or.i732 = or i32 %147, 1792
  store i32 %or.i732, ptr %dma.i731, align 4
  %cmp270.not = icmp eq ptr %first_desc_mem, %d.2
  br i1 %cmp270.not, label %if.end266.if.end273_crit_edge, label %if.then272

if.end266.if.end273_crit_edge:                    ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end273

if.then272:                                       ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #17
  %148 = call ptr @memcpy(ptr %_first_desc.2, ptr %first_desc_mem, i32 32)
  br label %if.end273

if.end273:                                        ; preds = %if.then272, %if.end266.if.end273_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub227)
  %cmp278 = icmp sgt i32 %sub227, 0
  %or.cond643 = select i1 %cmp275, i1 true, i1 %cmp278
  br i1 %or.cond643, label %if.end273.if.end287.sink.split_crit_edge, label %if.end273.if.end287_crit_edge

if.end273.if.end287_crit_edge:                    ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end287

if.end273.if.end287.sink.split_crit_edge:         ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end287.sink.split

if.else282:                                       ; preds = %do.end249
  %cmp283.not = icmp eq ptr %first_desc_mem, %d.2
  br i1 %cmp283.not, label %if.else282.if.end287_crit_edge, label %if.else282.if.end287.sink.split_crit_edge

if.else282.if.end287.sink.split_crit_edge:        ; preds = %if.else282
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end287.sink.split

if.else282.if.end287_crit_edge:                   ; preds = %if.else282
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end287

if.end287.sink.split:                             ; preds = %if.else282.if.end287.sink.split_crit_edge, %if.end273.if.end287.sink.split_crit_edge
  %rem_data.2.ph = phi i32 [ %conv6, %if.end273.if.end287.sink.split_crit_edge ], [ %sub228, %if.else282.if.end287.sink.split_crit_edge ]
  %hdr_compensation_need.3.ph = phi i32 [ 0, %if.end273.if.end287.sink.split_crit_edge ], [ %hdr_compensation_need.1809, %if.else282.if.end287.sink.split_crit_edge ]
  %sg_desc_cnt.2.ph = phi i32 [ 0, %if.end273.if.end287.sink.split_crit_edge ], [ %inc226, %if.else282.if.end287.sink.split_crit_edge ]
  %_first_desc.3.ph = phi ptr [ null, %if.end273.if.end287.sink.split_crit_edge ], [ %_first_desc.2, %if.else282.if.end287.sink.split_crit_edge ]
  %149 = call ptr @memcpy(ptr %arrayidx214, ptr %d.2, i32 32)
  br label %if.end287

if.end287:                                        ; preds = %if.end287.sink.split, %if.else282.if.end287_crit_edge, %if.end273.if.end287_crit_edge
  %rem_data.2 = phi i32 [ %sub228, %if.else282.if.end287_crit_edge ], [ %conv6, %if.end273.if.end287_crit_edge ], [ %rem_data.2.ph, %if.end287.sink.split ]
  %hdr_compensation_need.3 = phi i32 [ %hdr_compensation_need.1809, %if.else282.if.end287_crit_edge ], [ 0, %if.end273.if.end287_crit_edge ], [ %hdr_compensation_need.3.ph, %if.end287.sink.split ]
  %sg_desc_cnt.2 = phi i32 [ %inc226, %if.else282.if.end287_crit_edge ], [ 0, %if.end273.if.end287_crit_edge ], [ %sg_desc_cnt.2.ph, %if.end287.sink.split ]
  %_first_desc.3 = phi ptr [ %_first_desc.2, %if.else282.if.end287_crit_edge ], [ null, %if.end273.if.end287_crit_edge ], [ %_first_desc.3.ph, %if.end287.sink.split ]
  br i1 %cmp257, label %if.end287.for.inc_crit_edge, label %if.end287.do.body131_crit_edge

if.end287.do.body131_crit_edge:                   ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body131

if.end287.for.inc_crit_edge:                      ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

for.inc:                                          ; preds = %if.end287.for.inc_crit_edge, %if.end127.for.inc_crit_edge
  %frag.1860 = phi ptr [ %arrayidx102, %if.end127.for.inc_crit_edge ], [ %frag.1859, %if.end287.for.inc_crit_edge ]
  %headlen.1.lcssa = phi i32 [ 0, %if.end127.for.inc_crit_edge ], [ %headlen.2, %if.end287.for.inc_crit_edge ]
  %i.1.lcssa = phi i32 [ %i.0829, %if.end127.for.inc_crit_edge ], [ %rem, %if.end287.for.inc_crit_edge ]
  %rem_data.1.lcssa = phi i32 [ %rem_data.0831, %if.end127.for.inc_crit_edge ], [ %rem_data.2, %if.end287.for.inc_crit_edge ]
  %hdr_compensation_need.1.lcssa = phi i32 [ %hdr_compensation_need.0832, %if.end127.for.inc_crit_edge ], [ %hdr_compensation_need.3, %if.end287.for.inc_crit_edge ]
  %desc_tso_type.1.lcssa = phi i32 [ %desc_tso_type.0833, %if.end127.for.inc_crit_edge ], [ 2, %if.end287.for.inc_crit_edge ]
  %sg_desc_cnt.1.lcssa = phi i32 [ %sg_desc_cnt.0837, %if.end127.for.inc_crit_edge ], [ %sg_desc_cnt.2, %if.end287.for.inc_crit_edge ]
  %descs_used.1.lcssa = phi i32 [ %descs_used.0838, %if.end127.for.inc_crit_edge ], [ %inc225, %if.end287.for.inc_crit_edge ]
  %first_ctx.1.lcssa = phi ptr [ %first_ctx.0839, %if.end127.for.inc_crit_edge ], [ %first_ctx.2, %if.end287.for.inc_crit_edge ]
  %d.1.lcssa = phi ptr [ %d.0840, %if.end127.for.inc_crit_edge ], [ %d.2, %if.end287.for.inc_crit_edge ]
  %_first_desc.1.lcssa = phi ptr [ %_first_desc.0841, %if.end127.for.inc_crit_edge ], [ %_first_desc.3, %if.end287.for.inc_crit_edge ]
  %_desc.1.lcssa = phi ptr [ %_desc.0842, %if.end127.for.inc_crit_edge ], [ %arrayidx214, %if.end287.for.inc_crit_edge ]
  %inc288 = add nsw i32 %f.0834, 1
  %exitcond.not = icmp eq i32 %inc288, %conv
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool289.not = icmp eq ptr %_desc.1.lcssa, null
  br i1 %tobool289.not, label %for.end.mem_error_crit_edge, label %if.end291

for.end.mem_error_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %mem_error

if.end291:                                        ; preds = %for.end
  %cmp292 = icmp eq ptr %_first_desc.1.lcssa, %_desc.1.lcssa
  %spec.select = select i1 %cmp292, ptr %first_desc_mem, ptr %d.1.lcssa
  %d.0.sroa.gep = getelementptr inbounds %struct.vring_tx_desc, ptr %d.1.lcssa, i32 0, i32 1
  %spec.select.sroa.sel = select i1 %cmp292, ptr %first_desc_mem.sroa.gep, ptr %d.0.sroa.gep
  %150 = ptrtoint ptr %spec.select.sroa.sel to i32
  call void @__asan_loadN_noabort(i32 %150, i32 4)
  %151 = load volatile i32, ptr %spec.select.sroa.sel, align 1
  %or.i734 = or i32 %151, 6144
  store volatile i32 %or.i734, ptr %spec.select.sroa.sel, align 1
  %152 = call ptr @memcpy(ptr %_desc.1.lcssa, ptr %spec.select, i32 32)
  %153 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %5, align 4
  %or.i736 = or i32 %154, %descs_used.1.lcssa
  store i32 %or.i736, ptr %5, align 4
  %155 = call ptr @memcpy(ptr %arrayidx55, ptr %hdr_desc_mem, i32 32)
  %call296 = call fastcc ptr @skb_get(ptr noundef %skb)
  %156 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %ctx, align 4
  %arrayidx298 = getelementptr %struct.wil_ctx, ptr %157, i32 %i.1.lcssa
  %158 = ptrtoint ptr %arrayidx298 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %skb, ptr %arrayidx298, align 4
  %159 = ptrtoint ptr %swhead1 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %swhead1, align 4
  %161 = ptrtoint ptr %swtail2.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %swtail2.i.i, align 4
  %163 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %size.i, align 4
  %conv.i738 = zext i16 %164 to i32
  %add.i739 = sub i32 %160, %162
  %sub.i740 = add i32 %add.i739, %conv.i738
  %rem.i = urem i32 %sub.i740, %conv.i738
  %ring_idle_trsh = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 64
  %165 = ptrtoint ptr %ring_idle_trsh to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %ring_idle_trsh, align 8
  %add301 = add i32 %rem.i, %descs_used.1.lcssa
  call void @__sanitizer_cov_trace_cmp4(i32 %166, i32 %rem.i)
  %cmp.not.i = icmp sge i32 %166, %rem.i
  call void @__sanitizer_cov_trace_cmp4(i32 %166, i32 %add301)
  %cmp1.i = icmp slt i32 %166, %add301
  %spec.select.i = and i1 %cmp.not.i, %cmp1.i
  br i1 %spec.select.i, label %if.then303, label %if.end291.do.body339_crit_edge

if.end291.do.body339_crit_edge:                   ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body339

if.then303:                                       ; preds = %if.end291
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #15
  %167 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 -1, ptr %c, align 4, !annotation !360
  %call305 = call i32 @read_current_timer(ptr noundef nonnull %c) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call305)
  %tobool306.not = icmp eq i32 %call305, 0
  br i1 %tobool306.not, label %cond.false308, label %if.then303.cond.end309_crit_edge

if.then303.cond.end309_crit_edge:                 ; preds = %if.then303
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end309

cond.false308:                                    ; preds = %if.then303
  call void @__sanitizer_cov_trace_pc() #17
  %168 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %c, align 4
  br label %cond.end309

cond.end309:                                      ; preds = %cond.false308, %if.then303.cond.end309_crit_edge
  %cond310 = phi i32 [ %169, %cond.false308 ], [ 0, %if.then303.cond.end309_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #15
  %last_idle = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 58, i32 %sub.ptr.div, i32 3
  %170 = ptrtoint ptr %last_idle to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %last_idle, align 4
  %sub311 = sub i32 %cond310, %171
  %idle = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 58, i32 %sub.ptr.div, i32 2
  %172 = ptrtoint ptr %idle to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %idle, align 4
  %add312 = add i32 %sub311, %173
  store i32 %add312, ptr %idle, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__wil_tx_vring_tso.__UNIQUE_ID_ddebug569, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__wil_tx_vring_tso, %if.then327)) #15
          to label %do.end334 [label %if.then327], !srcloc !356

if.then327:                                       ; preds = %cond.end309
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev328 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %174 = ptrtoint ptr %main_ndev328 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %main_ndev328, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__wil_tx_vring_tso.__UNIQUE_ID_ddebug569, ptr noundef %175, ptr noundef nonnull @.str.98, i32 noundef %sub.ptr.div, i32 noundef %rem.i, i32 noundef %add301) #15
  br label %do.end334

do.end334:                                        ; preds = %if.then327, %cond.end309
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.98, i32 noundef %sub.ptr.div, i32 noundef %rem.i, i32 noundef %add301) #15
  br label %do.body339

do.body339:                                       ; preds = %do.end334, %if.end291.do.body339_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !376
  call void @arm_heavy_mb() #15
  %176 = ptrtoint ptr %swhead1 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %swhead1, align 4
  %add.i741 = add i32 %177, %descs_used.1.lcssa
  %178 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %size.i, align 4
  %conv.i743 = zext i16 %179 to i32
  %rem.i744 = urem i32 %add.i741, %conv.i743
  store i32 %rem.i744, ptr %swhead1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__wil_tx_vring_tso.__UNIQUE_ID_ddebug570, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__wil_tx_vring_tso, %if.then356)) #15
          to label %do.end363 [label %if.then356], !srcloc !356

if.then356:                                       ; preds = %do.body339
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev357 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %180 = ptrtoint ptr %main_ndev357 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %main_ndev357, align 4
  %182 = ptrtoint ptr %swhead1 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %swhead1, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__wil_tx_vring_tso.__UNIQUE_ID_ddebug570, ptr noundef %181, ptr noundef nonnull @.str.111, i32 noundef %13, i32 noundef %183) #15
  br label %do.end363

do.end363:                                        ; preds = %if.then356, %do.body339
  %184 = ptrtoint ptr %swhead1 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %swhead1, align 4
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.111, i32 noundef %13, i32 noundef %185) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !377
  call void @arm_heavy_mb() #15
  %tx_latency = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 80
  %186 = ptrtoint ptr %tx_latency to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %tx_latency, align 32, !range !355
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %187)
  %tobool370.not = icmp eq i8 %187, 0
  br i1 %tobool370.not, label %do.end363.if.end376_crit_edge, label %if.then371

do.end363.if.end376_crit_edge:                    ; preds = %do.end363
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end376

if.then371:                                       ; preds = %do.end363
  call void @__sanitizer_cov_trace_pc() #17
  %call372 = call i64 @ktime_get() #15
  br label %if.end376

if.end376:                                        ; preds = %if.then371, %do.end363.if.end376_crit_edge
  %call372.sink = phi i64 [ %call372, %if.then371 ], [ 0, %do.end363.if.end376_crit_edge ]
  %188 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_store8_noabort(i32 %189)
  store i64 %call372.sink, ptr %188, align 8
  %hwtail = getelementptr inbounds %struct.wil_ring, ptr %vring, i32 0, i32 5
  %190 = ptrtoint ptr %hwtail to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %hwtail, align 4
  %192 = ptrtoint ptr %swhead1 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %swhead1, align 4
  call fastcc void @wil_w(ptr noundef %wil, i32 noundef %191, i32 noundef %193)
  br label %cleanup

mem_error:                                        ; preds = %for.end.mem_error_crit_edge, %if.then211, %if.then154
  %rc.0 = phi i32 [ -12, %if.then154 ], [ -22, %if.then211 ], [ -22, %for.end.mem_error_crit_edge ]
  %descs_used.2 = phi i32 [ %sub1.i, %if.then154 ], [ %descs_used.1814, %if.then211 ], [ %descs_used.1.lcssa, %for.end.mem_error_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %descs_used.2)
  %cmp379848 = icmp sgt i32 %descs_used.2, 0
  br i1 %cmp379848, label %mem_error.while.body381.preheader_crit_edge, label %mem_error.cleanup_crit_edge

mem_error.cleanup_crit_edge:                      ; preds = %mem_error
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

mem_error.while.body381.preheader_crit_edge:      ; preds = %mem_error
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body381.preheader

while.body381.preheader:                          ; preds = %mem_error.while.body381.preheader_crit_edge, %if.end66.while.body381.preheader_crit_edge
  %descs_used.2871 = phi i32 [ %descs_used.2, %mem_error.while.body381.preheader_crit_edge ], [ 1, %if.end66.while.body381.preheader_crit_edge ]
  %rc.0870 = phi i32 [ %rc.0, %mem_error.while.body381.preheader_crit_edge ], [ -22, %if.end66.while.body381.preheader_crit_edge ]
  br label %while.body381

while.body381:                                    ; preds = %wil_txdesc_unmap.exit.while.body381_crit_edge, %while.body381.preheader
  %descs_used.3849 = phi i32 [ %add383, %wil_txdesc_unmap.exit.while.body381_crit_edge ], [ %descs_used.2871, %while.body381.preheader ]
  %add383 = add nsw i32 %descs_used.3849, -1
  %sub384 = add i32 %add383, %13
  %194 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %size.i, align 4
  %conv386 = zext i16 %195 to i32
  %rem387 = urem i32 %sub384, %conv386
  %196 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %va, align 4
  %arrayidx389 = getelementptr %union.wil_ring_desc, ptr %197, i32 %rem387
  %198 = call ptr @memcpy(ptr %arrayidx389, ptr %arrayidx389, i32 32)
  %dma = getelementptr inbounds %struct.vring_tx_desc, ptr %arrayidx389, i32 0, i32 1
  %status = getelementptr inbounds %struct.vring_tx_dma, ptr %dma, i32 0, i32 5
  %199 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %199)
  store volatile i8 1, ptr %status, align 1
  %200 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %ctx, align 4
  %arrayidx393 = getelementptr %struct.wil_ctx, ptr %201, i32 %rem387
  %mapped_as.i = getelementptr %struct.wil_ctx, ptr %201, i32 %rem387, i32 2
  %202 = ptrtoint ptr %mapped_as.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %mapped_as.i, align 1
  %.off.i = add i8 %203, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %sw.epilog.sink.split.i, label %while.body381.wil_txdesc_unmap.exit_crit_edge

while.body381.wil_txdesc_unmap.exit_crit_edge:    ; preds = %while.body381
  call void @__sanitizer_cov_trace_pc() #17
  br label %wil_txdesc_unmap.exit

sw.epilog.sink.split.i:                           ; preds = %while.body381
  call void @__sanitizer_cov_trace_pc() #17
  %length.i = getelementptr inbounds %struct.vring_tx_desc, ptr %arrayidx389, i32 0, i32 1, i32 6
  %204 = ptrtoint ptr %length.i to i32
  call void @__asan_loadN_noabort(i32 %204, i32 2)
  %205 = load i16, ptr %length.i, align 1
  %206 = call i16 @llvm.bswap.i16(i16 %205) #15
  %addr.i = getelementptr inbounds %struct.vring_tx_desc, ptr %arrayidx389, i32 0, i32 1, i32 1
  %207 = ptrtoint ptr %addr.i to i32
  call void @__asan_loadN_noabort(i32 %207, i32 4)
  %208 = load i32, ptr %addr.i, align 1
  %209 = call i32 @llvm.bswap.i32(i32 %208) #15
  %conv4.i745 = zext i16 %206 to i32
  call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %209, i32 noundef %conv4.i745, i32 noundef 1, i32 noundef 0) #15
  br label %wil_txdesc_unmap.exit

wil_txdesc_unmap.exit:                            ; preds = %sw.epilog.sink.split.i, %while.body381.wil_txdesc_unmap.exit_crit_edge
  %210 = ptrtoint ptr %arrayidx393 to i32
  call void @__asan_storeN_noabort(i32 %210, i32 8)
  store i64 0, ptr %arrayidx393, align 4
  %cmp379 = icmp ugt i32 %descs_used.3849, 1
  br i1 %cmp379, label %wil_txdesc_unmap.exit.while.body381_crit_edge, label %wil_txdesc_unmap.exit.cleanup_crit_edge

wil_txdesc_unmap.exit.cleanup_crit_edge:          ; preds = %wil_txdesc_unmap.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

wil_txdesc_unmap.exit.while.body381_crit_edge:    ; preds = %wil_txdesc_unmap.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body381

cleanup:                                          ; preds = %wil_txdesc_unmap.exit.cleanup_crit_edge, %mem_error.cleanup_crit_edge, %if.end376, %if.then65, %sw.epilog.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.then36, %do.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then36 ], [ 0, %if.end376 ], [ -22, %do.end14.cleanup_crit_edge ], [ -22, %if.end37.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %if.then65 ], [ %rc.0, %mem_error.cleanup_crit_edge ], [ %rc.0870, %wil_txdesc_unmap.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %first_desc_mem) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %hdr_desc_mem) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc_mem) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_vring_init_tx(ptr nocapture noundef readonly %vif, i32 noundef %id, i32 noundef %size, i32 noundef %cid, i32 noundef %tid) #0 align 64 {
entry:
  %cmd = alloca %struct.wmi_vring_cfg_cmd, align 4
  %reply = alloca %struct.anon.158, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %wil1 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 2
  %0 = ptrtoint ptr %wil1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wil1, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd) #15
  %2 = getelementptr inbounds %struct.wmi_vring_cfg_cmd, ptr %cmd, i32 0, i32 1
  %3 = getelementptr inbounds %struct.wmi_vring_cfg_cmd, ptr %cmd, i32 0, i32 1, i32 0, i32 1
  %4 = getelementptr inbounds %struct.wmi_vring_cfg_cmd, ptr %cmd, i32 0, i32 1, i32 0, i32 2
  %5 = getelementptr inbounds %struct.wmi_vring_cfg_cmd, ptr %cmd, i32 0, i32 1, i32 1
  %6 = getelementptr inbounds %struct.wmi_vring_cfg_cmd, ptr %cmd, i32 0, i32 1, i32 2
  %7 = getelementptr inbounds %struct.wmi_vring_cfg_cmd, ptr %cmd, i32 0, i32 1, i32 9, i32 1
  %8 = getelementptr inbounds %struct.wmi_vring_cfg_cmd, ptr %cmd, i32 0, i32 1, i32 10
  %9 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %cmd, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 0, ptr %2, align 4
  %conv = trunc i32 %size to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mtu_max to i32))
  %13 = load i32, ptr @mtu_max, align 4
  %14 = trunc i32 %13 to i16
  %15 = add i16 %14, 69
  %conv2 = and i16 %15, -8
  %16 = tail call i16 @llvm.bswap.i16(i16 %conv2)
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %4, align 2
  %conv3 = trunc i32 %id to i8
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv3, ptr %5, align 4
  %19 = call ptr @memset(ptr %6, i32 0, i32 9)
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -241, ptr %7, align 2
  %21 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %reply) #15
  %22 = call ptr @memcpy(ptr %reply, ptr @__const.wil_vring_init_tx.reply, i32 16)
  %arrayidx = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 57, i32 %id
  %arrayidx6 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 58, i32 %id
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %cid)
  %cmp = icmp sgt i32 %cid, 7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %23 = getelementptr inbounds %struct.wmi_vring_cfg_cmd, ptr %cmd, i32 0, i32 1, i32 11
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %6, align 1
  %conv10 = trunc i32 %cid to i8
  %25 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv10, ptr %8, align 4
  %conv13 = trunc i32 %tid to i8
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv13, ptr %23, align 1
  br label %do.body22

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %conv16 = trunc i32 %cid to i8
  %conv17 = trunc i32 %tid to i8
  %27 = shl i8 %conv17, 4
  %28 = and i8 %conv16, 15
  %or4.i = or i8 %27, %28
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %or4.i, ptr %6, align 1
  br label %do.body22

do.body22:                                        ; preds = %if.else, %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_vring_init_tx.__UNIQUE_ID_ddebug551, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_vring_init_tx, %if.then26)) #15
          to label %do.end33 [label %if.then26], !srcloc !356

if.then26:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %main_ndev, align 4
  %32 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %4, align 2
  %conv30 = zext i16 %33 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_vring_init_tx.__UNIQUE_ID_ddebug551, ptr noundef %31, ptr noundef nonnull @.str.113, i32 noundef %conv30) #15
  br label %do.end33

do.end33:                                         ; preds = %if.then26, %do.body22
  %34 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %4, align 2
  %conv37 = zext i16 %35 to i32
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.113, i32 noundef %conv37) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %36 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool41.not = icmp eq i32 %36, 0
  br i1 %tobool41.not, label %do.end33.if.end68_crit_edge, label %land.rhs

do.end33.if.end68_crit_edge:                      ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end68

land.rhs:                                         ; preds = %do.end33
  %dep_map = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 69, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp43.not = icmp eq i32 %call.i, 0
  br i1 %cmp43.not, label %do.end62, label %land.rhs.if.end68_crit_edge, !prof !357

land.rhs.if.end68_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end68

do.end62:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1177, i32 noundef 9, ptr noundef null) #15
  br label %if.end68

if.end68:                                         ; preds = %do.end62, %land.rhs.if.end68_crit_edge, %do.end33.if.end68_crit_edge
  %va = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 57, i32 %id, i32 1
  %37 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %va, align 4
  %tobool78.not = icmp eq ptr %38, null
  br i1 %tobool78.not, label %if.end80, label %if.then79

if.then79:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.112, i32 noundef %id) #15
  br label %cleanup

if.end80:                                         ; preds = %if.end68
  %lock.i = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 58, i32 %id, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #15
  %39 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %arrayidx6, align 4
  %enabled.i = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 58, i32 %id, i32 1
  %agg_timeout.i = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 58, i32 %id, i32 6
  %mid.i = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 58, i32 %id, i32 9
  %40 = call ptr @memset(ptr %enabled.i, i32 0, i32 17)
  %41 = ptrtoint ptr %agg_timeout.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 0, ptr %agg_timeout.i, align 2
  %42 = ptrtoint ptr %mid.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -1, ptr %mid.i, align 2
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #15
  %is_rx = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 57, i32 %id, i32 8
  %43 = ptrtoint ptr %is_rx to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %is_rx, align 4
  %size82 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 57, i32 %id, i32 2
  %44 = ptrtoint ptr %size82 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv, ptr %size82, align 4
  %call83 = tail call fastcc i32 @wil_vring_alloc(ptr noundef %1, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %if.end80.cleanup_crit_edge

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end86:                                         ; preds = %if.end80
  %conv87 = trunc i32 %cid to i8
  %arrayidx88 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 62, i32 %id
  %45 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv87, ptr %arrayidx88, align 2
  %conv90 = trunc i32 %tid to i8
  %arrayidx93 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 62, i32 %id, i32 1
  %46 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv90, ptr %arrayidx93, align 1
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx, align 4
  %conv94 = zext i32 %48 to i64
  %49 = tail call i64 @llvm.bswap.i64(i64 %conv94)
  %50 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 8)
  store i64 %49, ptr %2, align 4
  %privacy = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 5
  %51 = ptrtoint ptr %privacy to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %privacy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool98.not = icmp eq i32 %52, 0
  br i1 %tobool98.not, label %if.then99, label %if.end86.if.end100_crit_edge

if.end86.if.end100_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end100

if.then99:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #17
  %53 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %arrayidx6, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.then99, %if.end86.if.end100_crit_edge
  %mid = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 3
  %54 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %mid, align 4
  %call101 = call i32 @wmi_call(ptr noundef %1, i16 noundef zeroext 2081, i8 noundef zeroext %55, ptr noundef nonnull %cmd, i16 noundef zeroext 32, i16 noundef zeroext 6177, ptr noundef nonnull %reply, i16 noundef zeroext 16, i32 noundef 100) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end104, label %if.end100.out_free_crit_edge

if.end100.out_free_crit_edge:                     ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

if.end104:                                        ; preds = %if.end100
  %status = getelementptr inbounds %struct.anon.158, ptr %reply, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp107.not = icmp eq i8 %57, 0
  br i1 %cmp107.not, label %if.end113, label %if.then109

if.then109:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #17
  %conv106 = zext i8 %57 to i32
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.112, i32 noundef %conv106) #15
  br label %out_free

if.end113:                                        ; preds = %if.end104
  call void @_raw_spin_lock_bh(ptr noundef %lock.i) #15
  %tx_vring_tail_ptr = getelementptr inbounds %struct.anon.158, ptr %reply, i32 0, i32 1, i32 3
  %58 = ptrtoint ptr %tx_vring_tail_ptr to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %tx_vring_tail_ptr, align 1
  %60 = call i32 @llvm.bswap.i32(i32 %59)
  %hwtail = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 57, i32 %id, i32 5
  %61 = ptrtoint ptr %hwtail to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %hwtail, align 4
  %62 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %mid, align 4
  %64 = ptrtoint ptr %mid.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %mid.i, align 2
  %65 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %enabled.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #15
  %66 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx6, align 4, !range !355
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool119.not = icmp eq i8 %67, 0
  br i1 %tobool119.not, label %if.end113.cleanup_crit_edge, label %land.lhs.true

if.end113.cleanup_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end113
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @agg_wsize to i32))
  %68 = load i32, ptr @agg_wsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %68)
  %cmp121 = icmp sgt i32 %68, -1
  br i1 %cmp121, label %if.then123, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then123:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %conv125 = trunc i32 %68 to i16
  %call126 = call i32 @wil_addba_tx_request(ptr noundef %1, i8 noundef zeroext %conv3, i16 noundef zeroext %conv125) #15
  br label %cleanup

out_free:                                         ; preds = %if.then109, %if.end100.out_free_crit_edge
  %rc.0 = phi i32 [ %call101, %if.end100.out_free_crit_edge ], [ -22, %if.then109 ]
  call void @_raw_spin_lock_bh(ptr noundef %lock.i) #15
  %69 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %arrayidx6, align 4
  %70 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %enabled.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #15
  call void @wil_vring_free(ptr noundef %1, ptr noundef %arrayidx)
  %max_assoc_sta = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 26
  %71 = ptrtoint ptr %max_assoc_sta to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %max_assoc_sta, align 8
  %conv132 = trunc i32 %72 to i8
  %73 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv132, ptr %arrayidx88, align 2
  %74 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %arrayidx93, align 1
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.then123, %land.lhs.true.cleanup_crit_edge, %if.end113.cleanup_crit_edge, %if.end80.cleanup_crit_edge, %if.then79
  %retval.0 = phi i32 [ 0, %if.then123 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end113.cleanup_crit_edge ], [ -22, %if.then79 ], [ %call83, %if.end80.cleanup_crit_edge ], [ %rc.0, %out_free ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reply) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd) #15
  ret i32 %retval.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wil_tx_init(ptr nocapture noundef readnone %wil) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  ret i32 0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @wil_tx_fini(ptr nocapture noundef %wil) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_tx_vring_modify(ptr nocapture noundef readonly %vif, i32 noundef %ring_id, i32 noundef %cid, i32 noundef %tid) #0 align 64 {
entry:
  %cmd = alloca %struct.wmi_vring_cfg_cmd, align 4
  %reply = alloca %struct.anon.159, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %wil1 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 2
  %0 = ptrtoint ptr %wil1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wil1, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd) #15
  %2 = getelementptr inbounds %struct.wmi_vring_cfg_cmd, ptr %cmd, i32 0, i32 1
  %3 = getelementptr inbounds %struct.wmi_vring_cfg_cmd, ptr %cmd, i32 0, i32 1, i32 0, i32 1
  %4 = getelementptr inbounds %struct.wmi_vring_cfg_cmd, ptr %cmd, i32 0, i32 1, i32 0, i32 2
  %5 = getelementptr inbounds %struct.wmi_vring_cfg_cmd, ptr %cmd, i32 0, i32 1, i32 1
  %6 = getelementptr inbounds %struct.wmi_vring_cfg_cmd, ptr %cmd, i32 0, i32 1, i32 2
  %7 = getelementptr inbounds %struct.wmi_vring_cfg_cmd, ptr %cmd, i32 0, i32 1, i32 3
  %8 = getelementptr inbounds %struct.wmi_vring_cfg_cmd, ptr %cmd, i32 0, i32 1, i32 9, i32 1
  %9 = getelementptr inbounds %struct.wmi_vring_cfg_cmd, ptr %cmd, i32 0, i32 1, i32 10
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 16777216, ptr %cmd, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 0, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mtu_max to i32))
  %13 = load i32, ptr @mtu_max, align 4
  %14 = trunc i32 %13 to i16
  %15 = add i16 %14, 69
  %conv = and i16 %15, -8
  %16 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %4, align 2
  %conv2 = trunc i32 %ring_id to i8
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv2, ptr %5, align 4
  %conv3 = trunc i32 %cid to i8
  %conv4 = trunc i32 %tid to i8
  %19 = shl i8 %conv4, 4
  %20 = and i8 %conv3, 15
  %or4.i = or i8 %19, %20
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %or4.i, ptr %6, align 1
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 0, ptr %7, align 2
  %23 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -241, ptr %8, align 2
  %24 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %reply) #15
  %25 = call ptr @memcpy(ptr %reply, ptr @__const.wil_tx_vring_modify.reply, i32 16)
  %arrayidx = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 57, i32 %ring_id
  %arrayidx8 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 58, i32 %ring_id
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_tx_vring_modify.__UNIQUE_ID_ddebug552, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_tx_vring_modify, %if.then)) #15
          to label %do.end15 [label %if.then], !srcloc !356

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_tx_vring_modify.__UNIQUE_ID_ddebug552, ptr noundef %27, ptr noundef nonnull @.str.115, i32 noundef %ring_id, i32 noundef %cid, i32 noundef %tid) #15
  br label %do.end15

do.end15:                                         ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.115, i32 noundef %ring_id, i32 noundef %cid, i32 noundef %tid) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %28 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool19.not = icmp eq i32 %28, 0
  br i1 %tobool19.not, label %do.end15.if.end45_crit_edge, label %land.rhs

do.end15.if.end45_crit_edge:                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end45

land.rhs:                                         ; preds = %do.end15
  %dep_map = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 69, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end39, label %land.rhs.if.end45_crit_edge, !prof !357

land.rhs.if.end45_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end45

do.end39:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1272, i32 noundef 9, ptr noundef null) #15
  br label %if.end45

if.end45:                                         ; preds = %do.end39, %land.rhs.if.end45_crit_edge, %do.end15.if.end45_crit_edge
  %va = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 57, i32 %ring_id, i32 1
  %29 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %va, align 4
  %tobool55.not = icmp eq ptr %30, null
  br i1 %tobool55.not, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.114, i32 noundef %ring_id) #15
  br label %cleanup

if.end57:                                         ; preds = %if.end45
  %arrayidx58 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 62, i32 %ring_id
  %31 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx58, align 2
  %conv60 = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv60, i32 %cid)
  %cmp61.not = icmp eq i32 %conv60, %cid
  br i1 %cmp61.not, label %lor.lhs.false, label %if.end57.if.then69_crit_edge

if.end57.if.then69_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then69

lor.lhs.false:                                    ; preds = %if.end57
  %arrayidx65 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 62, i32 %ring_id, i32 1
  %33 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx65, align 1
  %conv66 = zext i8 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv66, i32 %tid)
  %cmp67.not = icmp eq i32 %conv66, %tid
  br i1 %cmp67.not, label %lor.lhs.false.if.end78_crit_edge, label %lor.lhs.false.if.then69_crit_edge

lor.lhs.false.if.then69_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then69

lor.lhs.false.if.end78_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end78

if.then69:                                        ; preds = %lor.lhs.false.if.then69_crit_edge, %if.end57.if.then69_crit_edge
  %arrayidx76 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 62, i32 %ring_id, i32 1
  %35 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %36 to i32
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.114, i32 noundef %conv60, i32 noundef %conv77) #15
  br label %if.end78

if.end78:                                         ; preds = %if.then69, %lor.lhs.false.if.end78_crit_edge
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx, align 4
  %conv79 = zext i32 %38 to i64
  %39 = tail call i64 @llvm.bswap.i64(i64 %conv79)
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 8)
  store i64 %39, ptr %2, align 4
  %mid = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 3
  %41 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %mid, align 4
  %call83 = call i32 @wmi_call(ptr noundef %1, i16 noundef zeroext 2081, i8 noundef zeroext %42, ptr noundef nonnull %cmd, i16 noundef zeroext 32, i16 noundef zeroext 6177, ptr noundef nonnull %reply, i16 noundef zeroext 16, i32 noundef 100) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %if.end78.fail_crit_edge

if.end78.fail_crit_edge:                          ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.end86:                                         ; preds = %if.end78
  %status = getelementptr inbounds %struct.anon.159, ptr %reply, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp89.not = icmp eq i8 %44, 0
  br i1 %cmp89.not, label %if.end95, label %if.then91

if.then91:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #17
  %conv88 = zext i8 %44 to i32
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.114, i32 noundef %conv88) #15
  br label %fail

if.end95:                                         ; preds = %if.end86
  %agg_wsize = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 58, i32 %ring_id, i32 5
  %45 = ptrtoint ptr %agg_wsize to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %agg_wsize, align 4
  %46 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx8, align 4, !range !355
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool96.not = icmp eq i8 %47, 0
  br i1 %tobool96.not, label %if.end95.cleanup_crit_edge, label %land.lhs.true

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end95
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @agg_wsize to i32))
  %48 = load i32, ptr @agg_wsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %cmp98 = icmp sgt i32 %48, -1
  br i1 %cmp98, label %if.then100, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then100:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %conv102 = trunc i32 %48 to i16
  %call103 = call i32 @wil_addba_tx_request(ptr noundef %1, i8 noundef zeroext %conv2, i16 noundef zeroext %conv102) #15
  br label %cleanup

fail:                                             ; preds = %if.then91, %if.end78.fail_crit_edge
  %rc.0 = phi i32 [ %call83, %if.end78.fail_crit_edge ], [ -22, %if.then91 ]
  %lock = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 58, i32 %ring_id, i32 10
  call void @_raw_spin_lock_bh(ptr noundef %lock) #15
  %49 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %arrayidx8, align 4
  %enabled = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 58, i32 %ring_id, i32 1
  %50 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %enabled, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #15
  %max_assoc_sta = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 26
  %51 = ptrtoint ptr %max_assoc_sta to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %max_assoc_sta, align 8
  %conv107 = trunc i32 %52 to i8
  %53 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv107, ptr %arrayidx58, align 2
  %arrayidx113 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 62, i32 %ring_id, i32 1
  %54 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %arrayidx113, align 1
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.then100, %land.lhs.true.cleanup_crit_edge, %if.end95.cleanup_crit_edge, %if.then56
  %retval.0 = phi i32 [ %rc.0, %fail ], [ -22, %if.then56 ], [ 0, %if.then100 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end95.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reply) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_rx_init(ptr noundef %wil, i32 noundef %order) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ring_rx = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 55
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_rx_init.__UNIQUE_ID_ddebug549, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_rx_init, %if.then)) #15
          to label %do.end6 [label %if.then], !srcloc !356

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_rx_init.__UNIQUE_ID_ddebug549, ptr noundef %1, ptr noundef nonnull @.str.120) #15
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.120) #15
  %va = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 55, i32 1
  %2 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %va, align 4
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.119) #15
  br label %cleanup

if.end11:                                         ; preds = %do.end6
  %4 = load i8, ptr @rx_large_buf, align 1, !range !355
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  %cond.i = select i1 %tobool.not.i, i32 1986, i32 7912
  %rx_buf_len.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 56
  %5 = ptrtoint ptr %rx_buf_len.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond.i, ptr %rx_buf_len.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mtu_max to i32))
  %6 = load i32, ptr @mtu_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %cond.i)
  %cmp.i = icmp ugt i32 %6, %cond.i
  br i1 %cmp.i, label %if.then.i, label %if.end11.wil_rx_buf_len_init.exit_crit_edge

if.end11.wil_rx_buf_len_init.exit_crit_edge:      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %wil_rx_buf_len_init.exit

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__wil_info(ptr noundef %wil, ptr noundef nonnull @.str.122, ptr noundef nonnull @__func__.wil_rx_buf_len_init, i32 noundef %6) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mtu_max to i32))
  %7 = load i32, ptr @mtu_max, align 4
  %8 = ptrtoint ptr %rx_buf_len.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %rx_buf_len.i, align 8
  br label %wil_rx_buf_len_init.exit

wil_rx_buf_len_init.exit:                         ; preds = %if.then.i, %if.end11.wil_rx_buf_len_init.exit_crit_edge
  %shl = shl nuw i32 1, %order
  %conv = trunc i32 %shl to i16
  %size = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 55, i32 2
  %9 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %size, align 4
  %is_rx = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 55, i32 8
  %10 = ptrtoint ptr %is_rx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %is_rx, align 4
  %call12 = tail call fastcc i32 @wil_vring_alloc(ptr noundef %wil, ptr noundef %ring_rx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %wil_rx_buf_len_init.exit.cleanup_crit_edge

wil_rx_buf_len_init.exit.cleanup_crit_edge:       ; preds = %wil_rx_buf_len_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end15:                                         ; preds = %wil_rx_buf_len_init.exit
  %call16 = tail call i32 @wmi_rx_chain_add(ptr noundef %wil, ptr noundef %ring_rx) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.err_free_crit_edge

if.end15.err_free_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_free

if.end19:                                         ; preds = %if.end15
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %size, align 4
  %conv21 = zext i16 %12 to i32
  %call22 = tail call fastcc i32 @wil_rx_refill(ptr noundef %wil, i32 noundef %conv21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end19.cleanup_crit_edge, label %if.end19.err_free_crit_edge

if.end19.err_free_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_free

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

err_free:                                         ; preds = %if.end19.err_free_crit_edge, %if.end15.err_free_crit_edge
  %rc.0 = phi i32 [ %call16, %if.end15.err_free_crit_edge ], [ %call22, %if.end19.err_free_crit_edge ]
  tail call void @wil_vring_free(ptr noundef %wil, ptr noundef %ring_rx)
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end19.cleanup_crit_edge, %wil_rx_buf_len_init.exit.cleanup_crit_edge, %if.then10
  %retval.0 = phi i32 [ -22, %if.then10 ], [ %rc.0, %err_free ], [ %call12, %wil_rx_buf_len_init.exit.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_addba_rx_resp(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @wil_get_reorder_params(ptr nocapture noundef readnone %wil, ptr nocapture noundef readonly %skb, ptr nocapture noundef writeonly %tid, ptr nocapture noundef writeonly %cid, ptr nocapture noundef writeonly %mid, ptr nocapture noundef writeonly %seq, ptr nocapture noundef writeonly %mcast, ptr nocapture noundef writeonly %retry) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %cb.i, align 1
  %and.i.i = and i32 %1, 15
  %2 = ptrtoint ptr %tid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and.i.i, ptr %tid, align 4
  %rx_info.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %3 = ptrtoint ptr %rx_info.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rx_info.i, align 1
  %conv = zext i8 %4 to i32
  %5 = ptrtoint ptr %cid to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %cid, align 4
  %6 = load i32, ptr %cb.i, align 1
  %and.i = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %shr.i.i = lshr i32 %6, 8
  %and.i.i13 = and i32 %shr.i.i, 3
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %and.i.i13
  %7 = ptrtoint ptr %mid to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond.i, ptr %mid, align 4
  %8 = ptrtoint ptr %cb.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %cb.i, align 1
  %shr.i.i14 = lshr i32 %9, 16
  %10 = trunc i32 %shr.i.i14 to i16
  %conv5 = and i16 %10, 4095
  %11 = ptrtoint ptr %seq to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv5, ptr %seq, align 2
  %d1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %12 = ptrtoint ptr %d1.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %d1.i, align 1
  %shr.i.i16 = lshr i32 %13, 13
  %and.i.i17 = and i32 %shr.i.i16, 3
  %14 = ptrtoint ptr %mcast to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and.i.i17, ptr %mcast, align 4
  %15 = load i32, ptr %cb.i, align 1
  %shr.i.i18 = lshr i32 %15, 31
  %16 = ptrtoint ptr %retry to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shr.i.i18, ptr %retry, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @wil_get_netif_rx_params(ptr nocapture noundef readonly %skb, ptr nocapture noundef writeonly %cid, ptr nocapture noundef writeonly %security) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_info.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %0 = ptrtoint ptr %rx_info.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rx_info.i, align 1
  %conv = zext i8 %1 to i32
  %2 = ptrtoint ptr %cid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %cid, align 4
  %d1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %3 = ptrtoint ptr %d1.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %d1.i, align 1
  %shr.i.i = lshr i32 %4, 7
  %and.i.i = and i32 %shr.i.i, 1
  %5 = ptrtoint ptr %security to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and.i.i, ptr %security, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_rx_crypto_check(ptr noundef %wil, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %rx_info.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %0 = ptrtoint ptr %rx_info.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rx_info.i, align 1
  %conv = zext i8 %1 to i32
  %2 = ptrtoint ptr %cb.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %cb.i, align 1
  %and.i.i = and i32 %3, 15
  %d1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %4 = ptrtoint ptr %d1.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %d1.i, align 1
  %shr.i.i = lshr i32 %5, 4
  %and.i.i46 = and i32 %shr.i.i, 3
  %shr.i.i48 = lshr i32 %5, 13
  %and.i.i49 = and i32 %shr.i.i48, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i49)
  %tobool.not = icmp eq i32 %and.i.i49, 0
  %group_crypto_rx = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 63, i32 %conv, i32 11
  %arrayidx5 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 63, i32 %conv, i32 10, i32 %and.i.i
  %cond = select i1 %tobool.not, ptr %arrayidx5, ptr %group_crypto_rx
  %arrayidx7 = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %cond, i32 0, i32 %and.i.i46
  %pn_15_0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 10
  %key_set = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %cond, i32 0, i32 %and.i.i46, i32 1
  %6 = ptrtoint ptr %key_set to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %key_set, align 1, !range !355
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool8.not = icmp eq i8 %7, 0
  br i1 %tobool8.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__wil_err_ratelimited(ptr noundef %wil, ptr noundef nonnull @.str.123, ptr noundef nonnull @__func__.wil_rx_crypto_check, i32 noundef %conv, i32 noundef %and.i.i, i32 noundef %and.i.i49, i32 noundef %and.i.i46) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %su2.016.i = getelementptr i8, ptr %arrayidx7, i32 5
  %su1.017.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 15
  %8 = ptrtoint ptr %su1.017.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %su1.017.i, align 1
  %10 = ptrtoint ptr %su2.016.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %su2.016.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %tobool.not.i = icmp eq i8 %9, %11
  br i1 %tobool.not.i, label %for.cond.i, label %if.end.reverse_memcmp.exit_crit_edge

if.end.reverse_memcmp.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %reverse_memcmp.exit

for.cond.i:                                       ; preds = %if.end
  %su2.016.i.1 = getelementptr i8, ptr %arrayidx7, i32 4
  %su1.017.i.1 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 14
  %12 = ptrtoint ptr %su1.017.i.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %su1.017.i.1, align 1
  %14 = ptrtoint ptr %su2.016.i.1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %su2.016.i.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %tobool.not.i.1 = icmp eq i8 %13, %15
  br i1 %tobool.not.i.1, label %for.cond.i.1, label %for.cond.i.reverse_memcmp.exit_crit_edge

for.cond.i.reverse_memcmp.exit_crit_edge:         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %reverse_memcmp.exit

for.cond.i.1:                                     ; preds = %for.cond.i
  %su2.016.i.2 = getelementptr i8, ptr %arrayidx7, i32 3
  %su1.017.i.2 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 13
  %16 = ptrtoint ptr %su1.017.i.2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %su1.017.i.2, align 1
  %18 = ptrtoint ptr %su2.016.i.2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %su2.016.i.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %tobool.not.i.2 = icmp eq i8 %17, %19
  br i1 %tobool.not.i.2, label %for.cond.i.2, label %for.cond.i.1.reverse_memcmp.exit_crit_edge

for.cond.i.1.reverse_memcmp.exit_crit_edge:       ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %reverse_memcmp.exit

for.cond.i.2:                                     ; preds = %for.cond.i.1
  %su2.016.i.3 = getelementptr i8, ptr %arrayidx7, i32 2
  %su1.017.i.3 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %20 = ptrtoint ptr %su1.017.i.3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %su1.017.i.3, align 1
  %22 = ptrtoint ptr %su2.016.i.3 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %su2.016.i.3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %tobool.not.i.3 = icmp eq i8 %21, %23
  br i1 %tobool.not.i.3, label %for.cond.i.3, label %for.cond.i.2.reverse_memcmp.exit_crit_edge

for.cond.i.2.reverse_memcmp.exit_crit_edge:       ; preds = %for.cond.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %reverse_memcmp.exit

for.cond.i.3:                                     ; preds = %for.cond.i.2
  %su2.016.i.4 = getelementptr i8, ptr %arrayidx7, i32 1
  %su1.017.i.4 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 11
  %24 = ptrtoint ptr %su1.017.i.4 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %su1.017.i.4, align 1
  %26 = ptrtoint ptr %su2.016.i.4 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %su2.016.i.4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %27)
  %tobool.not.i.4 = icmp eq i8 %25, %27
  br i1 %tobool.not.i.4, label %for.cond.i.4, label %for.cond.i.3.reverse_memcmp.exit_crit_edge

for.cond.i.3.reverse_memcmp.exit_crit_edge:       ; preds = %for.cond.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %reverse_memcmp.exit

for.cond.i.4:                                     ; preds = %for.cond.i.3
  %su1.017.i.5 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 10
  %28 = ptrtoint ptr %su1.017.i.5 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %su1.017.i.5, align 1
  %30 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %31)
  %tobool.not.i.5 = icmp eq i8 %29, %31
  br i1 %tobool.not.i.5, label %for.cond.i.4.if.then12_crit_edge, label %for.cond.i.4.reverse_memcmp.exit_crit_edge

for.cond.i.4.reverse_memcmp.exit_crit_edge:       ; preds = %for.cond.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %reverse_memcmp.exit

for.cond.i.4.if.then12_crit_edge:                 ; preds = %for.cond.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then12

reverse_memcmp.exit:                              ; preds = %for.cond.i.4.reverse_memcmp.exit_crit_edge, %for.cond.i.3.reverse_memcmp.exit_crit_edge, %for.cond.i.2.reverse_memcmp.exit_crit_edge, %for.cond.i.1.reverse_memcmp.exit_crit_edge, %for.cond.i.reverse_memcmp.exit_crit_edge, %if.end.reverse_memcmp.exit_crit_edge
  %.lcssa56 = phi i8 [ %9, %if.end.reverse_memcmp.exit_crit_edge ], [ %13, %for.cond.i.reverse_memcmp.exit_crit_edge ], [ %17, %for.cond.i.1.reverse_memcmp.exit_crit_edge ], [ %21, %for.cond.i.2.reverse_memcmp.exit_crit_edge ], [ %25, %for.cond.i.3.reverse_memcmp.exit_crit_edge ], [ %29, %for.cond.i.4.reverse_memcmp.exit_crit_edge ]
  %.lcssa = phi i8 [ %11, %if.end.reverse_memcmp.exit_crit_edge ], [ %15, %for.cond.i.reverse_memcmp.exit_crit_edge ], [ %19, %for.cond.i.1.reverse_memcmp.exit_crit_edge ], [ %23, %for.cond.i.2.reverse_memcmp.exit_crit_edge ], [ %27, %for.cond.i.3.reverse_memcmp.exit_crit_edge ], [ %31, %for.cond.i.4.reverse_memcmp.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %.lcssa56, i8 %.lcssa)
  %cmp.not = icmp ugt i8 %.lcssa56, %.lcssa
  br i1 %cmp.not, label %if.end15, label %reverse_memcmp.exit.if.then12_crit_edge

reverse_memcmp.exit.if.then12_crit_edge:          ; preds = %reverse_memcmp.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then12

if.then12:                                        ; preds = %reverse_memcmp.exit.if.then12_crit_edge, %for.cond.i.4.if.then12_crit_edge
  tail call void (ptr, ptr, ...) @__wil_err_ratelimited(ptr noundef %wil, ptr noundef nonnull @.str.124, ptr noundef nonnull @__func__.wil_rx_crypto_check, i32 noundef %conv, i32 noundef %and.i.i, i32 noundef %and.i.i49, i32 noundef %and.i.i46, ptr noundef %pn_15_0, ptr noundef %arrayidx7) #15
  br label %cleanup

if.end15:                                         ; preds = %reverse_memcmp.exit
  call void @__sanitizer_cov_trace_pc() #17
  %32 = call ptr @memcpy(ptr %arrayidx7, ptr %pn_15_0, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then12, %if.then
  %retval.0 = phi i32 [ -22, %if.then12 ], [ 0, %if.end15 ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_rx_error_check(ptr noundef %wil, ptr nocapture noundef readonly %skb, ptr nocapture noundef %stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 29
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %status, align 1
  %2 = and i8 %1, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %error = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %3 = ptrtoint ptr %error to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %error, align 1
  %5 = and i8 %4, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %rx_mic_error = getelementptr inbounds %struct.wil_net_stats, ptr %stats, i32 0, i32 13
  %6 = ptrtoint ptr %rx_mic_error to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_mic_error, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %rx_mic_error, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_rx_error_check.__UNIQUE_ID_ddebug537, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_rx_error_check, %if.then11)) #15
          to label %do.end13 [label %if.then11], !srcloc !356

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %8 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_rx_error_check.__UNIQUE_ID_ddebug537, ptr noundef %9, ptr noundef nonnull @.str.126) #15
  br label %do.end13

do.end13:                                         ; preds = %if.then11, %if.then
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.126) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %do.end13 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wil_is_rx_idle(ptr nocapture noundef readonly %wil) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %va = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 55, i32 1
  %0 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %va, align 4
  %swhead = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 55, i32 4
  %2 = ptrtoint ptr %swhead to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %swhead, align 4
  %status = getelementptr %union.wil_ring_desc, ptr %1, i32 %3, i32 0, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %status, align 1
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wil_rx_fini(ptr noundef %wil) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ring_rx = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 55
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_rx_fini.__UNIQUE_ID_ddebug550, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_rx_fini, %if.then)) #15
          to label %do.end6 [label %if.then], !srcloc !356

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_rx_fini.__UNIQUE_ID_ddebug550, ptr noundef %1, ptr noundef nonnull @.str.128) #15
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.128) #15
  %va = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 55, i32 1
  %2 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %va, align 4
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %do.end6.if.end11_crit_edge, label %if.then10

do.end6.if.end11_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then10:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @wil_vring_free(ptr noundef %wil, ptr noundef %ring_rx)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %do.end6.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @wil_skb_is_eap_3(ptr noundef %wil, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %0 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mac_header.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %cmp.i.not.i = icmp eq i16 %1, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.wil_is_ptk_eapol_key) #15
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len1.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i.i, align 8
  %conv.i.i.i = zext i16 %1 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 %conv.i.i.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i.neg.i = sub i32 %3, %sub.ptr.lhs.cast.i.i
  %sub.i = add i32 %sub.ptr.sub.i.neg.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %sub.i)
  %cmp.i = icmp ult i32 %sub.i, 95
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %type.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 15
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp6.not.i = icmp eq i8 %9, 3
  br i1 %cmp6.not.i, label %if.end9.i, label %if.end4.i.cleanup_crit_edge

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end9.i:                                        ; preds = %if.end4.i
  %add.ptr10.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 18
  %10 = ptrtoint ptr %add.ptr10.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr10.i, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.135)
  switch i8 %11, label %if.end9.i.cleanup_crit_edge [
    i8 -2, label %if.end9.i.if.end20.i_crit_edge
    i8 2, label %if.end9.i.if.end20.i_crit_edge54
  ]

if.end9.i.if.end20.i_crit_edge54:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i

if.end9.i.if.end20.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end20.i:                                       ; preds = %if.end9.i.if.end20.i_crit_edge, %if.end9.i.if.end20.i_crit_edge54
  %key_info21.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 19
  %13 = ptrtoint ptr %key_info21.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %key_info21.i, align 1
  %15 = and i16 %14, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool23.not.i = icmp eq i16 %15, 0
  %tobool.not = icmp eq ptr %add.ptr10.i, null
  %or.cond = or i1 %tobool.not, %tobool23.not.i
  br i1 %or.cond, label %if.end20.i.cleanup_crit_edge, label %if.end

if.end20.i.cleanup_crit_edge:                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %if.end20.i
  %key_info1 = getelementptr inbounds %struct.wil_eapol_key, ptr %add.ptr10.i, i32 0, i32 1
  %16 = ptrtoint ptr %key_info1 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %key_info1, align 1
  %18 = and i16 %17, 4352
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool2.not = icmp eq i16 %18, 0
  br i1 %tobool2.not, label %do.body19, label %do.body5

do.body5:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_skb_is_eap_3.__UNIQUE_ID_ddebug538, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_skb_is_eap_3, %if.then10)) #15
          to label %do.end13 [label %if.then10], !srcloc !356

if.then10:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %19 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_skb_is_eap_3.__UNIQUE_ID_ddebug538, ptr noundef %20, ptr noundef nonnull @.str.42) #15
  br label %do.end13

do.end13:                                         ; preds = %if.then10, %do.body5
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.42) #15
  br label %cleanup

do.body19:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_skb_is_eap_3.__UNIQUE_ID_ddebug539, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_skb_is_eap_3, %if.then31)) #15
          to label %do.end37 [label %if.then31], !srcloc !356

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev32 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %21 = ptrtoint ptr %main_ndev32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %main_ndev32, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_skb_is_eap_3.__UNIQUE_ID_ddebug539, ptr noundef %22, ptr noundef nonnull @.str.43) #15
  br label %do.end37

do.end37:                                         ; preds = %if.then31, %do.body19
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.43) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %do.end13, %if.end20.i.cleanup_crit_edge, %if.end9.i.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.i
  %retval.0 = phi i1 [ true, %do.end13 ], [ false, %do.end37 ], [ false, %if.then.i ], [ false, %if.end.i.cleanup_crit_edge ], [ false, %if.end4.i.cleanup_crit_edge ], [ false, %if.end9.i.cleanup_crit_edge ], [ false, %if.end20.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_wil6210_rx(i16 noundef zeroext %index, ptr noundef %d) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wil6210_rx, i32 0, i32 1), ptr blockaddress(@trace_wil6210_rx, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !356

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !345) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !361

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  %9 = tail call i32 @llvm.read_register.i32(metadata !345) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !378
  %call42 = tail call i32 @__traceiter_wil6210_rx(ptr noundef null, i16 noundef zeroext %index, ptr noundef %d) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !379
  %13 = tail call i32 @llvm.read_register.i32(metadata !345) #15
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !345) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !361

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !345) #15
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !374
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wil6210_rx, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wil6210_rx, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_wil6210_rx.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_wil6210_rx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 178, ptr noundef nonnull @.str.54) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !375
  %31 = tail call i32 @llvm.read_register.i32(metadata !345) #15
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
declare dso_local void @__wil_err_ratelimited(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_rx_bar(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_wil6210_rx(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wil_w(ptr nocapture noundef readonly %wil, i32 noundef %reg, i32 noundef %val) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !365
  tail call void @arm_heavy_mb() #15
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %csr = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %1 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %csr, align 4
  %sub = add i32 %reg, -8912896
  %add.ptr = getelementptr i8, ptr %2, i32 %sub
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #15, !srcloc !366
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !367
  tail call void @arm_heavy_mb() #15
  ret void
}

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
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__wil_tx_ring(ptr noundef %wil, ptr nocapture noundef readonly %vif, ptr noundef %ring, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  %dd = alloca %struct.vring_tx_desc, align 4
  %pa = alloca i32, align 4
  %c = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %wiphy = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 2
  %0 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wiphy, align 8
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 56, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dd) #15
  %4 = getelementptr inbounds [3 x i32], ptr %dd, i32 0, i32 2
  %5 = getelementptr inbounds %struct.vring_tx_desc, ptr %dd, i32 0, i32 1
  %6 = getelementptr inbounds %struct.vring_tx_desc, ptr %dd, i32 0, i32 1, i32 2
  %7 = getelementptr inbounds %struct.vring_tx_desc, ptr %dd, i32 0, i32 1, i32 3
  %swhead1 = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 4
  %8 = call ptr @memset(ptr %dd, i32 255, i32 32)
  %9 = ptrtoint ptr %swhead1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %swhead1, align 4
  %size.i = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 2
  %11 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %size.i, align 4
  %conv.i = zext i16 %12 to i32
  %swtail2.i.i = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 3
  %13 = ptrtoint ptr %swtail2.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %swtail2.i.i, align 4
  %add.i.i = add i32 %10, %conv.i
  %sub.i.i = sub i32 %add.i.i, %14
  %rem.i.i = urem i32 %sub.i.i, %conv.i
  %15 = xor i32 %rem.i.i, -1
  %sub1.i = add nsw i32 %15, %conv.i
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i, align 4
  %nr_frags4 = getelementptr inbounds %struct.skb_shared_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %nr_frags4 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %nr_frags4, align 2
  %conv = zext i8 %19 to i32
  %ring_tx = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 57
  %sub.ptr.lhs.cast = ptrtoint ptr %ring to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %ring_tx to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pa) #15
  %bcast_ring = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 23
  %20 = ptrtoint ptr %bcast_ring to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bcast_ring, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div, i32 %21)
  %cmp = icmp eq i32 %sub.ptr.div, %21
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %22 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %24 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %23, %25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__wil_tx_ring.__UNIQUE_ID_ddebug571, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__wil_tx_ring, %if.then)) #15
          to label %do.end15 [label %if.then], !srcloc !356

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %26 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %main_ndev, align 4
  %28 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__wil_tx_ring.__UNIQUE_ID_ddebug571, ptr noundef %27, ptr noundef nonnull @.str.90, i32 noundef %29, i32 noundef %sub.ptr.div, i32 noundef %conv) #15
  br label %do.end15

do.end15:                                         ; preds = %if.then, %entry
  %30 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len.i, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.90, i32 noundef %31, i32 noundef %sub.ptr.div, i32 noundef %conv) #15
  %enabled = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 58, i32 %sub.ptr.div, i32 1
  %32 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool19.not = icmp eq i32 %33, 0
  br i1 %tobool19.not, label %do.end15.cleanup360_crit_edge, label %if.end29, !prof !357

do.end15.cleanup360_crit_edge:                    ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup360

if.end29:                                         ; preds = %do.end15
  %add = add nuw nsw i32 %conv, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i, i32 %conv)
  %cmp30.not = icmp sgt i32 %sub1.i, %conv
  br i1 %cmp30.not, label %if.end40, label %if.then38, !prof !361

if.then38:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__wil_err_ratelimited(ptr noundef %wil, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.89, i32 noundef %sub.ptr.div, i32 noundef %add) #15
  br label %cleanup360

if.end40:                                         ; preds = %if.end29
  %va = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 1
  %34 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %va, align 4
  %arrayidx41 = getelementptr %union.wil_ring_desc, ptr %35, i32 %10
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  %38 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len.i, align 4
  %40 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %data_len.i, align 8
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %37) #15
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end40
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !361

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %3) #15
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %42 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %3, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %45, %if.end.i.i ], [ %43, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.62, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #15
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i548 = sub i32 %39, %41
  tail call void @debug_dma_map_single(ptr noundef %3, ptr noundef %37, i32 noundef %sub.i548) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %46 = load ptr, ptr @mem_map, align 4
  %47 = ptrtoint ptr %37 to i32
  %sub.i549 = add i32 %47, 1073741824
  %shr.i = lshr i32 %sub.i549, 12
  %add.ptr.i = getelementptr %struct.page, ptr %46, i32 %shr.i
  %and.i = and i32 %47, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %3, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %sub.i548, i32 noundef 1, i32 noundef 0) #15
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i550 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %48 = ptrtoint ptr %pa to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %retval.0.i550, ptr %pa, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__wil_tx_ring.__UNIQUE_ID_ddebug572, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__wil_tx_ring, %if.then58)) #15
          to label %do.end66 [label %if.then58], !srcloc !356

if.then58:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev59 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %49 = ptrtoint ptr %main_ndev59 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %main_ndev59, align 4
  %51 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len.i, align 4
  %53 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %data_len.i, align 8
  %sub.i553 = sub i32 %52, %54
  %55 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__wil_tx_ring.__UNIQUE_ID_ddebug572, ptr noundef %50, ptr noundef nonnull @.str.92, i32 noundef %sub.ptr.div, i32 noundef %sub.i553, ptr noundef %56, ptr noundef nonnull %pa) #15
  br label %do.end66

do.end66:                                         ; preds = %if.then58, %dma_map_single_attrs.exit
  %57 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len.i, align 4
  %59 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %data_len.i, align 8
  %sub.i556 = sub i32 %58, %60
  %61 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.92, i32 noundef %sub.ptr.div, i32 noundef %sub.i556, ptr noundef %62, ptr noundef nonnull %pa) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__wil_tx_ring.__UNIQUE_ID_ddebug573, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__wil_tx_ring, %if.then83)) #15
          to label %do.end88 [label %if.then83], !srcloc !356

if.then83:                                        ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #17
  %63 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data, align 4
  %65 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len.i, align 4
  %67 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %data_len.i, align 8
  %sub.i559 = sub i32 %66, %68
  call void @print_hex_dump(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.93, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %64, i32 noundef %sub.i559, i1 noundef zeroext false) #15
  br label %do.end88

do.end88:                                         ; preds = %if.then83, %do.end66
  %69 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pa, align 4
  call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef %70) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %70)
  %cmp.i.not = icmp eq i32 %70, -1
  br i1 %cmp.i.not, label %do.end88.cleanup360_crit_edge, label %if.end98, !prof !357

do.end88.cleanup360_crit_edge:                    ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup360

if.end98:                                         ; preds = %do.end88
  %ctx = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 6
  %71 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ctx, align 4
  %mapped_as = getelementptr %struct.wil_ctx, ptr %72, i32 %10, i32 2
  %73 = ptrtoint ptr %mapped_as to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %mapped_as, align 1
  %tx_desc_map = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 6
  %74 = ptrtoint ptr %tx_desc_map to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tx_desc_map, align 8
  %76 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pa, align 4
  %call100 = call i32 %75(ptr noundef nonnull %dd, i32 noundef %77, i32 noundef %sub.i, i32 noundef %sub.ptr.div) #15
  br i1 %cmp, label %if.then108, label %if.end98.if.end125_crit_edge, !prof !357

if.end98.if.end125_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end125

if.then108:                                       ; preds = %if.end98
  %78 = ptrtoint ptr %dd to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %dd, align 4
  %or = or i32 %79, 134217728
  store i32 %or, ptr %dd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %sub.i)
  %cmp111 = icmp ugt i32 %sub.i, 1024
  br i1 %cmp111, label %if.then119, label %if.then108.if.end125_crit_edge, !prof !357

if.then108.if.end125_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end125

if.then119:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #17
  %or123 = or i32 %79, 138412032
  %80 = ptrtoint ptr %dd to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %or123, ptr %dd, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.then119, %if.then108.if.end125_crit_edge, %if.end98.if.end125_crit_edge
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %81 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %82 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %82)
  %cmp.not.i = icmp eq i16 %82, 1536
  br i1 %cmp.not.i, label %if.end.i, label %if.end125.if.end135_crit_edge

if.end125.if.end135_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end135

if.end.i:                                         ; preds = %if.end125
  %83 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 14, ptr %7, align 1
  %protocol2.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %84 = ptrtoint ptr %protocol2.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %protocol2.i, align 8
  %86 = zext i16 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.136)
  switch i16 %85, label %if.end.i.dma_error_crit_edge [
    i16 2048, label %sw.bb.i
    i16 -31011, label %sw.bb10.i
  ]

if.end.i.dma_error_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_error

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %87 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %89 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %90 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %88, i32 %conv.i.i.i
  %protocol4.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %91 = ptrtoint ptr %protocol4.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %protocol4.i, align 1
  %93 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 -114, ptr %7, align 1
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %head.i.i47.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %94 = ptrtoint ptr %head.i.i47.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %head.i.i47.i, align 8
  %network_header.i.i48.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %96 = ptrtoint ptr %network_header.i.i48.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %network_header.i.i48.i, align 4
  %conv.i.i49.i = zext i16 %97 to i32
  %add.ptr.i.i50.i = getelementptr i8, ptr %95, i32 %conv.i.i49.i
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i50.i, i32 0, i32 3
  %98 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %nexthdr.i, align 2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb10.i, %sw.bb.i
  %protocol.0.in.i = phi i8 [ %99, %sw.bb10.i ], [ %92, %sw.bb.i ]
  %100 = zext i8 %protocol.0.in.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.137)
  switch i8 %protocol.0.in.i, label %sw.epilog.i.dma_error_crit_edge [
    i8 6, label %sw.bb13.i
    i8 17, label %sw.bb20.i
  ]

sw.epilog.i.dma_error_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_error

sw.bb13.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  %101 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %5, align 4
  %or15.i = or i32 %102, -2147483648
  store i32 %or15.i, ptr %5, align 4
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %103 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %head.i.i.i.i, align 8
  %transport_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %105 = ptrtoint ptr %transport_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %transport_header.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %106 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %104, i32 %conv.i.i.i.i
  %doff.i.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 4
  %107 = ptrtoint ptr %doff.i.i.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %bf.load.i.i.i = load i16, ptr %doff.i.i.i, align 4
  %108 = lshr i16 %bf.load.i.i.i, 10
  %109 = and i16 %108, 60
  %mul.i.i.i = zext i16 %109 to i32
  %or19.i = or i32 %or15.i, %mul.i.i.i
  br label %sw.epilog25.i

sw.bb20.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  %110 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %5, align 4
  %or23.i = or i32 %111, 8
  br label %sw.epilog25.i

sw.epilog25.i:                                    ; preds = %sw.bb20.i, %sw.bb13.i
  %storemerge.i = phi i32 [ %or23.i, %sw.bb20.i ], [ %or19.i, %sw.bb13.i ]
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %112 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = trunc i16 %113 to i8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %114 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %network_header.i.i, align 4
  %conv1.i.i = trunc i16 %115 to i8
  %sub.i.i560 = sub i8 %conv.i.i, %conv1.i.i
  %116 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %sub.i.i560, ptr %6, align 2
  %or34.i = or i32 %storemerge.i, 2129920
  %117 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %or34.i, ptr %5, align 4
  br label %if.end135

if.end135:                                        ; preds = %sw.epilog25.i, %if.end125.if.end135_crit_edge
  %118 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ctx, align 4
  %nr_frags139 = getelementptr %struct.wil_ctx, ptr %119, i32 %10, i32 1
  %120 = ptrtoint ptr %nr_frags139 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %19, ptr %nr_frags139, align 4
  %121 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %4, align 4
  %or.i = or i32 %122, %add
  store i32 %or.i, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp141638.not = icmp eq i8 %19, 0
  br i1 %cmp141638.not, label %if.end135.for.end_crit_edge, label %for.body.lr.ph

if.end135.for.end_crit_edge:                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end135
  %main_ndev162 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %protocol2.i571 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %head.i.i47.i579 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %network_header.i.i48.i580 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %transport_header.i.i.i.i589 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %_d.0641 = phi ptr [ %arrayidx41, %for.body.lr.ph ], [ %arrayidx190, %for.inc.for.body_crit_edge ]
  %f.0640 = phi i32 [ 0, %for.body.lr.ph ], [ %add186, %for.inc.for.body_crit_edge ]
  %i.0639 = phi i32 [ %10, %for.body.lr.ph ], [ %rem, %for.inc.for.body_crit_edge ]
  %123 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %end.i, align 4
  %arrayidx144 = getelementptr %struct.skb_shared_info, ptr %124, i32 0, i32 12, i32 %f.0640
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %124, i32 0, i32 12, i32 %f.0640, i32 1
  %125 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %bv_len.i, align 4
  %127 = call ptr @memcpy(ptr %_d.0641, ptr %dd, i32 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__wil_tx_ring.__UNIQUE_ID_ddebug574, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__wil_tx_ring, %if.then161)) #15
          to label %do.end167 [label %if.then161], !srcloc !356

if.then161:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %128 = ptrtoint ptr %main_ndev162 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %main_ndev162, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__wil_tx_ring.__UNIQUE_ID_ddebug574, ptr noundef %129, ptr noundef nonnull @.str.95, i32 noundef %sub.ptr.div, i32 noundef %i.0639) #15
  br label %do.end167

do.end167:                                        ; preds = %if.then161, %for.body
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.95, i32 noundef %sub.ptr.div, i32 noundef %i.0639) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__wil_tx_ring.__UNIQUE_ID_ddebug575, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__wil_tx_ring, %if.then182)) #15
          to label %do.end185 [label %if.then182], !srcloc !356

if.then182:                                       ; preds = %do.end167
  call void @__sanitizer_cov_trace_pc() #17
  call void @print_hex_dump(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.96, i32 noundef 0, i32 noundef 32, i32 noundef 4, ptr noundef nonnull %dd, i32 noundef 32, i1 noundef zeroext false) #15
  br label %do.end185

do.end185:                                        ; preds = %if.then182, %do.end167
  %add186 = add nuw nsw i32 %f.0640, 1
  %add187 = add i32 %add186, %10
  %130 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %size.i, align 4
  %conv188 = zext i16 %131 to i32
  %rem = urem i32 %add187, %conv188
  %132 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %va, align 4
  %arrayidx190 = getelementptr %union.wil_ring_desc, ptr %133, i32 %rem
  %134 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %bv_len.i, align 4
  %136 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx144, align 4
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %124, i32 0, i32 12, i32 %f.0640, i32 2
  %138 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %bv_offset.i.i, align 4
  %call2.i = call i32 @dma_map_page_attrs(ptr noundef %3, ptr noundef %137, i32 noundef %139, i32 noundef %135, i32 noundef 1, i32 noundef 0) #15
  %140 = ptrtoint ptr %pa to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %call2.i, ptr %pa, align 4
  call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef %call2.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp.i564.not = icmp eq i32 %call2.i, -1
  br i1 %cmp.i564.not, label %do.end185.dma_error_crit_edge, label %if.end202, !prof !357

do.end185.dma_error_crit_edge:                    ; preds = %do.end185
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_error

if.end202:                                        ; preds = %do.end185
  %141 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %ctx, align 4
  %mapped_as205 = getelementptr %struct.wil_ctx, ptr %142, i32 %rem, i32 2
  %143 = ptrtoint ptr %mapped_as205 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 2, ptr %mapped_as205, align 1
  %144 = ptrtoint ptr %tx_desc_map to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %tx_desc_map, align 8
  %146 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %pa, align 4
  %call208 = call i32 %145(ptr noundef nonnull %dd, i32 noundef %147, i32 noundef %126, i32 noundef %sub.ptr.div) #15
  %148 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %bf.load.i567 = load i16, ptr %ip_summed.i, align 8
  %149 = and i16 %bf.load.i567, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %149)
  %cmp.not.i568 = icmp eq i16 %149, 1536
  br i1 %cmp.not.i568, label %if.end.i572, label %if.end202.for.inc_crit_edge

if.end202.for.inc_crit_edge:                      ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end.i572:                                      ; preds = %if.end202
  %150 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 14, ptr %7, align 1
  %151 = ptrtoint ptr %protocol2.i571 to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %protocol2.i571, align 8
  %153 = zext i16 %152 to i64
  call void @__sanitizer_cov_trace_switch(i64 %153, ptr @__sancov_gen_cov_switch_values.138)
  switch i16 %152, label %if.end.i572.for.inc_crit_edge [
    i16 2048, label %sw.bb.i578
    i16 -31011, label %sw.bb10.i584
  ]

if.end.i572.for.inc_crit_edge:                    ; preds = %if.end.i572
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

sw.bb.i578:                                       ; preds = %if.end.i572
  call void @__sanitizer_cov_trace_pc() #17
  %154 = ptrtoint ptr %head.i.i47.i579 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %head.i.i47.i579, align 8
  %156 = ptrtoint ptr %network_header.i.i48.i580 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %network_header.i.i48.i580, align 4
  %conv.i.i.i575 = zext i16 %157 to i32
  %add.ptr.i.i.i576 = getelementptr i8, ptr %155, i32 %conv.i.i.i575
  %protocol4.i577 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i576, i32 0, i32 6
  %158 = ptrtoint ptr %protocol4.i577 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %protocol4.i577, align 1
  %160 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 -114, ptr %7, align 1
  br label %sw.epilog.i586

sw.bb10.i584:                                     ; preds = %if.end.i572
  call void @__sanitizer_cov_trace_pc() #17
  %161 = ptrtoint ptr %head.i.i47.i579 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %head.i.i47.i579, align 8
  %163 = ptrtoint ptr %network_header.i.i48.i580 to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %network_header.i.i48.i580, align 4
  %conv.i.i49.i581 = zext i16 %164 to i32
  %add.ptr.i.i50.i582 = getelementptr i8, ptr %162, i32 %conv.i.i49.i581
  %nexthdr.i583 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i50.i582, i32 0, i32 3
  %165 = ptrtoint ptr %nexthdr.i583 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %nexthdr.i583, align 2
  br label %sw.epilog.i586

sw.epilog.i586:                                   ; preds = %sw.bb10.i584, %sw.bb.i578
  %protocol.0.in.i585 = phi i8 [ %166, %sw.bb10.i584 ], [ %159, %sw.bb.i578 ]
  %167 = zext i8 %protocol.0.in.i585 to i64
  call void @__sanitizer_cov_trace_switch(i64 %167, ptr @__sancov_gen_cov_switch_values.139)
  switch i8 %protocol.0.in.i585, label %sw.epilog.i586.for.inc_crit_edge [
    i8 6, label %sw.bb13.i596
    i8 17, label %sw.bb20.i598
  ]

sw.epilog.i586.for.inc_crit_edge:                 ; preds = %sw.epilog.i586
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

sw.bb13.i596:                                     ; preds = %sw.epilog.i586
  call void @__sanitizer_cov_trace_pc() #17
  %168 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %5, align 4
  %or15.i587 = or i32 %169, -2147483648
  store i32 %or15.i587, ptr %5, align 4
  %170 = ptrtoint ptr %head.i.i47.i579 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %head.i.i47.i579, align 8
  %172 = ptrtoint ptr %transport_header.i.i.i.i589 to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %transport_header.i.i.i.i589, align 2
  %conv.i.i.i.i590 = zext i16 %173 to i32
  %add.ptr.i.i.i.i591 = getelementptr i8, ptr %171, i32 %conv.i.i.i.i590
  %doff.i.i.i592 = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i.i591, i32 0, i32 4
  %174 = ptrtoint ptr %doff.i.i.i592 to i32
  call void @__asan_load2_noabort(i32 %174)
  %bf.load.i.i.i593 = load i16, ptr %doff.i.i.i592, align 4
  %175 = lshr i16 %bf.load.i.i.i593, 10
  %176 = and i16 %175, 60
  %mul.i.i.i594 = zext i16 %176 to i32
  %or19.i595 = or i32 %or15.i587, %mul.i.i.i594
  br label %sw.epilog25.i607

sw.bb20.i598:                                     ; preds = %sw.epilog.i586
  call void @__sanitizer_cov_trace_pc() #17
  %177 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %5, align 4
  %or23.i597 = or i32 %178, 8
  br label %sw.epilog25.i607

sw.epilog25.i607:                                 ; preds = %sw.bb20.i598, %sw.bb13.i596
  %storemerge.i599 = phi i32 [ %or23.i597, %sw.bb20.i598 ], [ %or19.i595, %sw.bb13.i596 ]
  %179 = ptrtoint ptr %transport_header.i.i.i.i589 to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %transport_header.i.i.i.i589, align 2
  %conv.i.i601 = trunc i16 %180 to i8
  %181 = ptrtoint ptr %network_header.i.i48.i580 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %network_header.i.i48.i580, align 4
  %conv1.i.i603 = trunc i16 %182 to i8
  %sub.i.i604 = sub i8 %conv.i.i601, %conv1.i.i603
  %183 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %sub.i.i604, ptr %6, align 2
  %or34.i606 = or i32 %storemerge.i599, 2129920
  %184 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %or34.i606, ptr %5, align 4
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog25.i607, %sw.epilog.i586.for.inc_crit_edge, %if.end.i572.for.inc_crit_edge, %if.end202.for.inc_crit_edge
  %exitcond.not = icmp eq i32 %add186, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end135.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %10, %if.end135.for.end_crit_edge ], [ %rem, %for.inc.for.end_crit_edge ]
  %_d.0.lcssa = phi ptr [ %arrayidx41, %if.end135.for.end_crit_edge ], [ %arrayidx190, %for.inc.for.end_crit_edge ]
  %185 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %5, align 4
  %or217 = or i32 %186, 1792
  store i32 %or217, ptr %5, align 4
  %187 = call ptr @memcpy(ptr %_d.0.lcssa, ptr %dd, i32 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__wil_tx_ring.__UNIQUE_ID_ddebug576, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__wil_tx_ring, %if.then232)) #15
          to label %do.end238 [label %if.then232], !srcloc !356

if.then232:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev233 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %188 = ptrtoint ptr %main_ndev233 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %main_ndev233, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__wil_tx_ring.__UNIQUE_ID_ddebug576, ptr noundef %189, ptr noundef nonnull @.str.95, i32 noundef %sub.ptr.div, i32 noundef %i.0.lcssa) #15
  br label %do.end238

do.end238:                                        ; preds = %if.then232, %for.end
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.95, i32 noundef %sub.ptr.div, i32 noundef %i.0.lcssa) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__wil_tx_ring.__UNIQUE_ID_ddebug577, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__wil_tx_ring, %if.then253)) #15
          to label %do.end256 [label %if.then253], !srcloc !356

if.then253:                                       ; preds = %do.end238
  call void @__sanitizer_cov_trace_pc() #17
  call void @print_hex_dump(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.96, i32 noundef 0, i32 noundef 32, i32 noundef 4, ptr noundef nonnull %dd, i32 noundef 32, i1 noundef zeroext false) #15
  br label %do.end256

do.end256:                                        ; preds = %if.then253, %do.end238
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #15
  %190 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #15, !srcloc !380
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %190, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %do.end256.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !357

do.end256.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %do.end256
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %do.end256
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %191 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %191)
  %.not.i.i.i.i = icmp sgt i32 %191, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.skb_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !361

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.skb_get.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %do.end256.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %do.end256.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %users.i, i32 noundef %.sink.i.i.i.i) #15
  br label %skb_get.exit

skb_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.skb_get.exit_crit_edge
  %192 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %ctx, align 4
  %arrayidx259 = getelementptr %struct.wil_ctx, ptr %193, i32 %i.0.lcssa
  %194 = ptrtoint ptr %arrayidx259 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %skb, ptr %arrayidx259, align 4
  %195 = ptrtoint ptr %swhead1 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %swhead1, align 4
  %197 = ptrtoint ptr %swtail2.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %swtail2.i.i, align 4
  %199 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %size.i, align 4
  %conv.i611 = zext i16 %200 to i32
  %add.i = sub i32 %196, %198
  %sub.i612 = add i32 %add.i, %conv.i611
  %rem.i = urem i32 %sub.i612, %conv.i611
  %ring_idle_trsh = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 64
  %201 = ptrtoint ptr %ring_idle_trsh to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %ring_idle_trsh, align 8
  %add262 = add nuw nsw i32 %rem.i, %conv
  %add263 = add nuw nsw i32 %add262, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %202, i32 %rem.i)
  %cmp.not.i613 = icmp sge i32 %202, %rem.i
  call void @__sanitizer_cov_trace_cmp4(i32 %202, i32 %add262)
  %cmp1.i = icmp sle i32 %202, %add262
  %spec.select.i = and i1 %cmp.not.i613, %cmp1.i
  br i1 %spec.select.i, label %if.then265, label %skb_get.exit.do.body298_crit_edge

skb_get.exit.do.body298_crit_edge:                ; preds = %skb_get.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body298

if.then265:                                       ; preds = %skb_get.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #15
  %203 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 -1, ptr %c, align 4, !annotation !360
  %call267 = call i32 @read_current_timer(ptr noundef nonnull %c) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call267)
  %tobool268.not = icmp eq i32 %call267, 0
  br i1 %tobool268.not, label %cond.false, label %if.then265.cond.end_crit_edge

if.then265.cond.end_crit_edge:                    ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.false:                                       ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #17
  %204 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %c, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then265.cond.end_crit_edge
  %cond = phi i32 [ %205, %cond.false ], [ 0, %if.then265.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #15
  %last_idle = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 58, i32 %sub.ptr.div, i32 3
  %206 = ptrtoint ptr %last_idle to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %last_idle, align 4
  %sub = sub i32 %cond, %207
  %idle = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 58, i32 %sub.ptr.div, i32 2
  %208 = ptrtoint ptr %idle to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %idle, align 4
  %add269 = add i32 %sub, %209
  store i32 %add269, ptr %idle, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__wil_tx_ring.__UNIQUE_ID_ddebug578, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__wil_tx_ring, %if.then284)) #15
          to label %do.end292 [label %if.then284], !srcloc !356

if.then284:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev285 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %210 = ptrtoint ptr %main_ndev285 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %main_ndev285, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__wil_tx_ring.__UNIQUE_ID_ddebug578, ptr noundef %211, ptr noundef nonnull @.str.98, i32 noundef %sub.ptr.div, i32 noundef %rem.i, i32 noundef %add263) #15
  br label %do.end292

do.end292:                                        ; preds = %if.then284, %cond.end
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.98, i32 noundef %sub.ptr.div, i32 noundef %rem.i, i32 noundef %add263) #15
  br label %do.body298

do.body298:                                       ; preds = %do.end292, %skb_get.exit.do.body298_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !381
  call void @arm_heavy_mb() #15
  %212 = ptrtoint ptr %swhead1 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %swhead1, align 4
  %add.i614 = add i32 %213, %add
  %214 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %size.i, align 4
  %conv.i616 = zext i16 %215 to i32
  %rem.i617 = urem i32 %add.i614, %conv.i616
  store i32 %rem.i617, ptr %swhead1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__wil_tx_ring.__UNIQUE_ID_ddebug579, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__wil_tx_ring, %if.then316)) #15
          to label %do.end323 [label %if.then316], !srcloc !356

if.then316:                                       ; preds = %do.body298
  call void @__sanitizer_cov_trace_pc() #17
  %main_ndev317 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %216 = ptrtoint ptr %main_ndev317 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %main_ndev317, align 4
  %218 = ptrtoint ptr %swhead1 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %swhead1, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__wil_tx_ring.__UNIQUE_ID_ddebug579, ptr noundef %217, ptr noundef nonnull @.str.99, i32 noundef %sub.ptr.div, i32 noundef %10, i32 noundef %219) #15
  br label %do.end323

do.end323:                                        ; preds = %if.then316, %do.body298
  %220 = ptrtoint ptr %swhead1 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %swhead1, align 4
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.99, i32 noundef %sub.ptr.div, i32 noundef %10, i32 noundef %221) #15
  %conv327 = trunc i32 %sub.ptr.div to i8
  %conv328 = trunc i32 %10 to i16
  %222 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %len.i, align 4
  call fastcc void @trace_wil6210_tx(i8 noundef zeroext %conv327, i16 noundef zeroext %conv328, i32 noundef %223, i8 noundef zeroext %19)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !382
  call void @arm_heavy_mb() #15
  %tx_latency = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 80
  %224 = ptrtoint ptr %tx_latency to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %tx_latency, align 32, !range !355
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %225)
  %tobool334.not = icmp eq i8 %225, 0
  br i1 %tobool334.not, label %do.end323.if.end339_crit_edge, label %if.then335

do.end323.if.end339_crit_edge:                    ; preds = %do.end323
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end339

if.then335:                                       ; preds = %do.end323
  call void @__sanitizer_cov_trace_pc() #17
  %call336 = call i64 @ktime_get() #15
  br label %if.end339

if.end339:                                        ; preds = %if.then335, %do.end323.if.end339_crit_edge
  %call336.sink = phi i64 [ %call336, %if.then335 ], [ 0, %do.end323.if.end339_crit_edge ]
  %226 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_store8_noabort(i32 %227)
  store i64 %call336.sink, ptr %226, align 8
  %hwtail = getelementptr inbounds %struct.wil_ring, ptr %ring, i32 0, i32 5
  %228 = ptrtoint ptr %hwtail to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %hwtail, align 4
  %230 = ptrtoint ptr %swhead1 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %swhead1, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !365
  call void @arm_heavy_mb() #15
  %232 = call i32 @llvm.bswap.i32(i32 %231) #15
  %csr.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %233 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %csr.i, align 4
  %sub.i618 = add i32 %229, -8912896
  %add.ptr.i619 = getelementptr i8, ptr %234, i32 %sub.i618
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i619, i32 %232) #15, !srcloc !366
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !367
  call void @arm_heavy_mb() #15
  br label %cleanup360

dma_error:                                        ; preds = %do.end185.dma_error_crit_edge, %sw.epilog.i.dma_error_crit_edge, %if.end.i.dma_error_crit_edge
  %.str.97.sink = phi ptr [ @.str.94, %sw.epilog.i.dma_error_crit_edge ], [ @.str.94, %if.end.i.dma_error_crit_edge ], [ @.str.97, %do.end185.dma_error_crit_edge ]
  %f.1 = phi i32 [ 0, %sw.epilog.i.dma_error_crit_edge ], [ 0, %if.end.i.dma_error_crit_edge ], [ %f.0640, %do.end185.dma_error_crit_edge ]
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull %.str.97.sink, ptr noundef nonnull @.str.89, i32 noundef %sub.ptr.div) #15
  %tx_desc_unmap = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 7
  br label %for.body345

for.body345:                                      ; preds = %for.body345.for.body345_crit_edge, %dma_error
  %f.2643 = phi i32 [ 0, %dma_error ], [ %inc358, %for.body345.for.body345_crit_edge ]
  %add347 = add i32 %f.2643, %10
  %235 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %235)
  %236 = load i16, ptr %size.i, align 4
  %conv349 = zext i16 %236 to i32
  %rem350 = urem i32 %add347, %conv349
  %237 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %ctx, align 4
  %arrayidx352 = getelementptr %struct.wil_ctx, ptr %238, i32 %rem350
  %239 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %va, align 4
  %arrayidx354 = getelementptr %union.wil_ring_desc, ptr %240, i32 %rem350
  %241 = call ptr @memcpy(ptr %dd, ptr %arrayidx354, i32 32)
  %dma355 = getelementptr inbounds %struct.vring_tx_desc, ptr %arrayidx354, i32 0, i32 1
  %status = getelementptr inbounds %struct.vring_tx_dma, ptr %dma355, i32 0, i32 5
  %242 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %242)
  store volatile i8 1, ptr %status, align 1
  %243 = ptrtoint ptr %tx_desc_unmap to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %tx_desc_unmap, align 4
  call void %244(ptr noundef %3, ptr noundef nonnull %dd, ptr noundef %arrayidx352) #15
  %245 = ptrtoint ptr %arrayidx352 to i32
  call void @__asan_storeN_noabort(i32 %245, i32 8)
  store i64 0, ptr %arrayidx352, align 4
  %inc358 = add nuw nsw i32 %f.2643, 1
  %exitcond647.not = icmp eq i32 %f.2643, %f.1
  br i1 %exitcond647.not, label %for.body345.cleanup360_crit_edge, label %for.body345.for.body345_crit_edge

for.body345.for.body345_crit_edge:                ; preds = %for.body345
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body345

for.body345.cleanup360_crit_edge:                 ; preds = %for.body345
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup360

cleanup360:                                       ; preds = %for.body345.cleanup360_crit_edge, %if.end339, %do.end88.cleanup360_crit_edge, %if.then38, %do.end15.cleanup360_crit_edge
  %retval.0 = phi i32 [ -12, %if.then38 ], [ 0, %if.end339 ], [ -22, %do.end15.cleanup360_crit_edge ], [ -22, %do.end88.cleanup360_crit_edge ], [ -22, %for.body345.cleanup360_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pa) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dd) #15
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @skb_get(ptr noundef returned %skb) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %users = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #15, !srcloc !380
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !357

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !361

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users, i32 noundef %.sink.i.i.i) #15
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret ptr %skb
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_wil6210_tx(i8 noundef zeroext %vring, i16 noundef zeroext %index, i32 noundef %len, i8 noundef zeroext %frags) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wil6210_tx, i32 0, i32 1), ptr blockaddress(@trace_wil6210_tx, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !356

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !345) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !361

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  %9 = tail call i32 @llvm.read_register.i32(metadata !345) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !383
  %call42 = tail call i32 @__traceiter_wil6210_tx(ptr noundef null, i8 noundef zeroext %vring, i16 noundef zeroext %index, i32 noundef %len, i8 noundef zeroext %frags) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !384
  %13 = tail call i32 @llvm.read_register.i32(metadata !345) #15
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !345) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !361

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !345) #15
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !374
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wil6210_tx, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wil6210_tx, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_wil6210_tx.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_wil6210_tx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 231, ptr noundef nonnull @.str.54) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !375
  %31 = tail call i32 @llvm.read_register.i32(metadata !345) #15
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
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_wil6210_tx(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_wil6210_tx_done(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_complete_wifi_ack(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_addba_tx_request(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_rx_chain_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 133)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 133)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind readonly }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nobuiltin }
attributes #20 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !15, !16, !18, !20, !21, !22, !24, !26, !27, !29, !31, !32, !34, !35, !37, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !55, !57, !59, !61, !63, !64, !65, !67, !69, !71, !73, !74, !76, !77, !78, !80, !81, !83, !85, !86, !88, !89, !91, !92, !93, !95, !96, !98, !100, !102, !103, !104, !106, !107, !108, !110, !111, !113, !114, !116, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !133, !135, !137, !138, !140, !141, !143, !144, !146, !147, !149, !151, !153, !154, !155, !156, !158, !159, !161, !162, !164, !166, !168, !169, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !185, !186, !187, !189, !190, !192, !193, !195, !196, !197, !199, !200, !202, !203, !205, !206, !208, !209, !211, !212, !213, !215, !216, !218, !219, !220, !222, !223, !225, !226, !228, !230, !231, !232, !234, !235, !237, !238, !239, !241, !242, !243, !245, !247, !248, !250, !251, !253, !255, !256, !258, !259, !261, !263, !265, !267, !268, !270, !271, !273, !274, !276, !277, !279, !280, !281, !283, !285, !287, !288, !290, !291, !293, !294, !296, !298, !299, !301, !303, !304, !306, !308, !309, !311, !312, !313, !315, !316, !317, !319, !321, !323, !325, !326, !327, !329, !331, !332, !334, !335, !337, !339, !340, !341, !343, !344}
!llvm.named.register.sp = !{!345}
!llvm.module.flags = !{!346, !347, !348, !349, !350, !351, !352, !353}
!llvm.ident = !{!354}

!0 = !{ptr @__param_rx_align_2, !1, !"__param_rx_align_2", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_rx_align_2type516, !1, !"__UNIQUE_ID_rx_align_2type516", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_rx_align_2517, !4, !"__UNIQUE_ID_rx_align_2517", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 25, i32 1}
!5 = !{ptr @__param_rx_large_buf, !6, !"__param_rx_large_buf", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 28, i32 1}
!7 = !{ptr @__UNIQUE_ID_rx_large_buftype518, !6, !"__UNIQUE_ID_rx_large_buftype518", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_rx_large_buf519, !9, !"__UNIQUE_ID_rx_large_buf519", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 29, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 88, i32 6}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @wil_is_tx_idle.__UNIQUE_ID_ddebug520, !11, !"__UNIQUE_ID_ddebug520", i1 false, i1 false}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 94, i32 11}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 810, i32 3}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @wil_enable_tx_key_worker.__UNIQUE_ID_ddebug542, !19, !"__UNIQUE_ID_ddebug542", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 818, i32 3}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 823, i32 2}
!26 = !{ptr @wil_enable_tx_key_worker.__UNIQUE_ID_ddebug543, !25, !"__UNIQUE_ID_ddebug543", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 831, i32 3}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 860, i32 3}
!31 = !{ptr @__func__.wil_tx_complete_handle_eapol, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 867, i32 3}
!34 = !{ptr @wil_tx_complete_handle_eapol.__UNIQUE_ID_ddebug544, !33, !"__UNIQUE_ID_ddebug544", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 914, i32 4}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @wil_netif_rx.__UNIQUE_ID_ddebug545, !36, !"__UNIQUE_ID_ddebug545", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 947, i32 3}
!41 = !{ptr @wil_netif_rx.__UNIQUE_ID_ddebug546, !40, !"__UNIQUE_ID_ddebug546", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 984, i32 3}
!44 = !{ptr @wil_netif_rx_any.__UNIQUE_ID_ddebug547, !43, !"__UNIQUE_ID_ddebug547", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 1013, i32 3}
!47 = !{ptr @__func__.wil_rx_handle, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 1016, i32 2}
!50 = !{ptr @wil_rx_handle.__UNIQUE_ID_ddebug548, !49, !"__UNIQUE_ID_ddebug548", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 1344, i32 2}
!53 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @wil_vring_init_bcast.__UNIQUE_ID_ddebug553, !52, !"__UNIQUE_ID_ddebug553", i1 false, i1 false}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 1349, i32 3}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 1376, i32 3}
!59 = distinct !{null, !60, !"pr_once_fw", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 2317, i32 14}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 2320, i32 2}
!63 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @wil_start_xmit.__UNIQUE_ID_ddebug586, !62, !"__UNIQUE_ID_ddebug586", i1 false, i1 false}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 2323, i32 4}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 2330, i32 9}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 2334, i32 3}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 2362, i32 3}
!73 = !{ptr @wil_start_xmit.__UNIQUE_ID_ddebug587, !72, !"__UNIQUE_ID_ddebug587", i1 false, i1 false}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 2405, i32 2}
!76 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @wil_tx_latency_calc.__UNIQUE_ID_ddebug590, !75, !"__UNIQUE_ID_ddebug590", i1 false, i1 false}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 2435, i32 3}
!80 = !{ptr @__func__.wil_tx_complete, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 2440, i32 3}
!83 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 2444, i32 2}
!85 = !{ptr @wil_tx_complete.__UNIQUE_ID_ddebug591, !84, !"__UNIQUE_ID_ddebug591", i1 false, i1 false}
!86 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 2480, i32 4}
!88 = !{ptr @wil_tx_complete.__UNIQUE_ID_ddebug592, !87, !"__UNIQUE_ID_ddebug592", i1 false, i1 false}
!89 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 2484, i32 4}
!91 = !{ptr @wil_tx_complete.__UNIQUE_ID_ddebug593, !90, !"__UNIQUE_ID_ddebug593", i1 false, i1 false}
!92 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.36, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 2534, i32 3}
!95 = !{ptr @wil_tx_complete.__UNIQUE_ID_ddebug594, !94, !"__UNIQUE_ID_ddebug594", i1 false, i1 false}
!96 = !{ptr @rx_align_2, !97, !"rx_align_2", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 23, i32 6}
!98 = !{ptr @rx_large_buf, !99, !"rx_large_buf", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 27, i32 6}
!100 = !{ptr @drop_if_ring_full, !101, !"drop_if_ring_full", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 32, i32 6}
!102 = !{ptr @__param_str_rx_align_2, !1, !"__param_str_rx_align_2", i1 false, i1 false}
!103 = !{ptr @__param_str_rx_large_buf, !6, !"__param_str_rx_large_buf", i1 false, i1 false}
!104 = !{ptr @.str.37, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 792, i32 4}
!106 = !{ptr @.str.38, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @wil_skb_is_eap_4.__UNIQUE_ID_ddebug540, !105, !"__UNIQUE_ID_ddebug540", i1 false, i1 false}
!108 = !{ptr @.str.39, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 796, i32 2}
!110 = !{ptr @wil_skb_is_eap_4.__UNIQUE_ID_ddebug541, !109, !"__UNIQUE_ID_ddebug541", i1 false, i1 false}
!111 = !{ptr @.str.40, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 729, i32 3}
!113 = !{ptr @__func__.wil_is_ptk_eapol_key, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.41, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 770, i32 3}
!116 = !{ptr @.str.42, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @wil_skb_is_eap_3.__UNIQUE_ID_ddebug538, !115, !"__UNIQUE_ID_ddebug538", i1 false, i1 false}
!118 = !{ptr @.str.43, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 774, i32 2}
!120 = !{ptr @wil_skb_is_eap_3.__UNIQUE_ID_ddebug539, !119, !"__UNIQUE_ID_ddebug539", i1 false, i1 false}
!121 = !{ptr @.str.44, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 474, i32 3}
!123 = !{ptr @__func__.wil_vring_reap_rx, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.45, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 485, i32 2}
!126 = !{ptr @wil_vring_reap_rx.__UNIQUE_ID_ddebug528, !125, !"__UNIQUE_ID_ddebug528", i1 false, i1 false}
!127 = !{ptr @.str.46, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 486, i32 2}
!129 = !{ptr @wil_vring_reap_rx.__UNIQUE_ID_ddebug529, !128, !"__UNIQUE_ID_ddebug529", i1 false, i1 false}
!130 = !{ptr @.str.47, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 493, i32 3}
!132 = !{ptr @wil_vring_reap_rx.__UNIQUE_ID_ddebug530, !131, !"__UNIQUE_ID_ddebug530", i1 false, i1 false}
!133 = !{ptr @.str.48, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 500, i32 3}
!135 = !{ptr @.str.49, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 509, i32 2}
!137 = !{ptr @wil_vring_reap_rx.__UNIQUE_ID_ddebug531, !136, !"__UNIQUE_ID_ddebug531", i1 false, i1 false}
!138 = !{ptr @.str.50, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 541, i32 3}
!140 = !{ptr @wil_vring_reap_rx.__UNIQUE_ID_ddebug532, !139, !"__UNIQUE_ID_ddebug532", i1 false, i1 false}
!141 = !{ptr @.str.51, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 546, i32 4}
!143 = !{ptr @wil_vring_reap_rx.__UNIQUE_ID_ddebug533, !142, !"__UNIQUE_ID_ddebug533", i1 false, i1 false}
!144 = !{ptr @.str.52, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 554, i32 4}
!146 = !{ptr @wil_vring_reap_rx.__UNIQUE_ID_ddebug534, !145, !"__UNIQUE_ID_ddebug534", i1 false, i1 false}
!147 = !{ptr @wil_vring_reap_rx.__UNIQUE_ID_ddebug535, !148, !"__UNIQUE_ID_ddebug535", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 557, i32 4}
!149 = !{ptr @wil_vring_reap_rx.__UNIQUE_ID_ddebug536, !150, !"__UNIQUE_ID_ddebug536", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 559, i32 4}
!151 = distinct !{null, !152, !"__already_done", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/ath/wil6210/trace.h", i32 149, i32 1}
!153 = !{ptr @.str.53, !152, !"<string literal>", i1 false, i1 false}
!154 = distinct !{null, !152, !"__warned", i1 false, i1 false}
!155 = !{ptr @.str.54, !152, !"<string literal>", i1 false, i1 false}
!156 = distinct !{null, !157, !"__already_done", i1 false, i1 false}
!157 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!158 = !{ptr @.str.55, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.56, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 386, i32 4}
!161 = !{ptr @__func__.wil_rx_get_cid_by_skb, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.57, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 394, i32 4}
!164 = !{ptr @.str.58, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 425, i32 3}
!166 = !{ptr @.str.59, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 328, i32 3}
!168 = !{ptr @__func__.wil_rx_add_radiotap_header, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.60, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 619, i32 4}
!171 = !{ptr @__func__.wil_rx_refill, !170, !"<string literal>", i1 false, i1 false}
!172 = distinct !{null, !173, !"__already_done", i1 false, i1 false}
!173 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!174 = !{ptr @.str.61, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.62, !173, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.63, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 116, i32 2}
!178 = !{ptr @.str.64, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @wil_vring_alloc.__UNIQUE_ID_ddebug521, !177, !"__UNIQUE_ID_ddebug521", i1 false, i1 false}
!180 = !{ptr @.str.65, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 165, i32 2}
!182 = !{ptr @wil_vring_alloc.__UNIQUE_ID_ddebug523, !181, !"__UNIQUE_ID_ddebug523", i1 false, i1 false}
!183 = !{ptr @.str.66, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 199, i32 3}
!185 = !{ptr @.str.67, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @wil_vring_free.__UNIQUE_ID_ddebug524, !184, !"__UNIQUE_ID_ddebug524", i1 false, i1 false}
!187 = !{ptr @.str.68, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 203, i32 3}
!189 = !{ptr @wil_vring_free.__UNIQUE_ID_ddebug525, !188, !"__UNIQUE_ID_ddebug525", i1 false, i1 false}
!190 = !{ptr @.str.69, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 220, i32 5}
!192 = !{ptr @wil_vring_free.__UNIQUE_ID_ddebug526, !191, !"__UNIQUE_ID_ddebug526", i1 false, i1 false}
!193 = !{ptr @.str.70, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 2240, i32 3}
!195 = !{ptr @.str.71, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @__wil_update_net_queues.__UNIQUE_ID_ddebug581, !194, !"__UNIQUE_ID_ddebug581", i1 false, i1 false}
!197 = !{ptr @.str.72, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 2244, i32 3}
!199 = !{ptr @__wil_update_net_queues.__UNIQUE_ID_ddebug582, !198, !"__UNIQUE_ID_ddebug582", i1 false, i1 false}
!200 = !{ptr @.str.73, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 2260, i32 4}
!202 = !{ptr @__wil_update_net_queues.__UNIQUE_ID_ddebug583, !201, !"__UNIQUE_ID_ddebug583", i1 false, i1 false}
!203 = !{ptr @.str.74, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 2280, i32 4}
!205 = !{ptr @__wil_update_net_queues.__UNIQUE_ID_ddebug584, !204, !"__UNIQUE_ID_ddebug584", i1 false, i1 false}
!206 = !{ptr @.str.75, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 2288, i32 3}
!208 = !{ptr @__wil_update_net_queues.__UNIQUE_ID_ddebug585, !207, !"__UNIQUE_ID_ddebug585", i1 false, i1 false}
!209 = !{ptr @.str.76, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 1469, i32 3}
!211 = !{ptr @.str.77, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @wil_find_tx_ring_sta.__UNIQUE_ID_ddebug556, !210, !"__UNIQUE_ID_ddebug556", i1 false, i1 false}
!213 = !{ptr @.str.78, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 1474, i32 2}
!215 = !{ptr @wil_find_tx_ring_sta.__UNIQUE_ID_ddebug557, !214, !"__UNIQUE_ID_ddebug557", i1 false, i1 false}
!216 = !{ptr @.str.79, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 1582, i32 2}
!218 = !{ptr @.str.80, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @wil_find_tx_bcast_2.__UNIQUE_ID_ddebug558, !217, !"__UNIQUE_ID_ddebug558", i1 false, i1 false}
!220 = !{ptr @.str.81, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 1587, i32 2}
!222 = !{ptr @wil_find_tx_bcast_2.__UNIQUE_ID_ddebug559, !221, !"__UNIQUE_ID_ddebug559", i1 false, i1 false}
!223 = !{ptr @.str.82, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 1608, i32 4}
!225 = !{ptr @wil_find_tx_bcast_2.__UNIQUE_ID_ddebug560, !224, !"__UNIQUE_ID_ddebug560", i1 false, i1 false}
!226 = !{ptr @.str.83, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 1614, i32 4}
!228 = !{ptr @.str.84, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 1422, i32 4}
!230 = !{ptr @.str.85, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @wil_find_tx_ucast.__UNIQUE_ID_ddebug554, !229, !"__UNIQUE_ID_ddebug554", i1 false, i1 false}
!232 = !{ptr @.str.86, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 1427, i32 5}
!234 = !{ptr @wil_find_tx_ucast.__UNIQUE_ID_ddebug555, !233, !"__UNIQUE_ID_ddebug555", i1 false, i1 false}
!235 = !{ptr @.str.87, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 2198, i32 3}
!237 = !{ptr @.str.88, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @wil_tx_ring.__UNIQUE_ID_ddebug580, !236, !"__UNIQUE_ID_ddebug580", i1 false, i1 false}
!239 = !{ptr @.str.89, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 2046, i32 2}
!241 = !{ptr @.str.90, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @__wil_tx_ring.__UNIQUE_ID_ddebug571, !240, !"__UNIQUE_ID_ddebug571", i1 false, i1 false}
!243 = !{ptr @.str.91, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 2053, i32 3}
!245 = !{ptr @.str.92, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 2062, i32 2}
!247 = !{ptr @__wil_tx_ring.__UNIQUE_ID_ddebug572, !246, !"__UNIQUE_ID_ddebug572", i1 false, i1 false}
!248 = !{ptr @.str.93, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 2064, i32 2}
!250 = !{ptr @__wil_tx_ring.__UNIQUE_ID_ddebug573, !249, !"__UNIQUE_ID_ddebug573", i1 false, i1 false}
!251 = !{ptr @.str.94, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 2080, i32 3}
!253 = !{ptr @.str.95, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 2094, i32 3}
!255 = !{ptr @__wil_tx_ring.__UNIQUE_ID_ddebug574, !254, !"__UNIQUE_ID_ddebug574", i1 false, i1 false}
!256 = !{ptr @.str.96, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 2095, i32 3}
!258 = !{ptr @__wil_tx_ring.__UNIQUE_ID_ddebug575, !257, !"__UNIQUE_ID_ddebug575", i1 false, i1 false}
!259 = !{ptr @.str.97, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 2102, i32 4}
!261 = !{ptr @__wil_tx_ring.__UNIQUE_ID_ddebug576, !262, !"__UNIQUE_ID_ddebug576", i1 false, i1 false}
!262 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 2120, i32 2}
!263 = !{ptr @__wil_tx_ring.__UNIQUE_ID_ddebug577, !264, !"__UNIQUE_ID_ddebug577", i1 false, i1 false}
!264 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 2121, i32 2}
!265 = !{ptr @.str.98, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 2135, i32 3}
!267 = !{ptr @__wil_tx_ring.__UNIQUE_ID_ddebug578, !266, !"__UNIQUE_ID_ddebug578", i1 false, i1 false}
!268 = !{ptr @.str.99, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 2148, i32 2}
!270 = !{ptr @__wil_tx_ring.__UNIQUE_ID_ddebug579, !269, !"__UNIQUE_ID_ddebug579", i1 false, i1 false}
!271 = distinct !{null, !272, !"__already_done", i1 false, i1 false}
!272 = !{!"../drivers/net/wireless/ath/wil6210/trace.h", i32 214, i32 1}
!273 = distinct !{null, !272, !"__warned", i1 false, i1 false}
!274 = distinct !{null, !275, !"__already_done", i1 false, i1 false}
!275 = !{!"../drivers/net/wireless/ath/wil6210/trace.h", i32 233, i32 1}
!276 = distinct !{null, !275, !"__warned", i1 false, i1 false}
!277 = !{ptr @.str.100, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 1766, i32 2}
!279 = !{ptr @.str.101, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @__wil_tx_vring_tso.__UNIQUE_ID_ddebug561, !278, !"__UNIQUE_ID_ddebug561", i1 false, i1 false}
!281 = !{ptr @.str.102, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 1778, i32 3}
!283 = !{ptr @.str.103, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 1824, i32 3}
!285 = !{ptr @.str.104, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 1843, i32 4}
!287 = !{ptr @__wil_tx_vring_tso.__UNIQUE_ID_ddebug562, !286, !"__UNIQUE_ID_ddebug562", i1 false, i1 false}
!288 = !{ptr @.str.105, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 1848, i32 4}
!290 = !{ptr @__wil_tx_vring_tso.__UNIQUE_ID_ddebug563, !289, !"__UNIQUE_ID_ddebug563", i1 false, i1 false}
!291 = !{ptr @.str.106, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 1852, i32 4}
!293 = !{ptr @__wil_tx_vring_tso.__UNIQUE_ID_ddebug564, !292, !"__UNIQUE_ID_ddebug564", i1 false, i1 false}
!294 = !{ptr @.str.107, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 1857, i32 5}
!296 = !{ptr @.str.108, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 1864, i32 4}
!298 = !{ptr @__wil_tx_vring_tso.__UNIQUE_ID_ddebug567, !297, !"__UNIQUE_ID_ddebug567", i1 false, i1 false}
!299 = !{ptr @.str.109, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 1882, i32 5}
!301 = !{ptr @.str.110, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 1910, i32 4}
!303 = !{ptr @__wil_tx_vring_tso.__UNIQUE_ID_ddebug568, !302, !"__UNIQUE_ID_ddebug568", i1 false, i1 false}
!304 = !{ptr @__wil_tx_vring_tso.__UNIQUE_ID_ddebug569, !305, !"__UNIQUE_ID_ddebug569", i1 false, i1 false}
!305 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 1982, i32 3}
!306 = !{ptr @.str.111, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 1995, i32 2}
!308 = !{ptr @__wil_tx_vring_tso.__UNIQUE_ID_ddebug570, !307, !"__UNIQUE_ID_ddebug570", i1 false, i1 false}
!309 = !{ptr @.str.112, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 1175, i32 2}
!311 = !{ptr @.str.113, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @wil_vring_init_tx.__UNIQUE_ID_ddebug551, !310, !"__UNIQUE_ID_ddebug551", i1 false, i1 false}
!313 = !{ptr @.str.114, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 1270, i32 2}
!315 = !{ptr @.str.115, !314, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @wil_tx_vring_modify.__UNIQUE_ID_ddebug552, !314, !"__UNIQUE_ID_ddebug552", i1 false, i1 false}
!317 = !{ptr @.str.116, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 1275, i32 3}
!319 = !{ptr @.str.117, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 1281, i32 3}
!321 = !{ptr @.str.118, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 1295, i32 3}
!323 = !{ptr @.str.119, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 1054, i32 2}
!325 = !{ptr @.str.120, !324, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @wil_rx_init.__UNIQUE_ID_ddebug549, !324, !"__UNIQUE_ID_ddebug549", i1 false, i1 false}
!327 = !{ptr @.str.121, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 1057, i32 3}
!329 = !{ptr @.str.122, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 1044, i32 3}
!331 = !{ptr @__func__.wil_rx_buf_len_init, !330, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @.str.123, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 672, i32 3}
!334 = !{ptr @__func__.wil_rx_crypto_check, !333, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @.str.124, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 679, i32 3}
!337 = !{ptr @.str.125, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 697, i32 3}
!339 = !{ptr @.str.126, !338, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @wil_rx_error_check.__UNIQUE_ID_ddebug537, !338, !"__UNIQUE_ID_ddebug537", i1 false, i1 false}
!341 = !{ptr @.str.127, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/net/wireless/ath/wil6210/txrx.c", i32 1088, i32 2}
!343 = !{ptr @.str.128, !342, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @wil_rx_fini.__UNIQUE_ID_ddebug550, !342, !"__UNIQUE_ID_ddebug550", i1 false, i1 false}
!345 = !{!"sp"}
!346 = !{i32 1, !"wchar_size", i32 2}
!347 = !{i32 1, !"min_enum_size", i32 4}
!348 = !{i32 8, !"branch-target-enforcement", i32 0}
!349 = !{i32 8, !"sign-return-address", i32 0}
!350 = !{i32 8, !"sign-return-address-all", i32 0}
!351 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!352 = !{i32 7, !"uwtable", i32 1}
!353 = !{i32 7, !"frame-pointer", i32 2}
!354 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!355 = !{i8 0, i8 2}
!356 = !{i64 2148918395, i64 2148918400, i64 2148918413, i64 2148918457, i64 2148918491, i64 2148918512}
!357 = !{!"branch_weights", i32 1, i32 2000}
!358 = !{i64 2158394901, i64 2158395389, i64 2158394938, i64 2158394994, i64 2158395028, i64 2158395052, i64 2158395093, i64 2158395114, i64 2158395142, i64 2158395176}
!359 = !{i64 2158388818, i64 2158389306, i64 2158388855, i64 2158388911, i64 2158388945, i64 2158388969, i64 2158389010, i64 2158389031, i64 2158389059, i64 2158389093}
!360 = !{!"auto-init"}
!361 = !{!"branch_weights", i32 2000, i32 1}
!362 = !{i64 2154667429, i64 2154667917, i64 2154667466, i64 2154667522, i64 2154667556, i64 2154667580, i64 2154667621, i64 2154667642, i64 2154667670, i64 2154667704}
!363 = !{i64 934071}
!364 = !{i64 2158999505}
!365 = !{i64 2158538700}
!366 = !{i64 6111804}
!367 = !{i64 2158539039}
!368 = !{i64 1341283, i64 1341310}
!369 = !{i64 1341978, i64 1342005, i64 1342038, i64 1342059, i64 1342086, i64 1342112}
!370 = !{i64 1341570, i64 1341597, i64 1341619, i64 1341647}
!371 = !{i64 2159172034}
!372 = !{i64 2158902060}
!373 = !{i64 2158902297}
!374 = !{i64 2149741776}
!375 = !{i64 2149742812}
!376 = !{i64 2159099348}
!377 = !{i64 2159106363}
!378 = !{i64 2158847676}
!379 = !{i64 2158847875}
!380 = !{i64 2148438110, i64 2148438142, i64 2148438171, i64 2148438205, i64 2148438236, i64 2148438259}
!381 = !{i64 2159131144}
!382 = !{i64 2159134224}
!383 = !{i64 2158881487}
!384 = !{i64 2158881718}
