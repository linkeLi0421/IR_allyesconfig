; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt76x0/eeprom.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt76x0/eeprom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mt76x0_chan_map = type { i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mt76_phy = type { ptr, ptr, ptr, i32, [7 x ptr], %struct.cfg80211_chan_def, ptr, ptr, i64, %struct.mt76_hw_cap, %struct.mt76_sband, %struct.mt76_sband, %struct.mt76_sband, [6 x i8], i32, i8, i16, %struct.mt76_testmode_data, %struct.delayed_work, i8, [5 x %struct.anon.136], ptr }
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
%struct.mt76_testmode_data = type { i32, [1 x i32], ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, [4 x i8], i8, [3 x [6 x i8]], i32, i32, i16, i32, %struct.anon.135 }
%struct.anon.135 = type { [5 x i64], [5 x i64] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.136 = type { ptr, ptr, i16 }
%struct.mt76x02_dev = type { %union.anon, [8 x %struct.mac_address], %struct.mutex, i8, %struct.anon.147, %struct.spinlock, i32, i32, ptr, %struct.delayed_work, %struct.delayed_work, %struct.hrtimer, %struct.work_struct, ptr, i8, i8, i32, i8, i8, %struct.mt76x02_calibration, i32, i8, [2 x i8], i8, i8, i16, i8, %struct.mt76x02_dfs_pattern_detector, i32, i8, i8, i8, i8, i8, i8, i64, [16 x i8] }
%union.anon = type { %struct.mt76_dev }
%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.144, ptr, %union.anon.145, [20 x i8] }
%struct.mt76_rx_status = type <{ %union.anon.137, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.137 = type { ptr }
%struct.mt76_mcu = type { %struct.mutex, i32, i32, %struct.sk_buff_head, %struct.wait_queue_head }
%struct.sk_buff_head = type { %union.anon.62, i32, %struct.spinlock }
%union.anon.62 = type { %struct.anon.63 }
%struct.anon.63 = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.107, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.128, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.107 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.128 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.mt76_wcid = type { [16 x ptr], %struct.atomic_t, i32, %struct.ewma_signal, i32, %struct.rate_info, i16, i8, i8, i8, i8, [17 x [6 x i8]], i16, i32, i8, %struct.list_head, %struct.idr }
%struct.ewma_signal = type { i32 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.141, i32 }
%union.anon.141 = type { ptr }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.mt76_rate_power = type { %union.anon.142 }
%union.anon.142 = type { %struct.anon.143 }
%struct.anon.143 = type { [4 x i8], [8 x i8], [10 x i8], [16 x i8], [10 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.144 = type { ptr, i32 }
%union.anon.145 = type { %struct.mt76_usb }
%struct.mt76_usb = type { %struct.mutex, ptr, i16, %struct.mt76_worker, %struct.mt76_worker, %struct.work_struct, [6 x i8], [2 x i8], i8, %struct.mt76u_mcu }
%struct.mt76u_mcu = type { ptr, ptr, i32, i32, i8 }
%struct.mac_address = type { [6 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.147 = type { %union.anon.148, [0 x %struct.mt76x02_tx_status] }
%union.anon.148 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.mt76x02_tx_status = type { i8, i8, i8, i8, i16 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mt76x02_calibration = type { %struct.mt76x02_rx_freq_cal, [2 x i8], [2 x i8], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8 }
%struct.mt76x02_rx_freq_cal = type { [2 x i8], [2 x i8], i8, i32, i16, i8 }
%struct.mt76x02_dfs_pattern_detector = type { i8, i32, %struct.mt76x02_dfs_sw_detector_params, [2 x %struct.mt76x02_dfs_event_rb], %struct.list_head, %struct.list_head, %struct.mt76x02_dfs_seq_stats, i32, i32, [4 x %struct.mt76x02_dfs_engine_stats], %struct.tasklet_struct }
%struct.mt76x02_dfs_sw_detector_params = type { i32, i32, i32 }
%struct.mt76x02_dfs_event_rb = type { [256 x %struct.mt76x02_dfs_event], i32, i32 }
%struct.mt76x02_dfs_event = type { i32, i32, i16, i8 }
%struct.mt76x02_dfs_seq_stats = type { i32, i32 }
%struct.mt76x02_dfs_engine_stats = type { i32, i32, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }

@mt76x0_get_power_info.chan_map = internal constant { [27 x %struct.mt76x0_chan_map], [42 x i8] } { [27 x %struct.mt76x0_chan_map] [%struct.mt76x0_chan_map { i8 2, i8 0 }, %struct.mt76x0_chan_map { i8 4, i8 2 }, %struct.mt76x0_chan_map { i8 6, i8 4 }, %struct.mt76x0_chan_map { i8 8, i8 6 }, %struct.mt76x0_chan_map { i8 10, i8 8 }, %struct.mt76x0_chan_map { i8 12, i8 10 }, %struct.mt76x0_chan_map { i8 14, i8 12 }, %struct.mt76x0_chan_map { i8 38, i8 0 }, %struct.mt76x0_chan_map { i8 44, i8 2 }, %struct.mt76x0_chan_map { i8 48, i8 4 }, %struct.mt76x0_chan_map { i8 54, i8 6 }, %struct.mt76x0_chan_map { i8 60, i8 8 }, %struct.mt76x0_chan_map { i8 64, i8 10 }, %struct.mt76x0_chan_map { i8 102, i8 12 }, %struct.mt76x0_chan_map { i8 108, i8 14 }, %struct.mt76x0_chan_map { i8 112, i8 16 }, %struct.mt76x0_chan_map { i8 118, i8 18 }, %struct.mt76x0_chan_map { i8 124, i8 20 }, %struct.mt76x0_chan_map { i8 -128, i8 22 }, %struct.mt76x0_chan_map { i8 -122, i8 24 }, %struct.mt76x0_chan_map { i8 -116, i8 26 }, %struct.mt76x0_chan_map { i8 -105, i8 28 }, %struct.mt76x0_chan_map { i8 -99, i8 30 }, %struct.mt76x0_chan_map { i8 -95, i8 32 }, %struct.mt76x0_chan_map { i8 -89, i8 34 }, %struct.mt76x0_chan_map { i8 -85, i8 36 }, %struct.mt76x0_chan_map { i8 -81, i8 38 }], [42 x i8] zeroinitializer }, align 32
@mt76x0_eeprom_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 341, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Warning: unsupported EEPROM version %02hhx\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt76x0_eeprom_init\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/wireless/mediatek/mt76/mt76x0/eeprom.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt76x0_eeprom_init._entry_ptr = internal global ptr @mt76x0_eeprom_init._entry, section ".printk_index", align 4
@mt76x0_eeprom_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 343, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"EEPROM ver:%02hhx fae:%02hhx\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mt76x0_eeprom_init._entry_ptr.8 = internal global ptr @mt76x0_eeprom_init._entry.5, section ".printk_index", align 4
@__UNIQUE_ID_file401 = internal constant [75 x i8] c"mt76x0_common.file=drivers/net/wireless/mediatek/mt76/mt76x0/mt76x0-common\00", section ".modinfo", align 1
@__UNIQUE_ID_license402 = internal constant [35 x i8] c"mt76x0_common.license=Dual BSD/GPL\00", section ".modinfo", align 1
@mt76x0_check_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 300, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"EEPROM data check failed: %04x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mt76x0_check_eeprom\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mt76x0_check_eeprom._entry_ptr = internal global ptr @mt76x0_check_eeprom._entry, section ".printk_index", align 4
@mt76x0_efuse_physical_size_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 41, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"driver does not support default EEPROM\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mt76x0_efuse_physical_size_check\00", [63 x i8] zeroinitializer }, align 32
@mt76x0_efuse_physical_size_check._entry_ptr = internal global ptr @mt76x0_efuse_physical_size_check._entry, section ".printk_index", align 4
@mt76x0_set_chip_cap.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt76x0_common\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mt76x0_set_chip_cap\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"2GHz %d 5GHz %d\0A\00", [47 x i8] zeroinitializer }, align 32
@mt76x0_set_chip_cap.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.2, ptr @.str.17, i8 0, i8 14, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mask out 2GHz support\0A\00", [41 x i8] zeroinitializer }, align 32
@mt76x0_set_chip_cap.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.2, ptr @.str.18, i8 0, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mask out 5GHz support\0A\00", [41 x i8] zeroinitializer }, align 32
@mt76x0_set_chip_cap.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.2, ptr @.str.19, i8 0, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"driver does not support HW RF ctrl\0A\00", [60 x i8] zeroinitializer }, align 32
@mt76x0_set_chip_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 79, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid tx-rx stream\0A\00", [42 x i8] zeroinitializer }, align 32
@mt76x0_set_chip_cap._entry_ptr = internal global ptr @mt76x0_set_chip_cap._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.22 = internal global [7 x i64] [i64 5, i64 16, i64 42, i64 58, i64 106, i64 122, i64 155]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 16, i64 30224, i64 30288]
@___asan_gen_.24 = private unnamed_addr constant [9 x i8] c"chan_map\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 218, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 339, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 342, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 299, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 40, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 54, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 59, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 64, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 71, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [54 x i8] c"../drivers/net/wireless/mediatek/mt76/mt76x0/eeprom.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 79, i32 3 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_file401, ptr @__UNIQUE_ID_license402, ptr @mt76x0_check_eeprom._entry, ptr @mt76x0_check_eeprom._entry_ptr, ptr @mt76x0_eeprom_init._entry, ptr @mt76x0_eeprom_init._entry.5, ptr @mt76x0_eeprom_init._entry_ptr, ptr @mt76x0_eeprom_init._entry_ptr.8, ptr @mt76x0_efuse_physical_size_check._entry, ptr @mt76x0_efuse_physical_size_check._entry_ptr, ptr @mt76x0_set_chip_cap._entry, ptr @mt76x0_set_chip_cap._entry_ptr, ptr @mt76x0_get_power_info.chan_map, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x0_get_power_info.chan_map to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x0_eeprom_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x0_eeprom_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x0_check_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x0_efuse_physical_size_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x0_set_chip_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76x0_read_rx_gain(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %lna_5g = alloca [3 x i8], align 1
  %lna_2g = alloca i8, align 1
  %rssi_offset = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chandef = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chandef, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %lna_5g) #6
  %2 = ptrtoint ptr %lna_5g to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %lna_5g, align 1, !annotation !56
  %3 = getelementptr inbounds [3 x i8], ptr %lna_5g, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !56
  %5 = getelementptr inbounds [3 x i8], ptr %lna_5g, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !56
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lna_2g) #6
  %7 = ptrtoint ptr %lna_2g to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %lna_2g, align 1, !annotation !56
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rssi_offset) #6
  %8 = ptrtoint ptr %rssi_offset to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %rssi_offset, align 2, !annotation !56
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  call void @mt76x02_get_rx_gain(ptr noundef %dev, i32 noundef %10, ptr noundef nonnull %rssi_offset, ptr noundef nonnull %lna_2g, ptr noundef nonnull %lna_5g) #6
  %call = call zeroext i8 @mt76x02_get_lna_gain(ptr noundef %dev, ptr noundef nonnull %lna_2g, ptr noundef nonnull %lna_5g, ptr noundef %1) #6
  %lna_gain = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 19, i32 0, i32 2
  %11 = ptrtoint ptr %lna_gain to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %call, ptr %lna_gain, align 4
  %12 = ptrtoint ptr %rssi_offset to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %rssi_offset, align 2
  %conv = zext i16 %13 to i32
  %sext = shl i32 %conv, 24
  %conv3 = trunc i16 %13 to i8
  %14 = add i32 %sext, -167772161
  call void @__sanitizer_cov_trace_const_cmp4(i32 -335544321, i32 %14)
  %15 = icmp ult i32 %14, -335544321
  %val.0 = select i1 %15, i8 0, i8 %conv3
  %arrayidx = getelementptr %struct.mt76x02_dev, ptr %dev, i32 0, i32 19, i32 0, i32 1, i32 0
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %val.0, ptr %arrayidx, align 1
  %shr.1 = lshr i32 %conv, 8
  %sext.1 = shl nuw i32 %shr.1, 24
  %conv3.1 = trunc i32 %shr.1 to i8
  %17 = add i32 %sext.1, -167772161
  call void @__sanitizer_cov_trace_const_cmp4(i32 -335544321, i32 %17)
  %18 = icmp ult i32 %17, -335544321
  %val.0.1 = select i1 %18, i8 0, i8 %conv3.1
  %arrayidx.1 = getelementptr %struct.mt76x02_dev, ptr %dev, i32 0, i32 19, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %val.0.1, ptr %arrayidx.1, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rssi_offset) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lna_2g) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %lna_5g) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_get_rx_gain(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mt76x02_get_lna_gain(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76x0_get_tx_power_per_rate(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %chan, ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %2 = call ptr @memset(ptr %t, i32 0, i32 48)
  %eeprom.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %3 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %eeprom.i, align 16
  %add.ptr.i = getelementptr i8, ptr %4, i32 222
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %add.ptr.i, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #6
  %conv.i = zext i16 %7 to i32
  %8 = trunc i16 %7 to i8
  %conv.i232 = and i8 %8, 63
  %and2.i = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  %masksel.i = select i1 %tobool.not.i, i8 0, i8 -64
  %spec.select.i = or i8 %masksel.i, %conv.i232
  %arrayidx = getelementptr [4 x i8], ptr %t, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %spec.select.i, ptr %arrayidx, align 1
  %10 = ptrtoint ptr %t to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %spec.select.i, ptr %t, align 1
  %11 = lshr i16 %7, 8
  %12 = trunc i16 %11 to i8
  %conv.i233 = and i8 %12, 63
  %13 = and i32 %conv.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i235 = icmp eq i32 %13, 0
  %masksel.i236 = select i1 %tobool.not.i235, i8 0, i8 -64
  %spec.select.i237 = or i8 %masksel.i236, %conv.i233
  %arrayidx8 = getelementptr [4 x i8], ptr %t, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %spec.select.i237, ptr %arrayidx8, align 1
  %arrayidx10 = getelementptr [4 x i8], ptr %t, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %spec.select.i237, ptr %arrayidx10, align 1
  %conv13 = select i1 %cmp, i32 224, i32 288
  %16 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %eeprom.i, align 16
  %add.ptr.i239 = getelementptr i8, ptr %17, i32 %conv13
  %18 = ptrtoint ptr %add.ptr.i239 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %add.ptr.i239, align 1
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #6
  %conv.i240 = zext i16 %20 to i32
  %21 = trunc i16 %20 to i8
  %conv.i241 = and i8 %21, 63
  %and2.i242 = and i32 %conv.i240, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i242)
  %tobool.not.i243 = icmp eq i32 %and2.i242, 0
  %masksel.i244 = select i1 %tobool.not.i243, i8 0, i8 -64
  %spec.select.i245 = or i8 %masksel.i244, %conv.i241
  %ofdm = getelementptr inbounds %struct.anon.143, ptr %t, i32 0, i32 1
  %arrayidx18 = getelementptr %struct.anon.143, ptr %t, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %spec.select.i245, ptr %arrayidx18, align 1
  %23 = ptrtoint ptr %ofdm to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %spec.select.i245, ptr %ofdm, align 1
  %24 = lshr i16 %20, 8
  %25 = trunc i16 %24 to i8
  %conv.i246 = and i8 %25, 63
  %26 = and i32 %conv.i240, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i248 = icmp eq i32 %26, 0
  %masksel.i249 = select i1 %tobool.not.i248, i8 0, i8 -64
  %spec.select.i250 = or i8 %masksel.i249, %conv.i246
  %arrayidx25 = getelementptr %struct.anon.143, ptr %t, i32 0, i32 1, i32 3
  %27 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %spec.select.i250, ptr %arrayidx25, align 1
  %arrayidx27 = getelementptr %struct.anon.143, ptr %t, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %spec.select.i250, ptr %arrayidx27, align 1
  %conv32 = select i1 %cmp, i32 226, i32 290
  %29 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %eeprom.i, align 16
  %add.ptr.i252 = getelementptr i8, ptr %30, i32 %conv32
  %31 = ptrtoint ptr %add.ptr.i252 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %add.ptr.i252, align 1
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #6
  %conv.i253 = zext i16 %33 to i32
  %34 = trunc i16 %33 to i8
  %conv.i254 = and i8 %34, 63
  %and2.i255 = and i32 %conv.i253, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i255)
  %tobool.not.i256 = icmp eq i32 %and2.i255, 0
  %masksel.i257 = select i1 %tobool.not.i256, i8 0, i8 -64
  %spec.select.i258 = or i8 %masksel.i257, %conv.i254
  %arrayidx38 = getelementptr %struct.anon.143, ptr %t, i32 0, i32 1, i32 5
  %35 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %spec.select.i258, ptr %arrayidx38, align 1
  %arrayidx40 = getelementptr %struct.anon.143, ptr %t, i32 0, i32 1, i32 4
  %36 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %spec.select.i258, ptr %arrayidx40, align 1
  %37 = lshr i16 %33, 8
  %38 = trunc i16 %37 to i8
  %conv.i259 = and i8 %38, 63
  %39 = and i32 %conv.i253, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i261 = icmp eq i32 %39, 0
  %masksel.i262 = select i1 %tobool.not.i261, i8 0, i8 -64
  %spec.select.i263 = or i8 %masksel.i262, %conv.i259
  %arrayidx45 = getelementptr %struct.anon.143, ptr %t, i32 0, i32 1, i32 7
  %40 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %spec.select.i263, ptr %arrayidx45, align 1
  %arrayidx47 = getelementptr %struct.anon.143, ptr %t, i32 0, i32 1, i32 6
  %41 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %spec.select.i263, ptr %arrayidx47, align 1
  %conv52 = select i1 %cmp, i32 228, i32 292
  %42 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %eeprom.i, align 16
  %add.ptr.i265 = getelementptr i8, ptr %43, i32 %conv52
  %44 = ptrtoint ptr %add.ptr.i265 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %add.ptr.i265, align 1
  %46 = tail call i16 @llvm.bswap.i16(i16 %45) #6
  %conv.i266 = zext i16 %46 to i32
  %47 = trunc i16 %46 to i8
  %conv.i267 = and i8 %47, 63
  %and2.i268 = and i32 %conv.i266, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i268)
  %tobool.not.i269 = icmp eq i32 %and2.i268, 0
  %masksel.i270 = select i1 %tobool.not.i269, i8 0, i8 -64
  %spec.select.i271 = or i8 %masksel.i270, %conv.i267
  %vht = getelementptr inbounds %struct.anon.143, ptr %t, i32 0, i32 4
  %arrayidx57 = getelementptr %struct.anon.143, ptr %t, i32 0, i32 4, i32 1
  %48 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %spec.select.i271, ptr %arrayidx57, align 1
  %49 = ptrtoint ptr %vht to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %spec.select.i271, ptr %vht, align 1
  %ht = getelementptr inbounds %struct.anon.143, ptr %t, i32 0, i32 3
  %arrayidx60 = getelementptr %struct.anon.143, ptr %t, i32 0, i32 3, i32 1
  %50 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %spec.select.i271, ptr %arrayidx60, align 1
  %51 = ptrtoint ptr %ht to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %spec.select.i271, ptr %ht, align 1
  %52 = lshr i16 %46, 8
  %53 = trunc i16 %52 to i8
  %conv.i272 = and i8 %53, 63
  %54 = and i32 %conv.i266, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i274 = icmp eq i32 %54, 0
  %masksel.i275 = select i1 %tobool.not.i274, i8 0, i8 -64
  %spec.select.i276 = or i8 %masksel.i275, %conv.i272
  %arrayidx67 = getelementptr %struct.anon.143, ptr %t, i32 0, i32 4, i32 3
  %55 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %spec.select.i276, ptr %arrayidx67, align 1
  %arrayidx69 = getelementptr %struct.anon.143, ptr %t, i32 0, i32 4, i32 2
  %56 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %spec.select.i276, ptr %arrayidx69, align 1
  %arrayidx71 = getelementptr %struct.anon.143, ptr %t, i32 0, i32 3, i32 3
  %57 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %spec.select.i276, ptr %arrayidx71, align 1
  %arrayidx73 = getelementptr %struct.anon.143, ptr %t, i32 0, i32 3, i32 2
  %58 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %spec.select.i276, ptr %arrayidx73, align 1
  %conv78 = select i1 %cmp, i32 230, i32 294
  %59 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %eeprom.i, align 16
  %add.ptr.i278 = getelementptr i8, ptr %60, i32 %conv78
  %61 = ptrtoint ptr %add.ptr.i278 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 2)
  %62 = load i16, ptr %add.ptr.i278, align 1
  %63 = tail call i16 @llvm.bswap.i16(i16 %62) #6
  %conv.i279 = zext i16 %63 to i32
  %64 = trunc i16 %63 to i8
  %conv.i280 = and i8 %64, 63
  %and2.i281 = and i32 %conv.i279, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i281)
  %tobool.not.i282 = icmp eq i32 %and2.i281, 0
  %masksel.i283 = select i1 %tobool.not.i282, i8 0, i8 -64
  %spec.select.i284 = or i8 %masksel.i283, %conv.i280
  %arrayidx84 = getelementptr %struct.anon.143, ptr %t, i32 0, i32 4, i32 5
  %65 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %spec.select.i284, ptr %arrayidx84, align 1
  %arrayidx86 = getelementptr %struct.anon.143, ptr %t, i32 0, i32 4, i32 4
  %66 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %spec.select.i284, ptr %arrayidx86, align 1
  %arrayidx88 = getelementptr %struct.anon.143, ptr %t, i32 0, i32 3, i32 5
  %67 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %spec.select.i284, ptr %arrayidx88, align 1
  %arrayidx90 = getelementptr %struct.anon.143, ptr %t, i32 0, i32 3, i32 4
  %68 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %spec.select.i284, ptr %arrayidx90, align 1
  %69 = lshr i16 %63, 8
  %70 = trunc i16 %69 to i8
  %conv.i285 = and i8 %70, 63
  %71 = and i32 %conv.i279, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i287 = icmp eq i32 %71, 0
  %masksel.i288 = select i1 %tobool.not.i287, i8 0, i8 -64
  %spec.select.i289 = or i8 %masksel.i288, %conv.i285
  %arrayidx95 = getelementptr %struct.anon.143, ptr %t, i32 0, i32 4, i32 7
  %72 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %spec.select.i289, ptr %arrayidx95, align 1
  %arrayidx97 = getelementptr %struct.anon.143, ptr %t, i32 0, i32 4, i32 6
  %73 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %spec.select.i289, ptr %arrayidx97, align 1
  %arrayidx99 = getelementptr %struct.anon.143, ptr %t, i32 0, i32 3, i32 7
  %74 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %spec.select.i289, ptr %arrayidx99, align 1
  %arrayidx101 = getelementptr %struct.anon.143, ptr %t, i32 0, i32 3, i32 6
  %75 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %spec.select.i289, ptr %arrayidx101, align 1
  %76 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %eeprom.i, align 16
  %add.ptr.i291 = getelementptr i8, ptr %77, i32 236
  %78 = ptrtoint ptr %add.ptr.i291 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 2)
  %79 = load i16, ptr %add.ptr.i291, align 1
  %80 = tail call i16 @llvm.bswap.i16(i16 %79) #6
  %conv.i292 = zext i16 %80 to i32
  %81 = trunc i16 %80 to i8
  %conv.i293 = and i8 %81, 63
  %and2.i294 = and i32 %conv.i292, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i294)
  %tobool.not.i295 = icmp eq i32 %and2.i294, 0
  %masksel.i296 = select i1 %tobool.not.i295, i8 0, i8 -64
  %spec.select.i297 = or i8 %masksel.i296, %conv.i293
  %stbc = getelementptr inbounds %struct.anon.143, ptr %t, i32 0, i32 2
  %arrayidx111 = getelementptr %struct.anon.143, ptr %t, i32 0, i32 2, i32 1
  %82 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %spec.select.i297, ptr %arrayidx111, align 1
  %83 = ptrtoint ptr %stbc to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %spec.select.i297, ptr %stbc, align 1
  %84 = lshr i16 %80, 8
  %85 = trunc i16 %84 to i8
  %conv.i298 = and i8 %85, 63
  %86 = and i32 %conv.i292, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.not.i300 = icmp eq i32 %86, 0
  %masksel.i301 = select i1 %tobool.not.i300, i8 0, i8 -64
  %spec.select.i302 = or i8 %masksel.i301, %conv.i298
  %arrayidx118 = getelementptr %struct.anon.143, ptr %t, i32 0, i32 2, i32 3
  %87 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %spec.select.i302, ptr %arrayidx118, align 1
  %arrayidx120 = getelementptr %struct.anon.143, ptr %t, i32 0, i32 2, i32 2
  %88 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %spec.select.i302, ptr %arrayidx120, align 1
  %89 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %eeprom.i, align 16
  %add.ptr.i304 = getelementptr i8, ptr %90, i32 238
  %91 = ptrtoint ptr %add.ptr.i304 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 2)
  %92 = load i16, ptr %add.ptr.i304, align 1
  %93 = tail call i16 @llvm.bswap.i16(i16 %92) #6
  %conv.i305 = zext i16 %93 to i32
  %94 = trunc i16 %93 to i8
  %conv.i306 = and i8 %94, 63
  %and2.i307 = and i32 %conv.i305, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i307)
  %tobool.not.i308 = icmp eq i32 %and2.i307, 0
  %masksel.i309 = select i1 %tobool.not.i308, i8 0, i8 -64
  %spec.select.i310 = or i8 %masksel.i309, %conv.i306
  %arrayidx131 = getelementptr %struct.anon.143, ptr %t, i32 0, i32 2, i32 5
  %95 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %spec.select.i310, ptr %arrayidx131, align 1
  %arrayidx133 = getelementptr %struct.anon.143, ptr %t, i32 0, i32 2, i32 4
  %96 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %spec.select.i310, ptr %arrayidx133, align 1
  %97 = lshr i16 %93, 8
  %98 = trunc i16 %97 to i8
  %conv.i311 = and i8 %98, 63
  %99 = and i32 %conv.i305, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool.not.i313 = icmp eq i32 %99, 0
  %masksel.i314 = select i1 %tobool.not.i313, i8 0, i8 -64
  %spec.select.i315 = or i8 %masksel.i314, %conv.i311
  %arrayidx138 = getelementptr %struct.anon.143, ptr %t, i32 0, i32 2, i32 7
  %100 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %spec.select.i315, ptr %arrayidx138, align 1
  %arrayidx140 = getelementptr %struct.anon.143, ptr %t, i32 0, i32 2, i32 6
  %101 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %spec.select.i315, ptr %arrayidx140, align 1
  %102 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %eeprom.i, align 16
  %add.ptr.i317 = getelementptr i8, ptr %103, i32 300
  %104 = ptrtoint ptr %add.ptr.i317 to i32
  call void @__asan_loadN_noabort(i32 %104, i32 2)
  %105 = load i16, ptr %add.ptr.i317, align 1
  %106 = tail call i16 @llvm.bswap.i16(i16 %105) #6
  %conv.i318 = zext i16 %106 to i32
  %107 = trunc i16 %106 to i8
  %conv.i319 = and i8 %107, 63
  %and2.i320 = and i32 %conv.i318, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i320)
  %tobool.not.i321 = icmp eq i32 %and2.i320, 0
  %masksel.i322 = select i1 %tobool.not.i321, i8 0, i8 -64
  %spec.select.i323 = or i8 %masksel.i322, %conv.i319
  %arrayidx146 = getelementptr %struct.anon.143, ptr %t, i32 0, i32 4, i32 8
  %108 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %spec.select.i323, ptr %arrayidx146, align 1
  %109 = lshr i16 %106, 8
  %110 = trunc i16 %109 to i8
  %conv.i324 = and i8 %110, 63
  %111 = and i32 %conv.i318, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool.not.i326 = icmp eq i32 %111, 0
  %masksel.i327 = select i1 %tobool.not.i326, i8 0, i8 -64
  %spec.select.i328 = or i8 %masksel.i327, %conv.i324
  %arrayidx151 = getelementptr %struct.anon.143, ptr %t, i32 0, i32 4, i32 9
  %112 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %spec.select.i328, ptr %arrayidx151, align 1
  %113 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %eeprom.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %114, i32 54
  %115 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %115, i32 2)
  %116 = load i16, ptr %add.ptr.i.i, align 1
  %117 = and i16 %116, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %117)
  %tobool.i.not = icmp eq i16 %117, 0
  br i1 %tobool.i.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %width.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 5, i32 1
  %118 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %width.i, align 4
  %120 = zext i32 %119 to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values)
  switch i32 %119, label %cond.false.cond.end_crit_edge [
    i32 3, label %if.then.i
    i32 2, label %if.then5.i
  ]

cond.false.cond.end_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

if.then.i:                                        ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i330 = getelementptr i8, ptr %114, i32 210
  %121 = ptrtoint ptr %add.ptr.i.i330 to i32
  call void @__asan_loadN_noabort(i32 %121, i32 2)
  %122 = load i16, ptr %add.ptr.i.i330, align 1
  %extract.t334 = trunc i16 %122 to i8
  br label %if.end18.i

if.then5.i:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  %chandef1.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 5
  %add.ptr.i27.i = getelementptr i8, ptr %114, i32 80
  %123 = ptrtoint ptr %add.ptr.i27.i to i32
  call void @__asan_loadN_noabort(i32 %123, i32 2)
  %124 = load i16, ptr %add.ptr.i27.i, align 1
  %125 = tail call i16 @llvm.bswap.i16(i16 %124) #6
  %126 = ptrtoint ptr %chandef1.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %chandef1.i, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %129)
  %cmp8.i = icmp eq i32 %129, 1
  %conv11.i = lshr i16 %125, 8
  %val.0.in.i = select i1 %cmp8.i, i16 %conv11.i, i16 %125
  %extract.t333 = trunc i16 %val.0.in.i to i8
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then5.i, %if.then.i
  %val.0.in.i.sink.off0 = phi i8 [ %extract.t333, %if.then5.i ], [ %extract.t334, %if.then.i ]
  %130 = add i8 %val.0.in.i.sink.off0, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %130)
  %131 = icmp ult i8 %130, -2
  br i1 %131, label %if.end.i.i, label %if.end18.i.cond.end_crit_edge

if.end18.i.cond.end_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

if.end.i.i:                                       ; preds = %if.end18.i
  %conv.i29.i = zext i8 %val.0.in.i.sink.off0 to i32
  %and.i.i.i = and i32 %conv.i29.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.cond.end_crit_edge, label %cond.true.i.i.i

if.end.i.i.cond.end_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true.i.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i.i.i = and i32 %conv.i29.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %and4.i.i.i.i = and i32 %conv.i29.i, 63
  %sub6.i.i.i.i = sub nsw i32 0, %and4.i.i.i.i
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %sub6.i.i.i.i, i32 %and4.i.i.i.i
  br label %cond.end

cond.end:                                         ; preds = %cond.true.i.i.i, %if.end.i.i.cond.end_crit_edge, %if.end18.i.cond.end_crit_edge, %cond.false.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond156 = phi i32 [ 0, %entry.cond.end_crit_edge ], [ 0, %cond.false.cond.end_crit_edge ], [ 0, %if.end18.i.cond.end_crit_edge ], [ %cond.i.i.i.i, %cond.true.i.i.i ], [ 0, %if.end.i.i.cond.end_crit_edge ]
  tail call void @mt76x02_add_rate_power_offset(ptr noundef %t, i32 noundef %cond156) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_add_rate_power_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76x0_get_power_info(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %tp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %0 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eeprom.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 54
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %add.ptr.i.i, align 1
  %4 = and i16 %3, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.i.not = icmp eq i16 %4, 0
  br i1 %tobool.i.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %chan, i32 0, i32 3
  %5 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %hw_value, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %6)
  %cmp19.not = icmp ugt i16 %6, 2
  br i1 %cmp19.not, label %for.inc, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  %. = select i1 %cmp, i32 210, i32 208
  %add.ptr.i93 = getelementptr i8, ptr %1, i32 %.
  %9 = ptrtoint ptr %add.ptr.i93 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %add.ptr.i93, align 1
  %11 = lshr i16 %10, 8
  %extract.t102 = trunc i16 %11 to i8
  %arrayidx = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 46, i32 0, i32 0, i32 1, i32 7
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %conv7 = sub i8 %extract.t102, %13
  %width.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width.i, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %15, label %if.then.mt76x0_get_delta.exit_crit_edge [
    i32 3, label %if.then.i
    i32 2, label %if.then5.i
  ]

if.then.mt76x0_get_delta.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x0_get_delta.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i96 = getelementptr i8, ptr %1, i32 210
  %17 = ptrtoint ptr %add.ptr.i.i96 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %add.ptr.i.i96, align 1
  %extract.t118 = trunc i16 %18 to i8
  br label %if.end18.i

if.then5.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %chandef1.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 5
  %add.ptr.i27.i = getelementptr i8, ptr %1, i32 80
  %19 = ptrtoint ptr %add.ptr.i27.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %add.ptr.i27.i, align 1
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #6
  %22 = ptrtoint ptr %chandef1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chandef1.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp8.i = icmp eq i32 %25, 1
  %conv11.i = lshr i16 %21, 8
  %val.0.in.i = select i1 %cmp8.i, i16 %conv11.i, i16 %21
  %extract.t117 = trunc i16 %val.0.in.i to i8
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then5.i, %if.then.i
  %val.0.in.i.sink.off0 = phi i8 [ %extract.t117, %if.then5.i ], [ %extract.t118, %if.then.i ]
  %26 = add i8 %val.0.in.i.sink.off0, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %26)
  %27 = icmp ult i8 %26, -2
  br i1 %27, label %if.end.i.i, label %if.end18.i.mt76x0_get_delta.exit_crit_edge

if.end18.i.mt76x0_get_delta.exit_crit_edge:       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x0_get_delta.exit

if.end.i.i:                                       ; preds = %if.end18.i
  %conv.i29.i = zext i8 %val.0.in.i.sink.off0 to i32
  %and.i.i.i = and i32 %conv.i29.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.mt76x0_get_delta.exit_crit_edge, label %cond.true.i.i.i

if.end.i.i.mt76x0_get_delta.exit_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x0_get_delta.exit

cond.true.i.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i.i.i = and i32 %conv.i29.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %and4.i.i.i.i = and i32 %conv.i29.i, 63
  %sub6.i.i.i.i = sub nsw i32 0, %and4.i.i.i.i
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %sub6.i.i.i.i, i32 %and4.i.i.i.i
  %phi.cast.i.i = trunc i32 %cond.i.i.i.i to i8
  br label %mt76x0_get_delta.exit

mt76x0_get_delta.exit:                            ; preds = %cond.true.i.i.i, %if.end.i.i.mt76x0_get_delta.exit_crit_edge, %if.end18.i.mt76x0_get_delta.exit_crit_edge, %if.then.mt76x0_get_delta.exit_crit_edge
  %retval.0.i = phi i8 [ 0, %if.then.mt76x0_get_delta.exit_crit_edge ], [ 0, %if.end18.i.mt76x0_get_delta.exit_crit_edge ], [ %phi.cast.i.i, %cond.true.i.i.i ], [ 0, %if.end.i.i.mt76x0_get_delta.exit_crit_edge ]
  %add = add i8 %conv7, %retval.0.i
  br label %cleanup

for.inc:                                          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %6)
  %cmp19.not.1 = icmp ugt i16 %6, 4
  br i1 %cmp19.not.1, label %for.inc.1, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %6)
  %cmp19.not.2 = icmp ugt i16 %6, 6
  br i1 %cmp19.not.2, label %for.inc.2, label %for.inc.1.for.end_crit_edge

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %6)
  %cmp19.not.3 = icmp ugt i16 %6, 8
  br i1 %cmp19.not.3, label %for.inc.3, label %for.inc.2.for.end_crit_edge

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %6)
  %cmp19.not.4 = icmp ugt i16 %6, 10
  br i1 %cmp19.not.4, label %for.inc.4, label %for.inc.3.for.end_crit_edge

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %6)
  %cmp19.not.5 = icmp ugt i16 %6, 12
  br i1 %cmp19.not.5, label %for.inc.5, label %for.inc.4.for.end_crit_edge

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %6)
  %cmp19.not.6 = icmp ugt i16 %6, 14
  br i1 %cmp19.not.6, label %for.inc.6, label %for.inc.5.for.end_crit_edge

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_const_cmp2(i16 38, i16 %6)
  %cmp19.not.7 = icmp ugt i16 %6, 38
  br i1 %cmp19.not.7, label %for.inc.7, label %for.inc.6.for.end_crit_edge

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_const_cmp2(i16 44, i16 %6)
  %cmp19.not.8 = icmp ugt i16 %6, 44
  br i1 %cmp19.not.8, label %for.inc.8, label %for.inc.7.for.end_crit_edge

for.inc.7.for.end_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.8:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %6)
  %cmp19.not.9 = icmp ugt i16 %6, 48
  br i1 %cmp19.not.9, label %for.inc.9, label %for.inc.8.for.end_crit_edge

for.inc.8.for.end_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.9:                                        ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_const_cmp2(i16 54, i16 %6)
  %cmp19.not.10 = icmp ugt i16 %6, 54
  br i1 %cmp19.not.10, label %for.inc.10, label %for.inc.9.for.end_crit_edge

for.inc.9.for.end_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.10:                                       ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_const_cmp2(i16 60, i16 %6)
  %cmp19.not.11 = icmp ugt i16 %6, 60
  br i1 %cmp19.not.11, label %for.inc.11, label %for.inc.10.for.end_crit_edge

for.inc.10.for.end_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.11:                                       ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %6)
  %cmp19.not.12 = icmp ugt i16 %6, 64
  br i1 %cmp19.not.12, label %for.inc.12, label %for.inc.11.for.end_crit_edge

for.inc.11.for.end_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.12:                                       ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_const_cmp2(i16 102, i16 %6)
  %cmp19.not.13 = icmp ugt i16 %6, 102
  br i1 %cmp19.not.13, label %for.inc.13, label %for.inc.12.for.end_crit_edge

for.inc.12.for.end_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.13:                                       ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_const_cmp2(i16 108, i16 %6)
  %cmp19.not.14 = icmp ugt i16 %6, 108
  br i1 %cmp19.not.14, label %for.inc.14, label %for.inc.13.for.end_crit_edge

for.inc.13.for.end_crit_edge:                     ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.14:                                       ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_const_cmp2(i16 112, i16 %6)
  %cmp19.not.15 = icmp ugt i16 %6, 112
  br i1 %cmp19.not.15, label %for.inc.15, label %for.inc.14.for.end_crit_edge

for.inc.14.for.end_crit_edge:                     ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.15:                                       ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_const_cmp2(i16 118, i16 %6)
  %cmp19.not.16 = icmp ugt i16 %6, 118
  br i1 %cmp19.not.16, label %for.inc.16, label %for.inc.15.for.end_crit_edge

for.inc.15.for.end_crit_edge:                     ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.16:                                       ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_const_cmp2(i16 124, i16 %6)
  %cmp19.not.17 = icmp ugt i16 %6, 124
  br i1 %cmp19.not.17, label %for.inc.17, label %for.inc.16.for.end_crit_edge

for.inc.16.for.end_crit_edge:                     ; preds = %for.inc.16
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.17:                                       ; preds = %for.inc.16
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %6)
  %cmp19.not.18 = icmp ugt i16 %6, 128
  br i1 %cmp19.not.18, label %for.inc.18, label %for.inc.17.for.end_crit_edge

for.inc.17.for.end_crit_edge:                     ; preds = %for.inc.17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.18:                                       ; preds = %for.inc.17
  call void @__sanitizer_cov_trace_const_cmp2(i16 134, i16 %6)
  %cmp19.not.19 = icmp ugt i16 %6, 134
  br i1 %cmp19.not.19, label %for.inc.19, label %for.inc.18.for.end_crit_edge

for.inc.18.for.end_crit_edge:                     ; preds = %for.inc.18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.19:                                       ; preds = %for.inc.18
  call void @__sanitizer_cov_trace_const_cmp2(i16 140, i16 %6)
  %cmp19.not.20 = icmp ugt i16 %6, 140
  br i1 %cmp19.not.20, label %for.inc.20, label %for.inc.19.for.end_crit_edge

for.inc.19.for.end_crit_edge:                     ; preds = %for.inc.19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.20:                                       ; preds = %for.inc.19
  call void @__sanitizer_cov_trace_const_cmp2(i16 151, i16 %6)
  %cmp19.not.21 = icmp ugt i16 %6, 151
  br i1 %cmp19.not.21, label %for.inc.21, label %for.inc.20.for.end_crit_edge

for.inc.20.for.end_crit_edge:                     ; preds = %for.inc.20
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.21:                                       ; preds = %for.inc.20
  call void @__sanitizer_cov_trace_const_cmp2(i16 157, i16 %6)
  %cmp19.not.22 = icmp ugt i16 %6, 157
  br i1 %cmp19.not.22, label %for.inc.22, label %for.inc.21.for.end_crit_edge

for.inc.21.for.end_crit_edge:                     ; preds = %for.inc.21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.22:                                       ; preds = %for.inc.21
  call void @__sanitizer_cov_trace_const_cmp2(i16 161, i16 %6)
  %cmp19.not.23 = icmp ugt i16 %6, 161
  br i1 %cmp19.not.23, label %for.inc.23, label %for.inc.22.for.end_crit_edge

for.inc.22.for.end_crit_edge:                     ; preds = %for.inc.22
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.23:                                       ; preds = %for.inc.22
  call void @__sanitizer_cov_trace_const_cmp2(i16 167, i16 %6)
  %cmp19.not.24 = icmp ugt i16 %6, 167
  br i1 %cmp19.not.24, label %for.inc.24, label %for.inc.23.for.end_crit_edge

for.inc.23.for.end_crit_edge:                     ; preds = %for.inc.23
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.24:                                       ; preds = %for.inc.23
  call void @__sanitizer_cov_trace_const_cmp2(i16 171, i16 %6)
  %cmp19.not.25 = icmp ugt i16 %6, 171
  br i1 %cmp19.not.25, label %for.inc.25, label %for.inc.24.for.end_crit_edge

for.inc.24.for.end_crit_edge:                     ; preds = %for.inc.24
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.25:                                       ; preds = %for.inc.24
  call void @__sanitizer_cov_trace_const_cmp2(i16 175, i16 %6)
  %cmp19.not.26 = icmp ugt i16 %6, 175
  br i1 %cmp19.not.26, label %for.inc.25._crit_edge, label %for.inc.25.for.end_crit_edge

for.inc.25.for.end_crit_edge:                     ; preds = %for.inc.25
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.25._crit_edge:                            ; preds = %for.inc.25
  call void @__sanitizer_cov_trace_pc() #8
  br label %31

for.end:                                          ; preds = %for.inc.25.for.end_crit_edge, %for.inc.24.for.end_crit_edge, %for.inc.23.for.end_crit_edge, %for.inc.22.for.end_crit_edge, %for.inc.21.for.end_crit_edge, %for.inc.20.for.end_crit_edge, %for.inc.19.for.end_crit_edge, %for.inc.18.for.end_crit_edge, %for.inc.17.for.end_crit_edge, %for.inc.16.for.end_crit_edge, %for.inc.15.for.end_crit_edge, %for.inc.14.for.end_crit_edge, %for.inc.13.for.end_crit_edge, %for.inc.12.for.end_crit_edge, %for.inc.11.for.end_crit_edge, %for.inc.10.for.end_crit_edge, %for.inc.9.for.end_crit_edge, %for.inc.8.for.end_crit_edge, %for.inc.7.for.end_crit_edge, %for.inc.6.for.end_crit_edge, %for.inc.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0106.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ 3, %for.inc.2.for.end_crit_edge ], [ 4, %for.inc.3.for.end_crit_edge ], [ 5, %for.inc.4.for.end_crit_edge ], [ 6, %for.inc.5.for.end_crit_edge ], [ 7, %for.inc.6.for.end_crit_edge ], [ 8, %for.inc.7.for.end_crit_edge ], [ 9, %for.inc.8.for.end_crit_edge ], [ 10, %for.inc.9.for.end_crit_edge ], [ 11, %for.inc.10.for.end_crit_edge ], [ 12, %for.inc.11.for.end_crit_edge ], [ 13, %for.inc.12.for.end_crit_edge ], [ 14, %for.inc.13.for.end_crit_edge ], [ 15, %for.inc.14.for.end_crit_edge ], [ 16, %for.inc.15.for.end_crit_edge ], [ 17, %for.inc.16.for.end_crit_edge ], [ 18, %for.inc.17.for.end_crit_edge ], [ 19, %for.inc.18.for.end_crit_edge ], [ 20, %for.inc.19.for.end_crit_edge ], [ 21, %for.inc.20.for.end_crit_edge ], [ 22, %for.inc.21.for.end_crit_edge ], [ 23, %for.inc.22.for.end_crit_edge ], [ 24, %for.inc.23.for.end_crit_edge ], [ 25, %for.inc.24.for.end_crit_edge ], [ 26, %for.inc.25.for.end_crit_edge ]
  %.lcssa = phi i8 [ 2, %for.cond.preheader.for.end_crit_edge ], [ 4, %for.inc.for.end_crit_edge ], [ 6, %for.inc.1.for.end_crit_edge ], [ 8, %for.inc.2.for.end_crit_edge ], [ 10, %for.inc.3.for.end_crit_edge ], [ 12, %for.inc.4.for.end_crit_edge ], [ 14, %for.inc.5.for.end_crit_edge ], [ 38, %for.inc.6.for.end_crit_edge ], [ 44, %for.inc.7.for.end_crit_edge ], [ 48, %for.inc.8.for.end_crit_edge ], [ 54, %for.inc.9.for.end_crit_edge ], [ 60, %for.inc.10.for.end_crit_edge ], [ 64, %for.inc.11.for.end_crit_edge ], [ 102, %for.inc.12.for.end_crit_edge ], [ 108, %for.inc.13.for.end_crit_edge ], [ 112, %for.inc.14.for.end_crit_edge ], [ 118, %for.inc.15.for.end_crit_edge ], [ 124, %for.inc.16.for.end_crit_edge ], [ -128, %for.inc.17.for.end_crit_edge ], [ -122, %for.inc.18.for.end_crit_edge ], [ -116, %for.inc.19.for.end_crit_edge ], [ -105, %for.inc.20.for.end_crit_edge ], [ -99, %for.inc.21.for.end_crit_edge ], [ -95, %for.inc.22.for.end_crit_edge ], [ -89, %for.inc.23.for.end_crit_edge ], [ -85, %for.inc.24.for.end_crit_edge ], [ -81, %for.inc.25.for.end_crit_edge ]
  %28 = zext i8 %.lcssa to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %28)
  %cmp27 = icmp eq i16 %6, %28
  %offset30 = getelementptr [27 x %struct.mt76x0_chan_map], ptr @mt76x0_get_power_info.chan_map, i32 0, i32 %i.0106.lcssa, i32 1
  %29 = ptrtoint ptr %offset30 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %offset30, align 1
  %phi.bo = select i1 %cmp27, i32 8, i32 0
  br label %31

31:                                               ; preds = %for.end, %for.inc.25._crit_edge
  %idx.0113 = phi i32 [ %phi.bo, %for.end ], [ 0, %for.inc.25._crit_edge ]
  %32 = phi i8 [ %30, %for.end ], [ 0, %for.inc.25._crit_edge ]
  %33 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp37 = icmp eq i32 %34, 0
  br i1 %cmp37, label %if.then39, label %if.else43

if.then39:                                        ; preds = %31
  call void @__sanitizer_cov_trace_pc() #8
  %add41 = add i8 %32, 82
  br label %if.end53

if.else43:                                        ; preds = %31
  %35 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %hw_value, align 2
  %37 = zext i16 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.22)
  switch i16 %36, label %if.else43.sw.epilog_crit_edge [
    i16 42, label %sw.bb
    i16 58, label %sw.bb46
    i16 106, label %sw.bb47
    i16 122, label %sw.bb48
    i16 155, label %sw.bb49
  ]

if.else43.sw.epilog_crit_edge:                    ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb46:                                          ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb49, %sw.bb48, %sw.bb47, %sw.bb46, %sw.bb, %if.else43.sw.epilog_crit_edge
  %offset.2 = phi i8 [ %32, %if.else43.sw.epilog_crit_edge ], [ 30, %sw.bb49 ], [ 20, %sw.bb48 ], [ 14, %sw.bb47 ], [ 8, %sw.bb46 ], [ 2, %sw.bb ]
  %add51 = add i8 %offset.2, 120
  br label %if.end53

if.end53:                                         ; preds = %sw.epilog, %if.then39
  %addr.0 = phi i8 [ %add41, %if.then39 ], [ %add51, %sw.epilog ]
  %conv54 = zext i8 %addr.0 to i32
  %and.i = and i32 %conv54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end53.mt76x02_eeprom_get.exit_crit_edge

if.end53.mt76x02_eeprom_get.exit_crit_edge:       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_eeprom_get.exit

if.end.i:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i98 = getelementptr i8, ptr %1, i32 %conv54
  %38 = ptrtoint ptr %add.ptr.i98 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %add.ptr.i98, align 1
  %40 = tail call i16 @llvm.bswap.i16(i16 %39) #6
  %conv.i99 = zext i16 %40 to i32
  br label %mt76x02_eeprom_get.exit

mt76x02_eeprom_get.exit:                          ; preds = %if.end.i, %if.end53.mt76x02_eeprom_get.exit_crit_edge
  %retval.0.i100 = phi i32 [ %conv.i99, %if.end.i ], [ 65535, %if.end53.mt76x02_eeprom_get.exit_crit_edge ]
  %shr = lshr i32 %retval.0.i100, %idx.0113
  %conv58 = trunc i32 %shr to i8
  %sext = shl i32 %shr, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 1056964608, i32 %sext)
  %41 = icmp ugt i32 %sext, 1056964608
  %spec.store.select = select i1 %41, i8 5, i8 %conv58
  br label %cleanup

cleanup:                                          ; preds = %mt76x02_eeprom_get.exit, %mt76x0_get_delta.exit
  %storemerge = phi i8 [ %spec.store.select, %mt76x02_eeprom_get.exit ], [ %add, %mt76x0_get_delta.exit ]
  %42 = ptrtoint ptr %tp to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %storemerge, ptr %tp, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76x0_eeprom_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %data.i.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @mt76_eeprom_init(ptr noundef %dev, i32 noundef 512) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end4.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %eeprom.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %0 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eeprom.i.i, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %1, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %land.lhs.true.i.if.end.i.i_crit_edge

land.lhs.true.i.if.end.i.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 10
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %add.ptr.i.i, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #6
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true.i.if.end.i.i_crit_edge
  %val.0.i.i = phi i16 [ %4, %land.lhs.true.i.if.end.i.i_crit_edge ], [ %7, %if.then.i.i ]
  %8 = zext i16 %val.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.23)
  switch i16 %val.0.i.i, label %mt76x0_check_eeprom.exit.i [
    i16 30288, label %if.end.i.i.if.end_crit_edge
    i16 30224, label %if.end.i.i.if.end_crit_edge60
  ]

if.end.i.i.if.end_crit_edge60:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

mt76x0_check_eeprom.exit.i:                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i = zext i16 %val.0.i.i to i32
  %dev4.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %9 = ptrtoint ptr %dev4.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev4.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.9, i32 noundef %conv.i.i) #9
  br label %if.end4.i

if.end4.i:                                        ; preds = %mt76x0_check_eeprom.exit.i, %if.end.i.if.end4.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %data.i.i) #6
  %11 = call ptr @memset(ptr %data.i.i, i32 255, i32 32)
  %call.i.i = call i32 @mt76x02_get_efuse_data(ptr noundef %dev, i16 noundef zeroext 480, ptr noundef nonnull %data.i.i, i32 noundef 32, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i18.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i18.i, label %if.end4.i.for.body.i.i_crit_edge, label %mt76x0_efuse_physical_size_check.exit.i

if.end4.i.for.body.i.i_crit_edge:                 ; preds = %if.end4.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end4.i.for.body.i.i_crit_edge
  %end.028.i.i = phi i32 [ %end.1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end4.i.for.body.i.i_crit_edge ]
  %start.027.i.i = phi i32 [ %start.2.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end4.i.for.body.i.i_crit_edge ]
  %i.026.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end4.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [32 x i8], ptr %data.i.i, i32 0, i32 %i.026.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool1.not.i.i = icmp eq i8 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start.027.i.i)
  %tobool3.not.i.i = icmp eq i32 %start.027.i.i, 0
  %add.i.i = add nuw nsw i32 %i.026.i.i, 480
  %14 = select i1 %tobool1.not.i.i, i1 %tobool3.not.i.i, i1 false
  %start.2.i.i = select i1 %14, i32 %add.i.i, i32 %start.027.i.i
  %end.1.i.i = select i1 %tobool1.not.i.i, i32 %add.i.i, i32 %end.028.i.i
  %inc.i.i = add nuw nsw i32 %i.026.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 29
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  %sub.neg.i.i = sub i32 28, %end.1.i.i
  %sub9.i.i = add i32 %sub.neg.i.i, %start.2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub9.i.i)
  %cmp10.i.i = icmp ult i32 %sub9.i.i, 5
  br i1 %cmp10.i.i, label %mt76x0_efuse_physical_size_check.exit.thread.i, label %mt76x0_efuse_physical_size_check.exit.thread25.i

mt76x0_efuse_physical_size_check.exit.thread25.i: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %data.i.i) #6
  br label %mt76x0_load_eeprom.exit

mt76x0_efuse_physical_size_check.exit.thread.i:   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev12.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %15 = ptrtoint ptr %dev12.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev12.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.12) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %data.i.i) #6
  br label %cleanup

mt76x0_efuse_physical_size_check.exit.i:          ; preds = %if.end4.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %data.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp6.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp6.i, label %mt76x0_efuse_physical_size_check.exit.i.cleanup_crit_edge, label %mt76x0_efuse_physical_size_check.exit.i.mt76x0_load_eeprom.exit_crit_edge

mt76x0_efuse_physical_size_check.exit.i.mt76x0_load_eeprom.exit_crit_edge: ; preds = %mt76x0_efuse_physical_size_check.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x0_load_eeprom.exit

mt76x0_efuse_physical_size_check.exit.i.cleanup_crit_edge: ; preds = %mt76x0_efuse_physical_size_check.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

mt76x0_load_eeprom.exit:                          ; preds = %mt76x0_efuse_physical_size_check.exit.i.mt76x0_load_eeprom.exit_crit_edge, %mt76x0_efuse_physical_size_check.exit.thread25.i
  %eeprom.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %17 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %eeprom.i, align 16
  %call9.i = call i32 @mt76x02_get_efuse_data(ptr noundef %dev, i16 noundef zeroext 0, ptr noundef %18, i32 noundef 512, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp = icmp slt i32 %call9.i, 0
  br i1 %cmp, label %mt76x0_load_eeprom.exit.cleanup_crit_edge, label %mt76x0_load_eeprom.exit.if.end_crit_edge

mt76x0_load_eeprom.exit.if.end_crit_edge:         ; preds = %mt76x0_load_eeprom.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

mt76x0_load_eeprom.exit.cleanup_crit_edge:        ; preds = %mt76x0_load_eeprom.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %mt76x0_load_eeprom.exit.if.end_crit_edge, %if.end.i.i.if.end_crit_edge, %if.end.i.i.if.end_crit_edge60
  %eeprom.i39 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %19 = ptrtoint ptr %eeprom.i39 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %eeprom.i39, align 16
  %add.ptr.i = getelementptr i8, ptr %20, i32 2
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %add.ptr.i, align 1
  %23 = call i16 @llvm.bswap.i16(i16 %22) #6
  %conv.i = zext i16 %23 to i32
  %conv2 = lshr i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3327, i16 %23)
  %cmp6 = icmp ugt i16 %23, 3327
  br i1 %cmp6, label %do.end, label %if.end.do.end14_crit_edge

if.end.do.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev9 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %24 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev9, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str, i32 noundef %conv2) #9
  br label %do.end14

do.end14:                                         ; preds = %do.end, %if.end.do.end14_crit_edge
  %dev15 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %26 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev15, align 8
  %conv17 = and i32 %conv.i, 255
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.6, i32 noundef %conv2, i32 noundef %conv17) #9
  %macaddr = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 13
  %28 = ptrtoint ptr %eeprom.i39 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %eeprom.i39, align 16
  %add.ptr = getelementptr i8, ptr %29, i32 4
  %30 = call ptr @memcpy(ptr %macaddr, ptr %add.ptr, i32 6)
  call void @mt76_eeprom_override(ptr noundef %dev) #6
  call void @mt76x02_mac_setaddr(ptr noundef %dev, ptr noundef %macaddr) #6
  call fastcc void @mt76x0_set_chip_cap(ptr noundef %dev)
  %31 = ptrtoint ptr %eeprom.i39 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %eeprom.i39, align 16
  %add.ptr.i.i43 = getelementptr i8, ptr %32, i32 58
  %33 = ptrtoint ptr %add.ptr.i.i43 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %add.ptr.i.i43, align 1
  %35 = lshr i16 %34, 8
  %conv.i44 = trunc i16 %35 to i8
  %36 = add i8 %conv.i44, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %36)
  %37 = icmp ult i8 %36, -2
  %spec.select.i = select i1 %37, i8 %conv.i44, i8 0
  %freq_offset.i = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 19, i32 0, i32 5
  %38 = ptrtoint ptr %freq_offset.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %spec.select.i, ptr %freq_offset.i, align 2
  %add.ptr.i19.i = getelementptr i8, ptr %32, i32 218
  %39 = ptrtoint ptr %add.ptr.i19.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %add.ptr.i19.i, align 1
  %41 = and i16 %40, 255
  %42 = zext i16 %41 to i32
  %conv3.i = trunc i16 %40 to i8
  %43 = add i8 %conv3.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %43)
  %44 = icmp ult i8 %43, -2
  %val.1.i = select i1 %44, i32 %42, i32 0
  %and.i.i = and i32 %val.1.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i45 = icmp eq i32 %and.i.i, 0
  %and4.i.i = and i32 %val.1.i, 127
  %sub6.i.i = sub nsw i32 0, %and4.i.i
  %45 = select i1 %tobool.not.i.i45, i32 %and4.i.i, i32 %sub6.i.i
  %.neg.i = trunc i32 %45 to i8
  %conv11.i = add i8 %spec.select.i, %.neg.i
  %46 = ptrtoint ptr %freq_offset.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv11.i, ptr %freq_offset.i, align 2
  %add.ptr.i.i47 = getelementptr i8, ptr %32, i32 208
  %47 = ptrtoint ptr %add.ptr.i.i47 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %add.ptr.i.i47, align 1
  %conv.i48 = trunc i16 %48 to i8
  %49 = add i8 %conv.i48, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %49)
  %50 = icmp ult i8 %49, -2
  br i1 %50, label %if.then.i, label %do.end14.mt76x0_set_temp_offset.exit_crit_edge

do.end14.mt76x0_set_temp_offset.exit_crit_edge:   ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x0_set_temp_offset.exit

if.then.i:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  %51 = and i16 %48, 255
  %52 = zext i16 %51 to i32
  %and.i.i49 = and i32 %52, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i49)
  %tobool.not.i.i50 = icmp eq i32 %and.i.i49, 0
  %and4.i.i51 = and i32 %52, 127
  %sub6.i.i52 = sub nsw i32 0, %and4.i.i51
  %cond.i.i = select i1 %tobool.not.i.i50, i32 %sub6.i.i52, i32 %and4.i.i51
  %conv4.i = trunc i32 %cond.i.i to i16
  br label %mt76x0_set_temp_offset.exit

mt76x0_set_temp_offset.exit:                      ; preds = %if.then.i, %do.end14.mt76x0_set_temp_offset.exit_crit_edge
  %.sink.i = phi i16 [ %conv4.i, %if.then.i ], [ -10, %do.end14.mt76x0_set_temp_offset.exit_crit_edge ]
  %53 = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 19, i32 0, i32 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %.sink.i, ptr %53, align 4
  br label %cleanup

cleanup:                                          ; preds = %mt76x0_set_temp_offset.exit, %mt76x0_load_eeprom.exit.cleanup_crit_edge, %mt76x0_efuse_physical_size_check.exit.i.cleanup_crit_edge, %mt76x0_efuse_physical_size_check.exit.thread.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mt76x0_set_temp_offset.exit ], [ %call9.i, %mt76x0_load_eeprom.exit.cleanup_crit_edge ], [ -22, %mt76x0_efuse_physical_size_check.exit.thread.i ], [ %call.i.i, %mt76x0_efuse_physical_size_check.exit.i.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_eeprom_override(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_mac_setaddr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt76x0_set_chip_cap(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %0 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eeprom.i, align 16
  %add.ptr.i = getelementptr i8, ptr %1, i32 52
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %add.ptr.i, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #6
  %add.ptr.i167 = getelementptr i8, ptr %1, i32 54
  %5 = ptrtoint ptr %add.ptr.i167 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %add.ptr.i167, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #6
  tail call void @mt76x02_eeprom_parse_hw_cap(ptr noundef %dev) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt76x0_set_chip_cap.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt76x0_set_chip_cap, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !57

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev6 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %8 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev6, align 8
  %cap = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 9
  %10 = ptrtoint ptr %cap to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %cap, align 8, !range !58
  %12 = zext i8 %11 to i32
  %has_5ghz = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 9, i32 1
  %13 = ptrtoint ptr %has_5ghz to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %has_5ghz, align 1, !range !58
  %15 = zext i8 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt76x0_set_chip_cap.__UNIQUE_ID_ddebug387, ptr noundef %9, ptr noundef nonnull @.str.16, i32 noundef %12, i32 noundef %15) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %no_2ghz = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 24
  %16 = ptrtoint ptr %no_2ghz to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %no_2ghz, align 8, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool12.not = icmp eq i8 %17, 0
  br i1 %tobool12.not, label %do.end.if.end33_crit_edge, label %if.then13

do.end.if.end33_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then13:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %cap14 = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 9
  %18 = ptrtoint ptr %cap14 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %cap14, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt76x0_set_chip_cap.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt76x0_set_chip_cap, %if.then28)) #6
          to label %if.end33 [label %if.then28], !srcloc !57

if.then28:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  %dev29 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %19 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev29, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt76x0_set_chip_cap.__UNIQUE_ID_ddebug388, ptr noundef %20, ptr noundef nonnull @.str.17) #6
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %if.then13, %do.end.if.end33_crit_edge
  %rev.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 39
  %21 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rev.i.i, align 4
  %shr.i.mask.i = and i32 %22, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1982857216, i32 %shr.i.mask.i)
  %cmp.i = icmp eq i32 %shr.i.mask.i, 1982857216
  br i1 %cmp.i, label %if.then35, label %if.end33.if.end55_crit_edge

if.end33.if.end55_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %has_5ghz37 = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 9, i32 1
  %23 = ptrtoint ptr %has_5ghz37 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %has_5ghz37, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt76x0_set_chip_cap.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt76x0_set_chip_cap, %if.then50)) #6
          to label %if.end55 [label %if.then50], !srcloc !57

if.then50:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  %dev51 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %24 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev51, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt76x0_set_chip_cap.__UNIQUE_ID_ddebug389, ptr noundef %25, ptr noundef nonnull @.str.18) #6
  br label %if.end55

if.end55:                                         ; preds = %if.then50, %if.then35, %if.end33.if.end55_crit_edge
  %conv57 = trunc i16 %7 to i8
  %26 = add i8 %conv57, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %26)
  %27 = icmp ult i8 %26, 2
  %28 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool66.not174 = icmp eq i16 %28, 0
  %tobool66.not = select i1 %27, i1 true, i1 %tobool66.not174
  br i1 %tobool66.not, label %if.end55.if.end85_crit_edge, label %do.body68

if.end55.if.end85_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

do.body68:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt76x0_set_chip_cap.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt76x0_set_chip_cap, %if.then80)) #6
          to label %if.end85 [label %if.then80], !srcloc !57

if.then80:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #8
  %dev81 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %29 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev81, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt76x0_set_chip_cap.__UNIQUE_ID_ddebug390, ptr noundef %30, ptr noundef nonnull @.str.19) #6
  br label %if.end85

if.end85:                                         ; preds = %if.then80, %do.body68, %if.end55.if.end85_crit_edge
  %31 = lshr i16 %4, 8
  %conv87 = trunc i16 %31 to i8
  %32 = add i8 %conv87, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %32)
  %33 = icmp ult i8 %32, 2
  %34 = and i16 %4, 238
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %35 = icmp eq i16 %34, 0
  %or.cond = select i1 %33, i1 true, i1 %35
  br i1 %or.cond, label %if.end85.cleanup_crit_edge, label %do.end135

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end135:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  %dev136 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %36 = ptrtoint ptr %dev136 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev136, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.20) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end135, %if.end85.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_eeprom_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_get_efuse_data(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_eeprom_parse_hw_cap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @mt76x0_get_power_info.chan_map, !1, !"chan_map", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/eeprom.c", i32 218, i32 4}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/eeprom.c", i32 339, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @mt76x0_eeprom_init._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @mt76x0_eeprom_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/eeprom.c", i32 342, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @mt76x0_eeprom_init._entry.5, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @mt76x0_eeprom_init._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_file401, !16, !"__UNIQUE_ID_file401", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/eeprom.c", i32 357, i32 1}
!17 = !{ptr @__UNIQUE_ID_license402, !16, !"__UNIQUE_ID_license402", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/eeprom.c", i32 299, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mt76x0_check_eeprom._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @mt76x0_check_eeprom._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/eeprom.c", i32 40, i32 3}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @mt76x0_efuse_physical_size_check._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @mt76x0_efuse_physical_size_check._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/eeprom.c", i32 54, i32 2}
!31 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @mt76x0_set_chip_cap.__UNIQUE_ID_ddebug387, !30, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/eeprom.c", i32 59, i32 3}
!36 = !{ptr @mt76x0_set_chip_cap.__UNIQUE_ID_ddebug388, !35, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/eeprom.c", i32 64, i32 3}
!39 = !{ptr @mt76x0_set_chip_cap.__UNIQUE_ID_ddebug389, !38, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/eeprom.c", i32 71, i32 3}
!42 = !{ptr @mt76x0_set_chip_cap.__UNIQUE_ID_ddebug390, !41, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/eeprom.c", i32 79, i32 3}
!45 = !{ptr @mt76x0_set_chip_cap._entry, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @mt76x0_set_chip_cap._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{!"auto-init"}
!57 = !{i64 2148960545, i64 2148960550, i64 2148960563, i64 2148960607, i64 2148960641, i64 2148960662}
!58 = !{i8 0, i8 2}
