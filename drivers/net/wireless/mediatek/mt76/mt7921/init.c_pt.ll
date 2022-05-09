; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt7921/init.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt7921/init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mt7921_mac_init\22, \22a\22\09"
module asm "\09.weak\09__crc_mt7921_mac_init\09\09\09\09"
module asm "\09.long\09__crc_mt7921_mac_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt7921_mac_init:\09\09\09\09\09"
module asm "\09.asciz \09\22mt7921_mac_init\22\09\09\09\09\09"
module asm "__kstrtabns_mt7921_mac_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt7921_register_device\22, \22a\22\09"
module asm "\09.weak\09__crc_mt7921_register_device\09\09\09\09"
module asm "\09.long\09__crc_mt7921_register_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt7921_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22mt7921_register_device\22\09\09\09\09\09"
module asm "__kstrtabns_mt7921_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ieee80211_iface_combination = type { ptr, i32, i16, i8, i8, i8, i8, i32 }
%struct.ieee80211_iface_limit = type { i16, i16 }
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
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.131, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.131 = type { i32, i16 }
%struct.mt7921_hif_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.130, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.130 = type { i64, i64, i8 }
%struct.regulatory_request = type { %struct.callback_head, i32, i32, i32, [3 x i8], i32, i8, i8, i32, %struct.list_head }
%struct.callback_head = type { ptr, ptr }

@__kstrtab_mt7921_mac_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt7921_mac_init = external dso_local constant [0 x i8], align 1
@__ksymtab_mt7921_mac_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt7921_mac_init to i32), ptr @__kstrtab_mt7921_mac_init, ptr @__kstrtabns_mt7921_mac_init }, section "___ksymtab_gpl+mt7921_mac_init", align 4
@mt7921_register_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&(&dev->pm.ps_work)->work)\00", [51 x i8] zeroinitializer }, align 32
@mt7921_register_device.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&dev->pm.ps_work)->timer\00", [37 x i8] zeroinitializer }, align 32
@mt7921_register_device.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&dev->pm.wake_work)\00", [58 x i8] zeroinitializer }, align 32
@mt7921_register_device.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&dev->pm.wake.lock\00", [45 x i8] zeroinitializer }, align 32
@mt7921_register_device.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&dev->pm.mutex\00", [17 x i8] zeroinitializer }, align 32
@mt7921_register_device.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&dev->pm.wait\00", [18 x i8] zeroinitializer }, align 32
@mt7921_register_device.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&dev->mt76.sdio.wait\00", [43 x i8] zeroinitializer }, align 32
@mt7921_register_device.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&dev->pm.txq_lock\00", [46 x i8] zeroinitializer }, align 32
@mt7921_register_device.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&dev->mphy.mac_work)->work)\00", [48 x i8] zeroinitializer }, align 32
@mt7921_register_device.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&dev->mphy.mac_work)->timer\00", [34 x i8] zeroinitializer }, align 32
@mt7921_register_device.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&dev->phy.scan_work)->work)\00", [48 x i8] zeroinitializer }, align 32
@mt7921_register_device.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&dev->phy.scan_work)->timer\00", [34 x i8] zeroinitializer }, align 32
@mt7921_register_device.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&dev->coredump.work)->work)\00", [48 x i8] zeroinitializer }, align 32
@mt7921_register_device.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&dev->coredump.work)->timer\00", [34 x i8] zeroinitializer }, align 32
@mt7921_register_device.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&dev->sta_poll_lock\00", [44 x i8] zeroinitializer }, align 32
@mt7921_register_device.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&dev->reset_work)\00", [60 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mt76_rates = external dso_local global [12 x %struct.ieee80211_rate], align 4
@__kstrtab_mt7921_register_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt7921_register_device = external dso_local constant [0 x i8], align 1
@__ksymtab_mt7921_register_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt7921_register_device to i32), ptr @__kstrtab_mt7921_register_device, ptr @__kstrtabns_mt7921_register_device }, section "___ksymtab_gpl+mt7921_register_device", align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@mt7921_init_hardware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.34, i32 181, ptr @.str.35, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hardware init failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mt7921_init_hardware\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/wireless/mediatek/mt76/mt7921/init.c\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt7921_init_hardware._entry_ptr = internal global ptr @mt7921_init_hardware._entry, section ".printk_index", align 4
@if_comb = internal constant { [1 x %struct.ieee80211_iface_combination], [44 x i8] } { [1 x %struct.ieee80211_iface_combination] [%struct.ieee80211_iface_combination { ptr @if_limits, i32 1, i16 4, i8 1, i8 1, i8 0, i8 0, i32 0 }], [44 x i8] zeroinitializer }, align 32
@if_limits = internal constant { [1 x %struct.ieee80211_iface_limit], [28 x i8] } { [1 x %struct.ieee80211_iface_limit] [%struct.ieee80211_iface_limit { i16 4, i16 4 }], [28 x i8] zeroinitializer }, align 32
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 208, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 209, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 210, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 211, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 212, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 214, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 215, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 216, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 217, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 218, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 222, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 224, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 1984, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 181, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant [8 x i8] c"if_comb\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 17, i32 49 }
@___asan_gen_.160 = private unnamed_addr constant [10 x i8] c"if_limits\00", align 1
@___asan_gen_.161 = private constant [52 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7921/init.c\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 10, i32 43 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__ksymtab_mt7921_mac_init, ptr @__ksymtab_mt7921_register_device, ptr @mt7921_init_hardware._entry, ptr @mt7921_init_hardware._entry_ptr, ptr @mt7921_register_device.__key, ptr @.str, ptr @mt7921_register_device.__key.1, ptr @.str.2, ptr @mt7921_register_device.__key.3, ptr @.str.4, ptr @mt7921_register_device.__key.5, ptr @.str.6, ptr @mt7921_register_device.__key.7, ptr @.str.8, ptr @mt7921_register_device.__key.9, ptr @.str.10, ptr @mt7921_register_device.__key.11, ptr @.str.12, ptr @mt7921_register_device.__key.13, ptr @.str.14, ptr @mt7921_register_device.__key.15, ptr @.str.16, ptr @mt7921_register_device.__key.17, ptr @.str.18, ptr @mt7921_register_device.__key.19, ptr @.str.20, ptr @mt7921_register_device.__key.21, ptr @.str.22, ptr @mt7921_register_device.__key.23, ptr @.str.24, ptr @mt7921_register_device.__key.25, ptr @.str.26, ptr @mt7921_register_device.__key.27, ptr @.str.28, ptr @mt7921_register_device.__key.29, ptr @.str.30, ptr @skb_queue_head_init.__key, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @if_comb, ptr @if_limits], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921_register_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921_register_device.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921_register_device.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921_register_device.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921_register_device.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921_register_device.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921_register_device.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921_register_device.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921_register_device.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921_register_device.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921_register_device.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921_register_device.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921_register_device.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921_register_device.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921_register_device.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921_register_device.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921_init_hardware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_comb to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_limits to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7921_mac_init(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmw, align 4
  %call = tail call i32 %3(ptr noundef %dev, i32 noundef -2113089532, i32 noundef 65528, i32 noundef 12288) #3
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %rmw14 = getelementptr inbounds %struct.mt76_bus_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %rmw14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmw14, align 4
  %call15 = tail call i32 %7(ptr noundef %dev, i32 noundef -2113089536, i32 noundef 0, i32 noundef 32768) #3
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 4
  %rmw17 = getelementptr inbounds %struct.mt76_bus_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %rmw17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmw17, align 4
  %call18 = tail call i32 %11(ptr noundef %dev, i32 noundef -2113089536, i32 noundef 0, i32 noundef 524288) #3
  %call19 = tail call zeroext i1 @mt7921_mac_wtbl_update(ptr noundef %dev, i32 noundef 0, i32 noundef 4096) #3
  %call19.1 = tail call zeroext i1 @mt7921_mac_wtbl_update(ptr noundef %dev, i32 noundef 1, i32 noundef 4096) #3
  %call19.2 = tail call zeroext i1 @mt7921_mac_wtbl_update(ptr noundef %dev, i32 noundef 2, i32 noundef 4096) #3
  %call19.3 = tail call zeroext i1 @mt7921_mac_wtbl_update(ptr noundef %dev, i32 noundef 3, i32 noundef 4096) #3
  %call19.4 = tail call zeroext i1 @mt7921_mac_wtbl_update(ptr noundef %dev, i32 noundef 4, i32 noundef 4096) #3
  %call19.5 = tail call zeroext i1 @mt7921_mac_wtbl_update(ptr noundef %dev, i32 noundef 5, i32 noundef 4096) #3
  %call19.6 = tail call zeroext i1 @mt7921_mac_wtbl_update(ptr noundef %dev, i32 noundef 6, i32 noundef 4096) #3
  %call19.7 = tail call zeroext i1 @mt7921_mac_wtbl_update(ptr noundef %dev, i32 noundef 7, i32 noundef 4096) #3
  %call19.8 = tail call zeroext i1 @mt7921_mac_wtbl_update(ptr noundef %dev, i32 noundef 8, i32 noundef 4096) #3
  %call19.9 = tail call zeroext i1 @mt7921_mac_wtbl_update(ptr noundef %dev, i32 noundef 9, i32 noundef 4096) #3
  %call19.10 = tail call zeroext i1 @mt7921_mac_wtbl_update(ptr noundef %dev, i32 noundef 10, i32 noundef 4096) #3
  %call19.11 = tail call zeroext i1 @mt7921_mac_wtbl_update(ptr noundef %dev, i32 noundef 11, i32 noundef 4096) #3
  %call19.12 = tail call zeroext i1 @mt7921_mac_wtbl_update(ptr noundef %dev, i32 noundef 12, i32 noundef 4096) #3
  %call19.13 = tail call zeroext i1 @mt7921_mac_wtbl_update(ptr noundef %dev, i32 noundef 13, i32 noundef 4096) #3
  %call19.14 = tail call zeroext i1 @mt7921_mac_wtbl_update(ptr noundef %dev, i32 noundef 14, i32 noundef 4096) #3
  %call19.15 = tail call zeroext i1 @mt7921_mac_wtbl_update(ptr noundef %dev, i32 noundef 15, i32 noundef 4096) #3
  %call19.16 = tail call zeroext i1 @mt7921_mac_wtbl_update(ptr noundef %dev, i32 noundef 16, i32 noundef 4096) #3
  %call19.17 = tail call zeroext i1 @mt7921_mac_wtbl_update(ptr noundef %dev, i32 noundef 17, i32 noundef 4096) #3
  %call19.18 = tail call zeroext i1 @mt7921_mac_wtbl_update(ptr noundef %dev, i32 noundef 18, i32 noundef 4096) #3
  %call19.19 = tail call zeroext i1 @mt7921_mac_wtbl_update(ptr noundef %dev, i32 noundef 19, i32 noundef 4096) #3
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus, align 4
  %rmw.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmw.i, align 4
  %call.i = tail call i32 %15(ptr noundef %dev, i32 noundef -2112995084, i32 noundef 63, i32 noundef 63) #3
  %16 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus, align 4
  %rmw10.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %rmw10.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmw10.i, align 4
  %call15.i = tail call i32 %19(ptr noundef %dev, i32 noundef -2112995084, i32 noundef 0, i32 noundef 393216) #3
  %20 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus, align 4
  %rmw17.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %rmw17.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmw17.i, align 4
  %call22.i = tail call i32 %23(ptr noundef %dev, i32 noundef -2112990268, i32 noundef 0, i32 noundef 1073741824) #3
  %24 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus, align 4
  %rmw24.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %rmw24.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmw24.i, align 4
  %call29.i = tail call i32 %27(ptr noundef %dev, i32 noundef -2112990336, i32 noundef 0, i32 noundef 1073741824) #3
  %28 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus, align 4
  %rmw31.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %rmw31.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmw31.i, align 4
  %call36.i = tail call i32 %31(ptr noundef %dev, i32 noundef -2112958460, i32 noundef 0, i32 noundef 256) #3
  %32 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus, align 4
  %rmw38.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %rmw38.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmw38.i, align 4
  %call43.i = tail call i32 %35(ptr noundef %dev, i32 noundef -2112958460, i32 noundef 0, i32 noundef 512) #3
  %36 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus, align 4
  %rmw45.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %rmw45.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmw45.i, align 4
  %call61.i = tail call i32 %39(ptr noundef %dev, i32 noundef -2112983040, i32 noundef 65528, i32 noundef 12288) #3
  %40 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus, align 4
  %rmw63.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %rmw63.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rmw63.i, align 4
  %call68.i = tail call i32 %43(ptr noundef %dev, i32 noundef -2112983040, i32 noundef 8388608, i32 noundef 0) #3
  %44 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bus, align 4
  %rmw.i.1 = getelementptr inbounds %struct.mt76_bus_ops, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %rmw.i.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rmw.i.1, align 4
  %call.i.1 = tail call i32 %47(ptr noundef %dev, i32 noundef -2112929548, i32 noundef 63, i32 noundef 63) #3
  %48 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus, align 4
  %rmw10.i.1 = getelementptr inbounds %struct.mt76_bus_ops, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %rmw10.i.1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rmw10.i.1, align 4
  %call15.i.1 = tail call i32 %51(ptr noundef %dev, i32 noundef -2112929548, i32 noundef 0, i32 noundef 393216) #3
  %52 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bus, align 4
  %rmw17.i.1 = getelementptr inbounds %struct.mt76_bus_ops, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %rmw17.i.1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rmw17.i.1, align 4
  %call22.i.1 = tail call i32 %55(ptr noundef %dev, i32 noundef -2112924732, i32 noundef 0, i32 noundef 1073741824) #3
  %56 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bus, align 4
  %rmw24.i.1 = getelementptr inbounds %struct.mt76_bus_ops, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %rmw24.i.1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rmw24.i.1, align 4
  %call29.i.1 = tail call i32 %59(ptr noundef %dev, i32 noundef -2112924800, i32 noundef 0, i32 noundef 1073741824) #3
  %60 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bus, align 4
  %rmw31.i.1 = getelementptr inbounds %struct.mt76_bus_ops, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %rmw31.i.1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rmw31.i.1, align 4
  %call36.i.1 = tail call i32 %63(ptr noundef %dev, i32 noundef -2112892924, i32 noundef 0, i32 noundef 256) #3
  %64 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bus, align 4
  %rmw38.i.1 = getelementptr inbounds %struct.mt76_bus_ops, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %rmw38.i.1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rmw38.i.1, align 4
  %call43.i.1 = tail call i32 %67(ptr noundef %dev, i32 noundef -2112892924, i32 noundef 0, i32 noundef 512) #3
  %68 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bus, align 4
  %rmw45.i.1 = getelementptr inbounds %struct.mt76_bus_ops, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %rmw45.i.1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rmw45.i.1, align 4
  %call61.i.1 = tail call i32 %71(ptr noundef %dev, i32 noundef -2112917504, i32 noundef 65528, i32 noundef 12288) #3
  %72 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bus, align 4
  %rmw63.i.1 = getelementptr inbounds %struct.mt76_bus_ops, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %rmw63.i.1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rmw63.i.1, align 4
  %call68.i.1 = tail call i32 %75(ptr noundef %dev, i32 noundef -2112917504, i32 noundef 8388608, i32 noundef 0) #3
  %76 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bus, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %call27 = tail call i32 %79(ptr noundef %dev, i32 noundef -2112991232) #3
  %rxfilter = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 55
  %80 = ptrtoint ptr %rxfilter to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %call27, ptr %rxfilter, align 16
  %call28 = tail call i32 @mt76_connac_mcu_set_rts_thresh(ptr noundef %dev, i32 noundef 2347, i8 noundef zeroext 0) #3
  ret i32 %call28
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mt7921_mac_wtbl_update(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_mcu_set_rts_thresh(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7921_register_device(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 128
  %phy = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 2
  %dev2 = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev2, align 4
  %3 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %phy, align 8
  %priv = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 2
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %phy, ptr %priv, align 8
  %fn = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 26, i32 1
  %5 = ptrtoint ptr %fn to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mt7921_tx_worker, ptr %fn, align 4
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 9
  %ps_work = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 9, i32 9
  tail call void @__init_work(ptr noundef %ps_work, i32 noundef 0) #3
  %6 = ptrtoint ptr %ps_work to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %ps_work, align 4
  %lockdep_map = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 9, i32 9, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @mt7921_register_device.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #3
  %entry17 = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 9, i32 9, i32 0, i32 1
  %7 = ptrtoint ptr %entry17 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry17, ptr %entry17, align 4
  %prev.i = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 9, i32 9, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry17, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 9, i32 9, i32 0, i32 2
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mt7921_pm_power_save_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 9, i32 9, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.2, ptr noundef nonnull @mt7921_register_device.__key.1) #3
  %wake_work = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 9, i32 5
  tail call void @__init_work(ptr noundef %wake_work, i32 noundef 0) #3
  %10 = ptrtoint ptr %wake_work to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %wake_work, align 16
  %lockdep_map37 = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 9, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map37, ptr noundef nonnull @.str.4, ptr noundef nonnull @mt7921_register_device.__key.3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #3
  %entry40 = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 9, i32 5, i32 1
  %11 = ptrtoint ptr %entry40 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry40, ptr %entry40, align 4
  %prev.i326 = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 9, i32 5, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i326 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry40, ptr %prev.i326, align 4
  %func43 = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 9, i32 5, i32 2
  %13 = ptrtoint ptr %func43 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mt7921_pm_wake_work, ptr %func43, align 4
  %wake = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 9, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %wake, ptr noundef nonnull @.str.6, ptr noundef nonnull @mt7921_register_device.__key.5, i16 noundef signext 3) #3
  %mutex = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 9, i32 8
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.8, ptr noundef nonnull @mt7921_register_device.__key.7) #3
  %wait = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 9, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.10, ptr noundef nonnull @mt7921_register_device.__key.9) #3
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %14 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus, align 4
  %type = getelementptr inbounds %struct.mt76_bus_ops, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp = icmp eq i32 %17, 2
  br i1 %cmp, label %do.body58, label %entry.do.body62_crit_edge

entry.do.body62_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body62

do.body58:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %wait59 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 4, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %wait59, ptr noundef nonnull @.str.12, ptr noundef nonnull @mt7921_register_device.__key.11) #3
  br label %do.body62

do.body62:                                        ; preds = %do.body58, %entry.do.body62_crit_edge
  %txq_lock = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 9, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %txq_lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @mt7921_register_device.__key.13, i16 noundef signext 3) #3
  %mac_work = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 18
  tail call void @__init_work(ptr noundef %mac_work, i32 noundef 0) #3
  %18 = ptrtoint ptr %mac_work to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -64, ptr %mac_work, align 16
  %lockdep_map77 = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 18, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map77, ptr noundef nonnull @.str.16, ptr noundef nonnull @mt7921_register_device.__key.15, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #3
  %entry80 = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 18, i32 0, i32 1
  %19 = ptrtoint ptr %entry80 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %entry80, ptr %entry80, align 4
  %prev.i327 = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 18, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i327 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %entry80, ptr %prev.i327, align 4
  %func83 = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 18, i32 0, i32 2
  %21 = ptrtoint ptr %func83 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @mt7921_mac_work, ptr %func83, align 4
  %timer88 = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 18, i32 1
  tail call void @init_timer_key(ptr noundef %timer88, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.18, ptr noundef nonnull @mt7921_register_device.__key.17) #3
  %scan_work = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 2, i32 13
  tail call void @__init_work(ptr noundef %scan_work, i32 noundef 0) #3
  %22 = ptrtoint ptr %scan_work to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -64, ptr %scan_work, align 8
  %lockdep_map106 = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 2, i32 13, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map106, ptr noundef nonnull @.str.20, ptr noundef nonnull @mt7921_register_device.__key.19, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #3
  %entry110 = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 2, i32 13, i32 0, i32 1
  %23 = ptrtoint ptr %entry110 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry110, ptr %entry110, align 4
  %prev.i328 = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 2, i32 13, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i328 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry110, ptr %prev.i328, align 4
  %func114 = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 2, i32 13, i32 0, i32 2
  %25 = ptrtoint ptr %func114 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @mt7921_scan_work, ptr %func114, align 4
  %timer120 = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 2, i32 13, i32 1
  tail call void @init_timer_key(ptr noundef %timer120, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.22, ptr noundef nonnull @mt7921_register_device.__key.21) #3
  %coredump = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 10
  %work127 = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 10, i32 1
  tail call void @__init_work(ptr noundef %work127, i32 noundef 0) #3
  %26 = ptrtoint ptr %work127 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -64, ptr %work127, align 4
  %lockdep_map138 = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 10, i32 1, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map138, ptr noundef nonnull @.str.24, ptr noundef nonnull @mt7921_register_device.__key.23, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #3
  %entry142 = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 10, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %entry142 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %entry142, ptr %entry142, align 4
  %prev.i329 = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 10, i32 1, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i329 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %entry142, ptr %prev.i329, align 4
  %func146 = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 10, i32 1, i32 0, i32 2
  %29 = ptrtoint ptr %func146 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @mt7921_coredump_work, ptr %func146, align 4
  %timer152 = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 10, i32 1, i32 1
  tail call void @init_timer_key(ptr noundef %timer152, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.26, ptr noundef nonnull @mt7921_register_device.__key.25) #3
  %scan_event_list = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 2, i32 12
  %lock.i = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 2, i32 12, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #3
  %30 = ptrtoint ptr %scan_event_list to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %scan_event_list, ptr %scan_event_list, align 4
  %prev.i.i = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 2, i32 12, i32 0, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %scan_event_list, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 2, i32 12, i32 1
  %32 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %qlen.i.i, align 4
  %lock.i330 = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 10, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i330, ptr noundef nonnull @.str.31, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #3
  %33 = ptrtoint ptr %coredump to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %coredump, ptr %coredump, align 4
  %prev.i.i331 = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 10, i32 0, i32 0, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i331 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %coredump, ptr %prev.i.i331, align 4
  %qlen.i.i332 = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 10, i32 0, i32 1
  %35 = ptrtoint ptr %qlen.i.i332 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %qlen.i.i332, align 4
  %sta_poll_list = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 6
  %36 = ptrtoint ptr %sta_poll_list to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %sta_poll_list, ptr %sta_poll_list, align 4
  %prev.i333 = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 6, i32 1
  %37 = ptrtoint ptr %prev.i333 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %sta_poll_list, ptr %prev.i333, align 4
  %sta_poll_lock = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %sta_poll_lock, ptr noundef nonnull @.str.28, ptr noundef nonnull @mt7921_register_device.__key.27, i16 noundef signext 3) #3
  %reset_work = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 4
  tail call void @__init_work(ptr noundef %reset_work, i32 noundef 0) #3
  %38 = ptrtoint ptr %reset_work to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -64, ptr %reset_work, align 8
  %lockdep_map169 = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map169, ptr noundef nonnull @.str.30, ptr noundef nonnull @mt7921_register_device.__key.29, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #3
  %entry171 = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 4, i32 1
  %39 = ptrtoint ptr %entry171 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %entry171, ptr %entry171, align 4
  %prev.i334 = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 4, i32 1, i32 1
  %40 = ptrtoint ptr %prev.i334 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %entry171, ptr %prev.i334, align 4
  %func173 = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 4, i32 2
  %41 = ptrtoint ptr %func173 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @mt7921_mac_reset_work, ptr %func173, align 4
  %idle_timeout = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 9, i32 11
  %42 = ptrtoint ptr %idle_timeout to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 8, ptr %idle_timeout, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %stats = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 9, i32 12
  %44 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %stats, align 8
  %45 = load volatile i32, ptr @jiffies, align 128
  %last_doze_event = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 9, i32 12, i32 2
  %46 = ptrtoint ptr %last_doze_event to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %last_doze_event, align 8
  %47 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bus, align 4
  %type181 = getelementptr inbounds %struct.mt76_bus_ops, ptr %48, i32 0, i32 7
  %49 = ptrtoint ptr %type181 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %type181, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp182 = icmp eq i32 %50, 0
  br i1 %cmp182, label %if.then183, label %do.body62.if.end186_crit_edge

do.body62.if.end186_crit_edge:                    ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end186

if.then183:                                       ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #5
  %51 = ptrtoint ptr %pm to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %pm, align 128
  %ds_enable = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 9, i32 1
  %52 = ptrtoint ptr %ds_enable to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %ds_enable, align 1
  %53 = ptrtoint ptr %type181 to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr = load i32, ptr %type181, align 4
  br label %if.end186

if.end186:                                        ; preds = %if.then183, %do.body62.if.end186_crit_edge
  %54 = phi i32 [ %.pr, %if.then183 ], [ %50, %do.body62.if.end186_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %cmp189 = icmp eq i32 %54, 2
  br i1 %cmp189, label %if.then190, label %if.end186.if.end191_crit_edge

if.end186.if.end191_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end191

if.then190:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #5
  %extra_tx_headroom = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 5
  %55 = ptrtoint ptr %extra_tx_headroom to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %extra_tx_headroom, align 4
  %add = add i32 %56, 68
  store i32 %add, ptr %extra_tx_headroom, align 4
  br label %if.end191

if.end191:                                        ; preds = %if.then190, %if.end186.if.end191_crit_edge
  %state.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i) #3
  %hif_ops.i.i = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 11
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end191
  %i.077.i = phi i32 [ 0, %if.end191 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %57 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bus, align 4
  %wr.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %wr.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %wr.i.i, align 4
  tail call void %60(ptr noundef %dev, i32 noundef 4321852, i32 noundef 0) #3
  %61 = ptrtoint ptr %hif_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hif_ops.i.i, align 4
  %mcu_init.i.i = getelementptr inbounds %struct.mt7921_hif_ops, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %mcu_init.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mcu_init.i.i, align 4
  %call.i.i = tail call i32 %64(ptr noundef %dev) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.end.i.i:                                       ; preds = %for.body.i
  tail call void @mt76_eeprom_override(ptr noundef %dev) #3
  %call1.i.i = tail call i32 @mt7921_mcu_set_eeprom(ptr noundef %dev) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %__mt7921_init_hardware.exit.i, label %if.end.i.i.if.end.i_crit_edge

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

__mt7921_init_hardware.exit.i:                    ; preds = %if.end.i.i
  %call5.i.i = tail call i32 @mt7921_mac_init(ptr noundef %dev) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool.not.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool.not.i, label %if.end5.i, label %__mt7921_init_hardware.exit.i.if.end.i_crit_edge

__mt7921_init_hardware.exit.i.if.end.i_crit_edge: ; preds = %__mt7921_init_hardware.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.end.i:                                         ; preds = %__mt7921_init_hardware.exit.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %ret.0.i72.i = phi i32 [ %call5.i.i, %__mt7921_init_hardware.exit.i.if.end.i_crit_edge ], [ %call1.i.i, %if.end.i.i.if.end.i_crit_edge ], [ %call.i.i, %for.body.i.if.end.i_crit_edge ]
  %65 = ptrtoint ptr %hif_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hif_ops.i.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %call1.i = tail call i32 %68(ptr noundef %dev) #3
  %inc.i = add nuw nsw i32 %i.077.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %do.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %dev4.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %69 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev4.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.32) #6
  br label %cleanup

if.end5.i:                                        ; preds = %__mt7921_init_hardware.exit.i
  %wcid_mask.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 33
  %call6.i = tail call i32 @mt76_wcid_alloc(ptr noundef %wcid_mask.i, i32 noundef 14) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end194, label %if.end5.i.cleanup_crit_edge

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end194:                                        ; preds = %if.end5.i
  %global_wcid.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 36
  %idx10.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 36, i32 6
  %71 = ptrtoint ptr %idx10.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 0, ptr %idx10.i, align 2
  %hw_key_idx.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 36, i32 7
  %72 = ptrtoint ptr %hw_key_idx.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -1, ptr %hw_key_idx.i, align 4
  %tx_info.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 36, i32 13
  %73 = ptrtoint ptr %tx_info.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tx_info.i, align 8
  %or.i = or i32 %74, -2147483648
  store i32 %or.i, ptr %tx_info.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !72
  %wcid40.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 37
  %75 = ptrtoint ptr %wcid40.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %global_wcid.i, ptr %wcid40.i, align 4
  %priv.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %76 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %priv.i.i, align 8
  %priv1.i.i = getelementptr inbounds %struct.mt76_phy, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %priv1.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %priv1.i.i, align 8
  %dev1.i = getelementptr inbounds %struct.mt7921_phy, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev1.i, align 4
  %wiphy2.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %82 = ptrtoint ptr %wiphy2.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %wiphy2.i, align 8
  %queues.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 11
  %84 = ptrtoint ptr %queues.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 4, ptr %queues.i, align 4
  %max_rx_aggregation_subframes.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 17
  %85 = ptrtoint ptr %max_rx_aggregation_subframes.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 64, ptr %max_rx_aggregation_subframes.i, align 4
  %max_tx_aggregation_subframes.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 18
  %86 = ptrtoint ptr %max_tx_aggregation_subframes.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 128, ptr %max_tx_aggregation_subframes.i, align 2
  %netdev_features.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 24
  %87 = ptrtoint ptr %netdev_features.i to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 1099511627776, ptr %netdev_features.i, align 8
  %radiotap_timestamp.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 23
  %88 = ptrtoint ptr %radiotap_timestamp.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1, ptr %radiotap_timestamp.i, align 8
  %slottime.i = getelementptr inbounds %struct.mt7921_phy, ptr %79, i32 0, i32 7
  %89 = ptrtoint ptr %slottime.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 9, ptr %slottime.i, align 4
  %sta_data_size.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 8
  %90 = ptrtoint ptr %sta_data_size.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 640, ptr %sta_data_size.i, align 8
  %vif_data_size.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 7
  %91 = ptrtoint ptr %vif_data_size.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 720, ptr %vif_data_size.i, align 4
  %iface_combinations.i = getelementptr inbounds %struct.wiphy, ptr %83, i32 0, i32 5
  %92 = ptrtoint ptr %iface_combinations.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @if_comb, ptr %iface_combinations.i, align 16
  %flags.i = getelementptr inbounds %struct.wiphy, ptr %83, i32 0, i32 11
  %93 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %flags.i, align 32
  %and.i = and i32 %94, -8388961
  %interface_modes.i = getelementptr inbounds %struct.wiphy, ptr %83, i32 0, i32 9
  %95 = ptrtoint ptr %interface_modes.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 4, ptr %interface_modes.i, align 4
  %n_iface_combinations.i = getelementptr inbounds %struct.wiphy, ptr %83, i32 0, i32 6
  %96 = ptrtoint ptr %n_iface_combinations.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 1, ptr %n_iface_combinations.i, align 4
  %max_scan_ie_len.i = getelementptr inbounds %struct.wiphy, ptr %83, i32 0, i32 22
  %97 = ptrtoint ptr %max_scan_ie_len.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 600, ptr %max_scan_ie_len.i, align 4
  %max_scan_ssids.i = getelementptr inbounds %struct.wiphy, ptr %83, i32 0, i32 18
  %98 = ptrtoint ptr %max_scan_ssids.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 4, ptr %max_scan_ssids.i, align 32
  %max_sched_scan_plan_interval.i = getelementptr inbounds %struct.wiphy, ptr %83, i32 0, i32 25
  %99 = ptrtoint ptr %max_sched_scan_plan_interval.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 65535, ptr %max_sched_scan_plan_interval.i, align 4
  %max_sched_scan_ie_len.i = getelementptr inbounds %struct.wiphy, ptr %83, i32 0, i32 23
  %100 = ptrtoint ptr %max_sched_scan_ie_len.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 2304, ptr %max_sched_scan_ie_len.i, align 2
  %max_sched_scan_ssids.i = getelementptr inbounds %struct.wiphy, ptr %83, i32 0, i32 20
  %101 = ptrtoint ptr %max_sched_scan_ssids.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 10, ptr %max_sched_scan_ssids.i, align 2
  %max_match_sets.i = getelementptr inbounds %struct.wiphy, ptr %83, i32 0, i32 21
  %102 = ptrtoint ptr %max_match_sets.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 16, ptr %max_match_sets.i, align 1
  %max_sched_scan_reqs.i = getelementptr inbounds %struct.wiphy, ptr %83, i32 0, i32 19
  %103 = ptrtoint ptr %max_sched_scan_reqs.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 1, ptr %max_sched_scan_reqs.i, align 1
  %or.i335 = or i32 %and.i, 8388608
  store i32 %or.i335, ptr %flags.i, align 32
  %reg_notifier.i = getelementptr inbounds %struct.wiphy, ptr %83, i32 0, i32 54
  %104 = ptrtoint ptr %reg_notifier.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @mt7921_regd_notifier, ptr %reg_notifier.i, align 8
  %features.i = getelementptr inbounds %struct.wiphy, ptr %83, i32 0, i32 13
  %105 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %features.i, align 8
  %or4.i = or i32 %106, 1610612736
  store i32 %or4.i, ptr %features.i, align 8
  %ext_features.i.i = getelementptr inbounds %struct.wiphy, ptr %83, i32 0, i32 14
  %107 = ptrtoint ptr %ext_features.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %ext_features.i.i, align 1
  %109 = or i8 %108, 32
  store i8 %109, ptr %ext_features.i.i, align 1
  %flags.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 4
  %110 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %flags.i.i, align 4
  %add.ptr.i.i.i = getelementptr %struct.ieee80211_hw, ptr %1, i32 0, i32 4, i32 1
  %112 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %add.ptr.i.i.i, align 4
  %or.i.i7.i = or i32 %113, 393216
  store i32 %or.i.i7.i, ptr %add.ptr.i.i.i, align 4
  %or.i.i13.i = or i32 %111, 268440833
  store i32 %or.i.i13.i, ptr %flags.i.i, align 4
  %pm.i = getelementptr inbounds %struct.mt7921_dev, ptr %81, i32 0, i32 9
  %114 = ptrtoint ptr %pm.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %pm.i, align 128, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool.not.i336 = icmp eq i8 %115, 0
  br i1 %tobool.not.i336, label %if.end194.mt7921_init_wiphy.exit_crit_edge, label %if.then.i

if.end194.mt7921_init_wiphy.exit_crit_edge:       ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #5
  br label %mt7921_init_wiphy.exit

if.then.i:                                        ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #5
  %or.i.i15.i = or i32 %111, 268571905
  %116 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %or.i.i15.i, ptr %flags.i.i, align 4
  br label %mt7921_init_wiphy.exit

mt7921_init_wiphy.exit:                           ; preds = %if.then.i, %if.end194.mt7921_init_wiphy.exit_crit_edge
  %max_tx_fragments.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 19
  %117 = ptrtoint ptr %max_tx_fragments.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 4, ptr %max_tx_fragments.i, align 8
  %ht_cap = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 10, i32 0, i32 5
  %118 = ptrtoint ptr %ht_cap to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %ht_cap, align 4
  %120 = or i16 %119, 2049
  store i16 %120, ptr %ht_cap, align 4
  %ht_cap201 = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 11, i32 0, i32 5
  %121 = ptrtoint ptr %ht_cap201 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %ht_cap201, align 4
  %123 = or i16 %122, 2049
  store i16 %123, ptr %ht_cap201, align 4
  %cap208 = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 11, i32 0, i32 6, i32 1
  %124 = ptrtoint ptr %cap208 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %cap208, align 4
  %or209 = or i32 %125, 59797505
  store i32 %or209, ptr %cap208, align 4
  %rev.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 39
  %126 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %rev.i.i, align 4
  %shr.i.mask.i = and i32 %127, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 2032271360, i32 %shr.i.mask.i)
  %cmp.i = icmp eq i32 %shr.i.mask.i, 2032271360
  br i1 %cmp.i, label %if.then211, label %mt7921_init_wiphy.exit.if.end217_crit_edge

mt7921_init_wiphy.exit.if.end217_crit_edge:       ; preds = %mt7921_init_wiphy.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end217

if.then211:                                       ; preds = %mt7921_init_wiphy.exit
  call void @__sanitizer_cov_trace_pc() #5
  %or216 = or i32 %125, 59797573
  %128 = ptrtoint ptr %cap208 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %or216, ptr %cap208, align 4
  br label %if.end217

if.end217:                                        ; preds = %if.then211, %mt7921_init_wiphy.exit.if.end217_crit_edge
  %chainmask = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 16
  %129 = ptrtoint ptr %chainmask to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %chainmask, align 2
  %conv218 = zext i16 %130 to i32
  %131 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev, align 128
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %wiphy, align 8
  %available_antennas_rx = getelementptr inbounds %struct.wiphy, ptr %134, i32 0, i32 45
  %135 = ptrtoint ptr %available_antennas_rx to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %conv218, ptr %available_antennas_rx, align 16
  %136 = load i16, ptr %chainmask, align 2
  %conv221 = zext i16 %136 to i32
  %137 = load ptr, ptr %dev, align 128
  %wiphy223 = getelementptr inbounds %struct.ieee80211_hw, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %wiphy223 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %wiphy223, align 8
  %available_antennas_tx = getelementptr inbounds %struct.wiphy, ptr %139, i32 0, i32 44
  %140 = ptrtoint ptr %available_antennas_tx to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %conv221, ptr %available_antennas_tx, align 4
  tail call void @mt76_set_stream_caps(ptr noundef %dev, i1 noundef zeroext true) #3
  tail call void @mt7921_set_stream_he_caps(ptr noundef %phy) #3
  %call225 = tail call i32 @mt76_register_device(ptr noundef %dev, i1 noundef zeroext true, ptr noundef nonnull @mt76_rates, i32 noundef 12) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call225)
  %tobool226.not = icmp eq i32 %call225, 0
  br i1 %tobool226.not, label %if.end228, label %if.end217.cleanup_crit_edge

if.end217.cleanup_crit_edge:                      ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end228:                                        ; preds = %if.end217
  %call229 = tail call i32 @mt7921_init_debugfs(ptr noundef %dev) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229)
  %tobool230.not = icmp eq i32 %call229, 0
  br i1 %tobool230.not, label %if.end232, label %if.end228.cleanup_crit_edge

if.end228.cleanup_crit_edge:                      ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end232:                                        ; preds = %if.end228
  %ds_enable234 = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 9, i32 1
  %141 = ptrtoint ptr %ds_enable234 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %ds_enable234, align 1, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool235 = icmp ne i8 %142, 0
  %call236 = tail call i32 @mt76_connac_mcu_set_deep_sleep(ptr noundef %dev, i1 noundef zeroext %tobool235) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call236)
  %tobool237.not = icmp eq i32 %call236, 0
  br i1 %tobool237.not, label %if.end239, label %if.end232.cleanup_crit_edge

if.end232.cleanup_crit_edge:                      ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end239:                                        ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #5
  %hw_init_done = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 5
  %143 = ptrtoint ptr %hw_init_done to i32
  call void @__asan_load1_noabort(i32 %143)
  %bf.load = load i8, ptr %hw_init_done, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %hw_init_done, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end239, %if.end232.cleanup_crit_edge, %if.end228.cleanup_crit_edge, %if.end217.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %do.end.i
  %retval.0 = phi i32 [ 0, %if.end239 ], [ %call225, %if.end217.cleanup_crit_edge ], [ %call229, %if.end228.cleanup_crit_edge ], [ %call236, %if.end232.cleanup_crit_edge ], [ -28, %if.end5.i.cleanup_crit_edge ], [ %ret.0.i72.i, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7921_tx_worker(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7921_pm_power_save_work(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7921_pm_wake_work(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7921_mac_work(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7921_scan_work(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7921_coredump_work(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7921_mac_reset_work(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_set_stream_caps(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7921_set_stream_he_caps(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_register_device(ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_init_debugfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_mcu_set_deep_sleep(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_wcid_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_eeprom_override(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_mcu_set_eeprom(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7921_regd_notifier(ptr noundef %wiphy, ptr nocapture noundef readonly %request) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @wiphy_to_ieee80211_hw(ptr noundef %wiphy) #3
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %priv1.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1.i, align 8
  %alpha2 = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 47
  %alpha23 = getelementptr inbounds %struct.regulatory_request, ptr %request, i32 0, i32 4
  %6 = call ptr @memcpy(ptr %alpha2, ptr %alpha23, i32 3)
  %dfs_region = getelementptr inbounds %struct.regulatory_request, ptr %request, i32 0, i32 5
  %7 = ptrtoint ptr %dfs_region to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dfs_region, align 4
  %region = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 48
  %9 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %region, align 4
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %3, i32 0, i32 9
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #3
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %3, ptr noundef %pm) #3
  %10 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i, align 8
  %call5 = tail call i32 @mt76_connac_mcu_set_channel_domain(ptr noundef %11) #3
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 8
  %call6 = tail call i32 @mt76_connac_mcu_set_rate_txpower(ptr noundef %13) #3
  tail call void @mt76_connac_power_save_sched(ptr noundef %3, ptr noundef %pm) #3
  tail call void @mutex_unlock(ptr noundef %mutex.i) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wiphy_to_ieee80211_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_mcu_set_channel_domain(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_mcu_set_rate_txpower(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_pm_wake(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_connac_power_save_sched(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !45, !46, !48, !50, !51, !53, !54, !55, !56, !57, !58, !59, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__ksymtab_mt7921_mac_init, !1, !"__ksymtab_mt7921_mac_init", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/init.c", i32 141, i32 1}
!2 = !{ptr @mt7921_register_device.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/init.c", i32 208, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mt7921_register_device.__key.1, !3, !"__key", i1 false, i1 false}
!6 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @mt7921_register_device.__key.3, !8, !"__key", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/init.c", i32 209, i32 2}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @mt7921_register_device.__key.5, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/init.c", i32 210, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @mt7921_register_device.__key.7, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/init.c", i32 211, i32 2}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @mt7921_register_device.__key.9, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/init.c", i32 212, i32 2}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mt7921_register_device.__key.11, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/init.c", i32 214, i32 3}
!21 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mt7921_register_device.__key.13, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/init.c", i32 215, i32 2}
!24 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mt7921_register_device.__key.15, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/init.c", i32 216, i32 2}
!27 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mt7921_register_device.__key.17, !26, !"__key", i1 false, i1 false}
!29 = !{ptr @.str.18, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mt7921_register_device.__key.19, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/init.c", i32 217, i32 2}
!32 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @mt7921_register_device.__key.21, !31, !"__key", i1 false, i1 false}
!34 = !{ptr @.str.22, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @mt7921_register_device.__key.23, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/init.c", i32 218, i32 2}
!37 = !{ptr @.str.24, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @mt7921_register_device.__key.25, !36, !"__key", i1 false, i1 false}
!39 = !{ptr @.str.26, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @mt7921_register_device.__key.27, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/init.c", i32 222, i32 2}
!42 = !{ptr @.str.28, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @mt7921_register_device.__key.29, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/init.c", i32 224, i32 2}
!45 = !{ptr @.str.30, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @__ksymtab_mt7921_register_device, !47, !"__ksymtab_mt7921_register_device", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/init.c", i32 287, i32 1}
!48 = !{ptr @skb_queue_head_init.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!50 = !{ptr @.str.31, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.32, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/init.c", i32 181, i32 3}
!53 = !{ptr @.str.33, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.34, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.35, !52, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.36, !52, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @mt7921_init_hardware._entry, !52, !"_entry", i1 false, i1 false}
!58 = !{ptr @mt7921_init_hardware._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @if_comb, !60, !"if_comb", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/init.c", i32 17, i32 49}
!61 = !{ptr @if_limits, !62, !"if_limits", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/init.c", i32 10, i32 43}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{i64 2158408855}
!73 = !{i8 0, i8 2}
