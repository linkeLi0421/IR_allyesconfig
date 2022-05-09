; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt7921/pci_mcu.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt7921/pci_mcu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mt76_mcu_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.mt76_queue_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mt7921_dev = type { %union.anon, ptr, %struct.mt7921_phy, %struct.tasklet_struct, %struct.work_struct, i8, %struct.list_head, %struct.spinlock, i8, %struct.mt76_connac_pm, %struct.mt76_connac_coredump, ptr, [32 x i8] }
%union.anon = type { %struct.mt76_dev }
%struct.mt7921_phy = type { ptr, ptr, [6 x [13 x %struct.ieee80211_sband_iftype_data]], i32, i64, i16, i16, i8, i32, i32, %struct.mib_stats, i8, %struct.sk_buff_head, %struct.delayed_work }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.128 }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.anon.128 = type { ptr, i32 }
%struct.mib_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32 }
%struct.mt76_connac_pm = type { i8, i8, i8, %struct.spinlock, [4 x %struct.anon.146], %struct.work_struct, %struct.wait_queue_head, %struct.anon.147, %struct.mutex, %struct.delayed_work, i32, i32, %struct.anon.148 }
%struct.anon.146 = type { ptr, ptr }
%struct.anon.147 = type { %struct.spinlock, i32 }
%struct.anon.148 = type { i32, i32, i32, i32, i32 }
%struct.mt76_connac_coredump = type { %struct.sk_buff_head, %struct.delayed_work, i32 }

@mt7921e_driver_own._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 14, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Timeout for driver own\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt7921e_driver_own\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/mediatek/mt76/mt7921/pci_mcu.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt7921e_driver_own._entry_ptr = internal global ptr @mt7921e_driver_own._entry, section ".printk_index", align 4
@mt7921e_mcu_init.mt7921_mcu_ops = internal constant { %struct.mt76_mcu_ops, [56 x i8] } { %struct.mt76_mcu_ops { i32 64, i32 0, ptr null, ptr @mt7921_mcu_send_message, ptr @mt7921_mcu_parse_response, ptr null, ptr null, ptr null, ptr null, ptr @mt7921_mcu_restart }, [56 x i8] zeroinitializer }, align 32
@mt7921e_mcu_drv_pmctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 76, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"driver own failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mt7921e_mcu_drv_pmctrl\00", [41 x i8] zeroinitializer }, align 32
@mt7921e_mcu_drv_pmctrl._entry_ptr = internal global ptr @mt7921e_mcu_drv_pmctrl._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mt7921e_mcu_fw_pmctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 105, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"firmware own failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt7921e_mcu_fw_pmctrl\00", [42 x i8] zeroinitializer }, align 32
@mt7921e_mcu_fw_pmctrl._entry_ptr = internal global ptr @mt7921e_mcu_fw_pmctrl._entry, section ".printk_index", align 4
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 14, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [15 x i8] c"mt7921_mcu_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 41, i32 35 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 76, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [55 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7921/pci_mcu.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 105, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @mt7921e_driver_own._entry, ptr @mt7921e_driver_own._entry_ptr, ptr @mt7921e_mcu_drv_pmctrl._entry, ptr @mt7921e_mcu_drv_pmctrl._entry_ptr, ptr @mt7921e_mcu_fw_pmctrl._entry, ptr @mt7921e_mcu_fw_pmctrl._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mt7921e_mcu_init.mt7921_mcu_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921e_driver_own._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921e_mcu_init.mt7921_mcu_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921e_mcu_drv_pmctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921e_mcu_fw_pmctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7921e_driver_own(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 4
  %rmw.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmw.i, align 4
  %call.i = tail call i32 %3(ptr noundef %dev, i32 noundef 1040972, i32 noundef 65535, i32 noundef 6150) #3
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call50.i = tail call i32 %7(ptr noundef %dev, i32 noundef 1040972) #3
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wr, align 4
  tail call void %11(ptr noundef %dev, i32 noundef 262160, i32 noundef 2) #3
  %call1 = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef 262160, i32 noundef 1, i32 noundef 0, i32 noundef 500) #3
  br i1 %call1, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %dev2 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %12 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mt76_poll_msec(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7921e_mcu_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mcu_ops = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %mcu_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mt7921e_mcu_init.mt7921_mcu_ops, ptr %mcu_ops, align 4
  %bus.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %1 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus.i.i, align 4
  %rmw.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmw.i.i, align 4
  %call.i.i = tail call i32 %4(ptr noundef %dev, i32 noundef 1040972, i32 noundef 65535, i32 noundef 6150) #3
  %5 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call50.i.i = tail call i32 %8(ptr noundef %dev, i32 noundef 1040972) #3
  %9 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus.i.i, align 4
  %wr.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wr.i, align 4
  tail call void %12(ptr noundef %dev, i32 noundef 262160, i32 noundef 2) #3
  %call1.i = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef 262160, i32 noundef 1, i32 noundef 0, i32 noundef 500) #3
  br i1 %call1.i, label %if.end, label %mt7921e_driver_own.exit

mt7921e_driver_own.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %dev2.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %13 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev2.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call i32 @mt7921_run_firmware(ptr noundef %dev) #3
  %queue_ops = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 24
  %15 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup = getelementptr inbounds %struct.mt76_queue_ops, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %tx_cleanup to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx_cleanup, align 4
  %arrayidx = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 22, i32 2
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 8
  tail call void %18(ptr noundef %dev, ptr noundef %20, i1 noundef zeroext false) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mt7921e_driver_own.exit
  %retval.0 = phi i32 [ %call1, %if.end ], [ -5, %mt7921e_driver_own.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921_mcu_send_message(ptr noundef %mdev, ptr noundef %skb, i32 noundef %cmd, ptr noundef %seq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mt7921_mcu_fill_message(ptr noundef %mdev, ptr noundef %skb, i32 noundef %cmd, ptr noundef %seq) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 238, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 238
  %spec.select = select i1 %cmp, i32 2, i32 0
  %queue_ops = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 24
  %0 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue_ops, align 4
  %tx_queue_skb_raw = getelementptr inbounds %struct.mt76_queue_ops, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %tx_queue_skb_raw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_queue_skb_raw, align 4
  %arrayidx = getelementptr %struct.mt76_dev, ptr %mdev, i32 0, i32 22, i32 %spec.select
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call16 = tail call i32 %3(ptr noundef %mdev, ptr noundef %5, ptr noundef %skb, i32 noundef 0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_mcu_parse_response(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_mcu_restart(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_run_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7921e_mcu_drv_pmctrl(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wr, align 4
  tail call void %3(ptr noundef %dev, i32 noundef 2080768016, i32 noundef 2) #3
  %call = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef 2080768016, i32 noundef 4, i32 noundef 0, i32 noundef 50) #3
  br i1 %call, label %entry.if.end5_crit_edge, label %for.inc

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

for.inc:                                          ; preds = %entry
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %wr.1 = getelementptr inbounds %struct.mt76_bus_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wr.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wr.1, align 4
  tail call void %7(ptr noundef %dev, i32 noundef 2080768016, i32 noundef 2) #3
  %call.1 = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef 2080768016, i32 noundef 4, i32 noundef 0, i32 noundef 50) #3
  br i1 %call.1, label %for.inc.if.end5_crit_edge, label %for.inc.1

for.inc.if.end5_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

for.inc.1:                                        ; preds = %for.inc
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 4
  %wr.2 = getelementptr inbounds %struct.mt76_bus_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %wr.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wr.2, align 4
  tail call void %11(ptr noundef %dev, i32 noundef 2080768016, i32 noundef 2) #3
  %call.2 = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef 2080768016, i32 noundef 4, i32 noundef 0, i32 noundef 50) #3
  br i1 %call.2, label %for.inc.1.if.end5_crit_edge, label %for.inc.2

for.inc.1.if.end5_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

for.inc.2:                                        ; preds = %for.inc.1
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus, align 4
  %wr.3 = getelementptr inbounds %struct.mt76_bus_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %wr.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wr.3, align 4
  tail call void %15(ptr noundef %dev, i32 noundef 2080768016, i32 noundef 2) #3
  %call.3 = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef 2080768016, i32 noundef 4, i32 noundef 0, i32 noundef 50) #3
  br i1 %call.3, label %for.inc.2.if.end5_crit_edge, label %for.inc.3

for.inc.2.if.end5_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

for.inc.3:                                        ; preds = %for.inc.2
  %16 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus, align 4
  %wr.4 = getelementptr inbounds %struct.mt76_bus_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %wr.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wr.4, align 4
  tail call void %19(ptr noundef %dev, i32 noundef 2080768016, i32 noundef 2) #3
  %call.4 = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef 2080768016, i32 noundef 4, i32 noundef 0, i32 noundef 50) #3
  br i1 %call.4, label %for.inc.3.if.end5_crit_edge, label %for.inc.4

for.inc.3.if.end5_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

for.inc.4:                                        ; preds = %for.inc.3
  %20 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus, align 4
  %wr.5 = getelementptr inbounds %struct.mt76_bus_ops, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %wr.5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wr.5, align 4
  tail call void %23(ptr noundef %dev, i32 noundef 2080768016, i32 noundef 2) #3
  %call.5 = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef 2080768016, i32 noundef 4, i32 noundef 0, i32 noundef 50) #3
  br i1 %call.5, label %for.inc.4.if.end5_crit_edge, label %for.inc.5

for.inc.4.if.end5_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

for.inc.5:                                        ; preds = %for.inc.4
  %24 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus, align 4
  %wr.6 = getelementptr inbounds %struct.mt76_bus_ops, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %wr.6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wr.6, align 4
  tail call void %27(ptr noundef %dev, i32 noundef 2080768016, i32 noundef 2) #3
  %call.6 = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef 2080768016, i32 noundef 4, i32 noundef 0, i32 noundef 50) #3
  br i1 %call.6, label %for.inc.5.if.end5_crit_edge, label %for.inc.6

for.inc.5.if.end5_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

for.inc.6:                                        ; preds = %for.inc.5
  %28 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus, align 4
  %wr.7 = getelementptr inbounds %struct.mt76_bus_ops, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %wr.7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wr.7, align 4
  tail call void %31(ptr noundef %dev, i32 noundef 2080768016, i32 noundef 2) #3
  %call.7 = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef 2080768016, i32 noundef 4, i32 noundef 0, i32 noundef 50) #3
  br i1 %call.7, label %for.inc.6.if.end5_crit_edge, label %for.inc.7

for.inc.6.if.end5_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

for.inc.7:                                        ; preds = %for.inc.6
  %32 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus, align 4
  %wr.8 = getelementptr inbounds %struct.mt76_bus_ops, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %wr.8 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wr.8, align 4
  tail call void %35(ptr noundef %dev, i32 noundef 2080768016, i32 noundef 2) #3
  %call.8 = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef 2080768016, i32 noundef 4, i32 noundef 0, i32 noundef 50) #3
  br i1 %call.8, label %for.inc.7.if.end5_crit_edge, label %for.inc.8

for.inc.7.if.end5_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

for.inc.8:                                        ; preds = %for.inc.7
  %36 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus, align 4
  %wr.9 = getelementptr inbounds %struct.mt76_bus_ops, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %wr.9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wr.9, align 4
  tail call void %39(ptr noundef %dev, i32 noundef 2080768016, i32 noundef 2) #3
  %call.9 = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef 2080768016, i32 noundef 4, i32 noundef 0, i32 noundef 50) #3
  br i1 %call.9, label %for.inc.8.if.end5_crit_edge, label %do.end

for.inc.8.if.end5_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

do.end:                                           ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #5
  %dev4 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %40 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.5) #6
  br label %out

if.end5:                                          ; preds = %for.inc.8.if.end5_crit_edge, %for.inc.7.if.end5_crit_edge, %for.inc.6.if.end5_crit_edge, %for.inc.5.if.end5_crit_edge, %for.inc.4.if.end5_crit_edge, %for.inc.3.if.end5_crit_edge, %for.inc.2.if.end5_crit_edge, %for.inc.1.if.end5_crit_edge, %for.inc.if.end5_crit_edge, %entry.if.end5_crit_edge
  %call6 = tail call i32 @mt7921_wpdma_reinit_cond(ptr noundef %dev) #3
  %state = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 14, ptr noundef %state) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %stats = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 9, i32 12
  %43 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %stats, align 4
  %last_doze_event = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 9, i32 12, i32 2
  %44 = ptrtoint ptr %last_doze_event to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %last_doze_event, align 4
  %sub = sub i32 %42, %45
  %doze_time = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 9, i32 12, i32 3
  %46 = ptrtoint ptr %doze_time to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %doze_time, align 4
  %add = add i32 %sub, %47
  store i32 %add, ptr %doze_time, align 4
  br label %out

out:                                              ; preds = %if.end5, %do.end
  %err.0 = phi i32 [ -5, %do.end ], [ 0, %if.end5 ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_wpdma_reinit_cond(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7921e_mcu_fw_pmctrl(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wr, align 4
  tail call void %3(ptr noundef %dev, i32 noundef 2080768016, i32 noundef 1) #3
  %call = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef 2080768016, i32 noundef 4, i32 noundef 4, i32 noundef 50) #3
  br i1 %call, label %entry.if.end5_crit_edge, label %for.inc

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

for.inc:                                          ; preds = %entry
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %wr.1 = getelementptr inbounds %struct.mt76_bus_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wr.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wr.1, align 4
  tail call void %7(ptr noundef %dev, i32 noundef 2080768016, i32 noundef 1) #3
  %call.1 = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef 2080768016, i32 noundef 4, i32 noundef 4, i32 noundef 50) #3
  br i1 %call.1, label %for.inc.if.end5_crit_edge, label %for.inc.1

for.inc.if.end5_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

for.inc.1:                                        ; preds = %for.inc
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 4
  %wr.2 = getelementptr inbounds %struct.mt76_bus_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %wr.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wr.2, align 4
  tail call void %11(ptr noundef %dev, i32 noundef 2080768016, i32 noundef 1) #3
  %call.2 = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef 2080768016, i32 noundef 4, i32 noundef 4, i32 noundef 50) #3
  br i1 %call.2, label %for.inc.1.if.end5_crit_edge, label %for.inc.2

for.inc.1.if.end5_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

for.inc.2:                                        ; preds = %for.inc.1
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus, align 4
  %wr.3 = getelementptr inbounds %struct.mt76_bus_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %wr.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wr.3, align 4
  tail call void %15(ptr noundef %dev, i32 noundef 2080768016, i32 noundef 1) #3
  %call.3 = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef 2080768016, i32 noundef 4, i32 noundef 4, i32 noundef 50) #3
  br i1 %call.3, label %for.inc.2.if.end5_crit_edge, label %for.inc.3

for.inc.2.if.end5_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

for.inc.3:                                        ; preds = %for.inc.2
  %16 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus, align 4
  %wr.4 = getelementptr inbounds %struct.mt76_bus_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %wr.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wr.4, align 4
  tail call void %19(ptr noundef %dev, i32 noundef 2080768016, i32 noundef 1) #3
  %call.4 = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef 2080768016, i32 noundef 4, i32 noundef 4, i32 noundef 50) #3
  br i1 %call.4, label %for.inc.3.if.end5_crit_edge, label %for.inc.4

for.inc.3.if.end5_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

for.inc.4:                                        ; preds = %for.inc.3
  %20 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus, align 4
  %wr.5 = getelementptr inbounds %struct.mt76_bus_ops, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %wr.5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wr.5, align 4
  tail call void %23(ptr noundef %dev, i32 noundef 2080768016, i32 noundef 1) #3
  %call.5 = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef 2080768016, i32 noundef 4, i32 noundef 4, i32 noundef 50) #3
  br i1 %call.5, label %for.inc.4.if.end5_crit_edge, label %for.inc.5

for.inc.4.if.end5_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

for.inc.5:                                        ; preds = %for.inc.4
  %24 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus, align 4
  %wr.6 = getelementptr inbounds %struct.mt76_bus_ops, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %wr.6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wr.6, align 4
  tail call void %27(ptr noundef %dev, i32 noundef 2080768016, i32 noundef 1) #3
  %call.6 = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef 2080768016, i32 noundef 4, i32 noundef 4, i32 noundef 50) #3
  br i1 %call.6, label %for.inc.5.if.end5_crit_edge, label %for.inc.6

for.inc.5.if.end5_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

for.inc.6:                                        ; preds = %for.inc.5
  %28 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus, align 4
  %wr.7 = getelementptr inbounds %struct.mt76_bus_ops, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %wr.7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wr.7, align 4
  tail call void %31(ptr noundef %dev, i32 noundef 2080768016, i32 noundef 1) #3
  %call.7 = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef 2080768016, i32 noundef 4, i32 noundef 4, i32 noundef 50) #3
  br i1 %call.7, label %for.inc.6.if.end5_crit_edge, label %for.inc.7

for.inc.6.if.end5_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

for.inc.7:                                        ; preds = %for.inc.6
  %32 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus, align 4
  %wr.8 = getelementptr inbounds %struct.mt76_bus_ops, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %wr.8 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wr.8, align 4
  tail call void %35(ptr noundef %dev, i32 noundef 2080768016, i32 noundef 1) #3
  %call.8 = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef 2080768016, i32 noundef 4, i32 noundef 4, i32 noundef 50) #3
  br i1 %call.8, label %for.inc.7.if.end5_crit_edge, label %for.inc.8

for.inc.7.if.end5_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

for.inc.8:                                        ; preds = %for.inc.7
  %36 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus, align 4
  %wr.9 = getelementptr inbounds %struct.mt76_bus_ops, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %wr.9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wr.9, align 4
  tail call void %39(ptr noundef %dev, i32 noundef 2080768016, i32 noundef 1) #3
  %call.9 = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef 2080768016, i32 noundef 4, i32 noundef 4, i32 noundef 50) #3
  br i1 %call.9, label %for.inc.8.if.end5_crit_edge, label %do.end

for.inc.8.if.end5_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

do.end:                                           ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #5
  %dev4 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %40 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.7) #6
  %state = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 14, ptr noundef %state) #3
  br label %if.end5

if.end5:                                          ; preds = %do.end, %for.inc.8.if.end5_crit_edge, %for.inc.7.if.end5_crit_edge, %for.inc.6.if.end5_crit_edge, %for.inc.5.if.end5_crit_edge, %for.inc.4.if.end5_crit_edge, %for.inc.3.if.end5_crit_edge, %for.inc.2.if.end5_crit_edge, %for.inc.1.if.end5_crit_edge, %for.inc.if.end5_crit_edge, %entry.if.end5_crit_edge
  %err.0 = phi i32 [ -5, %do.end ], [ 0, %for.inc.8.if.end5_crit_edge ], [ 0, %for.inc.7.if.end5_crit_edge ], [ 0, %for.inc.6.if.end5_crit_edge ], [ 0, %for.inc.5.if.end5_crit_edge ], [ 0, %for.inc.4.if.end5_crit_edge ], [ 0, %for.inc.3.if.end5_crit_edge ], [ 0, %for.inc.2.if.end5_crit_edge ], [ 0, %for.inc.1.if.end5_crit_edge ], [ 0, %for.inc.if.end5_crit_edge ], [ 0, %entry.if.end5_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %stats = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 9, i32 12
  %last_doze_event = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 9, i32 12, i32 2
  %43 = ptrtoint ptr %last_doze_event to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %last_doze_event, align 4
  %44 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %stats, align 4
  %sub = sub i32 %42, %45
  %awake_time = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 9, i32 12, i32 1
  %46 = ptrtoint ptr %awake_time to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %awake_time, align 4
  %add = add i32 %sub, %47
  store i32 %add, ptr %awake_time, align 4
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_mcu_fill_message(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !18, !19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/pci_mcu.c", i32 14, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mt7921e_driver_own._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mt7921e_driver_own._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @mt7921e_mcu_init.mt7921_mcu_ops, !9, !"mt7921_mcu_ops", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/pci_mcu.c", i32 41, i32 35}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/pci_mcu.c", i32 76, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @mt7921e_mcu_drv_pmctrl._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @mt7921e_mcu_drv_pmctrl._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/pci_mcu.c", i32 105, i32 3}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @mt7921e_mcu_fw_pmctrl._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @mt7921e_mcu_fw_pmctrl._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
