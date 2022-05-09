; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hw_queue_map = type { ptr, i8, i8, i8 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mt7915_phy = type { ptr, ptr, [2 x [13 x %struct.ieee80211_sband_iftype_data]], ptr, ptr, i8, [2 x i32], i32, i64, i16, i16, i8, i8, i32, i32, i32, %struct.mib_stats, %struct.mt76_channel_state, %struct.anon.138 }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.127 }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.anon.127 = type { ptr, i32 }
%struct.mib_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32 }
%struct.mt76_channel_state = type { i64, i64, i64, i64, i64, i8 }
%struct.anon.138 = type { ptr, i32, [4 x i8], [4 x i8], [4 x i8], i8, i8 }
%struct.mt7915_dev = type { %union.anon.139, ptr, ptr, %struct.tasklet_struct, %struct.mt7915_phy, i16, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, i32, i8, i8, i8, i8, i8, i8, ptr, %struct.anon.147, [14 x i8] }
%union.anon.139 = type { %struct.mt76_dev }
%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.144, ptr, %union.anon.145, [20 x i8] }
%struct.mt76_phy = type { ptr, ptr, ptr, i32, [7 x ptr], %struct.cfg80211_chan_def, ptr, ptr, i64, %struct.mt76_hw_cap, %struct.mt76_sband, %struct.mt76_sband, %struct.mt76_sband, [6 x i8], i32, i8, i16, %struct.mt76_testmode_data, %struct.delayed_work, i8, [5 x %struct.anon.134], ptr }
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
%struct.mt76_testmode_data = type { i32, [1 x i32], ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, [4 x i8], i8, [3 x [6 x i8]], i32, i32, i16, i32, %struct.anon.133 }
%struct.anon.133 = type { [5 x i64], [5 x i64] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.134 = type { ptr, ptr, i16 }
%struct.mt76_rx_status = type <{ %union.anon.140, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.140 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mt76_mcu = type { %struct.mutex, i32, i32, %struct.sk_buff_head, %struct.wait_queue_head }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.105, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.126, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.105 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.126 = type { ptr }
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
%struct.mt76_wcid = type { [16 x ptr], %struct.atomic_t, i32, %struct.ewma_signal, i32, %struct.rate_info, i16, i8, i8, i8, i8, [17 x [6 x i8]], i16, i32, i8, %struct.list_head, %struct.idr }
%struct.ewma_signal = type { i32 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.mt76_rate_power = type { %union.anon.142 }
%union.anon.142 = type { %struct.anon.143 }
%struct.anon.143 = type { [4 x i8], [8 x i8], [10 x i8], [16 x i8], [10 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.144 = type { ptr, i32 }
%union.anon.145 = type { %struct.mt76_usb }
%struct.mt76_usb = type { %struct.mutex, ptr, i16, %struct.mt76_worker, %struct.mt76_worker, %struct.work_struct, [6 x i8], [2 x i8], i8, %struct.mt76u_mcu }
%struct.mt76u_mcu = type { ptr, ptr, i32, i32, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.141, i32 }
%union.anon.141 = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.anon.147 = type { i8, i8 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mt7915_twt_flow = type { %struct.list_head, i64, i64, i32, i16, i16, i8, i8, i8, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.93, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.94, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.95, ptr, %struct.address_space, %struct.list_head, %union.anon.98, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.93 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.94 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.95 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.98 = type { ptr }
%struct.mt7915_mcu_muru_stats = type { i32, %struct.anon.148, %struct.anon.149 }
%struct.anon.148 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.149 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.mt7915_vif = type { %struct.mt76_vif, %struct.mt7915_vif_cap, %struct.mt7915_sta, ptr, [4 x %struct.ieee80211_tx_queue_params], %struct.cfg80211_bitrate_mask }
%struct.mt76_vif = type { i8, i8, i8, i8, i8 }
%struct.mt7915_vif_cap = type { i8 }
%struct.mt7915_sta = type { %struct.mt76_wcid, ptr, %struct.list_head, %struct.list_head, [8 x i32], i32, i32, i32, %struct.mt76_sta_stats, %struct.mt7915_sta_key_conf, %struct.anon.150 }
%struct.mt76_sta_stats = type { [12 x i64], [4 x i64], [4 x i64], [16 x i64] }
%struct.mt7915_sta_key_conf = type { i8, [16 x i8] }
%struct.anon.150 = type { i8, [8 x %struct.mt7915_twt_flow] }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.136] }
%struct.anon.136 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.sta_phy = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.file = type { %union.anon.1, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"muru_debug\00", [21 x i8] zeroinitializer }, align 32
@fops_muru_debug = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_muru_debug_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"muru_stats\00", [21 x i8] zeroinitializer }, align 32
@mt7915_muru_stats_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mt7915_muru_stats_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hw-queues\00", [22 x i8] zeroinitializer }, align 32
@mt7915_hw_queues_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mt7915_hw_queues_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xmit-queues\00", [20 x i8] zeroinitializer }, align 32
@mt7915_xmit_queues_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mt7915_xmit_queues_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_stats\00", [23 x i8] zeroinitializer }, align 32
@mt7915_tx_stats_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mt7915_tx_stats_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fw_debug_wm\00", [20 x i8] zeroinitializer }, align 32
@fops_fw_debug_wm = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_fw_debug_wm_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fw_debug_wa\00", [20 x i8] zeroinitializer }, align 32
@fops_fw_debug_wa = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_fw_debug_wa_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fw_util_wm\00", [21 x i8] zeroinitializer }, align 32
@mt7915_fw_util_wm_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mt7915_fw_util_wm_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fw_util_wa\00", [21 x i8] zeroinitializer }, align 32
@mt7915_fw_util_wa_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mt7915_fw_util_wa_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"implicit_txbf\00", [18 x i8] zeroinitializer }, align 32
@fops_implicit_txbf = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_implicit_txbf_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"txpower_sku\00", [20 x i8] zeroinitializer }, align 32
@mt7915_rate_txpower_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mt7915_rate_txpower_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"twt_stats\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ser_trigger\00", [20 x i8] zeroinitializer }, align 32
@fops_ser_trigger = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_ser_trigger_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dfs_hw_pattern\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"radar_trigger\00", [18 x i8] zeroinitializer }, align 32
@fops_radar_trigger = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_radar_trigger_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fixed_rate\00", [21 x i8] zeroinitializer }, align 32
@fops_fixed_rate = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr null, ptr @mt7915_sta_fixed_rate_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@mt7915_queues_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mt7915_queues_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%lld\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CCK\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OFDM\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HT MIX\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HT GF\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VHT SU\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VHT 2MU\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VHT 3MU\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VHT 4MU\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HE SU\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HE EXT\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HE 2MU\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HE 3MU\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HE 4MU\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HE 2RU\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HE 3RU\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HE 4RU\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HE 5-8RU\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HE 9-16RU\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HE >16RU\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Please enable muru_debug first.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[Non-HE]\0ADownlink\0AData Type:  \00", [33 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%8s | \00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\0ATotal Count:\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%8u | %8u | %8u | %8u | %8u | \00", [33 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\0ADownlink MU-MIMO\0AData Type:  \00", [33 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%8u | %8u | %8u | \00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\0ATotal non-HE MU-MIMO DL PPDU count: %lld\00", [54 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\0AAll non-HE DL PPDU count: %lld\00", [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\0A\0A[HE]\0ADownlink\0AData Type:  \00", [35 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%8u | %8u | \00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\0ADownlink OFDMA\0AData Type:  \00", [35 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%8u | %8u | %8u | %8u | %9u | %8u | \00", [59 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\0ATotal HE MU-MIMO DL PPDU count: %lld\00", [58 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\0ATotal HE OFDMA DL PPDU count: %lld\00", [60 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\0AAll HE DL PPDU count: %lld\00", [36 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\0A\0AUplink\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\0ATrigger-based Uplink MU-MIMO\0AData Type:  \00", [53 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\0ATrigger-based Uplink OFDMA\0AData Type:  \00", [55 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%8u | %8u | %8u | %8u | %8u | %9u |  %7u | \00", [52 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\0ATotal HE MU-MIMO UL TB PPDU count: %lld\00", [55 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\0ATotal HE OFDMA UL TB PPDU count: %lld\00", [57 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\0AAll HE UL TB PPDU count: %lld\0A\00", [32 x i8] zeroinitializer }, align 32
@mt7915_hw_queues_show.ple_queue_map = internal constant { [12 x %struct.hw_queue_map], [32 x i8] } { [12 x %struct.hw_queue_map] [%struct.hw_queue_map { ptr @.str.59, i8 0, i8 1, i8 0 }, %struct.hw_queue_map { ptr @.str.60, i8 1, i8 1, i8 1 }, %struct.hw_queue_map { ptr @.str.61, i8 2, i8 1, i8 2 }, %struct.hw_queue_map { ptr @.str.62, i8 3, i8 1, i8 3 }, %struct.hw_queue_map { ptr @.str.63, i8 8, i8 2, i8 16 }, %struct.hw_queue_map { ptr @.str.64, i8 9, i8 2, i8 17 }, %struct.hw_queue_map { ptr @.str.65, i8 10, i8 2, i8 18 }, %struct.hw_queue_map { ptr @.str.66, i8 11, i8 2, i8 19 }, %struct.hw_queue_map { ptr @.str.67, i8 12, i8 2, i8 20 }, %struct.hw_queue_map { ptr @.str.68, i8 13, i8 2, i8 21 }, %struct.hw_queue_map { ptr @.str.69, i8 14, i8 2, i8 22 }, %struct.hw_queue_map { ptr @.str.70, i8 15, i8 2, i8 23 }], [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CPU_Q0\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CPU_Q1\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CPU_Q2\00", [25 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CPU_Q3\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ALTX_Q0\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BMC_Q0\00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BCN_Q0\00", [25 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PSMP_Q0\00", [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ALTX_Q1\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BMC_Q1\00", [25 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BCN_Q1\00", [25 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PSMP_Q1\00", [24 x i8] zeroinitializer }, align 32
@mt7915_hw_queues_show.pse_queue_map = internal constant { [15 x %struct.hw_queue_map], [40 x i8] } { [15 x %struct.hw_queue_map] [%struct.hw_queue_map { ptr @.str.71, i8 0, i8 1, i8 0 }, %struct.hw_queue_map { ptr @.str.72, i8 1, i8 1, i8 1 }, %struct.hw_queue_map { ptr @.str.73, i8 2, i8 1, i8 2 }, %struct.hw_queue_map { ptr @.str.74, i8 3, i8 1, i8 3 }, %struct.hw_queue_map { ptr @.str.75, i8 8, i8 0, i8 0 }, %struct.hw_queue_map { ptr @.str.76, i8 9, i8 0, i8 1 }, %struct.hw_queue_map { ptr @.str.77, i8 10, i8 0, i8 2 }, %struct.hw_queue_map { ptr @.str.78, i8 11, i8 0, i8 3 }, %struct.hw_queue_map { ptr @.str.79, i8 12, i8 0, i8 4 }, %struct.hw_queue_map { ptr @.str.80, i8 13, i8 0, i8 5 }, %struct.hw_queue_map { ptr @.str.81, i8 16, i8 2, i8 0 }, %struct.hw_queue_map { ptr @.str.82, i8 17, i8 2, i8 1 }, %struct.hw_queue_map { ptr @.str.83, i8 18, i8 2, i8 2 }, %struct.hw_queue_map { ptr @.str.84, i8 19, i8 2, i8 3 }, %struct.hw_queue_map { ptr @.str.85, i8 20, i8 2, i8 4 }], [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CPU Q0\00", [25 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CPU Q1\00", [25 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CPU Q2\00", [25 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CPU Q3\00", [25 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HIF_Q0\00", [25 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HIF_Q1\00", [25 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HIF_Q2\00", [25 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HIF_Q3\00", [25 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HIF_Q4\00", [25 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HIF_Q5\00", [25 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LMAC_Q\00", [25 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MDP_TXQ\00", [24 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MDP_RXQ\00", [24 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SEC_TXQ\00", [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SEC_RXQ\00", [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PLE page info:\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\09Total free page: 0x%08x head: 0x%03x tail: 0x%03x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\09HIF free page: 0x%03x res: 0x%03x used: 0x%03x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PLE non-empty queue info:\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PSE non-empty queue info:\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\09%s: \00", [26 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"queued:0x%03x head:0x%03x tail:0x%03x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\09STA %pM wcid %d: AC%d%d queued:%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"   MAIN\00", [24 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"  MCUWM\00", [24 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"  MCUWA\00", [24 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MCUFWDL\00", [24 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"     queue | hw-queued |      head |      tail |\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"   %s | %9d | %9d | %9d |\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Tx MSDU statistics:\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"AMSDU pack count of %d MSDU in TXD: %8d \00", [55 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"(%3d%%)\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\0APhy %d\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Length: %8d | \00", [17 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%3d -%3d | \00", [20 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\0ACount:  \00", [22 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%8d | \00", [25 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"BA miss count: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@mt7915_txbf_stat_read_phy.bw = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113], [16 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BW20\00", [27 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BW40\00", [27 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BW80\00", [27 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BW160\00", [26 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\0ATx Beamformer applied PPDU counts: \00", [59 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iBF: %d, eBF: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Tx Beamformer Rx feedback statistics: \00", [57 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"All: %d, HE: %d, VHT: %d, HT: %d, \00", [61 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s, NC: %d, NR: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Tx Beamformee successful feedback frames: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Tx Beamformee feedback triggered counts: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Tx multi-user Beamforming counts: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Tx multi-user MPDU counts: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Tx multi-user successful MPDU counts: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Tx single-user successful MPDU counts: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Busy: %u%%  Peak busy: %u%%\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Idle count: %u  Peak idle count: %u\0A\00", [59 x i8] zeroinitializer }, align 32
@mt7915_rate_txpower_show.sku_group_name = internal constant { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139], [36 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HT20\00", [27 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HT40\00", [27 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VHT20\00", [26 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VHT40\00", [26 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VHT80\00", [26 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VHT160\00", [25 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RU26\00", [27 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RU52\00", [27 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RU106\00", [26 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RU242/SU20\00", [21 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RU484/SU40\00", [21 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RU996/SU80\00", [21 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RU2x996/SU160\00", [18 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\0ABand %d\0A\00", [22 x i8] zeroinitializer }, align 32
@mt7915_sku_group_len = external dso_local local_unnamed_addr constant [15 x i8], align 1
@.str.141 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"     wcid |       id |    flags |      exp | mantissa\00", [42 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c" | duration |            tsf |\0A\00", [32 x i8] zeroinitializer }, align 32
@mt7915_twt_stats.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.143 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c\00", [44 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%9d | %8d | %5c%c%c%c | %8d | %8d | %8d | %14lld |\0A\00", [44 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.146 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.148 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%hhu %hhu %hhu %hhu %hhu %hhu %hhu %hhu\00", [56 x i8] zeroinitializer }, align 32
@mt7915_sta_fixed_rate_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.151, ptr @.str.143, i32 822, ptr @.str.152, ptr @.str.153 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"format: Mode BW NSS MCS (HE)GI LDPC STBC HE_LTF\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mt7915_sta_fixed_rate_set\00", [38 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt7915_sta_fixed_rate_set._entry_ptr = internal global ptr @mt7915_sta_fixed_rate_set._entry, section ".printk_index", align 4
@.str.156 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 750, i32 22 }
@___asan_gen_.160 = private unnamed_addr constant [16 x i8] c"fops_muru_debug\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 751, i32 22 }
@___asan_gen_.166 = private unnamed_addr constant [23 x i8] c"mt7915_muru_stats_fops\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 301, i32 1 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 753, i32 22 }
@___asan_gen_.172 = private unnamed_addr constant [22 x i8] c"mt7915_hw_queues_fops\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 650, i32 1 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 755, i32 22 }
@___asan_gen_.178 = private unnamed_addr constant [24 x i8] c"mt7915_xmit_queues_fops\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 683, i32 1 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 757, i32 22 }
@___asan_gen_.184 = private unnamed_addr constant [21 x i8] c"mt7915_tx_stats_fops\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 521, i32 1 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 758, i32 22 }
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"fops_fw_debug_wm\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 347, i32 1 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 759, i32 22 }
@___asan_gen_.196 = private unnamed_addr constant [17 x i8] c"fops_fw_debug_wa\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 376, i32 1 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 760, i32 22 }
@___asan_gen_.202 = private unnamed_addr constant [23 x i8] c"mt7915_fw_util_wm_fops\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 396, i32 1 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 762, i32 22 }
@___asan_gen_.208 = private unnamed_addr constant [23 x i8] c"mt7915_fw_util_wa_fops\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 410, i32 1 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 764, i32 22 }
@___asan_gen_.214 = private unnamed_addr constant [19 x i8] c"fops_implicit_txbf\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 40, i32 1 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 766, i32 22 }
@___asan_gen_.220 = private unnamed_addr constant [25 x i8] c"mt7915_rate_txpower_fops\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 713, i32 1 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 768, i32 45 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 770, i32 22 }
@___asan_gen_.229 = private unnamed_addr constant [17 x i8] c"fops_ser_trigger\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 70, i32 1 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 772, i32 22 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 774, i32 23 }
@___asan_gen_.238 = private unnamed_addr constant [19 x i8] c"fops_radar_trigger\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 81, i32 1 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 865, i32 22 }
@___asan_gen_.244 = private unnamed_addr constant [16 x i8] c"fops_fixed_rate\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 843, i32 37 }
@___asan_gen_.247 = private unnamed_addr constant [19 x i8] c"mt7915_queues_fops\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 860, i32 1 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 105, i32 1 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 114, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 114, i32 10 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 114, i32 18 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 114, i32 28 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 115, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 115, i32 13 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 115, i32 24 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 115, i32 35 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 118, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 118, i32 12 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 118, i32 22 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 118, i32 32 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 118, i32 42 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 119, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 119, i32 13 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 119, i32 23 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 119, i32 33 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 119, i32 45 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 120, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 130, i32 18 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 141, i32 17 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 144, i32 20 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 147, i32 17 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 148, i32 19 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 155, i32 17 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 161, i32 19 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 170, i32 19 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 180, i32 19 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 183, i32 17 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 189, i32 19 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 204, i32 17 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 210, i32 19 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 223, i32 19 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 234, i32 19 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 240, i32 19 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 244, i32 17 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 245, i32 17 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 257, i32 17 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 263, i32 19 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 277, i32 19 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 288, i32 19 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 293, i32 19 }
@___asan_gen_.379 = private unnamed_addr constant [14 x i8] c"ple_queue_map\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 587, i32 35 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 588, i32 5 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 589, i32 5 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 590, i32 5 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 591, i32 5 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 592, i32 5 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 593, i32 5 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 594, i32 5 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 595, i32 5 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 596, i32 5 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 597, i32 5 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 598, i32 5 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 599, i32 5 }
@___asan_gen_.418 = private unnamed_addr constant [14 x i8] c"pse_queue_map\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 601, i32 35 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 602, i32 5 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 603, i32 5 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 604, i32 5 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 605, i32 5 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 606, i32 5 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 607, i32 5 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 608, i32 5 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 609, i32 5 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 610, i32 5 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 611, i32 5 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 612, i32 5 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 613, i32 5 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 614, i32 5 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 615, i32 5 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 616, i32 5 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 624, i32 17 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 626, i32 6 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 632, i32 19 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 635, i32 17 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 643, i32 17 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 548, i32 17 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 549, i32 17 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 576, i32 17 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 661, i32 34 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 662, i32 35 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 663, i32 35 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 664, i32 36 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 668, i32 17 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 675, i32 20 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 505, i32 17 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 507, i32 20 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 510, i32 21 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 513, i32 19 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 427, i32 19 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 429, i32 19 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 431, i32 20 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 434, i32 17 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 437, i32 20 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 440, i32 19 }
@___asan_gen_.538 = private unnamed_addr constant [3 x i8] c"bw\00", align 1
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 446, i32 28 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 447, i32 3 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 447, i32 11 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 447, i32 19 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 447, i32 27 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 452, i32 14 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 454, i32 16 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 459, i32 14 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 461, i32 16 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 467, i32 16 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 473, i32 16 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 475, i32 16 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 479, i32 16 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 481, i32 16 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 482, i32 16 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 484, i32 16 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 385, i32 20 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 388, i32 20 }
@___asan_gen_.592 = private unnamed_addr constant [15 x i8] c"sku_group_name\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 688, i32 28 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 689, i32 18 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 689, i32 26 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 690, i32 3 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 690, i32 12 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 690, i32 21 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 690, i32 30 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 691, i32 3 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 691, i32 11 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 691, i32 19 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 691, i32 28 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 692, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 692, i32 17 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 692, i32 31 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 698, i32 19 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 723, i32 14 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 724, i32 14 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 725, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 727, i32 4 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 695, i32 2 }
@___asan_gen_.659 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 723, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 818, i32 18 }
@___asan_gen_.664 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.677 = private constant [55 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c\00", align 1
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 821, i32 3 }
@___asan_gen_.679 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.680 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 156, i32 2 }
@llvm.compiler.used = appending global [176 x ptr] [ptr @mt7915_sta_fixed_rate_set._entry, ptr @mt7915_sta_fixed_rate_set._entry_ptr, ptr @.str, ptr @fops_muru_debug, ptr @.str.1, ptr @mt7915_muru_stats_fops, ptr @.str.2, ptr @mt7915_hw_queues_fops, ptr @.str.3, ptr @mt7915_xmit_queues_fops, ptr @.str.4, ptr @mt7915_tx_stats_fops, ptr @.str.5, ptr @fops_fw_debug_wm, ptr @.str.6, ptr @fops_fw_debug_wa, ptr @.str.7, ptr @mt7915_fw_util_wm_fops, ptr @.str.8, ptr @mt7915_fw_util_wa_fops, ptr @.str.9, ptr @fops_implicit_txbf, ptr @.str.10, ptr @mt7915_rate_txpower_fops, ptr @.str.11, ptr @.str.12, ptr @fops_ser_trigger, ptr @.str.13, ptr @.str.14, ptr @fops_radar_trigger, ptr @.str.15, ptr @fops_fixed_rate, ptr @mt7915_queues_fops, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @mt7915_hw_queues_show.ple_queue_map, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @mt7915_hw_queues_show.pse_queue_map, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @mt7915_txbf_stat_read_phy.bw, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @mt7915_rate_txpower_show.sku_group_name, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.156], section "llvm.metadata"
@0 = internal global [175 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_muru_debug to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_muru_stats_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_hw_queues_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_xmit_queues_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_tx_stats_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_fw_debug_wm to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_fw_debug_wa to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_fw_util_wm_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_fw_util_wa_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_implicit_txbf to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_rate_txpower_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_ser_trigger to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_radar_trigger to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_fixed_rate to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_queues_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_hw_queues_show.ple_queue_map to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_hw_queues_show.pse_queue_map to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_txbf_stat_read_phy.bw to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_rate_txpower_show.sku_group_name to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_sta_fixed_rate_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_init_debugfs(ptr noundef %phy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 8
  %call = tail call ptr @mt76_register_debugfs_fops(ptr noundef %3, ptr noundef null) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %phy2 = getelementptr inbounds %struct.mt7915_dev, ptr %1, i32 0, i32 4
  %cmp.not = icmp ne ptr %phy2, %phy
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 384, ptr noundef nonnull %call, ptr noundef %1, ptr noundef nonnull @fops_muru_debug) #9
  %call4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 256, ptr noundef nonnull %call, ptr noundef %phy, ptr noundef nonnull @mt7915_muru_stats_fops) #9
  %call5 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 256, ptr noundef nonnull %call, ptr noundef %phy, ptr noundef nonnull @mt7915_hw_queues_fops) #9
  %call6 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 256, ptr noundef nonnull %call, ptr noundef %phy, ptr noundef nonnull @mt7915_xmit_queues_fops) #9
  %call7 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 256, ptr noundef nonnull %call, ptr noundef %phy, ptr noundef nonnull @mt7915_tx_stats_fops) #9
  %call8 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 384, ptr noundef nonnull %call, ptr noundef %1, ptr noundef nonnull @fops_fw_debug_wm) #9
  %call9 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 384, ptr noundef nonnull %call, ptr noundef %1, ptr noundef nonnull @fops_fw_debug_wa) #9
  %call10 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 256, ptr noundef nonnull %call, ptr noundef %1, ptr noundef nonnull @mt7915_fw_util_wm_fops) #9
  %call11 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 256, ptr noundef nonnull %call, ptr noundef %1, ptr noundef nonnull @mt7915_fw_util_wa_fops) #9
  %call12 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext 384, ptr noundef nonnull %call, ptr noundef %1, ptr noundef nonnull @fops_implicit_txbf) #9
  %call13 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.10, i16 noundef zeroext 256, ptr noundef nonnull %call, ptr noundef %phy, ptr noundef nonnull @mt7915_rate_txpower_fops) #9
  %dev14 = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev14, align 8
  tail call void @debugfs_create_devm_seqfile(ptr noundef %5, ptr noundef nonnull @.str.11, ptr noundef nonnull %call, ptr noundef nonnull @mt7915_twt_stats) #9
  %call15 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.12, i16 noundef zeroext 128, ptr noundef nonnull %call, ptr noundef %1, ptr noundef nonnull @fops_ser_trigger) #9
  %dbdc_support = getelementptr inbounds %struct.mt7915_dev, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %dbdc_support to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dbdc_support, align 4, !range !368
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool16.not = icmp eq i8 %7, 0
  %brmerge = select i1 %tobool16.not, i1 true, i1 %cmp.not
  br i1 %brmerge, label %if.then18, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %hw_pattern = getelementptr inbounds %struct.mt7915_dev, ptr %1, i32 0, i32 16
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.13, i16 noundef zeroext 256, ptr noundef nonnull %call, ptr noundef %hw_pattern) #9
  %call19 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.14, i16 noundef zeroext 128, ptr noundef nonnull %call, ptr noundef %1, ptr noundef nonnull @fops_radar_trigger) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then18 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mt76_register_debugfs_fops(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_devm_seqfile(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_twt_stats(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !358) #9
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !369
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.146, i32 noundef 696, ptr noundef nonnull @.str.147) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.141) #9
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.142) #9
  %call1 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b57 = load i1, ptr @mt7915_twt_stats.__warned, align 1
  br i1 %.b57, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @mt7915_twt_stats.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.143, i32 noundef 725, ptr noundef nonnull @.str.144) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %twt_list = getelementptr inbounds %struct.mt7915_dev, ptr %3, i32 0, i32 14
  %8 = ptrtoint ptr %twt_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %iter.067 = load volatile ptr, ptr %twt_list, align 4
  %cmp.not68 = icmp eq ptr %iter.067, %twt_list
  br i1 %cmp.not68, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %iter.069 = phi ptr [ %iter.0, %for.body.for.body_crit_edge ], [ %iter.067, %do.end.for.body_crit_edge ]
  %wcid = getelementptr inbounds %struct.mt7915_twt_flow, ptr %iter.069, i32 0, i32 4
  %9 = ptrtoint ptr %wcid to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %wcid, align 4
  %conv = zext i16 %10 to i32
  %id = getelementptr inbounds %struct.mt7915_twt_flow, ptr %iter.069, i32 0, i32 8
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %id, align 2
  %conv11 = zext i8 %12 to i32
  %sched = getelementptr inbounds %struct.mt7915_twt_flow, ptr %iter.069, i32 0, i32 9
  %13 = ptrtoint ptr %sched to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %sched, align 1
  %14 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool13.not = icmp eq i8 %14, 0
  %cond = select i1 %tobool13.not, i32 117, i32 115
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool17.not = icmp sgt i8 %bf.load, -1
  %cond18 = select i1 %tobool17.not, i32 45, i32 112
  %15 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool23.not = icmp eq i8 %15, 0
  %cond24 = select i1 %tobool23.not, i32 45, i32 116
  %16 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool29.not = icmp eq i8 %16, 0
  %cond30 = select i1 %tobool29.not, i32 97, i32 45
  %exp = getelementptr inbounds %struct.mt7915_twt_flow, ptr %iter.069, i32 0, i32 6
  %17 = ptrtoint ptr %exp to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %exp, align 8
  %conv31 = zext i8 %18 to i32
  %mantissa = getelementptr inbounds %struct.mt7915_twt_flow, ptr %iter.069, i32 0, i32 5
  %19 = ptrtoint ptr %mantissa to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %mantissa, align 2
  %conv32 = zext i16 %20 to i32
  %duration = getelementptr inbounds %struct.mt7915_twt_flow, ptr %iter.069, i32 0, i32 3
  %21 = ptrtoint ptr %duration to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %duration, align 8
  %tsf = getelementptr inbounds %struct.mt7915_twt_flow, ptr %iter.069, i32 0, i32 2
  %23 = ptrtoint ptr %tsf to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %tsf, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.145, i32 noundef %conv, i32 noundef %conv11, i32 noundef %cond, i32 noundef %cond18, i32 noundef %cond24, i32 noundef %cond30, i32 noundef %conv31, i32 noundef %conv32, i32 noundef %22, i64 noundef %24) #9
  %25 = ptrtoint ptr %iter.069 to i32
  call void @__asan_load4_noabort(i32 %25)
  %iter.0 = load volatile ptr, ptr %iter.069, align 4
  %cmp.not = icmp eq ptr %iter.0, %twt_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i58 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i58, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i61

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i61:                                ; preds = %for.end
  %call1.i59 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i59)
  %tobool.not.i60 = icmp eq i32 %call1.i59, 0
  br i1 %tobool.not.i60, label %land.lhs.true.i61.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i63

land.lhs.true.i61.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i61
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i63:                               ; preds = %land.lhs.true.i61
  %.b4.i62 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i62, label %land.lhs.true2.i63.rcu_read_unlock.exit_crit_edge, label %if.then.i64

land.lhs.true2.i63.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i63
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i64:                                      ; preds = %land.lhs.true2.i63
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.146, i32 noundef 724, ptr noundef nonnull @.str.148) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i64, %land.lhs.true2.i63.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i61.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !370
  %26 = tail call i32 @llvm.read_register.i32(metadata !358) #9
  %and.i.i.i.i.i65 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i65 to ptr
  %preempt_count.i.i.i.i66 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i66 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i66, align 4
  %sub.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i66, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7915_sta_add_debugfs(ptr nocapture noundef readnone %hw, ptr nocapture noundef readnone %vif, ptr noundef %sta, ptr noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.15, i16 noundef zeroext 384, ptr noundef %dir, ptr noundef %sta, ptr noundef nonnull @fops_fixed_rate) #9
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 256, ptr noundef %dir, ptr noundef %sta, ptr noundef nonnull @mt7915_queues_fops) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_muru_debug_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @mt7915_muru_debug_get, ptr noundef nonnull @mt7915_muru_debug_set, ptr noundef nonnull @.str.16) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt7915_muru_debug_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %muru_debug = getelementptr inbounds %struct.mt7915_dev, ptr %data, i32 0, i32 19
  %0 = ptrtoint ptr %muru_debug to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %muru_debug, align 2, !range !368
  %2 = zext i8 %1 to i64
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_muru_debug_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %val)
  %tobool = icmp ne i64 %val, 0
  %muru_debug = getelementptr inbounds %struct.mt7915_dev, ptr %data, i32 0, i32 19
  %frombool = zext i1 %tobool to i8
  %0 = ptrtoint ptr %muru_debug to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %muru_debug, align 2
  %tobool1 = icmp ne ptr %data, null
  %call = tail call i32 @mt7915_mcu_muru_debug_set(ptr noundef %data, i1 noundef zeroext %tobool1) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_muru_debug_set(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_muru_stats_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mt7915_muru_stats_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_muru_stats_show(ptr noundef %file, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  %mu_stats = alloca %struct.mt7915_mcu_muru_stats, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %file, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dev1 = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %mu_stats) #9
  %4 = call ptr @memset(ptr %mu_stats, i32 0, i32 120)
  %muru_debug = getelementptr inbounds %struct.mt7915_dev, ptr %3, i32 0, i32 19
  %5 = ptrtoint ptr %muru_debug to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %muru_debug, align 2, !range !368
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.36) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %call = call i32 @mt7915_mcu_muru_debug_get(ptr noundef %1, ptr noundef nonnull %mu_stats) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.37) #9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.17) #9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.18) #9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.19) #9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.20) #9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.21) #9
  call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.39) #9
  %dl = getelementptr inbounds %struct.mt7915_mcu_muru_stats, ptr %mu_stats, i32 0, i32 1
  %7 = ptrtoint ptr %dl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dl, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  %ofdm_cnt = getelementptr inbounds %struct.mt7915_mcu_muru_stats, ptr %mu_stats, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %ofdm_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ofdm_cnt, align 4
  %12 = call i32 @llvm.bswap.i32(i32 %11)
  %htmix_cnt = getelementptr inbounds %struct.mt7915_mcu_muru_stats, ptr %mu_stats, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %htmix_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %htmix_cnt, align 4
  %15 = call i32 @llvm.bswap.i32(i32 %14)
  %htgf_cnt = getelementptr inbounds %struct.mt7915_mcu_muru_stats, ptr %mu_stats, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %htgf_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %htgf_cnt, align 4
  %18 = call i32 @llvm.bswap.i32(i32 %17)
  %vht_su_cnt = getelementptr inbounds %struct.mt7915_mcu_muru_stats, ptr %mu_stats, i32 0, i32 1, i32 4
  %19 = ptrtoint ptr %vht_su_cnt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vht_su_cnt, align 4
  %21 = call i32 @llvm.bswap.i32(i32 %20)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.40, i32 noundef %9, i32 noundef %12, i32 noundef %15, i32 noundef %18, i32 noundef %21) #9
  call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.41) #9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.22) #9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.23) #9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.24) #9
  call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.39) #9
  %vht_2mu_cnt = getelementptr inbounds %struct.mt7915_mcu_muru_stats, ptr %mu_stats, i32 0, i32 1, i32 5
  %22 = ptrtoint ptr %vht_2mu_cnt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vht_2mu_cnt, align 4
  %24 = call i32 @llvm.bswap.i32(i32 %23)
  %vht_3mu_cnt = getelementptr inbounds %struct.mt7915_mcu_muru_stats, ptr %mu_stats, i32 0, i32 1, i32 6
  %25 = ptrtoint ptr %vht_3mu_cnt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vht_3mu_cnt, align 4
  %27 = call i32 @llvm.bswap.i32(i32 %26)
  %vht_4mu_cnt = getelementptr inbounds %struct.mt7915_mcu_muru_stats, ptr %mu_stats, i32 0, i32 1, i32 7
  %28 = ptrtoint ptr %vht_4mu_cnt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vht_4mu_cnt, align 4
  %30 = call i32 @llvm.bswap.i32(i32 %29)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.42, i32 noundef %24, i32 noundef %27, i32 noundef %30) #9
  %31 = ptrtoint ptr %vht_2mu_cnt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vht_2mu_cnt, align 4
  %33 = call i32 @llvm.bswap.i32(i32 %32)
  %34 = ptrtoint ptr %vht_3mu_cnt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vht_3mu_cnt, align 4
  %36 = call i32 @llvm.bswap.i32(i32 %35)
  %add = add i32 %36, %33
  %37 = ptrtoint ptr %vht_4mu_cnt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vht_4mu_cnt, align 4
  %39 = call i32 @llvm.bswap.i32(i32 %38)
  %add25 = add i32 %add, %39
  %conv = zext i32 %add25 to i64
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.43, i64 noundef %conv) #9
  %40 = ptrtoint ptr %dl to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dl, align 4
  %42 = call i32 @llvm.bswap.i32(i32 %41)
  %conv28 = zext i32 %42 to i64
  %add29 = add nuw nsw i64 %conv28, %conv
  %43 = ptrtoint ptr %ofdm_cnt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ofdm_cnt, align 4
  %45 = call i32 @llvm.bswap.i32(i32 %44)
  %conv32 = zext i32 %45 to i64
  %add33 = add nuw nsw i64 %add29, %conv32
  %46 = ptrtoint ptr %htmix_cnt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %htmix_cnt, align 4
  %48 = call i32 @llvm.bswap.i32(i32 %47)
  %conv36 = zext i32 %48 to i64
  %add37 = add nuw nsw i64 %add33, %conv36
  %49 = ptrtoint ptr %htgf_cnt to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %htgf_cnt, align 4
  %51 = call i32 @llvm.bswap.i32(i32 %50)
  %conv40 = zext i32 %51 to i64
  %add41 = add nuw nsw i64 %add37, %conv40
  %52 = ptrtoint ptr %vht_su_cnt to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %vht_su_cnt, align 4
  %54 = call i32 @llvm.bswap.i32(i32 %53)
  %conv44 = zext i32 %54 to i64
  %add45 = add nuw nsw i64 %add41, %conv44
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.44, i64 noundef %add45) #9
  call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.45) #9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.25) #9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.26) #9
  call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.39) #9
  %he_su_cnt = getelementptr inbounds %struct.mt7915_mcu_muru_stats, ptr %mu_stats, i32 0, i32 1, i32 8
  %55 = ptrtoint ptr %he_su_cnt to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %he_su_cnt, align 4
  %57 = call i32 @llvm.bswap.i32(i32 %56)
  %he_ext_su_cnt = getelementptr inbounds %struct.mt7915_mcu_muru_stats, ptr %mu_stats, i32 0, i32 1, i32 9
  %58 = ptrtoint ptr %he_ext_su_cnt to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %he_ext_su_cnt, align 4
  %60 = call i32 @llvm.bswap.i32(i32 %59)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.46, i32 noundef %57, i32 noundef %60) #9
  call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.41) #9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.27) #9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.28) #9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.29) #9
  call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.39) #9
  %he_2mu_cnt = getelementptr inbounds %struct.mt7915_mcu_muru_stats, ptr %mu_stats, i32 0, i32 1, i32 11
  %61 = ptrtoint ptr %he_2mu_cnt to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %he_2mu_cnt, align 4
  %63 = call i32 @llvm.bswap.i32(i32 %62)
  %he_3mu_cnt = getelementptr inbounds %struct.mt7915_mcu_muru_stats, ptr %mu_stats, i32 0, i32 1, i32 13
  %64 = ptrtoint ptr %he_3mu_cnt to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %he_3mu_cnt, align 4
  %66 = call i32 @llvm.bswap.i32(i32 %65)
  %he_4mu_cnt = getelementptr inbounds %struct.mt7915_mcu_muru_stats, ptr %mu_stats, i32 0, i32 1, i32 15
  %67 = ptrtoint ptr %he_4mu_cnt to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %he_4mu_cnt, align 4
  %69 = call i32 @llvm.bswap.i32(i32 %68)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.42, i32 noundef %63, i32 noundef %66, i32 noundef %69) #9
  call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.47) #9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.30) #9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.31) #9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.32) #9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.33) #9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.34) #9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.35) #9
  call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.39) #9
  %he_2ru_cnt = getelementptr inbounds %struct.mt7915_mcu_muru_stats, ptr %mu_stats, i32 0, i32 1, i32 10
  %70 = ptrtoint ptr %he_2ru_cnt to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %he_2ru_cnt, align 4
  %72 = call i32 @llvm.bswap.i32(i32 %71)
  %he_3ru_cnt = getelementptr inbounds %struct.mt7915_mcu_muru_stats, ptr %mu_stats, i32 0, i32 1, i32 12
  %73 = ptrtoint ptr %he_3ru_cnt to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %he_3ru_cnt, align 4
  %75 = call i32 @llvm.bswap.i32(i32 %74)
  %he_4ru_cnt = getelementptr inbounds %struct.mt7915_mcu_muru_stats, ptr %mu_stats, i32 0, i32 1, i32 14
  %76 = ptrtoint ptr %he_4ru_cnt to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %he_4ru_cnt, align 4
  %78 = call i32 @llvm.bswap.i32(i32 %77)
  %he_5to8ru_cnt = getelementptr inbounds %struct.mt7915_mcu_muru_stats, ptr %mu_stats, i32 0, i32 1, i32 16
  %79 = ptrtoint ptr %he_5to8ru_cnt to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %he_5to8ru_cnt, align 4
  %81 = call i32 @llvm.bswap.i32(i32 %80)
  %he_9to16ru_cnt = getelementptr inbounds %struct.mt7915_mcu_muru_stats, ptr %mu_stats, i32 0, i32 1, i32 17
  %82 = ptrtoint ptr %he_9to16ru_cnt to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %he_9to16ru_cnt, align 4
  %84 = call i32 @llvm.bswap.i32(i32 %83)
  %he_gtr16ru_cnt = getelementptr inbounds %struct.mt7915_mcu_muru_stats, ptr %mu_stats, i32 0, i32 1, i32 18
  %85 = ptrtoint ptr %he_gtr16ru_cnt to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %he_gtr16ru_cnt, align 4
  %87 = call i32 @llvm.bswap.i32(i32 %86)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.48, i32 noundef %72, i32 noundef %75, i32 noundef %78, i32 noundef %81, i32 noundef %84, i32 noundef %87) #9
  %88 = ptrtoint ptr %he_2mu_cnt to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %he_2mu_cnt, align 4
  %90 = call i32 @llvm.bswap.i32(i32 %89)
  %91 = ptrtoint ptr %he_3mu_cnt to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %he_3mu_cnt, align 4
  %93 = call i32 @llvm.bswap.i32(i32 %92)
  %add85 = add i32 %93, %90
  %94 = ptrtoint ptr %he_4mu_cnt to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %he_4mu_cnt, align 4
  %96 = call i32 @llvm.bswap.i32(i32 %95)
  %add88 = add i32 %add85, %96
  %conv89 = zext i32 %add88 to i64
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.49, i64 noundef %conv89) #9
  %97 = ptrtoint ptr %he_2ru_cnt to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %he_2ru_cnt, align 4
  %99 = call i32 @llvm.bswap.i32(i32 %98)
  %100 = ptrtoint ptr %he_3ru_cnt to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %he_3ru_cnt, align 4
  %102 = call i32 @llvm.bswap.i32(i32 %101)
  %add94 = add i32 %102, %99
  %103 = ptrtoint ptr %he_4ru_cnt to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %he_4ru_cnt, align 4
  %105 = call i32 @llvm.bswap.i32(i32 %104)
  %add97 = add i32 %add94, %105
  %106 = ptrtoint ptr %he_5to8ru_cnt to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %he_5to8ru_cnt, align 4
  %108 = call i32 @llvm.bswap.i32(i32 %107)
  %add100 = add i32 %add97, %108
  %109 = ptrtoint ptr %he_9to16ru_cnt to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %he_9to16ru_cnt, align 4
  %111 = call i32 @llvm.bswap.i32(i32 %110)
  %add103 = add i32 %add100, %111
  %112 = ptrtoint ptr %he_gtr16ru_cnt to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %he_gtr16ru_cnt, align 4
  %114 = call i32 @llvm.bswap.i32(i32 %113)
  %add106 = add i32 %add103, %114
  %conv107 = zext i32 %add106 to i64
  %add108 = add nuw nsw i64 %conv107, %conv89
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.50, i64 noundef %conv107) #9
  %115 = ptrtoint ptr %he_su_cnt to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %he_su_cnt, align 4
  %117 = call i32 @llvm.bswap.i32(i32 %116)
  %118 = ptrtoint ptr %he_ext_su_cnt to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %he_ext_su_cnt, align 4
  %120 = call i32 @llvm.bswap.i32(i32 %119)
  %add113 = add i32 %120, %117
  %conv114 = zext i32 %add113 to i64
  %add115 = add nuw nsw i64 %add108, %conv114
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.51, i64 noundef %add115) #9
  call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.52) #9
  call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.53) #9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.27) #9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.28) #9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.29) #9
  call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.39) #9
  %hetrig_2mu_cnt = getelementptr inbounds %struct.mt7915_mcu_muru_stats, ptr %mu_stats, i32 0, i32 2, i32 7
  %121 = ptrtoint ptr %hetrig_2mu_cnt to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %hetrig_2mu_cnt, align 4
  %123 = call i32 @llvm.bswap.i32(i32 %122)
  %hetrig_3mu_cnt = getelementptr inbounds %struct.mt7915_mcu_muru_stats, ptr %mu_stats, i32 0, i32 2, i32 8
  %124 = ptrtoint ptr %hetrig_3mu_cnt to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %hetrig_3mu_cnt, align 4
  %126 = call i32 @llvm.bswap.i32(i32 %125)
  %hetrig_4mu_cnt = getelementptr inbounds %struct.mt7915_mcu_muru_stats, ptr %mu_stats, i32 0, i32 2, i32 9
  %127 = ptrtoint ptr %hetrig_4mu_cnt to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %hetrig_4mu_cnt, align 4
  %129 = call i32 @llvm.bswap.i32(i32 %128)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.42, i32 noundef %123, i32 noundef %126, i32 noundef %129) #9
  call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.54) #9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.25) #9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.30) #9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.31) #9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.32) #9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.33) #9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.34) #9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.35) #9
  %ul = getelementptr inbounds %struct.mt7915_mcu_muru_stats, ptr %mu_stats, i32 0, i32 2
  call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.39) #9
  %130 = ptrtoint ptr %ul to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %ul, align 4
  %132 = call i32 @llvm.bswap.i32(i32 %131)
  %hetrig_2ru_cnt = getelementptr inbounds %struct.mt7915_mcu_muru_stats, ptr %mu_stats, i32 0, i32 2, i32 1
  %133 = ptrtoint ptr %hetrig_2ru_cnt to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %hetrig_2ru_cnt, align 4
  %135 = call i32 @llvm.bswap.i32(i32 %134)
  %hetrig_3ru_cnt = getelementptr inbounds %struct.mt7915_mcu_muru_stats, ptr %mu_stats, i32 0, i32 2, i32 2
  %136 = ptrtoint ptr %hetrig_3ru_cnt to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %hetrig_3ru_cnt, align 4
  %138 = call i32 @llvm.bswap.i32(i32 %137)
  %hetrig_4ru_cnt = getelementptr inbounds %struct.mt7915_mcu_muru_stats, ptr %mu_stats, i32 0, i32 2, i32 3
  %139 = ptrtoint ptr %hetrig_4ru_cnt to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %hetrig_4ru_cnt, align 4
  %141 = call i32 @llvm.bswap.i32(i32 %140)
  %hetrig_5to8ru_cnt = getelementptr inbounds %struct.mt7915_mcu_muru_stats, ptr %mu_stats, i32 0, i32 2, i32 4
  %142 = ptrtoint ptr %hetrig_5to8ru_cnt to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %hetrig_5to8ru_cnt, align 4
  %144 = call i32 @llvm.bswap.i32(i32 %143)
  %hetrig_9to16ru_cnt = getelementptr inbounds %struct.mt7915_mcu_muru_stats, ptr %mu_stats, i32 0, i32 2, i32 5
  %145 = ptrtoint ptr %hetrig_9to16ru_cnt to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %hetrig_9to16ru_cnt, align 4
  %147 = call i32 @llvm.bswap.i32(i32 %146)
  %hetrig_gtr16ru_cnt = getelementptr inbounds %struct.mt7915_mcu_muru_stats, ptr %mu_stats, i32 0, i32 2, i32 6
  %148 = ptrtoint ptr %hetrig_gtr16ru_cnt to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %hetrig_gtr16ru_cnt, align 4
  %150 = call i32 @llvm.bswap.i32(i32 %149)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.55, i32 noundef %132, i32 noundef %135, i32 noundef %138, i32 noundef %141, i32 noundef %144, i32 noundef %147, i32 noundef %150) #9
  %151 = ptrtoint ptr %hetrig_2mu_cnt to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %hetrig_2mu_cnt, align 4
  %153 = call i32 @llvm.bswap.i32(i32 %152)
  %154 = ptrtoint ptr %hetrig_3mu_cnt to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %hetrig_3mu_cnt, align 4
  %156 = call i32 @llvm.bswap.i32(i32 %155)
  %add145 = add i32 %156, %153
  %157 = ptrtoint ptr %hetrig_4mu_cnt to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %hetrig_4mu_cnt, align 4
  %159 = call i32 @llvm.bswap.i32(i32 %158)
  %add148 = add i32 %add145, %159
  %conv149 = zext i32 %add148 to i64
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.56, i64 noundef %conv149) #9
  %160 = ptrtoint ptr %hetrig_2ru_cnt to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %hetrig_2ru_cnt, align 4
  %162 = call i32 @llvm.bswap.i32(i32 %161)
  %163 = ptrtoint ptr %hetrig_3ru_cnt to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %hetrig_3ru_cnt, align 4
  %165 = call i32 @llvm.bswap.i32(i32 %164)
  %add154 = add i32 %165, %162
  %166 = ptrtoint ptr %hetrig_4ru_cnt to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %hetrig_4ru_cnt, align 4
  %168 = call i32 @llvm.bswap.i32(i32 %167)
  %add157 = add i32 %add154, %168
  %169 = ptrtoint ptr %hetrig_5to8ru_cnt to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %hetrig_5to8ru_cnt, align 4
  %171 = call i32 @llvm.bswap.i32(i32 %170)
  %add160 = add i32 %add157, %171
  %172 = ptrtoint ptr %hetrig_9to16ru_cnt to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %hetrig_9to16ru_cnt, align 4
  %174 = call i32 @llvm.bswap.i32(i32 %173)
  %add163 = add i32 %add160, %174
  %175 = ptrtoint ptr %hetrig_gtr16ru_cnt to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %hetrig_gtr16ru_cnt, align 4
  %177 = call i32 @llvm.bswap.i32(i32 %176)
  %add166 = add i32 %add163, %177
  %conv167 = zext i32 %add166 to i64
  %add168 = add nuw nsw i64 %conv167, %conv149
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.57, i64 noundef %conv167) #9
  %178 = ptrtoint ptr %ul to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %ul, align 4
  %180 = call i32 @llvm.bswap.i32(i32 %179)
  %conv171 = zext i32 %180 to i64
  %add172 = add nuw nsw i64 %add168, %conv171
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.58, i64 noundef %add172) #9
  br label %exit

exit:                                             ; preds = %if.end4, %if.end.exit_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.then
  %retval.0 = phi i32 [ %call, %exit ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %mu_stats) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_muru_debug_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_hw_queues_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mt7915_hw_queues_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_hw_queues_show(ptr noundef %file, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %file, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dev1 = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call = tail call i32 %7(ptr noundef %3, i32 noundef 33024) #9
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call16 = tail call i32 %11(ptr noundef %3, i32 noundef 33028) #9
  %and = and i32 %call16, 4095
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call35 = tail call i32 %15(ptr noundef %3, i32 noundef 33028) #9
  %and36 = lshr i32 %call35, 16
  %shr37 = and i32 %and36, 4095
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.86) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.87, i32 noundef %call, i32 noundef %and, i32 noundef %shr37) #9
  %16 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %call40 = tail call i32 %19(ptr noundef %3, i32 noundef 33040) #9
  %20 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %call59 = tail call i32 %23(ptr noundef %3, i32 noundef 33044) #9
  %and60 = and i32 %call59, 4095
  %24 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %call80 = tail call i32 %27(ptr noundef %3, i32 noundef 33044) #9
  %and81 = lshr i32 %call80, 16
  %shr82 = and i32 %and81, 4095
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.88, i32 noundef %call40, i32 noundef %and60, i32 noundef %shr82) #9
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.89) #9
  tail call fastcc void @mt7915_hw_queue_read(ptr noundef %file, i32 noundef 32768, i32 noundef 12, ptr noundef nonnull @mt7915_hw_queues_show.ple_queue_map)
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  tail call void @ieee80211_iterate_stations_atomic(ptr noundef %31, ptr noundef nonnull @mt7915_sta_hw_queue_read, ptr noundef %file) #9
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.90) #9
  tail call fastcc void @mt7915_hw_queue_read(ptr noundef %file, i32 noundef 49152, i32 noundef 15, ptr noundef nonnull @mt7915_hw_queues_show.pse_queue_map)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7915_hw_queue_read(ptr noundef %s, i32 noundef %base, i32 noundef %size, ptr nocapture noundef readonly %map) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dev1 = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %add = add i32 %base, 176
  %call = tail call i32 %7(ptr noundef %3, i32 noundef %add) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp99.not = icmp eq i32 %size, 0
  br i1 %cmp99.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %add10 = add i32 %base, 432
  %add25 = add i32 %base, 440
  %add68 = add i32 %base, 444
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0100 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %index = getelementptr %struct.hw_queue_map, ptr %map, i32 %i.0100, i32 1
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %index, align 4
  %conv = zext i8 %9 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.hw_queue_map, ptr %map, i32 %i.0100
  %pid = getelementptr %struct.hw_queue_map, ptr %map, i32 %i.0100, i32 2
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pid, align 1
  %conv3 = zext i8 %11 to i32
  %shl4 = shl nuw nsw i32 %conv3, 10
  %qid = getelementptr %struct.hw_queue_map, ptr %map, i32 %i.0100, i32 3
  %12 = ptrtoint ptr %qid to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %qid, align 2
  %conv6 = zext i8 %13 to i32
  %shl7 = shl nuw i32 %conv6, 24
  %or = or i32 %shl4, %shl7
  %or8 = or i32 %or, -2147483648
  %14 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wr, align 4
  tail call void %17(ptr noundef %3, i32 noundef %add10, i32 noundef %or8) #9
  %18 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %call26 = tail call i32 %21(ptr noundef %3, i32 noundef %add25) #9
  %and27 = and i32 %call26, 4095
  %22 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %call47 = tail call i32 %25(ptr noundef %3, i32 noundef %add25) #9
  %and48 = lshr i32 %call47, 16
  %shr49 = and i32 %and48, 4095
  %26 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %call69 = tail call i32 %29(ptr noundef %3, i32 noundef %add68) #9
  %and70 = and i32 %call69, 4095
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.91, ptr noundef %31) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.92, i32 noundef %and70, i32 noundef %and27, i32 noundef %shr49) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.0100, 1
  %exitcond.not = icmp eq i32 %inc, %size
  br i1 %exitcond.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_stations_atomic(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7915_sta_hw_queue_read(ptr noundef %data, ptr noundef %sta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vif = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 0, i32 2
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif, align 4
  %phy = getelementptr inbounds %struct.mt7915_vif, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 8
  %dev1 = getelementptr inbounds %struct.mt7915_phy, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %idx3 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 2
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %5, i32 0, i32 10
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %cleanup.for.body_crit_edge ]
  %6 = ptrtoint ptr %idx3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %idx3, align 2
  %8 = and i16 %7, 31
  %conv8 = zext i16 %8 to i32
  %9 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %mul = shl nuw nsw i32 %indvars.iv, 6
  %13 = lshr i16 %7, 3
  %14 = and i16 %13, 8188
  %shl11 = zext i16 %14 to i32
  %add12 = add nuw nsw i32 %mul, 34048
  %add13 = add nuw nsw i32 %add12, %shl11
  %call = tail call i32 %12(ptr noundef %5, i32 noundef %add13) #9
  %shl15 = shl nuw i32 1, %conv8
  %and16 = and i32 %call, %shl15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool.not = icmp eq i32 %and16, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl nuw nsw i32 %indvars.iv, 24
  %15 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wr, align 4
  %19 = ptrtoint ptr %idx3 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %idx3, align 2
  %conv20 = zext i16 %20 to i32
  %or = or i32 %shl, %conv20
  %or21 = or i32 %or, -2147481600
  tail call void %18(ptr noundef %5, i32 noundef 33200, i32 noundef %or21) #9
  %21 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %call36 = tail call i32 %24(ptr noundef %5, i32 noundef 33212) #9
  %and37 = and i32 %call36, 4095
  %25 = ptrtoint ptr %idx3 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %idx3, align 2
  %conv42 = zext i16 %26 to i32
  %27 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vif, align 4
  %wmm_idx = getelementptr inbounds %struct.mt76_vif, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %wmm_idx to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %wmm_idx, align 1
  %conv44 = zext i8 %30 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %data, ptr noundef nonnull @.str.93, ptr noundef %addr, i32 noundef %conv42, i32 noundef %conv44, i32 noundef %indvars.iv, i32 noundef %and37) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.cleanup_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 4
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_xmit_queues_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mt7915_xmit_queues_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_xmit_queues_show(ptr noundef %file, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %file, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dev1 = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %arrayidx = getelementptr %struct.mt76_phy, ptr %5, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %q_mcu = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 22
  %8 = ptrtoint ptr %q_mcu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %q_mcu, align 16
  %arrayidx8 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 22, i32 1
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx8, align 4
  %arrayidx13 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 22, i32 2
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx13, align 8
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.98) #9
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %queued = getelementptr inbounds %struct.mt76_queue, ptr %7, i32 0, i32 9
  %14 = ptrtoint ptr %queued to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %queued, align 4
  %head = getelementptr inbounds %struct.mt76_queue, ptr %7, i32 0, i32 6
  %16 = ptrtoint ptr %head to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %head, align 2
  %conv = zext i16 %17 to i32
  %tail = getelementptr inbounds %struct.mt76_queue, ptr %7, i32 0, i32 7
  %18 = ptrtoint ptr %tail to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %tail, align 4
  %conv20 = zext i16 %19 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.94, i32 noundef %15, i32 noundef %conv, i32 noundef %conv20) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %tobool.not.1 = icmp eq ptr %9, null
  br i1 %tobool.not.1, label %cleanup.cleanup.1_crit_edge, label %if.end.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.1

if.end.1:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  %queued.1 = getelementptr inbounds %struct.mt76_queue, ptr %9, i32 0, i32 9
  %20 = ptrtoint ptr %queued.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %queued.1, align 4
  %head.1 = getelementptr inbounds %struct.mt76_queue, ptr %9, i32 0, i32 6
  %22 = ptrtoint ptr %head.1 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %head.1, align 2
  %conv.1 = zext i16 %23 to i32
  %tail.1 = getelementptr inbounds %struct.mt76_queue, ptr %9, i32 0, i32 7
  %24 = ptrtoint ptr %tail.1 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %tail.1, align 4
  %conv20.1 = zext i16 %25 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.95, i32 noundef %21, i32 noundef %conv.1, i32 noundef %conv20.1) #9
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end.1, %cleanup.cleanup.1_crit_edge
  %tobool.not.2 = icmp eq ptr %11, null
  br i1 %tobool.not.2, label %cleanup.1.cleanup.2_crit_edge, label %if.end.2

cleanup.1.cleanup.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.2

if.end.2:                                         ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #11
  %queued.2 = getelementptr inbounds %struct.mt76_queue, ptr %11, i32 0, i32 9
  %26 = ptrtoint ptr %queued.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %queued.2, align 4
  %head.2 = getelementptr inbounds %struct.mt76_queue, ptr %11, i32 0, i32 6
  %28 = ptrtoint ptr %head.2 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %head.2, align 2
  %conv.2 = zext i16 %29 to i32
  %tail.2 = getelementptr inbounds %struct.mt76_queue, ptr %11, i32 0, i32 7
  %30 = ptrtoint ptr %tail.2 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %tail.2, align 4
  %conv20.2 = zext i16 %31 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.96, i32 noundef %27, i32 noundef %conv.2, i32 noundef %conv20.2) #9
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.end.2, %cleanup.1.cleanup.2_crit_edge
  %tobool.not.3 = icmp eq ptr %13, null
  br i1 %tobool.not.3, label %cleanup.2.cleanup.3_crit_edge, label %if.end.3

cleanup.2.cleanup.3_crit_edge:                    ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.3

if.end.3:                                         ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #11
  %queued.3 = getelementptr inbounds %struct.mt76_queue, ptr %13, i32 0, i32 9
  %32 = ptrtoint ptr %queued.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %queued.3, align 4
  %head.3 = getelementptr inbounds %struct.mt76_queue, ptr %13, i32 0, i32 6
  %34 = ptrtoint ptr %head.3 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %head.3, align 2
  %conv.3 = zext i16 %35 to i32
  %tail.3 = getelementptr inbounds %struct.mt76_queue, ptr %13, i32 0, i32 7
  %36 = ptrtoint ptr %tail.3 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %tail.3, align 4
  %conv20.3 = zext i16 %37 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.97, i32 noundef %33, i32 noundef %conv.3, i32 noundef %conv20.3) #9
  br label %cleanup.3

cleanup.3:                                        ; preds = %if.end.3, %cleanup.2.cleanup.3_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_tx_stats_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mt7915_tx_stats_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_tx_stats_show(ptr noundef %file, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %file, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dev1 = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %mutex = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %phy2.i = getelementptr inbounds %struct.mt7915_dev, ptr %5, i32 0, i32 4
  %cmp.i = icmp ne ptr %phy2.i, %1
  %bus.i = getelementptr inbounds %struct.mt76_dev, ptr %5, i32 0, i32 10
  %add.i = select i1 %cmp.i, i32 675000, i32 150712
  %6 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call.i = tail call i32 %9(ptr noundef %5, i32 noundef %add.i) #9
  %10 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %add4.1.i = or i32 %add.i, 4
  %call.1.i = tail call i32 %13(ptr noundef %5, i32 noundef %add4.1.i) #9
  %14 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %add4.2.i = add nuw nsw i32 %add.i, 8
  %call.2.i = tail call i32 %17(ptr noundef %5, i32 noundef %add4.2.i) #9
  %18 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %add4.3.i = add nuw nsw i32 %add.i, 12
  %call.3.i = tail call i32 %21(ptr noundef %5, i32 noundef %add4.3.i) #9
  %and.i = and i32 %call.i, 255
  %add10.i = add nuw nsw i32 %and.i, 1
  %22 = lshr i32 %call.i, 8
  %and.1.i = and i32 %22, 255
  %add10.1.i = add nuw nsw i32 %and.1.i, 1
  %23 = lshr i32 %call.i, 16
  %and.2.i = and i32 %23, 255
  %add10.2.i = add nuw nsw i32 %and.2.i, 1
  %24 = lshr i32 %call.i, 24
  %add10.3.i = add nuw nsw i32 %24, 1
  %and.4.i = and i32 %call.1.i, 255
  %add10.4.i = add nuw nsw i32 %and.4.i, 1
  %25 = lshr i32 %call.1.i, 8
  %and.5.i = and i32 %25, 255
  %add10.5.i = add nuw nsw i32 %and.5.i, 1
  %26 = lshr i32 %call.1.i, 16
  %and.6.i = and i32 %26, 255
  %add10.6.i = add nuw nsw i32 %and.6.i, 1
  %27 = lshr i32 %call.1.i, 24
  %add10.7.i = add nuw nsw i32 %27, 1
  %and.8.i = and i32 %call.2.i, 255
  %add10.8.i = add nuw nsw i32 %and.8.i, 1
  %28 = lshr i32 %call.2.i, 8
  %and.9.i = and i32 %28, 255
  %add10.9.i = add nuw nsw i32 %and.9.i, 1
  %29 = lshr i32 %call.2.i, 16
  %and.10.i = and i32 %29, 255
  %add10.10.i = add nuw nsw i32 %and.10.i, 1
  %30 = lshr i32 %call.2.i, 24
  %add10.11.i = add nuw nsw i32 %30, 1
  %and.12.i = and i32 %call.3.i, 255
  %add10.12.i = add nuw nsw i32 %and.12.i, 1
  %31 = lshr i32 %call.3.i, 8
  %and.13.i = and i32 %31, 255
  %add10.13.i = add nuw nsw i32 %and.13.i, 1
  %32 = lshr i32 %call.3.i, 16
  %and.14.i = and i32 %32, 255
  %add10.14.i = add nuw nsw i32 %and.14.i, 1
  %conv.i = zext i1 %cmp.i to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.104, i32 noundef %conv.i) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.105, i32 noundef %add10.i) #9
  %add22.i = add nuw nsw i32 %and.i, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.106, i32 noundef %add22.i, i32 noundef %add10.1.i) #9
  %add22.1.i = add nuw nsw i32 %and.1.i, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.106, i32 noundef %add22.1.i, i32 noundef %add10.2.i) #9
  %add22.2.i = add nuw nsw i32 %and.2.i, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.106, i32 noundef %add22.2.i, i32 noundef %add10.3.i) #9
  %add22.3.i = add nuw nsw i32 %24, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.106, i32 noundef %add22.3.i, i32 noundef %add10.4.i) #9
  %add22.4.i = add nuw nsw i32 %and.4.i, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.106, i32 noundef %add22.4.i, i32 noundef %add10.5.i) #9
  %add22.5.i = add nuw nsw i32 %and.5.i, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.106, i32 noundef %add22.5.i, i32 noundef %add10.6.i) #9
  %add22.6.i = add nuw nsw i32 %and.6.i, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.106, i32 noundef %add22.6.i, i32 noundef %add10.7.i) #9
  %add22.7.i = add nuw nsw i32 %27, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.106, i32 noundef %add22.7.i, i32 noundef %add10.8.i) #9
  %add22.8.i = add nuw nsw i32 %and.8.i, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.106, i32 noundef %add22.8.i, i32 noundef %add10.9.i) #9
  %add22.9.i = add nuw nsw i32 %and.9.i, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.106, i32 noundef %add22.9.i, i32 noundef %add10.10.i) #9
  %add22.10.i = add nuw nsw i32 %and.10.i, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.106, i32 noundef %add22.10.i, i32 noundef %add10.11.i) #9
  %add22.11.i = add nuw nsw i32 %30, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.106, i32 noundef %add22.11.i, i32 noundef %add10.12.i) #9
  %add22.12.i = add nuw nsw i32 %and.12.i, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.106, i32 noundef %add22.12.i, i32 noundef %add10.13.i) #9
  %add22.13.i = add nuw nsw i32 %and.13.i, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.106, i32 noundef %add22.13.i, i32 noundef %add10.14.i) #9
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.107) #9
  %cond30.i = select i1 %cmp.i, i32 16, i32 0
  %arrayidx36.i = getelementptr %struct.mt76_dev, ptr %5, i32 0, i32 40, i32 %cond30.i
  %33 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx36.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.108, i32 noundef %34) #9
  %add35.1.i = or i32 %cond30.i, 1
  %arrayidx36.1.i = getelementptr %struct.mt76_dev, ptr %5, i32 0, i32 40, i32 %add35.1.i
  %35 = ptrtoint ptr %arrayidx36.1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx36.1.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.108, i32 noundef %36) #9
  %add35.2.i = or i32 %cond30.i, 2
  %arrayidx36.2.i = getelementptr %struct.mt76_dev, ptr %5, i32 0, i32 40, i32 %add35.2.i
  %37 = ptrtoint ptr %arrayidx36.2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx36.2.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.108, i32 noundef %38) #9
  %add35.3.i = or i32 %cond30.i, 3
  %arrayidx36.3.i = getelementptr %struct.mt76_dev, ptr %5, i32 0, i32 40, i32 %add35.3.i
  %39 = ptrtoint ptr %arrayidx36.3.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx36.3.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.108, i32 noundef %40) #9
  %add35.4.i = or i32 %cond30.i, 4
  %arrayidx36.4.i = getelementptr %struct.mt76_dev, ptr %5, i32 0, i32 40, i32 %add35.4.i
  %41 = ptrtoint ptr %arrayidx36.4.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx36.4.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.108, i32 noundef %42) #9
  %add35.5.i = or i32 %cond30.i, 5
  %arrayidx36.5.i = getelementptr %struct.mt76_dev, ptr %5, i32 0, i32 40, i32 %add35.5.i
  %43 = ptrtoint ptr %arrayidx36.5.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx36.5.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.108, i32 noundef %44) #9
  %add35.6.i = or i32 %cond30.i, 6
  %arrayidx36.6.i = getelementptr %struct.mt76_dev, ptr %5, i32 0, i32 40, i32 %add35.6.i
  %45 = ptrtoint ptr %arrayidx36.6.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx36.6.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.108, i32 noundef %46) #9
  %add35.7.i = or i32 %cond30.i, 7
  %arrayidx36.7.i = getelementptr %struct.mt76_dev, ptr %5, i32 0, i32 40, i32 %add35.7.i
  %47 = ptrtoint ptr %arrayidx36.7.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx36.7.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.108, i32 noundef %48) #9
  %add35.8.i = or i32 %cond30.i, 8
  %arrayidx36.8.i = getelementptr %struct.mt76_dev, ptr %5, i32 0, i32 40, i32 %add35.8.i
  %49 = ptrtoint ptr %arrayidx36.8.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx36.8.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.108, i32 noundef %50) #9
  %add35.9.i = or i32 %cond30.i, 9
  %arrayidx36.9.i = getelementptr %struct.mt76_dev, ptr %5, i32 0, i32 40, i32 %add35.9.i
  %51 = ptrtoint ptr %arrayidx36.9.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx36.9.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.108, i32 noundef %52) #9
  %add35.10.i = or i32 %cond30.i, 10
  %arrayidx36.10.i = getelementptr %struct.mt76_dev, ptr %5, i32 0, i32 40, i32 %add35.10.i
  %53 = ptrtoint ptr %arrayidx36.10.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx36.10.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.108, i32 noundef %54) #9
  %add35.11.i = or i32 %cond30.i, 11
  %arrayidx36.11.i = getelementptr %struct.mt76_dev, ptr %5, i32 0, i32 40, i32 %add35.11.i
  %55 = ptrtoint ptr %arrayidx36.11.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx36.11.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.108, i32 noundef %56) #9
  %add35.12.i = or i32 %cond30.i, 12
  %arrayidx36.12.i = getelementptr %struct.mt76_dev, ptr %5, i32 0, i32 40, i32 %add35.12.i
  %57 = ptrtoint ptr %arrayidx36.12.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx36.12.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.108, i32 noundef %58) #9
  %add35.13.i = or i32 %cond30.i, 13
  %arrayidx36.13.i = getelementptr %struct.mt76_dev, ptr %5, i32 0, i32 40, i32 %add35.13.i
  %59 = ptrtoint ptr %arrayidx36.13.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx36.13.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.108, i32 noundef %60) #9
  %add35.14.i = or i32 %cond30.i, 14
  %arrayidx36.14.i = getelementptr %struct.mt76_dev, ptr %5, i32 0, i32 40, i32 %add35.14.i
  %61 = ptrtoint ptr %arrayidx36.14.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx36.14.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.108, i32 noundef %62) #9
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.103) #9
  %ba_miss_cnt.i = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 16, i32 4
  %63 = ptrtoint ptr %ba_miss_cnt.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ba_miss_cnt.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.109, i32 noundef %64) #9
  tail call void @mt7915_mac_update_stats(ptr noundef %1) #9
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.114) #9
  %tx_bf_ibf_ppdu_cnt.i = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 16, i32 9
  %65 = ptrtoint ptr %tx_bf_ibf_ppdu_cnt.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tx_bf_ibf_ppdu_cnt.i, align 4
  %tx_bf_ebf_ppdu_cnt.i = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 16, i32 10
  %67 = ptrtoint ptr %tx_bf_ebf_ppdu_cnt.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tx_bf_ebf_ppdu_cnt.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.115, i32 noundef %66, i32 noundef %68) #9
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.116) #9
  %tx_bf_rx_fb_all_cnt.i = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 16, i32 11
  %69 = ptrtoint ptr %tx_bf_rx_fb_all_cnt.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tx_bf_rx_fb_all_cnt.i, align 4
  %tx_bf_rx_fb_he_cnt.i = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 16, i32 12
  %71 = ptrtoint ptr %tx_bf_rx_fb_he_cnt.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tx_bf_rx_fb_he_cnt.i, align 4
  %tx_bf_rx_fb_vht_cnt.i = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 16, i32 13
  %73 = ptrtoint ptr %tx_bf_rx_fb_vht_cnt.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tx_bf_rx_fb_vht_cnt.i, align 4
  %tx_bf_rx_fb_ht_cnt.i = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 16, i32 14
  %75 = ptrtoint ptr %tx_bf_rx_fb_ht_cnt.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tx_bf_rx_fb_ht_cnt.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.117, i32 noundef %70, i32 noundef %72, i32 noundef %74, i32 noundef %76) #9
  %tx_bf_rx_fb_bw.i = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 16, i32 15
  %77 = ptrtoint ptr %tx_bf_rx_fb_bw.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tx_bf_rx_fb_bw.i, align 4
  %arrayidx.i = getelementptr [4 x ptr], ptr @mt7915_txbf_stat_read_phy.bw, i32 0, i32 %78
  %79 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx.i, align 4
  %tx_bf_rx_fb_nc_cnt.i = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 16, i32 16
  %81 = ptrtoint ptr %tx_bf_rx_fb_nc_cnt.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tx_bf_rx_fb_nc_cnt.i, align 4
  %tx_bf_rx_fb_nr_cnt.i = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 16, i32 17
  %83 = ptrtoint ptr %tx_bf_rx_fb_nr_cnt.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tx_bf_rx_fb_nr_cnt.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.118, ptr noundef %80, i32 noundef %82, i32 noundef %84) #9
  %tx_bf_fb_cpl_cnt.i = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 16, i32 18
  %85 = ptrtoint ptr %tx_bf_fb_cpl_cnt.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tx_bf_fb_cpl_cnt.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.119, i32 noundef %86) #9
  %tx_bf_fb_trig_cnt.i = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 16, i32 19
  %87 = ptrtoint ptr %tx_bf_fb_trig_cnt.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %tx_bf_fb_trig_cnt.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.120, i32 noundef %88) #9
  %tx_bf_cnt.i = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 16, i32 5
  %89 = ptrtoint ptr %tx_bf_cnt.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %tx_bf_cnt.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.121, i32 noundef %90) #9
  %tx_mu_mpdu_cnt.i = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 16, i32 6
  %91 = ptrtoint ptr %tx_mu_mpdu_cnt.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tx_mu_mpdu_cnt.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.122, i32 noundef %92) #9
  %tx_mu_acked_mpdu_cnt.i = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 16, i32 7
  %93 = ptrtoint ptr %tx_mu_acked_mpdu_cnt.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %tx_mu_acked_mpdu_cnt.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.123, i32 noundef %94) #9
  %tx_su_acked_mpdu_cnt.i = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 16, i32 8
  %95 = ptrtoint ptr %tx_su_acked_mpdu_cnt.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %tx_su_acked_mpdu_cnt.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.124, i32 noundef %96) #9
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.103) #9
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.100) #9
  %tx_amsdu_cnt = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 16, i32 42
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.025 = phi i32 [ 0, %entry ], [ %add, %for.inc.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.025, 1
  %arrayidx = getelementptr %struct.mt7915_phy, ptr %1, i32 0, i32 16, i32 41, i32 %i.025
  %97 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.101, i32 noundef %add, i32 noundef %98) #9
  %99 = ptrtoint ptr %tx_amsdu_cnt to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %tx_amsdu_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.not = icmp eq i32 %100, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %101 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %102, 100
  %div = udiv i32 %mul, %100
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.102, i32 noundef %div) #9
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.103) #9
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %exitcond.not = icmp eq i32 %add, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7915_mac_update_stats(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_fw_debug_wm_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @mt7915_fw_debug_wm_get, ptr noundef nonnull @mt7915_fw_debug_wm_set, ptr noundef nonnull @.str.16) #9
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt7915_fw_debug_wm_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_debug_wm = getelementptr inbounds %struct.mt7915_dev, ptr %data, i32 0, i32 21
  %0 = ptrtoint ptr %fw_debug_wm to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fw_debug_wm, align 8
  %conv = zext i8 %1 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_fw_debug_wm_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %val)
  %tobool.not = icmp eq i64 %val, 0
  %conv = select i1 %tobool.not, i8 0, i8 2
  %fw_debug_wm = getelementptr inbounds %struct.mt7915_dev, ptr %data, i32 0, i32 21
  %0 = ptrtoint ptr %fw_debug_wm to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %fw_debug_wm, align 8
  %call = tail call i32 @mt7915_mcu_fw_log_2_host(ptr noundef %data, i8 noundef zeroext 0, i8 noundef zeroext %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %1 = ptrtoint ptr %fw_debug_wm to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %fw_debug_wm, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool5 = icmp ne i8 %2, 0
  %conv7 = zext i1 %tobool5 to i8
  %call8 = tail call i32 @mt7915_mcu_fw_dbg_ctrl(ptr noundef %data, i32 noundef 62, i8 noundef zeroext %conv7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %for.cond, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond:                                         ; preds = %for.body.preheader
  %3 = ptrtoint ptr %fw_debug_wm to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %fw_debug_wm, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool5.1 = icmp ne i8 %4, 0
  %conv7.1 = zext i1 %tobool5.1 to i8
  %call8.1 = tail call i32 @mt7915_mcu_fw_dbg_ctrl(ptr noundef %data, i32 noundef 63, i8 noundef zeroext %conv7.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.1)
  %tobool9.not.1 = icmp eq i32 %call8.1, 0
  br i1 %tobool9.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %5 = ptrtoint ptr %fw_debug_wm to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fw_debug_wm, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.2 = icmp ne i8 %6, 0
  %conv7.2 = zext i1 %tobool5.2 to i8
  %call8.2 = tail call i32 @mt7915_mcu_fw_dbg_ctrl(ptr noundef %data, i32 noundef 64, i8 noundef zeroext %conv7.2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.2)
  %tobool9.not.2 = icmp eq i32 %call8.2, 0
  br i1 %tobool9.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %7 = ptrtoint ptr %fw_debug_wm to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fw_debug_wm, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.3 = icmp ne i8 %8, 0
  %conv7.3 = zext i1 %tobool5.3 to i8
  %call8.3 = tail call i32 @mt7915_mcu_fw_dbg_ctrl(ptr noundef %data, i32 noundef 65, i8 noundef zeroext %conv7.3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.3)
  %tobool9.not.3 = icmp eq i32 %call8.3, 0
  br i1 %tobool9.not.3, label %for.cond.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %9 = ptrtoint ptr %fw_debug_wm to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fw_debug_wm, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.4 = icmp ne i8 %10, 0
  %conv7.4 = zext i1 %tobool5.4 to i8
  %call8.4 = tail call i32 @mt7915_mcu_fw_dbg_ctrl(ptr noundef %data, i32 noundef 66, i8 noundef zeroext %conv7.4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.4)
  %tobool9.not.4 = icmp eq i32 %call8.4, 0
  br i1 %tobool9.not.4, label %for.cond.4, label %for.cond.3.cleanup_crit_edge

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #11
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %data, i32 0, i32 10
  %11 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmw, align 4
  %call12 = tail call i32 %14(ptr noundef %data, i32 noundef 4321356, i32 noundef 1, i32 noundef 0) #9
  %15 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wr, align 4
  %19 = ptrtoint ptr %fw_debug_wm to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %fw_debug_wm, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool15.not = icmp eq i8 %20, 0
  %lnot.ext17 = zext i1 %tobool15.not to i32
  %or = or i32 %lnot.ext17, 8196
  tail call void %18(ptr noundef %data, i32 noundef 4321296, i32 noundef %or) #9
  %21 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus, align 4
  %wr19 = getelementptr inbounds %struct.mt76_bus_ops, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %wr19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wr19, align 4
  tail call void %24(ptr noundef %data, i32 noundef -1996423040, i32 noundef 32) #9
  %25 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus, align 4
  %wr21 = getelementptr inbounds %struct.mt76_bus_ops, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %wr21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wr21, align 4
  tail call void %28(ptr noundef %data, i32 noundef -1996422976, i32 noundef 32) #9
  br label %cleanup

cleanup:                                          ; preds = %for.cond.4, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.cond.4 ], [ %call, %entry.cleanup_crit_edge ], [ %call8, %for.body.preheader.cleanup_crit_edge ], [ %call8.1, %for.cond.cleanup_crit_edge ], [ %call8.2, %for.cond.1.cleanup_crit_edge ], [ %call8.3, %for.cond.2.cleanup_crit_edge ], [ %call8.4, %for.cond.3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_fw_log_2_host(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_fw_dbg_ctrl(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_fw_debug_wa_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @mt7915_fw_debug_wa_get, ptr noundef nonnull @mt7915_fw_debug_wa_set, ptr noundef nonnull @.str.16) #9
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt7915_fw_debug_wa_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_debug_wa = getelementptr inbounds %struct.mt7915_dev, ptr %data, i32 0, i32 22
  %0 = ptrtoint ptr %fw_debug_wa to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fw_debug_wa, align 1
  %conv = zext i8 %1 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_fw_debug_wa_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %val)
  %tobool.not = icmp eq i64 %val, 0
  %conv = select i1 %tobool.not, i8 0, i8 2
  %fw_debug_wa = getelementptr inbounds %struct.mt7915_dev, ptr %data, i32 0, i32 22
  %0 = ptrtoint ptr %fw_debug_wa to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %fw_debug_wa, align 1
  %call = tail call i32 @mt7915_mcu_fw_log_2_host(ptr noundef %data, i8 noundef zeroext 1, i8 noundef zeroext %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %fw_debug_wa to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %fw_debug_wa, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool33 = icmp ne i8 %2, 0
  %lnot.ext = zext i1 %tobool33 to i32
  %call35 = tail call i32 @mt7915_mcu_wa_cmd(ptr noundef %data, i32 noundef 524740, i32 noundef 4, i32 noundef %lnot.ext, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call35, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_wa_cmd(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_fw_util_wm_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mt7915_fw_util_wm_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_fw_util_wm_show(ptr noundef %file, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %file, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %fw_debug_wm = getelementptr inbounds %struct.mt7915_dev, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %fw_debug_wm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fw_debug_wm, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call = tail call i32 %7(ptr noundef %1, i32 noundef 4321328) #9
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call3 = tail call i32 %11(ptr noundef %1, i32 noundef 4321332) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.125, i32 noundef %call, i32 noundef %call3) #9
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call6 = tail call i32 %15(ptr noundef %1, i32 noundef 4321336) #9
  %16 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %call9 = tail call i32 %19(ptr noundef %1, i32 noundef 4321340) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.126, i32 noundef %call6, i32 noundef %call9) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_fw_util_wa_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mt7915_fw_util_wa_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_fw_util_wa_show(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %file, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %fw_debug_wa = getelementptr inbounds %struct.mt7915_dev, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %fw_debug_wa to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fw_debug_wa, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @mt7915_mcu_wa_cmd(ptr noundef %1, i32 noundef 524484, i32 noundef 11, i32 noundef 0, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_implicit_txbf_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @mt7915_implicit_txbf_get, ptr noundef nonnull @mt7915_implicit_txbf_set, ptr noundef nonnull @.str.16) #9
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt7915_implicit_txbf_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ibf = getelementptr inbounds %struct.mt7915_dev, ptr %data, i32 0, i32 20
  %0 = ptrtoint ptr %ibf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ibf, align 1, !range !368
  %2 = zext i8 %1 to i64
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_implicit_txbf_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.mt76_phy, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %val)
  %tobool1 = icmp ne i64 %val, 0
  %ibf = getelementptr inbounds %struct.mt7915_dev, ptr %data, i32 0, i32 20
  %frombool = zext i1 %tobool1 to i8
  %3 = ptrtoint ptr %ibf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool, ptr %ibf, align 1
  %call3 = tail call i32 @mt7915_mcu_set_txbf(ptr noundef %data, i8 noundef zeroext 20) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_set_txbf(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_rate_txpower_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mt7915_rate_txpower_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_rate_txpower_show(ptr noundef %file, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  %txpower = alloca [161 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %file, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 161, ptr nonnull %txpower) #9
  %2 = call ptr @memset(ptr %txpower, i32 255, i32 161)
  %dev = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %phy1 = getelementptr inbounds %struct.mt7915_dev, ptr %4, i32 0, i32 4
  %cmp = icmp ne ptr %1, %phy1
  %conv = zext i1 %cmp to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.140, i32 noundef %conv) #9
  %call = call i32 @mt7915_mcu_get_txpower_sku(ptr noundef %1, ptr noundef nonnull %txpower, i32 noundef 161) #9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.025 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %buf.024 = phi ptr [ %txpower, %entry ], [ %add.ptr, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [15 x i8], ptr @mt7915_sku_group_len, i32 0, i32 %i.025
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %7 = and i32 %i.025, 2147483644
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %8 = icmp eq i32 %7, 4
  %arrayidx9 = getelementptr [15 x ptr], ptr @mt7915_rate_txpower_show.sku_group_name, i32 0, i32 %i.025
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx9, align 4
  %11 = zext i8 %6 to i32
  %conv10 = select i1 %8, i32 10, i32 %11
  call void @mt76_seq_puts_array(ptr noundef %file, ptr noundef %10, ptr noundef %buf.024, i32 noundef %conv10) #9
  %add.ptr = getelementptr i8, ptr %buf.024, i32 %11
  %inc = add nuw nsw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, 15
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 161, ptr nonnull %txpower) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_get_txpower_sku(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_seq_puts_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_ser_trigger_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef null, ptr noundef nonnull @mt7915_ser_trigger_set, ptr noundef nonnull @.str.16) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_ser_trigger_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %val.off = add i64 %val, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %val.off)
  %switch = icmp ult i64 %val.off, 2
  br i1 %switch, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %sh_prom = trunc i64 %val to i32
  %shl = shl nuw nsw i32 1, %sh_prom
  %conv = trunc i32 %shl to i8
  %call = tail call i32 @mt7915_mcu_set_ser(ptr noundef %data, i8 noundef zeroext 2, i8 noundef zeroext %conv, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %conv1 = trunc i64 %val to i8
  %call2 = tail call i32 @mt7915_mcu_set_ser(ptr noundef %data, i8 noundef zeroext 3, i8 noundef zeroext %conv1, i8 noundef zeroext 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %sw.bb.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_set_ser(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_radar_trigger_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef null, ptr noundef nonnull @mt7915_radar_trigger, ptr noundef nonnull @.str.16) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_radar_trigger(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mt7915_mcu_rdd_cmd(ptr noundef %data, i32 noundef 3, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_rdd_cmd(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_sta_fixed_rate_set(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %phy3 = alloca %struct.sta_phy, align 1
  %buf = alloca [100 x i8], align 1
  %gi = alloca i8, align 1
  %he_ltf = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %vif = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 2, i32 0, i32 2
  %2 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vif, align 4
  %phy = getelementptr inbounds %struct.mt7915_vif, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 8
  %dev1 = getelementptr inbounds %struct.mt7915_phy, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %phy3) #9
  %8 = call ptr @memset(ptr %phy3, i32 0, i32 9)
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf) #9
  %9 = call ptr @memset(ptr %buf, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %gi) #9
  %10 = ptrtoint ptr %gi to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %gi, align 1, !annotation !371
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %he_ltf) #9
  %11 = ptrtoint ptr %he_ltf to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %he_ltf, align 1, !annotation !371
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %count)
  %cmp = icmp ugt i32 %count, 99
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.then.i.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i.i.i:                                    ; preds = %entry
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %count, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.156, i32 noundef 156) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %12 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %count, i32 -1226833920) #12, !srcloc !372
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !373

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %count) #9
  %13 = call i32 @llvm.read_register.i32(metadata !358) #9
  %and.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !374
  %and.i.i.i.i = and i32 %15, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !375
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !376
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %count) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #9, !srcloc !375
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !376
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %count, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %count, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6, label %if.then11.i.i, !prof !373

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %count, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %16 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end6:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool7.not = icmp eq i32 %count, 0
  br i1 %tobool7.not, label %if.end6.if.else_crit_edge, label %land.lhs.true

if.end6.if.else_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.end6
  %sub = add nsw i32 %count, -1
  %arrayidx = getelementptr [100 x i8], ptr %buf, i32 0, i32 %sub
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %18)
  %cmp8 = icmp eq i8 %18, 10
  br i1 %cmp8, label %land.lhs.true.if.end14_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end6.if.else_crit_edge
  %arrayidx13 = getelementptr [100 x i8], ptr %buf, i32 0, i32 %count
  br label %if.end14

if.end14:                                         ; preds = %if.else, %land.lhs.true.if.end14_crit_edge
  %arrayidx13.sink = phi ptr [ %arrayidx13, %if.else ], [ %arrayidx, %land.lhs.true.if.end14_crit_edge ]
  %19 = ptrtoint ptr %arrayidx13.sink to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx13.sink, align 1
  %bw = getelementptr inbounds %struct.sta_phy, ptr %phy3, i32 0, i32 4
  %nss = getelementptr inbounds %struct.sta_phy, ptr %phy3, i32 0, i32 7
  %mcs = getelementptr inbounds %struct.sta_phy, ptr %phy3, i32 0, i32 6
  %ldpc = getelementptr inbounds %struct.sta_phy, ptr %phy3, i32 0, i32 5
  %stbc = getelementptr inbounds %struct.sta_phy, ptr %phy3, i32 0, i32 2
  %call16 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.149, ptr noundef nonnull %phy3, ptr noundef %bw, ptr noundef %nss, ptr noundef %mcs, ptr noundef nonnull %gi, ptr noundef %ldpc, ptr noundef %stbc, ptr noundef nonnull %he_ltf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call16)
  %cmp17.not = icmp eq i32 %call16, 8
  br i1 %cmp17.not, label %if.end21, label %do.end

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %dev20 = getelementptr inbounds %struct.mt76_dev, ptr %7, i32 0, i32 13
  %20 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev20, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.150) #13
  br label %out

if.end21:                                         ; preds = %if.end14
  %22 = ptrtoint ptr %bw to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bw, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool24.not = icmp eq i8 %23, 0
  br i1 %tobool24.not, label %lor.rhs, label %if.end21.lor.end_crit_edge

if.end21.lor.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.rhs:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %ldpc to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ldpc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool27.not = icmp eq i8 %25, 0
  %phi.cast = select i1 %tobool27.not, i8 0, i8 7
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end21.lor.end_crit_edge
  %26 = phi i8 [ 7, %if.end21.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  %27 = ptrtoint ptr %ldpc to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %ldpc, align 1
  %28 = ptrtoint ptr %gi to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %gi, align 1
  %conv35 = zext i8 %29 to i32
  %he_cap = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 6
  %sgi = getelementptr inbounds %struct.sta_phy, ptr %phy3, i32 0, i32 3
  %30 = ptrtoint ptr %he_ltf to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %he_ltf, align 1
  %conv42 = zext i8 %31 to i32
  %he_ltf50 = getelementptr inbounds %struct.sta_phy, ptr %phy3, i32 0, i32 8
  %32 = ptrtoint ptr %sgi to i32
  call void @__asan_load1_noabort(i32 %32)
  %sgi.promoted = load i8, ptr %sgi, align 1
  %33 = ptrtoint ptr %he_ltf50 to i32
  call void @__asan_load1_noabort(i32 %33)
  %he_ltf50.promoted = load i8, ptr %he_ltf50, align 1
  %34 = ptrtoint ptr %he_cap to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %he_cap, align 4, !range !368
  %36 = zext i8 %35 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %lor.end
  %i.089 = phi i8 [ 0, %lor.end ], [ %inc, %for.body.for.body_crit_edge ]
  %conv418588 = phi i8 [ %sgi.promoted, %lor.end ], [ %conv41, %for.body.for.body_crit_edge ]
  %conv538687 = phi i8 [ %he_ltf50.promoted, %lor.end ], [ %conv53, %for.body.for.body_crit_edge ]
  %conv30 = zext i8 %i.089 to i32
  %shl = shl nuw nsw i32 %conv30, %36
  %shl39 = shl i32 %conv35, %shl
  %37 = trunc i32 %shl39 to i8
  %conv41 = or i8 %conv418588, %37
  %shl49 = shl i32 %conv42, %shl
  %38 = trunc i32 %shl49 to i8
  %conv53 = or i8 %conv538687, %38
  %inc = add i8 %i.089, 1
  %cmp33.not = icmp ugt i8 %inc, %23
  br i1 %cmp33.not, label %out.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

out.loopexit:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %sgi to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv41, ptr %sgi, align 1
  %40 = ptrtoint ptr %he_ltf50 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv53, ptr %he_ltf50, align 1
  br label %out

out:                                              ; preds = %out.loopexit, %do.end
  %field.0 = phi i32 [ 20, %do.end ], [ 3, %out.loopexit ]
  %41 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vif, align 4
  %add.ptr = getelementptr i8, ptr %42, i32 -848
  %call55 = call i32 @mt7915_mcu_set_fixed_rate_ctrl(ptr noundef %7, ptr noundef %add.ptr, ptr noundef %1, ptr noundef nonnull %phy3, i32 noundef %field.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  %count. = select i1 %tobool56.not, i32 %count, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %count., %out ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %he_ltf) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %gi) #9
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %phy3) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_set_fixed_rate_ctrl(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_queues_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mt7915_queues_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_queues_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void @mt7915_sta_hw_queue_read(ptr noundef %s, ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 175)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 175)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !324, !325, !327, !329, !330, !331, !333, !334, !336, !338, !340, !342, !344, !345, !346, !347, !348, !349, !351, !352, !354, !356}
!llvm.named.register.sp = !{!358}
!llvm.module.flags = !{!359, !360, !361, !362, !363, !364, !365, !366}
!llvm.ident = !{!367}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 750, i32 22}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 751, i32 22}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 753, i32 22}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 755, i32 22}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 757, i32 22}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 758, i32 22}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 759, i32 22}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 760, i32 22}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 762, i32 22}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 764, i32 22}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 766, i32 22}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 768, i32 45}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 770, i32 22}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 772, i32 22}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 774, i32 23}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 865, i32 22}
!32 = !{ptr @fops_muru_debug, !33, !"fops_muru_debug", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 105, i32 1}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @mt7915_muru_stats_fops, !36, !"mt7915_muru_stats_fops", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 301, i32 1}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 114, i32 3}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 114, i32 10}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 114, i32 18}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 114, i32 28}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 115, i32 3}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 115, i32 13}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 115, i32 24}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 115, i32 35}
!53 = distinct !{null, !54, !"dl_non_he_type", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 113, i32 28}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 118, i32 3}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 118, i32 12}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 118, i32 22}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 118, i32 32}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 118, i32 42}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 119, i32 3}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 119, i32 13}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 119, i32 23}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 119, i32 33}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 119, i32 45}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 120, i32 3}
!77 = distinct !{null, !78, !"dl_he_type", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 117, i32 28}
!79 = distinct !{null, !80, !"ul_he_type", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 122, i32 28}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 130, i32 18}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 141, i32 17}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 144, i32 20}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 147, i32 17}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 148, i32 19}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 155, i32 17}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 161, i32 19}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 170, i32 19}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 180, i32 19}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 183, i32 17}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 189, i32 19}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 204, i32 17}
!105 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 210, i32 19}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 223, i32 19}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 234, i32 19}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 240, i32 19}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 244, i32 17}
!115 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 245, i32 17}
!117 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 257, i32 17}
!119 = !{ptr @.str.55, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 263, i32 19}
!121 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 277, i32 19}
!123 = !{ptr @.str.57, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 288, i32 19}
!125 = !{ptr @.str.58, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 293, i32 19}
!127 = !{ptr @mt7915_hw_queues_fops, !128, !"mt7915_hw_queues_fops", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 650, i32 1}
!129 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 588, i32 5}
!131 = !{ptr @.str.60, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 589, i32 5}
!133 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 590, i32 5}
!135 = !{ptr @.str.62, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 591, i32 5}
!137 = !{ptr @.str.63, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 592, i32 5}
!139 = !{ptr @.str.64, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 593, i32 5}
!141 = !{ptr @.str.65, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 594, i32 5}
!143 = !{ptr @.str.66, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 595, i32 5}
!145 = !{ptr @.str.67, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 596, i32 5}
!147 = !{ptr @.str.68, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 597, i32 5}
!149 = !{ptr @.str.69, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 598, i32 5}
!151 = !{ptr @.str.70, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 599, i32 5}
!153 = !{ptr @mt7915_hw_queues_show.ple_queue_map, !154, !"ple_queue_map", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 587, i32 35}
!155 = !{ptr @.str.71, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 602, i32 5}
!157 = !{ptr @.str.72, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 603, i32 5}
!159 = !{ptr @.str.73, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 604, i32 5}
!161 = !{ptr @.str.74, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 605, i32 5}
!163 = !{ptr @.str.75, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 606, i32 5}
!165 = !{ptr @.str.76, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 607, i32 5}
!167 = !{ptr @.str.77, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 608, i32 5}
!169 = !{ptr @.str.78, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 609, i32 5}
!171 = !{ptr @.str.79, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 610, i32 5}
!173 = !{ptr @.str.80, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 611, i32 5}
!175 = !{ptr @.str.81, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 612, i32 5}
!177 = !{ptr @.str.82, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 613, i32 5}
!179 = !{ptr @.str.83, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 614, i32 5}
!181 = !{ptr @.str.84, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 615, i32 5}
!183 = !{ptr @.str.85, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 616, i32 5}
!185 = !{ptr @mt7915_hw_queues_show.pse_queue_map, !186, !"pse_queue_map", i1 false, i1 false}
!186 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 601, i32 35}
!187 = !{ptr @.str.86, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 624, i32 17}
!189 = !{ptr @.str.87, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 626, i32 6}
!191 = !{ptr @.str.88, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 632, i32 19}
!193 = !{ptr @.str.89, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 635, i32 17}
!195 = !{ptr @.str.90, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 643, i32 17}
!197 = !{ptr @.str.91, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 548, i32 17}
!199 = !{ptr @.str.92, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 549, i32 17}
!201 = !{ptr @.str.93, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 576, i32 17}
!203 = !{ptr @mt7915_xmit_queues_fops, !204, !"mt7915_xmit_queues_fops", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 683, i32 1}
!205 = !{ptr @.str.94, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 661, i32 34}
!207 = !{ptr @.str.95, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 662, i32 35}
!209 = !{ptr @.str.96, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 663, i32 35}
!211 = !{ptr @.str.97, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 664, i32 36}
!213 = !{ptr @.str.98, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 668, i32 17}
!215 = !{ptr @.str.99, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 675, i32 20}
!217 = !{ptr @mt7915_tx_stats_fops, !218, !"mt7915_tx_stats_fops", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 521, i32 1}
!219 = !{ptr @.str.100, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 505, i32 17}
!221 = !{ptr @.str.101, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 507, i32 20}
!223 = !{ptr @.str.102, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 510, i32 21}
!225 = !{ptr @.str.103, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 513, i32 19}
!227 = !{ptr @.str.104, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 427, i32 19}
!229 = !{ptr @.str.105, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 429, i32 19}
!231 = !{ptr @.str.106, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 431, i32 20}
!233 = !{ptr @.str.107, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 434, i32 17}
!235 = !{ptr @.str.108, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 437, i32 20}
!237 = !{ptr @.str.109, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 440, i32 19}
!239 = !{ptr @.str.110, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 447, i32 3}
!241 = !{ptr @.str.111, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 447, i32 11}
!243 = !{ptr @.str.112, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 447, i32 19}
!245 = !{ptr @.str.113, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 447, i32 27}
!247 = !{ptr @mt7915_txbf_stat_read_phy.bw, !248, !"bw", i1 false, i1 false}
!248 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 446, i32 28}
!249 = !{ptr @.str.114, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 452, i32 14}
!251 = !{ptr @.str.115, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 454, i32 16}
!253 = !{ptr @.str.116, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 459, i32 14}
!255 = !{ptr @.str.117, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 461, i32 16}
!257 = !{ptr @.str.118, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 467, i32 16}
!259 = !{ptr @.str.119, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 473, i32 16}
!261 = !{ptr @.str.120, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 475, i32 16}
!263 = !{ptr @.str.121, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 479, i32 16}
!265 = !{ptr @.str.122, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 481, i32 16}
!267 = !{ptr @.str.123, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 482, i32 16}
!269 = !{ptr @.str.124, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 484, i32 16}
!271 = !{ptr @fops_fw_debug_wm, !272, !"fops_fw_debug_wm", i1 false, i1 false}
!272 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 347, i32 1}
!273 = !{ptr @fops_fw_debug_wa, !274, !"fops_fw_debug_wa", i1 false, i1 false}
!274 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 376, i32 1}
!275 = !{ptr @mt7915_fw_util_wm_fops, !276, !"mt7915_fw_util_wm_fops", i1 false, i1 false}
!276 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 396, i32 1}
!277 = !{ptr @.str.125, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 385, i32 20}
!279 = !{ptr @.str.126, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 388, i32 20}
!281 = !{ptr @mt7915_fw_util_wa_fops, !282, !"mt7915_fw_util_wa_fops", i1 false, i1 false}
!282 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 410, i32 1}
!283 = !{ptr @fops_implicit_txbf, !284, !"fops_implicit_txbf", i1 false, i1 false}
!284 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 40, i32 1}
!285 = !{ptr @mt7915_rate_txpower_fops, !286, !"mt7915_rate_txpower_fops", i1 false, i1 false}
!286 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 713, i32 1}
!287 = !{ptr @.str.127, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 689, i32 18}
!289 = !{ptr @.str.128, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 689, i32 26}
!291 = !{ptr @.str.129, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 690, i32 3}
!293 = !{ptr @.str.130, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 690, i32 12}
!295 = !{ptr @.str.131, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 690, i32 21}
!297 = !{ptr @.str.132, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 690, i32 30}
!299 = !{ptr @.str.133, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 691, i32 3}
!301 = !{ptr @.str.134, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 691, i32 11}
!303 = !{ptr @.str.135, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 691, i32 19}
!305 = !{ptr @.str.136, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 691, i32 28}
!307 = !{ptr @.str.137, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 692, i32 3}
!309 = !{ptr @.str.138, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 692, i32 17}
!311 = !{ptr @.str.139, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 692, i32 31}
!313 = !{ptr @mt7915_rate_txpower_show.sku_group_name, !314, !"sku_group_name", i1 false, i1 false}
!314 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 688, i32 28}
!315 = !{ptr @.str.140, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 698, i32 19}
!317 = !{ptr @.str.141, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 723, i32 14}
!319 = !{ptr @.str.142, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 724, i32 14}
!321 = distinct !{null, !322, !"__warned", i1 false, i1 false}
!322 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 725, i32 2}
!323 = !{ptr @.str.143, !322, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @.str.144, !322, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @.str.145, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 727, i32 4}
!327 = distinct !{null, !328, !"__warned", i1 false, i1 false}
!328 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!329 = !{ptr @.str.146, !328, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @.str.147, !328, !"<string literal>", i1 false, i1 false}
!331 = distinct !{null, !332, !"__warned", i1 false, i1 false}
!332 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!333 = !{ptr @.str.148, !332, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @fops_ser_trigger, !335, !"fops_ser_trigger", i1 false, i1 false}
!335 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 70, i32 1}
!336 = !{ptr @fops_radar_trigger, !337, !"fops_radar_trigger", i1 false, i1 false}
!337 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 81, i32 1}
!338 = !{ptr @fops_fixed_rate, !339, !"fops_fixed_rate", i1 false, i1 false}
!339 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 843, i32 37}
!340 = !{ptr @.str.149, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 818, i32 18}
!342 = !{ptr @.str.150, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 821, i32 3}
!344 = !{ptr @.str.151, !343, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @.str.152, !343, !"<string literal>", i1 false, i1 false}
!346 = !{ptr @.str.153, !343, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @mt7915_sta_fixed_rate_set._entry, !343, !"_entry", i1 false, i1 false}
!348 = !{ptr @mt7915_sta_fixed_rate_set._entry_ptr, !343, !"_entry_ptr", i1 false, i1 false}
!349 = distinct !{null, !350, !"__already_done", i1 false, i1 false}
!350 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!351 = distinct !{null, !350, !"<string literal>", i1 false, i1 false}
!352 = distinct !{null, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!354 = !{ptr @.str.156, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!356 = !{ptr @mt7915_queues_fops, !357, !"mt7915_queues_fops", i1 false, i1 false}
!357 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c", i32 860, i32 1}
!358 = !{!"sp"}
!359 = !{i32 1, !"wchar_size", i32 2}
!360 = !{i32 1, !"min_enum_size", i32 4}
!361 = !{i32 8, !"branch-target-enforcement", i32 0}
!362 = !{i32 8, !"sign-return-address", i32 0}
!363 = !{i32 8, !"sign-return-address-all", i32 0}
!364 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!365 = !{i32 7, !"uwtable", i32 1}
!366 = !{i32 7, !"frame-pointer", i32 2}
!367 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!368 = !{i8 0, i8 2}
!369 = !{i64 2149325467}
!370 = !{i64 2149325733}
!371 = !{!"auto-init"}
!372 = !{i64 2153191027, i64 2153191052}
!373 = !{!"branch_weights", i32 2000, i32 1}
!374 = !{i64 5686582}
!375 = !{i64 5686779}
!376 = !{i64 2153172012}
