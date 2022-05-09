; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt7921/pci_mac.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt7921/pci_mac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mt76_tx_info = type { [32 x %struct.mt76_queue_buf], ptr, i32, i32 }
%struct.mt76_queue_buf = type { i32, i16, i8 }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%union.anon.43 = type { ptr }
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32, ptr }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.49, i32, i32, i32, i16, i16, %union.anon.51, i32, %union.anon.52, %union.anon.53, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.49 = type { i32 }
%union.anon.51 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.142, ptr, %union.anon.143, [20 x i8] }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.134 = type { ptr, ptr, i16 }
%struct.mt76_rx_status = type <{ %union.anon.135, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.135 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.mt76_wcid = type { [16 x ptr], %struct.atomic_t, i32, %struct.ewma_signal, i32, %struct.rate_info, i16, i8, i8, i8, i8, [17 x [6 x i8]], i16, i32, i8, %struct.list_head, %struct.idr }
%struct.ewma_signal = type { i32 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.139, i32 }
%union.anon.139 = type { ptr }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.mt76_rate_power = type { %union.anon.140 }
%union.anon.140 = type { %struct.anon.141 }
%struct.anon.141 = type { [4 x i8], [8 x i8], [10 x i8], [16 x i8], [10 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.142 = type { ptr, i32 }
%union.anon.143 = type { %struct.mt76_usb }
%struct.mt76_usb = type { %struct.mutex, ptr, i16, %struct.mt76_worker, %struct.mt76_worker, %struct.work_struct, [6 x i8], [2 x i8], i8, %struct.mt76u_mcu }
%struct.mt76u_mcu = type { ptr, ptr, i32, i32, i8 }
%struct.mt76_driver_ops = type { i32, i32, i16, i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mt76_txwi_cache = type { %struct.list_head, i32, ptr }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.mt7921_txp_ptr = type { i32, i16, i16, i32 }
%struct.mt76_queue_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mt7921_tx_free = type { i16, i16, i8, [3 x i8], [0 x i32] }
%struct.mt7921_dev = type { %union.anon.145, ptr, %struct.mt7921_phy, %struct.tasklet_struct, %struct.work_struct, i8, %struct.list_head, %struct.spinlock, i8, %struct.mt76_connac_pm, %struct.mt76_connac_coredump, ptr, [32 x i8] }
%union.anon.145 = type { %struct.mt76_dev }
%struct.mt7921_phy = type { ptr, ptr, [6 x [13 x %struct.ieee80211_sband_iftype_data]], i32, i64, i16, i16, i8, i32, i32, %struct.mib_stats, i8, %struct.sk_buff_head, %struct.delayed_work }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.127 }>
%struct.anon.127 = type { ptr, i32 }
%struct.mib_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32 }
%struct.mt76_connac_pm = type { i8, i8, i8, %struct.spinlock, [4 x %struct.anon.146], %struct.work_struct, %struct.wait_queue_head, %struct.anon.147, %struct.mutex, %struct.delayed_work, i32, i32, %struct.anon.148 }
%struct.anon.146 = type { ptr, ptr }
%struct.anon.147 = type { %struct.spinlock, i32 }
%struct.anon.148 = type { i32, i32, i32, i32, i32 }
%struct.mt76_connac_coredump = type { %struct.sk_buff_head, %struct.delayed_work, i32 }
%struct.mt7921_sta = type { %struct.mt76_wcid, ptr, %struct.list_head, [8 x i32], i32, i32, %struct.mt76_sta_stats, %struct.mt7921_sta_key_conf }
%struct.mt76_sta_stats = type { [12 x i64], [4 x i64], [4 x i64], [16 x i64] }
%struct.mt7921_sta_key_conf = type { i8, [16 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mt76_queue_entry = type { %union.anon.131, %union.anon.132, [2 x i32], [2 x i16], i16, i8 }
%union.anon.131 = type { ptr }
%union.anon.132 = type { ptr }
%struct.mt7921_hw_txp = type { [4 x i16], [2 x %struct.mt7921_txp_ptr] }
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mt7921_mac_tx_free.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/mediatek/mt76/mt7921/pci_mac.c\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private constant [55 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7921/pci_mac.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 185, i32 11 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 695, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 723, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 378, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @xa_init_flags.__key, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7921e_tx_prepare_skb(ptr noundef %mdev, ptr noundef %txwi_ptr, i32 noundef %qid, ptr noundef %wcid, ptr noundef %sta, ptr nocapture noundef %tx_info) local_unnamed_addr #0 align 64 {
entry:
  %t = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %skb = getelementptr inbounds %struct.mt76_tx_info, ptr %tx_info, i32 0, i32 1
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %hw_key = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  %2 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_key, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t) #6
  %len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %5)
  %cmp = icmp ult i32 %5, 15
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !24

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %wcid, null
  %global_wcid = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 36
  %spec.select = select i1 %tobool3.not, ptr %global_wcid, ptr %wcid
  %drv = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 11
  %6 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drv, align 16
  %txwi_size = getelementptr inbounds %struct.mt76_driver_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %txwi_size to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %txwi_size, align 4
  %conv = zext i16 %9 to i32
  %add.ptr6 = getelementptr i8, ptr %txwi_ptr, i32 %conv
  %10 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr6, ptr %t, align 4
  %skb8 = getelementptr inbounds %struct.mt76_txwi_cache, ptr %add.ptr6, i32 0, i32 2
  %11 = ptrtoint ptr %skb8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %skb8, align 4
  %call9 = call i32 @mt76_token_consume(ptr noundef %mdev, ptr noundef nonnull %t) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %tobool14.not = icmp eq ptr %sta, null
  br i1 %tobool14.not, label %if.end13.if.end21_crit_edge, label %if.then15

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then15:                                        ; preds = %if.end13
  %last_txs = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 3, i32 4, i32 3, i32 2
  %12 = ptrtoint ptr %last_txs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %last_txs, align 8
  %add = add i32 %13, 25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp16 = icmp slt i32 %sub, 0
  br i1 %cmp16, label %if.then18, label %if.then15.if.end21_crit_edge

if.then15.if.end21_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cb.i, align 8
  %or = or i32 %16, 1
  store i32 %or, ptr %cb.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %18 = ptrtoint ptr %last_txs to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %last_txs, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.then15.if.end21_crit_edge, %if.end13.if.end21_crit_edge
  %19 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %skb, align 4
  %call23 = call i32 @mt76_tx_status_skb_add(ptr noundef %mdev, ptr noundef %spec.select, ptr noundef %20) #6
  %21 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %skb, align 4
  call void @mt7921_mac_write_txwi(ptr noundef %mdev, ptr noundef %txwi_ptr, ptr noundef %22, ptr noundef %spec.select, ptr noundef %3, i32 noundef %call23, i1 noundef zeroext false) #6
  %add.ptr25 = getelementptr i8, ptr %txwi_ptr, i32 32
  %23 = call ptr @memset(ptr %add.ptr25, i32 0, i32 32)
  %nbuf2.i = getelementptr inbounds %struct.mt76_tx_info, ptr %tx_info, i32 0, i32 2
  %24 = ptrtoint ptr %nbuf2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nbuf2.i, align 4
  %sub.i = add i32 %25, -1
  %len.i = getelementptr inbounds %struct.mt76_queue_buf, ptr %tx_info, i32 0, i32 1
  %26 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 64, ptr %len.i, align 4
  store i32 1, ptr %nbuf2.i, align 4
  %27 = trunc i32 %call9 to i16
  %conv.i = or i16 %27, -32768
  %28 = call i16 @llvm.bswap.i16(i16 %conv.i) #6
  %29 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %add.ptr25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp1.i, label %for.body.lr.ph.i, label %if.end21.mt7921_write_hw_txp.exit_crit_edge

if.end21.mt7921_write_hw_txp.exit_crit_edge:      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt7921_write_hw_txp.exit

for.body.lr.ph.i:                                 ; preds = %if.end21
  %ptr1.i = getelementptr i8, ptr %txwi_ptr, i32 40
  %sub17.i = add i32 %25, -2
  br label %for.body.i

for.body.i:                                       ; preds = %if.end25.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.03.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %if.end25.i.for.body.i_crit_edge ]
  %ptr.02.i = phi ptr [ %ptr1.i, %for.body.lr.ph.i ], [ %ptr.1.i, %if.end25.i.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %i.03.i, 1
  %arrayidx9.i = getelementptr [32 x %struct.mt76_queue_buf], ptr %tx_info, i32 0, i32 %add.i
  %len10.i = getelementptr [32 x %struct.mt76_queue_buf], ptr %tx_info, i32 0, i32 %add.i, i32 1
  %30 = ptrtoint ptr %len10.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %len10.i, align 4
  %32 = and i16 %31, 4095
  %33 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.03.i, i32 %sub17.i)
  %cmp18.i = icmp eq i32 %i.03.i, %sub17.i
  %35 = or i16 %32, -32768
  %spec.select.i = select i1 %cmp18.i, i16 %35, i16 %32
  %and23.i = and i32 %i.03.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool.not.i = icmp eq i32 %and23.i, 0
  %36 = call i32 @llvm.bswap.i32(i32 %34) #6
  br i1 %tobool.not.i, label %if.else.i, label %if.then24.i

if.then24.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %buf1.i = getelementptr inbounds %struct.mt7921_txp_ptr, ptr %ptr.02.i, i32 0, i32 3
  %37 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %buf1.i, align 4
  %38 = call i16 @llvm.bswap.i16(i16 %spec.select.i) #6
  %len1.i = getelementptr inbounds %struct.mt7921_txp_ptr, ptr %ptr.02.i, i32 0, i32 2
  %39 = ptrtoint ptr %len1.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %len1.i, align 2
  %incdec.ptr.i = getelementptr %struct.mt7921_txp_ptr, ptr %ptr.02.i, i32 1
  br label %if.end25.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %ptr.02.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %36, ptr %ptr.02.i, align 4
  %41 = call i16 @llvm.bswap.i16(i16 %spec.select.i) #6
  %len0.i = getelementptr inbounds %struct.mt7921_txp_ptr, ptr %ptr.02.i, i32 0, i32 1
  %42 = ptrtoint ptr %len0.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %len0.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else.i, %if.then24.i
  %ptr.1.i = phi ptr [ %incdec.ptr.i, %if.then24.i ], [ %ptr.02.i, %if.else.i ]
  %exitcond.not.i = icmp eq i32 %add.i, %sub.i
  br i1 %exitcond.not.i, label %if.end25.i.mt7921_write_hw_txp.exit_crit_edge, label %if.end25.i.for.body.i_crit_edge

if.end25.i.for.body.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end25.i.mt7921_write_hw_txp.exit_crit_edge:    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt7921_write_hw_txp.exit

mt7921_write_hw_txp.exit:                         ; preds = %if.end25.i.mt7921_write_hw_txp.exit_crit_edge, %if.end21.mt7921_write_hw_txp.exit_crit_edge
  %43 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 -1 to ptr), ptr %skb, align 4
  br label %cleanup

cleanup:                                          ; preds = %mt7921_write_hw_txp.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mt7921_write_hw_txp.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call9, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_token_consume(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_tx_status_skb_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7921_mac_write_txwi(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7921e_queue_rx_skb(ptr noundef %mdev, i32 noundef %q, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %free_list.i = alloca %struct.list_head, align 4
  %wake.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = and i32 %3, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %4)
  %cond = icmp eq i32 %4, 48
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %free_list.i) #6
  %5 = getelementptr inbounds %struct.list_head, ptr %free_list.i, i32 0, i32 1
  %6 = ptrtoint ptr %free_list.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %free_list.i, ptr %free_list.i, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %free_list.i, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wake.i) #6
  %8 = ptrtoint ptr %wake.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %wake.i, align 1
  %queue_ops.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 24
  %9 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %queue_ops.i, align 4
  %tx_cleanup.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %tx_cleanup.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_cleanup.i, align 4
  %arrayidx.i = getelementptr %struct.mt76_phy, ptr %mdev, i32 0, i32 4, i32 4
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 16
  call void %12(ptr noundef %mdev, ptr noundef %14, i1 noundef zeroext false) #6
  %15 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %queue_ops.i, align 4
  %tx_cleanup2.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %tx_cleanup2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx_cleanup2.i, align 4
  %arrayidx4.i = getelementptr %struct.mt76_phy, ptr %mdev, i32 0, i32 4, i32 2
  %19 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx4.i, align 8
  call void %18(ptr noundef %mdev, ptr noundef %20, i1 noundef zeroext false) #6
  %ctrl.i = getelementptr inbounds %struct.mt7921_tx_free, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ctrl.i, align 2
  %23 = lshr i16 %22, 8
  %conv18.i = trunc i16 %23 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv18.i)
  %cmp192.not.i = icmp eq i8 %conv18.i, 0
  br i1 %cmp192.not.i, label %sw.bb.for.end.i_crit_edge, label %for.body.lr.ph.i

sw.bb.for.end.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %sw.bb
  %sta_poll_lock.i = getelementptr inbounds %struct.mt7921_dev, ptr %mdev, i32 0, i32 7
  %sta_poll_list.i = getelementptr inbounds %struct.mt7921_dev, ptr %mdev, i32 0, i32 6
  %prev.i.i = getelementptr inbounds %struct.mt7921_dev, ptr %mdev, i32 0, i32 6, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup117.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %cleanup117.i.for.body.i_crit_edge ]
  %sta.0195.i = phi ptr [ null, %for.body.lr.ph.i ], [ %sta.1.i, %cleanup117.i.for.body.i_crit_edge ]
  %count.0193.i = phi i8 [ %conv18.i, %for.body.lr.ph.i ], [ %count.1.i, %cleanup117.i.for.body.i_crit_edge ]
  %arrayidx23.i = getelementptr %struct.mt7921_tx_free, ptr %1, i32 0, i32 4, i32 %indvars.iv.i
  %24 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx23.i, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %tobool.not.i = icmp sgt i32 %26, -1
  br i1 %tobool.not.i, label %do.end89.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  %inc.i = add i8 %count.0193.i, 1
  %and41.i = lshr i32 %26, 14
  %conv43.i = and i32 %and41.i, 1023
  %arrayidx50.i = getelementptr %struct.mt76_dev, ptr %mdev, i32 0, i32 37, i32 %conv43.i
  %27 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %arrayidx50.i, align 4
  %call.i = call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool52.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool52.not.i, label %land.lhs.true.i, label %if.then.i.do.end59.i_crit_edge

if.then.i.do.end59.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end59.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %call53.i = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %land.lhs.true.i.do.end59.i_crit_edge, label %land.lhs.true55.i

land.lhs.true.i.do.end59.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end59.i

land.lhs.true55.i:                                ; preds = %land.lhs.true.i
  %.b173.i = load i1, ptr @mt7921_mac_tx_free.__warned, align 1
  br i1 %.b173.i, label %land.lhs.true55.i.do.end59.i_crit_edge, label %if.then57.i

land.lhs.true55.i.do.end59.i_crit_edge:           ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end59.i

if.then57.i:                                      ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @mt7921_mac_tx_free.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 185, ptr noundef nonnull @.str.1) #6
  br label %do.end59.i

do.end59.i:                                       ; preds = %if.then57.i, %land.lhs.true55.i.do.end59.i_crit_edge, %land.lhs.true.i.do.end59.i_crit_edge, %if.then.i.do.end59.i_crit_edge
  %tobool.not.i174.i = icmp eq ptr %28, null
  br i1 %tobool.not.i174.i, label %do.end59.i.cleanup117.i_crit_edge, label %lor.lhs.false.i.i

do.end59.i.cleanup117.i_crit_edge:                ; preds = %do.end59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup117.i

lor.lhs.false.i.i:                                ; preds = %do.end59.i
  %sta.i.i = getelementptr inbounds %struct.mt76_wcid, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %sta.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i.i = load i8, ptr %sta.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool1.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 -268
  %tobool62.not.i = icmp eq ptr %add.ptr.i.i, null
  %or.cond.i = select i1 %tobool1.not.i.i, i1 true, i1 %tobool62.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i.i.cleanup117.i_crit_edge, label %if.end64.i

lor.lhs.false.i.i.cleanup117.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup117.i

if.end64.i:                                       ; preds = %lor.lhs.false.i.i
  call void @_raw_spin_lock_bh(ptr noundef %sta_poll_lock.i) #6
  %poll_list.i = getelementptr inbounds %struct.mt7921_sta, ptr %28, i32 0, i32 2
  %30 = ptrtoint ptr %poll_list.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %poll_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %31, %poll_list.i
  br i1 %cmp.i.not.i, label %if.then68.i, label %if.end64.i.if.end70.i_crit_edge

if.end64.i.if.end70.i_crit_edge:                  ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70.i

if.then68.i:                                      ; preds = %if.end64.i
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %poll_list.i, ptr noundef %33, ptr noundef %sta_poll_list.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then68.i.if.end70.i_crit_edge

if.then68.i.if.end70.i_crit_edge:                 ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70.i

if.end.i.i.i:                                     ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %poll_list.i, ptr %prev.i.i, align 4
  %35 = ptrtoint ptr %poll_list.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %sta_poll_list.i, ptr %poll_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.mt7921_sta, ptr %28, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %poll_list.i, ptr %33, align 4
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.end.i.i.i, %if.then68.i.if.end70.i_crit_edge, %if.end64.i.if.end70.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %sta_poll_lock.i) #6
  br label %cleanup117.i

do.end89.i:                                       ; preds = %for.body.i
  %and91.i = lshr i32 %26, 16
  %call112.i = call ptr @mt76_token_release(ptr noundef %mdev, i32 noundef %and91.i, ptr noundef nonnull %wake.i) #6
  %tobool113.not.i = icmp eq ptr %call112.i, null
  br i1 %tobool113.not.i, label %do.end89.i.cleanup117.i_crit_edge, label %if.end115.i

do.end89.i.cleanup117.i_crit_edge:                ; preds = %do.end89.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup117.i

if.end115.i:                                      ; preds = %do.end89.i
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @mt7921_txwi_free(ptr noundef %mdev, ptr noundef nonnull %call112.i, ptr noundef %sta.0195.i, ptr noundef nonnull %free_list.i) #6
  br label %cleanup117.i

cleanup117.i:                                     ; preds = %if.end115.i, %do.end89.i.cleanup117.i_crit_edge, %if.end70.i, %lor.lhs.false.i.i.cleanup117.i_crit_edge, %do.end59.i.cleanup117.i_crit_edge
  %count.1.i = phi i8 [ %count.0193.i, %if.end115.i ], [ %inc.i, %if.end70.i ], [ %count.0193.i, %do.end89.i.cleanup117.i_crit_edge ], [ %inc.i, %do.end59.i.cleanup117.i_crit_edge ], [ %inc.i, %lor.lhs.false.i.i.cleanup117.i_crit_edge ]
  %sta.1.i = phi ptr [ %sta.0195.i, %if.end115.i ], [ %add.ptr.i.i, %if.end70.i ], [ %sta.0195.i, %do.end89.i.cleanup117.i_crit_edge ], [ null, %do.end59.i.cleanup117.i_crit_edge ], [ null, %lor.lhs.false.i.i.cleanup117.i_crit_edge ]
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %38 = zext i8 %count.1.i to i32
  %cmp.i = icmp ult i32 %indvars.iv.next.i, %38
  br i1 %cmp.i, label %cleanup117.i.for.body.i_crit_edge, label %cleanup117.i.for.end.i_crit_edge

cleanup117.i.for.end.i_crit_edge:                 ; preds = %cleanup117.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

cleanup117.i.for.body.i_crit_edge:                ; preds = %cleanup117.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %cleanup117.i.for.end.i_crit_edge, %sw.bb.for.end.i_crit_edge
  %39 = ptrtoint ptr %wake.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %wake.i, align 1, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool121.not.i = icmp eq i8 %40, 0
  br i1 %tobool121.not.i, label %for.end.i.if.end123.i_crit_edge, label %if.then122.i

for.end.i.if.end123.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123.i

if.then122.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %token_lock.i.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 28
  call void @_raw_spin_lock_bh(ptr noundef %token_lock.i.i) #6
  call void @__mt76_set_tx_blocked(ptr noundef %mdev, i1 noundef zeroext false) #6
  call void @_raw_spin_unlock_bh(ptr noundef %token_lock.i.i) #6
  br label %if.end123.i

if.end123.i:                                      ; preds = %if.then122.i, %for.end.i.if.end123.i_crit_edge
  call void @napi_consume_skb(ptr noundef %skb, i32 noundef 1) #6
  %41 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %free_list.i, align 4
  %cmp133.not196.i = icmp eq ptr %42, %free_list.i
  br i1 %cmp133.not196.i, label %if.end123.i.for.end141.i_crit_edge, label %if.end123.i.for.body135.i_crit_edge

if.end123.i.for.body135.i_crit_edge:              ; preds = %if.end123.i
  br label %for.body135.i

if.end123.i.for.end141.i_crit_edge:               ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end141.i

for.body135.i:                                    ; preds = %skb_list_del_init.exit.i.for.body135.i_crit_edge, %if.end123.i.for.body135.i_crit_edge
  %skb.addr.0197.i = phi ptr [ %tmp.0.i, %skb_list_del_init.exit.i.for.body135.i_crit_edge ], [ %42, %if.end123.i.for.body135.i_crit_edge ]
  %43 = ptrtoint ptr %skb.addr.0197.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %tmp.0.i = load ptr, ptr %skb.addr.0197.i, align 8
  %call.i.i175.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %skb.addr.0197.i) #6
  br i1 %call.i.i175.i, label %if.end.i.i176.i, label %for.body135.i.skb_list_del_init.exit.i_crit_edge

for.body135.i.skb_list_del_init.exit.i_crit_edge: ; preds = %for.body135.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_list_del_init.exit.i

if.end.i.i176.i:                                  ; preds = %for.body135.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %skb.addr.0197.i, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i.i, align 4
  %46 = ptrtoint ptr %skb.addr.0197.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %skb.addr.0197.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev1.i.i.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %47, ptr %45, align 4
  br label %skb_list_del_init.exit.i

skb_list_del_init.exit.i:                         ; preds = %if.end.i.i176.i, %for.body135.i.skb_list_del_init.exit.i_crit_edge
  %50 = ptrtoint ptr %skb.addr.0197.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %skb.addr.0197.i, align 8
  call void @napi_consume_skb(ptr noundef %skb.addr.0197.i, i32 noundef 1) #6
  %cmp133.not.i = icmp eq ptr %tmp.0.i, %free_list.i
  br i1 %cmp133.not.i, label %skb_list_del_init.exit.i.for.end141.i_crit_edge, label %skb_list_del_init.exit.i.for.body135.i_crit_edge

skb_list_del_init.exit.i.for.body135.i_crit_edge: ; preds = %skb_list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body135.i

skb_list_del_init.exit.i.for.end141.i_crit_edge:  ; preds = %skb_list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end141.i

for.end141.i:                                     ; preds = %skb_list_del_init.exit.i.for.end141.i_crit_edge, %if.end123.i.for.end141.i_crit_edge
  %51 = call i32 @llvm.read_register.i32(metadata !14) #6
  %and.i.i.i.i.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %54, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !26
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i.i = call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i.i, label %for.end141.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

for.end141.i.rcu_read_lock.exit.i_crit_edge:      ; preds = %for.end141.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %for.end141.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #6
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %for.end141.i.rcu_read_lock.exit.i_crit_edge
  call void @mt7921_mac_sta_poll(ptr noundef %mdev) #6
  %call.i177.i = call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i177.i, label %rcu_read_lock.exit.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i180.i

rcu_read_lock.exit.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit.i

land.lhs.true.i180.i:                             ; preds = %rcu_read_lock.exit.i
  %call1.i178.i = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i178.i)
  %tobool.not.i179.i = icmp eq i32 %call1.i178.i, 0
  br i1 %tobool.not.i179.i, label %land.lhs.true.i180.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i182.i

land.lhs.true.i180.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i180.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i182.i:                            ; preds = %land.lhs.true.i180.i
  %.b4.i181.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i181.i, label %land.lhs.true2.i182.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i183.i

land.lhs.true2.i182.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i182.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit.i

if.then.i183.i:                                   ; preds = %land.lhs.true2.i182.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #6
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i183.i, %land.lhs.true2.i182.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i180.i.rcu_read_unlock.exit.i_crit_edge, %rcu_read_lock.exit.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !27
  %55 = call i32 @llvm.read_register.i32(metadata !14) #6
  %and.i.i.i.i.i184.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i.i.i184.i to ptr
  %preempt_count.i.i.i.i185.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i.i.i185.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i.i.i185.i, align 4
  %sub.i.i.i.i = add i32 %58, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i185.i, align 4
  call void @rcu_read_unlock_strict() #6
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  %tx_worker.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 26
  %59 = ptrtoint ptr %tx_worker.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tx_worker.i, align 4
  %tobool.not.i186.i = icmp eq ptr %60, null
  br i1 %tobool.not.i186.i, label %rcu_read_unlock.exit.i.mt7921_mac_tx_free.exit_crit_edge, label %if.end.i.i

rcu_read_unlock.exit.i.mt7921_mac_tx_free.exit_crit_edge: ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt7921_mac_tx_free.exit

if.end.i.i:                                       ; preds = %rcu_read_unlock.exit.i
  %state.i.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 26, i32 2
  %call.i187.i = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i187.i)
  %tobool1.not.i188.i = icmp eq i32 %call.i187.i, 0
  br i1 %tobool1.not.i188.i, label %land.lhs.true.i189.i, label %if.end.i.i.mt7921_mac_tx_free.exit_crit_edge

if.end.i.i.mt7921_mac_tx_free.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt7921_mac_tx_free.exit

land.lhs.true.i189.i:                             ; preds = %if.end.i.i
  %61 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %state.i.i, align 4
  %63 = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool4.not.i.i = icmp eq i32 %63, 0
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %land.lhs.true.i189.i.mt7921_mac_tx_free.exit_crit_edge

land.lhs.true.i189.i.mt7921_mac_tx_free.exit_crit_edge: ; preds = %land.lhs.true.i189.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt7921_mac_tx_free.exit

if.then5.i.i:                                     ; preds = %land.lhs.true.i189.i
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %tx_worker.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tx_worker.i, align 4
  %call7.i.i = call i32 @wake_up_process(ptr noundef %65) #6
  br label %mt7921_mac_tx_free.exit

mt7921_mac_tx_free.exit:                          ; preds = %if.then5.i.i, %land.lhs.true.i189.i.mt7921_mac_tx_free.exit_crit_edge, %if.end.i.i.mt7921_mac_tx_free.exit_crit_edge, %rcu_read_unlock.exit.i.mt7921_mac_tx_free.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wake.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %free_list.i) #6
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mt7921_queue_rx_skb(ptr noundef %mdev, i32 noundef %q, ptr noundef %skb) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %mt7921_mac_tx_free.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7921_queue_rx_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7921e_tx_complete_skb(ptr noundef %mdev, ptr nocapture noundef %e) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.mt76_queue_entry, ptr %e, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not = icmp eq ptr %2, null
  %3 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %e, align 4
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__dev_kfree_skb_any(ptr noundef %4, i32 noundef 1) #6
  br label %if.end9

if.end:                                           ; preds = %entry
  %cmp = icmp eq ptr %4, inttoptr (i32 -1 to ptr)
  br i1 %cmp, label %mt7921_txwi_to_txp.exit, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

mt7921_txwi_to_txp.exit:                          ; preds = %if.end
  %drv.i.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 11
  %5 = ptrtoint ptr %drv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drv.i.i, align 16
  %txwi_size.i.i = getelementptr inbounds %struct.mt76_driver_ops, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %txwi_size.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %txwi_size.i.i, align 4
  %conv.i.i = zext i16 %8 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %idx.neg.i.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 32
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i, align 4
  %11 = and i16 %10, -129
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %conv3 = zext i16 %12 to i32
  %token_lock.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 28
  tail call void @_raw_spin_lock_bh(ptr noundef %token_lock.i) #6
  %token1.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 29
  %call.i = tail call ptr @idr_remove(ptr noundef %token1.i, i32 noundef %conv3) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %token_lock.i) #6
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %mt7921_txwi_to_txp.exit.cond.end_crit_edge, label %cond.true

mt7921_txwi_to_txp.exit.cond.end_crit_edge:       ; preds = %mt7921_txwi_to_txp.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %mt7921_txwi_to_txp.exit
  call void @__sanitizer_cov_trace_pc() #8
  %skb = getelementptr inbounds %struct.mt76_txwi_cache, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skb, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %mt7921_txwi_to_txp.exit.cond.end_crit_edge
  %cond = phi ptr [ %14, %cond.true ], [ null, %mt7921_txwi_to_txp.exit.cond.end_crit_edge ]
  %15 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %cond, ptr %e, align 4
  br label %if.end6

if.end6:                                          ; preds = %cond.end, %if.end.if.end6_crit_edge
  %16 = phi ptr [ %cond, %cond.end ], [ %4, %if.end.if.end6_crit_edge ]
  %tobool7.not = icmp eq ptr %16, null
  br i1 %tobool7.not, label %if.end6.if.end9_crit_edge, label %if.then8

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %wcid = getelementptr inbounds %struct.mt76_queue_entry, ptr %e, i32 0, i32 4
  %17 = ptrtoint ptr %wcid to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %wcid, align 4
  tail call void @__mt76_tx_complete_skb(ptr noundef %mdev, i16 noundef zeroext %18, ptr noundef nonnull %16, ptr noundef null) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6.if.end9_crit_edge, %if.then
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7921_tx_token_put(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #6
  %token_lock = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 28
  tail call void @_raw_spin_lock_bh(ptr noundef %token_lock) #6
  %token = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 29
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %id, align 4
  %call8 = call ptr @idr_get_next(ptr noundef %token, ptr noundef nonnull %id) #6
  %cmp.not9 = icmp eq ptr %call8, null
  br i1 %cmp.not9, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %token_count = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 30
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call10 = phi ptr [ %call8, %for.body.lr.ph ], [ %call, %for.body.for.body_crit_edge ]
  call fastcc void @mt7921_txwi_free(ptr noundef %dev, ptr noundef nonnull %call10, ptr noundef null, ptr noundef null)
  %1 = ptrtoint ptr %token_count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %token_count, align 32
  %dec = add i32 %2, -1
  store i32 %dec, ptr %token_count, align 32
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %add = add i32 %4, 1
  store i32 %add, ptr %id, align 4
  %call = call ptr @idr_get_next(ptr noundef %token, ptr noundef nonnull %id) #6
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %token_lock) #6
  call void @idr_destroy(ptr noundef %token) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7921_txwi_free(ptr noundef %dev, ptr noundef %t, ptr noundef %sta, ptr noundef %free_list) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %t, null
  br i1 %tobool.not.i.i, label %entry.mt7921_txwi_to_txp.exit.i_crit_edge, label %if.end.i.i

entry.mt7921_txwi_to_txp.exit.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt7921_txwi_to_txp.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %drv.i.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %drv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv.i.i.i, align 16
  %txwi_size.i.i.i = getelementptr inbounds %struct.mt76_driver_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %txwi_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %txwi_size.i.i.i, align 4
  %conv.i.i.i = zext i16 %3 to i32
  %idx.neg.i.i.i = sub nsw i32 0, %conv.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %t, i32 %idx.neg.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 32
  br label %mt7921_txwi_to_txp.exit.i

mt7921_txwi_to_txp.exit.i:                        ; preds = %if.end.i.i, %entry.mt7921_txwi_to_txp.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %entry.mt7921_txwi_to_txp.exit.i_crit_edge ]
  %dev5.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %arrayidx.i = getelementptr %struct.mt7921_hw_txp, ptr %retval.0.i.i, i32 0, i32 1, i32 0
  %len0.i = getelementptr %struct.mt7921_hw_txp, ptr %retval.0.i.i, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %len0.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %len0.i, align 4
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %6)
  %tobool.not.i = icmp sgt i16 %6, -1
  %and3.i = and i16 %6, 4095
  %7 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev5.i, align 8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  %conv6.i = zext i16 %and3.i to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %8, i32 noundef %11, i32 noundef %conv6.i, i32 noundef 1, i32 noundef 0) #6
  br i1 %tobool.not.i, label %if.end.i, label %mt7921_txwi_to_txp.exit.i.mt7921_txp_skb_unmap.exit_crit_edge

mt7921_txwi_to_txp.exit.i.mt7921_txp_skb_unmap.exit_crit_edge: ; preds = %mt7921_txwi_to_txp.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt7921_txp_skb_unmap.exit

for.cond.i:                                       ; preds = %if.end.i
  %arrayidx.1.i = getelementptr %struct.mt7921_hw_txp, ptr %retval.0.i.i, i32 0, i32 1, i32 1
  %len0.1.i = getelementptr %struct.mt7921_hw_txp, ptr %retval.0.i.i, i32 0, i32 1, i32 1, i32 1
  %12 = ptrtoint ptr %len0.1.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %len0.1.i, align 4
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %14)
  %tobool.not.1.i = icmp sgt i16 %14, -1
  %and3.1.i = and i16 %14, 4095
  %15 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev5.i, align 8
  %17 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.1.i, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  %conv6.1.i = zext i16 %and3.1.i to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %16, i32 noundef %19, i32 noundef %conv6.1.i, i32 noundef 1, i32 noundef 0) #6
  br i1 %tobool.not.1.i, label %if.end.1.i, label %for.cond.i.mt7921_txp_skb_unmap.exit_crit_edge

for.cond.i.mt7921_txp_skb_unmap.exit_crit_edge:   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt7921_txp_skb_unmap.exit

if.end.1.i:                                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %len1.1.i = getelementptr %struct.mt7921_hw_txp, ptr %retval.0.i.i, i32 0, i32 1, i32 1, i32 2
  %20 = ptrtoint ptr %len1.1.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %len1.1.i, align 2
  %22 = and i16 %21, -241
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #6
  %24 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev5.i, align 8
  %buf1.1.i = getelementptr %struct.mt7921_hw_txp, ptr %retval.0.i.i, i32 0, i32 1, i32 1, i32 3
  %26 = ptrtoint ptr %buf1.1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buf1.1.i, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #6
  %conv16.1.i = zext i16 %23 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %25, i32 noundef %28, i32 noundef %conv16.1.i, i32 noundef 1, i32 noundef 0) #6
  br label %mt7921_txp_skb_unmap.exit

if.end.i:                                         ; preds = %mt7921_txwi_to_txp.exit.i
  %len1.i = getelementptr %struct.mt7921_hw_txp, ptr %retval.0.i.i, i32 0, i32 1, i32 0, i32 2
  %29 = ptrtoint ptr %len1.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %len1.i, align 2
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %31)
  %tobool10.not.i = icmp sgt i16 %31, -1
  %and13.i = and i16 %31, 4095
  %32 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev5.i, align 8
  %buf1.i = getelementptr %struct.mt7921_hw_txp, ptr %retval.0.i.i, i32 0, i32 1, i32 0, i32 3
  %34 = ptrtoint ptr %buf1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %buf1.i, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #6
  %conv16.i = zext i16 %and13.i to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %33, i32 noundef %36, i32 noundef %conv16.i, i32 noundef 1, i32 noundef 0) #6
  br i1 %tobool10.not.i, label %for.cond.i, label %if.end.i.mt7921_txp_skb_unmap.exit_crit_edge

if.end.i.mt7921_txp_skb_unmap.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt7921_txp_skb_unmap.exit

mt7921_txp_skb_unmap.exit:                        ; preds = %if.end.i.mt7921_txp_skb_unmap.exit_crit_edge, %if.end.1.i, %for.cond.i.mt7921_txp_skb_unmap.exit_crit_edge, %mt7921_txwi_to_txp.exit.i.mt7921_txp_skb_unmap.exit_crit_edge
  %skb = getelementptr inbounds %struct.mt76_txwi_cache, ptr %t, i32 0, i32 2
  %37 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %skb, align 4
  %tobool.not = icmp eq ptr %38, null
  br i1 %tobool.not, label %mt7921_txp_skb_unmap.exit.out_crit_edge, label %if.end

mt7921_txp_skb_unmap.exit.out_crit_edge:          ; preds = %mt7921_txp_skb_unmap.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %mt7921_txp_skb_unmap.exit
  %drv.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 11
  %39 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %drv.i, align 16
  %txwi_size.i = getelementptr inbounds %struct.mt76_driver_ops, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %txwi_size.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %txwi_size.i, align 4
  %conv.i = zext i16 %42 to i32
  %idx.neg.i = sub nsw i32 0, %conv.i
  %add.ptr.i = getelementptr i8, ptr %t, i32 %idx.neg.i
  %tobool1.not = icmp eq ptr %sta, null
  br i1 %tobool1.not, label %do.end20, label %if.then2

if.then2:                                         ; preds = %if.end
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 15, i32 0, i32 18
  %43 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %44)
  %cmp.not = icmp eq i16 %44, -30578
  br i1 %cmp.not, label %if.then2.if.end8_crit_edge, label %if.then7, !prof !24

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then7:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mt7921_tx_check_aggr(ptr noundef nonnull %sta, ptr noundef %add.ptr.i) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then2.if.end8_crit_edge
  %idx = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 2
  %45 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %idx, align 2
  br label %if.end22

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr i32, ptr %add.ptr.i, i32 1
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx, align 4
  %49 = and i32 %48, -16580608
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %conv21 = trunc i32 %50 to i16
  br label %if.end22

if.end22:                                         ; preds = %do.end20, %if.end8
  %wcid_idx.0 = phi i16 [ %46, %if.end8 ], [ %conv21, %do.end20 ]
  %51 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %skb, align 4
  tail call void @__mt76_tx_complete_skb(ptr noundef %dev, i16 noundef zeroext %wcid_idx.0, ptr noundef %52, ptr noundef %free_list) #6
  br label %out

out:                                              ; preds = %if.end22, %mt7921_txp_skb_unmap.exit.out_crit_edge
  %53 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %skb, align 4
  tail call void @mt76_put_txwi(ptr noundef %dev, ptr noundef %t) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7921e_mac_reset(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mt7921e_mcu_drv_pmctrl(ptr noundef %dev) #6
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 9
  tail call void @mt76_connac_free_pending_tx_skbs(ptr noundef %pm, ptr noundef null) #6
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wr, align 4
  tail call void %3(ptr noundef %dev, i32 noundef 868868, i32 noundef 0) #6
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %wr2 = getelementptr inbounds %struct.mt76_bus_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wr2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wr2, align 4
  tail call void %7(ptr noundef %dev, i32 noundef 65928, i32 noundef 0) #6
  %state = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 7, ptr noundef %state) #6
  tail call void @_set_bit(i32 noundef 8, ptr noundef %state) #6
  %wait = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 14, i32 4
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  %res_q = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 14, i32 3
  tail call void @skb_queue_purge(ptr noundef %res_q) #6
  tail call void @mt76_txq_schedule_all(ptr noundef %dev) #6
  %tx_worker = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 26
  %8 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_worker, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.mt76_worker_disable.exit_crit_edge, label %if.end.i

entry.mt76_worker_disable.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76_worker_disable.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @kthread_park(ptr noundef nonnull %9) #6
  %state.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 26, i32 2
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %state.i, align 4
  br label %mt76_worker_disable.exit

mt76_worker_disable.exit:                         ; preds = %if.end.i, %entry.mt76_worker_disable.exit_crit_edge
  %napi = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 19
  tail call void @napi_disable(ptr noundef %napi) #6
  %arrayidx6 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 19, i32 1
  tail call void @napi_disable(ptr noundef %arrayidx6) #6
  %arrayidx8 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 19, i32 2
  tail call void @napi_disable(ptr noundef %arrayidx8) #6
  %tx_napi = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 27
  tail call void @napi_disable(ptr noundef %tx_napi) #6
  tail call void @mt7921_tx_token_put(ptr noundef %dev)
  %token = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 29
  tail call void @__raw_spin_lock_init(ptr noundef %token, ptr noundef nonnull @.str.5, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #6
  %xa_flags.i.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 29, i32 0, i32 1
  %11 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 29, i32 0, i32 2
  %12 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %idr_base.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 29, i32 1
  %13 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 29, i32 2
  %14 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %idr_next.i.i, align 4
  %call9 = tail call i32 @mt7921_wpdma_reset(ptr noundef %dev, i1 noundef zeroext true) #6
  tail call fastcc void @local_bh_disable()
  %ndesc = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 0, i32 8
  %15 = ptrtoint ptr %ndesc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ndesc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %mt76_worker_disable.exit.for.end_crit_edge, label %for.body

mt76_worker_disable.exit.for.end_crit_edge:       ; preds = %mt76_worker_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %mt76_worker_disable.exit
  tail call void @napi_enable(ptr noundef %napi) #6
  %call.i84 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #6
  br i1 %call.i84, label %if.then.i, label %for.body.napi_schedule.exit_crit_edge

for.body.napi_schedule.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %napi_schedule.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__napi_schedule(ptr noundef %napi) #6
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i, %for.body.napi_schedule.exit_crit_edge
  %ndesc.1 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 1, i32 8
  %17 = ptrtoint ptr %ndesc.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ndesc.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.1 = icmp eq i32 %18, 0
  br i1 %tobool.not.1, label %napi_schedule.exit.for.end_crit_edge, label %for.body.1

napi_schedule.exit.for.end_crit_edge:             ; preds = %napi_schedule.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.1:                                       ; preds = %napi_schedule.exit
  tail call void @napi_enable(ptr noundef %arrayidx6) #6
  %call.i84.1 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx6) #6
  br i1 %call.i84.1, label %if.then.i.1, label %for.body.1.napi_schedule.exit.1_crit_edge

for.body.1.napi_schedule.exit.1_crit_edge:        ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %napi_schedule.exit.1

if.then.i.1:                                      ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__napi_schedule(ptr noundef %arrayidx6) #6
  br label %napi_schedule.exit.1

napi_schedule.exit.1:                             ; preds = %if.then.i.1, %for.body.1.napi_schedule.exit.1_crit_edge
  %ndesc.2 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 2, i32 8
  %19 = ptrtoint ptr %ndesc.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ndesc.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.2 = icmp eq i32 %20, 0
  br i1 %tobool.not.2, label %napi_schedule.exit.1.for.end_crit_edge, label %for.body.2

napi_schedule.exit.1.for.end_crit_edge:           ; preds = %napi_schedule.exit.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.2:                                       ; preds = %napi_schedule.exit.1
  tail call void @napi_enable(ptr noundef %arrayidx8) #6
  %call.i84.2 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx8) #6
  br i1 %call.i84.2, label %if.then.i.2, label %for.body.2.napi_schedule.exit.2_crit_edge

for.body.2.napi_schedule.exit.2_crit_edge:        ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %napi_schedule.exit.2

if.then.i.2:                                      ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__napi_schedule(ptr noundef %arrayidx8) #6
  br label %napi_schedule.exit.2

napi_schedule.exit.2:                             ; preds = %if.then.i.2, %for.body.2.napi_schedule.exit.2_crit_edge
  %ndesc.3 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 3, i32 8
  %21 = ptrtoint ptr %ndesc.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ndesc.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.3 = icmp eq i32 %22, 0
  br i1 %tobool.not.3, label %napi_schedule.exit.2.for.end_crit_edge, label %for.body.3

napi_schedule.exit.2.for.end_crit_edge:           ; preds = %napi_schedule.exit.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.3:                                       ; preds = %napi_schedule.exit.2
  %arrayidx12.3 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 19, i32 3
  tail call void @napi_enable(ptr noundef %arrayidx12.3) #6
  %call.i84.3 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx12.3) #6
  br i1 %call.i84.3, label %if.then.i.3, label %for.body.3.napi_schedule.exit.3_crit_edge

for.body.3.napi_schedule.exit.3_crit_edge:        ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %napi_schedule.exit.3

if.then.i.3:                                      ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__napi_schedule(ptr noundef %arrayidx12.3) #6
  br label %napi_schedule.exit.3

napi_schedule.exit.3:                             ; preds = %if.then.i.3, %for.body.3.napi_schedule.exit.3_crit_edge
  %ndesc.4 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 4, i32 8
  %23 = ptrtoint ptr %ndesc.4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ndesc.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.4 = icmp eq i32 %24, 0
  br i1 %tobool.not.4, label %napi_schedule.exit.3.for.end_crit_edge, label %for.body.4

napi_schedule.exit.3.for.end_crit_edge:           ; preds = %napi_schedule.exit.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.4:                                       ; preds = %napi_schedule.exit.3
  %arrayidx12.4 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 19, i32 4
  tail call void @napi_enable(ptr noundef %arrayidx12.4) #6
  %call.i84.4 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx12.4) #6
  br i1 %call.i84.4, label %if.then.i.4, label %for.body.4.for.end_crit_edge

for.body.4.for.end_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then.i.4:                                      ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__napi_schedule(ptr noundef %arrayidx12.4) #6
  br label %for.end

for.end:                                          ; preds = %if.then.i.4, %for.body.4.for.end_crit_edge, %napi_schedule.exit.3.for.end_crit_edge, %napi_schedule.exit.2.for.end_crit_edge, %napi_schedule.exit.1.for.end_crit_edge, %napi_schedule.exit.for.end_crit_edge, %mt76_worker_disable.exit.for.end_crit_edge
  tail call fastcc void @local_bh_enable()
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %state) #6
  %25 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus, align 4
  %wr17 = getelementptr inbounds %struct.mt76_bus_ops, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %wr17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wr17, align 4
  tail call void %28(ptr noundef %dev, i32 noundef 868868, i32 noundef 675807221) #6
  %29 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bus, align 4
  %wr19 = getelementptr inbounds %struct.mt76_bus_ops, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %wr19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wr19, align 4
  tail call void %32(ptr noundef %dev, i32 noundef 65928, i32 noundef 255) #6
  %call20 = tail call i32 @mt7921e_driver_own(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.end
  %call22 = tail call i32 @mt7921_run_firmware(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end25:                                         ; preds = %if.end
  %call26 = tail call i32 @mt7921_mcu_set_eeprom(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.out_crit_edge

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end29:                                         ; preds = %if.end25
  %call30 = tail call i32 @mt7921_mac_init(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.out_crit_edge

if.end29.out_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end33:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %phy = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 2
  %call34 = tail call i32 @__mt7921_start(ptr noundef %phy) #6
  br label %out

out:                                              ; preds = %if.end33, %if.end29.out_crit_edge, %if.end25.out_crit_edge, %if.end.out_crit_edge
  %err.0 = phi i32 [ %call22, %if.end.out_crit_edge ], [ %call26, %if.end25.out_crit_edge ], [ %call30, %if.end29.out_crit_edge ], [ %call34, %if.end33 ]
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %state) #6
  tail call fastcc void @local_bh_disable()
  tail call void @napi_enable(ptr noundef %tx_napi) #6
  %call.i86 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %tx_napi) #6
  br i1 %call.i86, label %if.then.i87, label %out.napi_schedule.exit89_crit_edge

out.napi_schedule.exit89_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %napi_schedule.exit89

if.then.i87:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__napi_schedule(ptr noundef %tx_napi) #6
  br label %napi_schedule.exit89

napi_schedule.exit89:                             ; preds = %if.then.i87, %out.napi_schedule.exit89_crit_edge
  tail call fastcc void @local_bh_enable()
  %33 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tx_worker, align 4
  %tobool.not.i90 = icmp eq ptr %34, null
  br i1 %tobool.not.i90, label %napi_schedule.exit89.cleanup_crit_edge, label %if.end.i91

napi_schedule.exit89.cleanup_crit_edge:           ; preds = %napi_schedule.exit89
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i91:                                       ; preds = %napi_schedule.exit89
  tail call void @kthread_unpark(ptr noundef nonnull %34) #6
  %35 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tx_worker, align 4
  %tobool.not.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i, label %if.end.i91.cleanup_crit_edge, label %if.end.i.i

if.end.i91.cleanup_crit_edge:                     ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end.i91
  %state.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 26, i32 2
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %37 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %state.i.i, align 4
  %39 = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool4.not.i.i = icmp eq i32 %39, 0
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %land.lhs.true.i.i.cleanup_crit_edge

land.lhs.true.i.i.cleanup_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tx_worker, align 4
  %call7.i.i = tail call i32 @wake_up_process(ptr noundef %41) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then5.i.i, %land.lhs.true.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.end.i91.cleanup_crit_edge, %napi_schedule.exit89.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %for.end.cleanup_crit_edge ], [ %err.0, %napi_schedule.exit89.cleanup_crit_edge ], [ %err.0, %if.end.i91.cleanup_crit_edge ], [ %err.0, %if.end.i.i.cleanup_crit_edge ], [ %err.0, %land.lhs.true.i.i.cleanup_crit_edge ], [ %err.0, %if.then5.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921e_mcu_drv_pmctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_connac_free_pending_tx_skbs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_txq_schedule_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_wpdma_reset(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921e_driver_own(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_run_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_mcu_set_eeprom(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_mac_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mt7921_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mt76_token_release(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_consume_skb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7921_mac_sta_poll(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mt76_set_tx_blocked(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mt76_tx_complete_skb(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7921_tx_check_aggr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_put_txwi(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_park(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_unpark(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !13}
!llvm.named.register.sp = !{!14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/pci_mac.c", i32 185, i32 11}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @xa_init_flags.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{!"sp"}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"branch_weights", i32 1, i32 2000}
!25 = !{i8 0, i8 2}
!26 = !{i64 2149309492}
!27 = !{i64 2149309758}
