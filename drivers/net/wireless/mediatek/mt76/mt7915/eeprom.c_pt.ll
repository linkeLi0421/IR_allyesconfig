; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt7915/eeprom.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt7915/eeprom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.firmware = type { i32, ptr, ptr }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }

@mt7915_eeprom_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 164, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"eeprom load fail, use default bin\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt7915_eeprom_init\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/wireless/mediatek/mt76/mt7915/eeprom.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt7915_eeprom_init._entry_ptr = internal global ptr @mt7915_eeprom_init._entry, section ".printk_index", align 4
@mt7915_sku_group_len = dso_local constant { [15 x i8], [17 x i8] } { [15 x i8] c"\04\08\08\09\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mediatek/mt7915_eeprom.bin\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mediatek/mt7915_eeprom_dbdc.bin\00", [32 x i8] zeroinitializer }, align 32
@mt7915_eeprom_load_default._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 57, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid default bin\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mt7915_eeprom_load_default\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mt7915_eeprom_load_default._entry_ptr = internal global ptr @mt7915_eeprom_load_default._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 2]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 2]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 2, i64 0, i64 3]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 164, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [21 x i8] c"mt7915_sku_group_len\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 234, i32 10 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 44, i32 22 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 50, i32 17 }
@___asan_gen_.39 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [54 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7915/eeprom.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 57, i32 3 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @mt7915_eeprom_init._entry, ptr @mt7915_eeprom_init._entry_ptr, ptr @mt7915_eeprom_load_default._entry, ptr @mt7915_eeprom_load_default._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mt7915_sku_group_len, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_eeprom_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_sku_group_len to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_eeprom_load_default._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mt7915_eeprom_parse_band_config(ptr noundef readonly %phy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %phy2 = getelementptr inbounds %struct.mt7915_dev, ptr %1, i32 0, i32 4
  %cmp.not = icmp eq ptr %phy2, %phy
  %eeprom3 = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %eeprom3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eeprom3, align 16
  %add = select i1 %cmp.not, i32 400, i32 401
  %arrayidx = getelementptr i8, ptr %3, i32 %add
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = lshr i8 %5, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %5)
  %cmp17 = icmp ult i8 %5, 64
  %extract.t42 = trunc i8 %6 to i2
  br i1 %cmp17, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dbdc_support = getelementptr inbounds %struct.mt7915_dev, ptr %1, i32 0, i32 17
  %7 = ptrtoint ptr %dbdc_support to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dbdc_support, align 4, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool19.not = icmp eq i8 %8, 0
  %extract.t = select i1 %cmp.not, i2 -2, i2 1
  br i1 %tobool19.not, label %land.lhs.true.sw.default_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.sw.default_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %val.0.off0 = phi i2 [ %extract.t42, %entry.if.end_crit_edge ], [ %extract.t, %land.lhs.true.if.end_crit_edge ]
  %9 = zext i2 %val.0.off0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i2 %val.0.off0, label %if.end.sw.default_crit_edge [
    i2 1, label %sw.bb
    i2 -2, label %sw.bb23
  ]

if.end.sw.default_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy, align 8
  %has_5ghz = getelementptr inbounds %struct.mt76_phy, ptr %11, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %has_5ghz to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %has_5ghz, align 1
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phy, align 8
  %cap25 = getelementptr inbounds %struct.mt76_phy, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %cap25 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %cap25, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.sw.default_crit_edge, %land.lhs.true.sw.default_crit_edge
  %16 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy, align 8
  %cap27 = getelementptr inbounds %struct.mt76_phy, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %cap27 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %cap27, align 8
  %19 = load ptr, ptr %phy, align 8
  %has_5ghz31 = getelementptr inbounds %struct.mt76_phy, ptr %19, i32 0, i32 9, i32 1
  %20 = ptrtoint ptr %has_5ghz31 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %has_5ghz31, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb23, %sw.bb
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_eeprom_init(ptr noundef %dev) local_unnamed_addr #2 align 64 {
entry:
  %fw.i = alloca ptr, align 4
  %free_block_num.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @mt76_eeprom_init(ptr noundef %dev, i32 noundef 3584) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then, label %if.end.i

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %flash_mode.i = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %flash_mode.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %flash_mode.i, align 1
  br label %if.end12.i

if.else.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %free_block_num.i) #6
  %1 = ptrtoint ptr %free_block_num.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %free_block_num.i, align 1, !annotation !30
  %call2.i = call i32 @mt7915_mcu_get_eeprom_free_block(ptr noundef %dev, ptr noundef nonnull %free_block_num.i) #6
  %2 = ptrtoint ptr %free_block_num.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %free_block_num.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %3)
  %cmp3.i = icmp ugt i8 %3, 28
  br i1 %cmp3.i, label %cleanup14.critedge.i, label %if.else.i.for.body.i_crit_edge

if.else.i.for.body.i_crit_edge:                   ; preds = %if.else.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.else.i.for.body.i_crit_edge
  %i.023.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.else.i.for.body.i_crit_edge ]
  %mul.i = shl nuw nsw i32 %i.023.i, 4
  %call9.i = call i32 @mt7915_mcu_get_eeprom(ptr noundef %dev, i32 noundef %mul.i) #6
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 224
  br i1 %exitcond.not.i, label %cleanup.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

cleanup.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %free_block_num.i) #6
  br label %if.end12.i

if.end12.i:                                       ; preds = %cleanup.i, %if.then1.i
  %eeprom1.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %4 = ptrtoint ptr %eeprom1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eeprom1.i.i, align 16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 5497, i16 %7)
  %cond.i.i = icmp eq i16 %7, 5497
  br i1 %cond.i.i, label %if.end12.i.if.end7_crit_edge, label %if.end12.i.do.end_crit_edge

if.end12.i.do.end_crit_edge:                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end12.i.if.end7_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

cleanup14.critedge.i:                             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %free_block_num.i) #6
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call.i)
  %cmp1.not = icmp eq i32 %call.i, -22
  br i1 %cmp1.not, label %if.then.do.end_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %if.then.do.end_crit_edge, %cleanup14.critedge.i, %if.end12.i.do.end_crit_edge
  %dev3 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %8 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev3, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str) #9
  %eeprom1.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %10 = ptrtoint ptr %eeprom1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %eeprom1.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #6
  %12 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %fw.i, align 4
  %dbdc_support.i = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 17
  %13 = ptrtoint ptr %dbdc_support.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dbdc_support.i, align 4, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i25 = icmp eq i8 %14, 0
  %spec.select.i = select i1 %tobool.not.i25, ptr @.str.5, ptr @.str.6
  %15 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev3, align 8
  %call.i26 = call i32 @request_firmware(ptr noundef nonnull %fw.i, ptr noundef nonnull %spec.select.i, ptr noundef %16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool3.not.i = icmp eq i32 %call.i26, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %mt7915_eeprom_load_default.exit.thread

mt7915_eeprom_load_default.exit.thread:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #6
  br label %cleanup

if.end5.i:                                        ; preds = %do.end
  %17 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fw.i, align 4
  %tobool6.not.i = icmp eq ptr %18, null
  br i1 %tobool6.not.i, label %if.end5.i.mt7915_eeprom_load_default.exit_crit_edge, label %lor.lhs.false.i

if.end5.i.mt7915_eeprom_load_default.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt7915_eeprom_load_default.exit

lor.lhs.false.i:                                  ; preds = %if.end5.i
  %data7.i = getelementptr inbounds %struct.firmware, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %data7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data7.i, align 4
  %tobool8.not.i = icmp eq ptr %20, null
  br i1 %tobool8.not.i, label %lor.lhs.false.i.mt7915_eeprom_load_default.exit_crit_edge, label %mt7915_eeprom_load_default.exit.thread45

lor.lhs.false.i.mt7915_eeprom_load_default.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt7915_eeprom_load_default.exit

mt7915_eeprom_load_default.exit.thread45:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = call ptr @memcpy(ptr %11, ptr %20, i32 3584)
  %flash_mode.i27 = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 18
  %22 = ptrtoint ptr %flash_mode.i27 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %flash_mode.i27, align 1
  %23 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %24) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #6
  br label %if.end7

mt7915_eeprom_load_default.exit:                  ; preds = %lor.lhs.false.i.mt7915_eeprom_load_default.exit_crit_edge, %if.end5.i.mt7915_eeprom_load_default.exit_crit_edge
  %25 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev3, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.7) #9
  %27 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %28) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #6
  br label %cleanup

if.end7:                                          ; preds = %mt7915_eeprom_load_default.exit.thread45, %if.end12.i.if.end7_crit_edge
  %flash_mode.i29 = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 18
  %29 = ptrtoint ptr %flash_mode.i29 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %flash_mode.i29, align 1, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i30 = icmp eq i8 %30, 0
  br i1 %tobool.not.i30, label %if.end7.if.end11_crit_edge, label %if.end.i32

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end.i32:                                       ; preds = %if.end7
  %eeprom1.i31 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %31 = ptrtoint ptr %eeprom1.i31 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %eeprom1.i31, align 16
  %arrayidx.i = getelementptr i8, ptr %32, i32 98
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %34)
  %cmp.not.i = icmp eq i8 %34, 7
  br i1 %cmp.not.i, label %if.end4.i, label %if.end.i32.if.end11_crit_edge

if.end.i32.if.end11_crit_edge:                    ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end4.i:                                        ; preds = %if.end.i32
  %dev5.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %35 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev5.i, align 8
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %36, i32 noundef 105488, i32 noundef 3520) #6
  %cal.i = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 23
  %37 = ptrtoint ptr %cal.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i.i, ptr %cal.i, align 4
  %tobool7.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool7.not.i, label %if.end4.i.cleanup_crit_edge, label %mt7915_eeprom_load_precal.exit

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

mt7915_eeprom_load_precal.exit:                   ; preds = %if.end4.i
  %call11.i = call i32 @mt76_get_of_eeprom(ptr noundef %dev, ptr noundef nonnull %call.i.i, i32 noundef 3600, i32 noundef 105488) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool9.not = icmp eq i32 %call11.i, 0
  br i1 %tobool9.not, label %mt7915_eeprom_load_precal.exit.if.end11_crit_edge, label %mt7915_eeprom_load_precal.exit.cleanup_crit_edge

mt7915_eeprom_load_precal.exit.cleanup_crit_edge: ; preds = %mt7915_eeprom_load_precal.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

mt7915_eeprom_load_precal.exit.if.end11_crit_edge: ; preds = %mt7915_eeprom_load_precal.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end11:                                         ; preds = %mt7915_eeprom_load_precal.exit.if.end11_crit_edge, %if.end.i32.if.end11_crit_edge, %if.end7.if.end11_crit_edge
  %eeprom1.i35 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %38 = ptrtoint ptr %eeprom1.i35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %eeprom1.i35, align 16
  %phy.i = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 4
  %dev1.i.i = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev1.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %41, %dev
  %eeprom3.i.i = getelementptr inbounds %struct.mt76_dev, ptr %41, i32 0, i32 44
  %42 = ptrtoint ptr %eeprom3.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %eeprom3.i.i, align 16
  %add.i.i = select i1 %cmp.not.i.i, i32 400, i32 401
  %arrayidx.i.i = getelementptr i8, ptr %43, i32 %add.i.i
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.i.i, align 1
  %46 = lshr i8 %45, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %45)
  %cmp17.i.i = icmp ult i8 %45, 64
  %extract.t42.i.i = trunc i8 %46 to i2
  br i1 %cmp17.i.i, label %land.lhs.true.i.i, label %if.end11.if.end.i.i_crit_edge

if.end11.if.end.i.i_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end11
  %dbdc_support.i.i = getelementptr inbounds %struct.mt7915_dev, ptr %41, i32 0, i32 17
  %47 = ptrtoint ptr %dbdc_support.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %dbdc_support.i.i, align 4, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool19.not.i.i = icmp eq i8 %48, 0
  %extract.t.i.i = select i1 %cmp.not.i.i, i2 -2, i2 1
  br i1 %tobool19.not.i.i, label %land.lhs.true.i.i.sw.default.i.i_crit_edge, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

land.lhs.true.i.i.sw.default.i.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end11.if.end.i.i_crit_edge
  %val.0.off0.i.i = phi i2 [ %extract.t42.i.i, %if.end11.if.end.i.i_crit_edge ], [ %extract.t.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  %49 = zext i2 %val.0.off0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.10)
  switch i2 %val.0.off0.i.i, label %if.end.i.i.sw.default.i.i_crit_edge [
    i2 1, label %sw.bb.i.i
    i2 -2, label %sw.bb23.i.i
  ]

if.end.i.i.sw.default.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default.i.i

sw.bb.i.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %phy.i, align 8
  %has_5ghz.i.i = getelementptr inbounds %struct.mt76_phy, ptr %51, i32 0, i32 9, i32 1
  %52 = ptrtoint ptr %has_5ghz.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %has_5ghz.i.i, align 1
  br label %mt7915_eeprom_parse_band_config.exit.i

sw.bb23.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %phy.i, align 8
  %cap25.i.i = getelementptr inbounds %struct.mt76_phy, ptr %54, i32 0, i32 9
  %55 = ptrtoint ptr %cap25.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %cap25.i.i, align 8
  br label %mt7915_eeprom_parse_band_config.exit.i

sw.default.i.i:                                   ; preds = %if.end.i.i.sw.default.i.i_crit_edge, %land.lhs.true.i.i.sw.default.i.i_crit_edge
  %56 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %phy.i, align 8
  %cap27.i.i = getelementptr inbounds %struct.mt76_phy, ptr %57, i32 0, i32 9
  %58 = ptrtoint ptr %cap27.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %cap27.i.i, align 8
  %59 = load ptr, ptr %phy.i, align 8
  %has_5ghz31.i.i = getelementptr inbounds %struct.mt76_phy, ptr %59, i32 0, i32 9, i32 1
  %60 = ptrtoint ptr %has_5ghz31.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %has_5ghz31.i.i, align 1
  br label %mt7915_eeprom_parse_band_config.exit.i

mt7915_eeprom_parse_band_config.exit.i:           ; preds = %sw.default.i.i, %sw.bb23.i.i, %sw.bb.i.i
  %arrayidx.i36 = getelementptr i8, ptr %39, i32 400
  %61 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.i36, align 1
  %63 = and i8 %62, 7
  %64 = add nsw i8 %63, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %64)
  %65 = icmp ult i8 %64, -4
  %nss.0.i = select i1 %65, i8 4, i8 %63
  %dbdc_support.i37 = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 17
  %66 = ptrtoint ptr %dbdc_support.i37 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %dbdc_support.i37, align 4, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool17.not.i = icmp eq i8 %67, 0
  br i1 %tobool17.not.i, label %mt7915_eeprom_parse_band_config.exit.i.mt7915_eeprom_parse_hw_cap.exit_crit_edge, label %do.end33.i

mt7915_eeprom_parse_band_config.exit.i.mt7915_eeprom_parse_hw_cap.exit_crit_edge: ; preds = %mt7915_eeprom_parse_band_config.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt7915_eeprom_parse_hw_cap.exit

do.end33.i:                                       ; preds = %mt7915_eeprom_parse_band_config.exit.i
  %arrayidx35.i = getelementptr i8, ptr %39, i32 403
  %68 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx35.i, align 1
  %70 = and i8 %69, 3
  %trunc.i = trunc i8 %69 to i2
  %71 = zext i2 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.11)
  switch i2 %trunc.i, label %do.end33.i.if.end46.i_crit_edge [
    i2 0, label %do.end33.i.if.then45.i_crit_edge
    i2 -1, label %do.end33.i.if.then45.i_crit_edge53
  ]

do.end33.i.if.then45.i_crit_edge53:               ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45.i

do.end33.i.if.then45.i_crit_edge:                 ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45.i

do.end33.i.if.end46.i_crit_edge:                  ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46.i

if.then45.i:                                      ; preds = %do.end33.i.if.then45.i_crit_edge, %do.end33.i.if.then45.i_crit_edge53
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then45.i, %do.end33.i.if.end46.i_crit_edge
  %nss_band.0.i = phi i8 [ 2, %if.then45.i ], [ %70, %do.end33.i.if.end46.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %nss_band.0.i, i8 %nss.0.i)
  %cmp49.not.i = icmp ult i8 %nss_band.0.i, %nss.0.i
  %spec.store.select.i = select i1 %cmp49.not.i, i8 %nss.0.i, i8 4
  br label %mt7915_eeprom_parse_hw_cap.exit

mt7915_eeprom_parse_hw_cap.exit:                  ; preds = %if.end46.i, %mt7915_eeprom_parse_band_config.exit.i.mt7915_eeprom_parse_hw_cap.exit_crit_edge
  %nss_band.1.i = phi i8 [ %nss_band.0.i, %if.end46.i ], [ %nss.0.i, %mt7915_eeprom_parse_band_config.exit.i.mt7915_eeprom_parse_hw_cap.exit_crit_edge ]
  %nss.1.i = phi i8 [ %spec.store.select.i, %if.end46.i ], [ %nss.0.i, %mt7915_eeprom_parse_band_config.exit.i.mt7915_eeprom_parse_hw_cap.exit_crit_edge ]
  %conv54.i = zext i8 %nss.1.i to i32
  %notmask.i = shl nsw i32 -1, %conv54.i
  %72 = trunc i32 %notmask.i to i16
  %conv55.i = xor i16 %72, -1
  %chainmask.i = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 5
  %73 = ptrtoint ptr %chainmask.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv55.i, ptr %chainmask.i, align 8
  %conv56.i = zext i8 %nss_band.1.i to i32
  %notmask77.i = shl nsw i32 -1, %conv56.i
  %74 = trunc i32 %notmask77.i to i8
  %conv59.i = xor i8 %74, -1
  %antenna_mask.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 15
  %75 = ptrtoint ptr %antenna_mask.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv59.i, ptr %antenna_mask.i, align 8
  %conv61.i = zext i8 %conv59.i to i16
  %chainmask62.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 16
  %76 = ptrtoint ptr %chainmask62.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv61.i, ptr %chainmask62.i, align 2
  %macaddr = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 13
  %77 = ptrtoint ptr %eeprom1.i35 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %eeprom1.i35, align 16
  %add.ptr = getelementptr i8, ptr %78, i32 4
  %79 = call ptr @memcpy(ptr %macaddr, ptr %add.ptr, i32 6)
  call void @mt76_eeprom_override(ptr noundef %dev) #6
  br label %cleanup

cleanup:                                          ; preds = %mt7915_eeprom_parse_hw_cap.exit, %mt7915_eeprom_load_precal.exit.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %mt7915_eeprom_load_default.exit, %mt7915_eeprom_load_default.exit.thread, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mt7915_eeprom_parse_hw_cap.exit ], [ %call.i, %if.then.cleanup_crit_edge ], [ -22, %mt7915_eeprom_load_default.exit ], [ %call11.i, %mt7915_eeprom_load_precal.exit.cleanup_crit_edge ], [ %call.i26, %mt7915_eeprom_load_default.exit.thread ], [ -12, %if.end4.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_eeprom_override(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mt7915_eeprom_get_target_power(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %chan, i8 noundef zeroext %chain_idx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom1 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %0 = ptrtoint ptr %eeprom1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eeprom1, align 16
  %conv = zext i8 %chain_idx to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %chain_idx)
  %cmp = icmp ugt i8 %chain_idx, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  %arrayidx.i = getelementptr i8, ptr %1, i32 407
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %retval.0.i52.not = icmp eq i8 %6, 0
  %mul = mul nuw nsw i32 %conv, 3
  %add = add nuw nsw i32 %mul, 764
  %arrayidx = getelementptr i8, ptr %1, i32 %add
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv8 = zext i8 %8 to i32
  br i1 %retval.0.i52.not, label %if.then9, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %add10 = add nuw nsw i32 %mul, 765
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  %dbdc_support.i = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 17
  %9 = ptrtoint ptr %dbdc_support.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dbdc_support.i, align 4, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool1.not.i = icmp eq i8 %10, 0
  %..i = select i1 %tobool1.not.i, i8 4, i8 16
  %11 = and i8 %..i, %5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %retval.0.i.not = icmp eq i8 %11, 0
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %chan, i32 0, i32 3
  %12 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %hw_value, align 2
  %conv15 = zext i16 %13 to i32
  %14 = add nsw i32 %conv15, -184
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %14)
  %15 = icmp ult i32 %14, 13
  br i1 %15, label %if.else.mt7915_get_channel_group.exit_crit_edge, label %if.end.i48

if.else.mt7915_get_channel_group.exit_crit_edge:  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt7915_get_channel_group.exit

if.end.i48:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 49, i16 %13)
  %cmp2.i = icmp ult i16 %13, 49
  br i1 %cmp2.i, label %if.end.i48.mt7915_get_channel_group.exit_crit_edge, label %if.end4.i

if.end.i48.mt7915_get_channel_group.exit_crit_edge: ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt7915_get_channel_group.exit

if.end4.i:                                        ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %13)
  %cmp5.i = icmp ult i16 %13, 65
  br i1 %cmp5.i, label %if.end4.i.mt7915_get_channel_group.exit_crit_edge, label %if.end7.i

if.end4.i.mt7915_get_channel_group.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt7915_get_channel_group.exit

if.end7.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 97, i16 %13)
  %cmp8.i = icmp ult i16 %13, 97
  br i1 %cmp8.i, label %if.end7.i.mt7915_get_channel_group.exit_crit_edge, label %if.end10.i

if.end7.i.mt7915_get_channel_group.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt7915_get_channel_group.exit

if.end10.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 113, i16 %13)
  %cmp11.i = icmp ult i16 %13, 113
  br i1 %cmp11.i, label %if.end10.i.mt7915_get_channel_group.exit_crit_edge, label %if.end13.i

if.end10.i.mt7915_get_channel_group.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt7915_get_channel_group.exit

if.end13.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 129, i16 %13)
  %cmp14.i = icmp ult i16 %13, 129
  br i1 %cmp14.i, label %if.end13.i.mt7915_get_channel_group.exit_crit_edge, label %if.end16.i

if.end13.i.mt7915_get_channel_group.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt7915_get_channel_group.exit

if.end16.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 145, i16 %13)
  %cmp17.i = icmp ult i16 %13, 145
  %..i49 = select i1 %cmp17.i, i32 6, i32 7
  br label %mt7915_get_channel_group.exit

mt7915_get_channel_group.exit:                    ; preds = %if.end16.i, %if.end13.i.mt7915_get_channel_group.exit_crit_edge, %if.end10.i.mt7915_get_channel_group.exit_crit_edge, %if.end7.i.mt7915_get_channel_group.exit_crit_edge, %if.end4.i.mt7915_get_channel_group.exit_crit_edge, %if.end.i48.mt7915_get_channel_group.exit_crit_edge, %if.else.mt7915_get_channel_group.exit_crit_edge
  %retval.0.i50 = phi i32 [ 0, %if.else.mt7915_get_channel_group.exit_crit_edge ], [ 1, %if.end.i48.mt7915_get_channel_group.exit_crit_edge ], [ 2, %if.end4.i.mt7915_get_channel_group.exit_crit_edge ], [ 3, %if.end7.i.mt7915_get_channel_group.exit_crit_edge ], [ 4, %if.end10.i.mt7915_get_channel_group.exit_crit_edge ], [ 5, %if.end13.i.mt7915_get_channel_group.exit_crit_edge ], [ %..i49, %if.end16.i ]
  %mul18 = mul nuw nsw i32 %conv, 12
  %add19 = add nuw nsw i32 %mul18, 843
  %add20 = add nuw nsw i32 %add19, %retval.0.i50
  %arrayidx21 = getelementptr i8, ptr %1, i32 %add20
  %16 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %17 to i32
  br i1 %retval.0.i.not, label %if.then24, label %mt7915_get_channel_group.exit.cleanup_crit_edge

mt7915_get_channel_group.exit.cleanup_crit_edge:  ; preds = %mt7915_get_channel_group.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then24:                                        ; preds = %mt7915_get_channel_group.exit
  call void @__sanitizer_cov_trace_pc() #8
  %add25 = add nuw nsw i32 %mul18, 851
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then24, %if.then9
  %add10.sink = phi i32 [ %add10, %if.then9 ], [ %add25, %if.then24 ]
  %conv8.sink = phi i32 [ %conv8, %if.then9 ], [ %conv22, %if.then24 ]
  %arrayidx11 = getelementptr i8, ptr %1, i32 %add10.sink
  %18 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %19 to i32
  %add13 = add nuw nsw i32 %conv8.sink, %conv12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %mt7915_get_channel_group.exit.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %conv8, %if.then6.cleanup_crit_edge ], [ %conv22, %mt7915_get_channel_group.exit.cleanup_crit_edge ], [ %add13, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local signext i8 @mt7915_eeprom_get_power_delta(ptr nocapture noundef readonly %dev, i32 noundef %band) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom1 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %0 = ptrtoint ptr %eeprom1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eeprom1, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %band)
  %cmp = icmp eq i32 %band, 0
  %val.0.in.in.v = select i1 %cmp, i32 594, i32 669
  %val.0.in.in = getelementptr i8, ptr %1, i32 %val.0.in.in.v
  %2 = ptrtoint ptr %val.0.in.in to i32
  call void @__asan_load1_noabort(i32 %2)
  %val.0.in = load i8, ptr %val.0.in.in, align 1
  %val.0 = zext i8 %val.0.in to i32
  %and = and i32 %val.0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end17

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end17:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and18 = and i8 %val.0.in, 63
  %and20 = and i32 %val.0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %sub = sub nsw i8 0, %and18
  %cond = select i1 %tobool21.not, i8 %sub, i8 %and18
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %cond, %do.end17 ], [ 0, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_eeprom_init(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_get_eeprom_free_block(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_get_eeprom(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_get_of_eeprom(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !17, !18, !19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/eeprom.c", i32 164, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mt7915_eeprom_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mt7915_eeprom_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @mt7915_sku_group_len, !9, !"mt7915_sku_group_len", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/eeprom.c", i32 234, i32 10}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/eeprom.c", i32 44, i32 22}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/eeprom.c", i32 50, i32 17}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/eeprom.c", i32 57, i32 3}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @mt7915_eeprom_load_default._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @mt7915_eeprom_load_default._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i8 0, i8 2}
!30 = !{!"auto-init"}
