; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt76x0/pci.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt76x0/pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mt76_driver_ops = type { i32, i32, i16, i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.99 = type { ptr }
%struct.mt76x02_dev = type { %union.anon.146, [8 x %struct.mac_address], %struct.mutex, i8, %struct.anon.147, %struct.spinlock, i32, i32, ptr, %struct.delayed_work, %struct.delayed_work, %struct.hrtimer, %struct.work_struct, ptr, i8, i8, i32, i8, i8, %struct.mt76x02_calibration, i32, i8, [2 x i8], i8, i8, i16, i8, %struct.mt76x02_dfs_pattern_detector, i32, i8, i8, i8, i8, i8, i8, i64, [16 x i8] }
%union.anon.146 = type { %struct.mt76_dev }
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
%struct.anon.135 = type { ptr, ptr, i16 }
%struct.mt76_rx_status = type <{ %union.anon.136, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.136 = type { ptr }
%struct.mt76_mcu = type { %struct.mutex, i32, i32, %struct.sk_buff_head, %struct.wait_queue_head }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.104, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.130, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.104 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.130 = type { ptr }
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
%struct.mac_address = type { [6 x i8] }
%struct.anon.147 = type { %union.anon.148, [0 x %struct.mt76x02_tx_status] }
%union.anon.148 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.mt76x02_tx_status = type { i8, i8, i8, i8, i16 }
%struct.mt76x02_calibration = type { %struct.mt76x02_rx_freq_cal, [2 x i8], [2 x i8], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8 }
%struct.mt76x02_rx_freq_cal = type { [2 x i8], [2 x i8], i8, i32, i16, i8 }
%struct.mt76x02_dfs_pattern_detector = type { i8, i32, %struct.mt76x02_dfs_sw_detector_params, [2 x %struct.mt76x02_dfs_event_rb], %struct.list_head, %struct.list_head, %struct.mt76x02_dfs_seq_stats, i32, i32, [4 x %struct.mt76x02_dfs_engine_stats], %struct.tasklet_struct }
%struct.mt76x02_dfs_sw_detector_params = type { i32, i32, i32 }
%struct.mt76x02_dfs_event_rb = type { [256 x %struct.mt76x02_dfs_event], i32, i32 }
%struct.mt76x02_dfs_event = type { i32, i32, i16, i8 }
%struct.mt76x02_dfs_seq_stats = type { i32, i32 }
%struct.mt76x02_dfs_engine_stats = type { i32, i32, i32 }
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.mt76_queue_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.131, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.131 = type { i32, i16 }

@__UNIQUE_ID_firmware389 = internal constant [38 x i8] c"mt76x0e.firmware=mediatek/mt7610e.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware390 = internal constant [38 x i8] c"mt76x0e.firmware=mediatek/mt7650e.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_file391 = internal constant [63 x i8] c"mt76x0e.file=drivers/net/wireless/mediatek/mt76/mt76x0/mt76x0e\00", section ".modinfo", align 1
@__UNIQUE_ID_license392 = internal constant [29 x i8] c"mt76x0e.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__initcall__kmod_mt76x0e__393_318_mt76x0e_driver_init6 = internal global ptr @mt76x0e_driver_init, section ".initcall6.init", align 4
@mt76x0e_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @mt76x0e_device_table, ptr @mt76x0e_probe, ptr @mt76x0e_remove, ptr @mt76x0e_suspend, ptr @mt76x0e_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_mt76x0e_driver_exit = internal global ptr @mt76x0e_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mt76x0e\00", [24 x i8] zeroinitializer }, align 32
@mt76x0e_device_table = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 5315, i32 30224, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5315, i32 30256, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5315, i32 30288, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@mt76x0e_probe.drv_ops = internal constant { %struct.mt76_driver_ops, [36 x i8] } { %struct.mt76_driver_ops { i32 6, i32 64, i16 20, i16 0, i8 0, ptr @mt76x02_update_channel, ptr @mt76x02_tx_prepare_skb, ptr @mt76x02_tx_complete_skb, ptr null, ptr null, ptr @mt76x02_queue_rx_skb, ptr @mt76x02_rx_poll_complete, ptr @mt76x02_sta_ps, ptr @mt76x02_sta_add, ptr null, ptr @mt76x02_sta_remove }, [36 x i8] zeroinitializer }, align 32
@mt76x0e_ops = internal constant { %struct.ieee80211_ops, [124 x i8] } { %struct.ieee80211_ops { ptr @mt76x02_tx, ptr @mt76x0e_start, ptr @mt76x0e_stop, ptr null, ptr null, ptr null, ptr @mt76x02_add_interface, ptr null, ptr @mt76x02_remove_interface, ptr @mt76x0_config, ptr @mt76x02_bss_info_changed, ptr null, ptr null, ptr null, ptr @mt76x02_configure_filter, ptr null, ptr @mt76_set_tim, ptr @mt76x02_set_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt76_sw_scan, ptr @mt76x02_sw_scan_complete, ptr null, ptr null, ptr null, ptr @mt76x02_set_rts_threshold, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt76_sta_state, ptr @mt76_sta_pre_rcu_remove, ptr null, ptr @mt76x02_sta_rate_tbl_update, ptr null, ptr @mt76x02_conf_tx, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt76x02_ampdu_action, ptr @mt76_get_survey, ptr null, ptr @mt76x02_set_coverage_class, ptr null, ptr null, ptr @mt76x0e_flush, ptr null, ptr null, ptr @mt76_get_antenna, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt76_release_buffered_frames, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt76x02_reconfig_complete, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt76_get_txpower, ptr null, ptr null, ptr null, ptr @mt76_wake_tx_queue, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt76x0_set_sar_specs, ptr null, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@mt76x0e_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->phy_mutex\00", [16 x i8] zeroinitializer }, align 32
@mt76x0e_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 197, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ASIC revision: %08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt76x0e_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/wireless/mediatek/mt76/mt76x0/pci.c\00", [48 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt76x0e_probe._entry_ptr = internal global ptr @mt76x0e_probe._entry, section ".printk_index", align 4
@mt76x0e_stop_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 36, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TX DMA did not stop\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mt76x0e_stop_hw\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mt76x0e_stop_hw._entry_ptr = internal global ptr @mt76x0e_stop_hw._entry, section ".printk_index", align 4
@mt76x0e_stop_hw._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 43, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@mt76x0e_stop_hw._entry_ptr.11 = internal global ptr @mt76x0e_stop_hw._entry.10, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.12 = private unnamed_addr constant [15 x i8] c"mt76x0e_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 307, i32 26 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 318, i32 1 }
@___asan_gen_.18 = private unnamed_addr constant [21 x i8] c"mt76x0e_device_table\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 295, i32 35 }
@___asan_gen_.21 = private unnamed_addr constant [8 x i8] c"drv_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 152, i32 38 }
@___asan_gen_.24 = private unnamed_addr constant [12 x i8] c"mt76x0e_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 61, i32 35 }
@___asan_gen_.27 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 192, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 197, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 36, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private constant [51 x i8] c"../drivers/net/wireless/mediatek/mt76/mt76x0/pci.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 43, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_file391, ptr @__UNIQUE_ID_firmware389, ptr @__UNIQUE_ID_firmware390, ptr @__UNIQUE_ID_license392, ptr @__exitcall_mt76x0e_driver_exit, ptr @__initcall__kmod_mt76x0e__393_318_mt76x0e_driver_init6, ptr @mt76x0e_driver_exit, ptr @mt76x0e_probe._entry, ptr @mt76x0e_probe._entry_ptr, ptr @mt76x0e_stop_hw._entry, ptr @mt76x0e_stop_hw._entry.10, ptr @mt76x0e_stop_hw._entry_ptr, ptr @mt76x0e_stop_hw._entry_ptr.11, ptr @mt76x0e_driver, ptr @.str, ptr @mt76x0e_device_table, ptr @mt76x0e_probe.drv_ops, ptr @mt76x0e_ops, ptr @mt76x0e_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x0e_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x0e_device_table to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x0e_probe.drv_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x0e_ops to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x0e_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x0e_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x0e_stop_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x0e_stop_hw._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt76x0e_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @mt76x0e_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt76x0e_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_unregister_driver(ptr noundef nonnull @mt76x0e_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt76x0e_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcim_enable_device(ptr noundef %pdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %0 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.pci_name.exit_crit_edge

if.end.pci_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %3, %if.end.i.i ], [ %1, %if.end.pci_name.exit_crit_edge ]
  %call2 = tail call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 1, ptr noundef %retval.0.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %pci_name.exit.cleanup_crit_edge

pci_name.exit.cleanup_crit_edge:                  ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %pci_name.exit
  tail call void @pci_set_master(ptr noundef %pdev) #7
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call7 = tail call i32 @dma_set_mask(ptr noundef %dev6, i64 noundef 4294967295) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  tail call void @mt76_pci_disable_aspm(ptr noundef %pdev) #7
  %call12 = tail call ptr @mt76_alloc_device(ptr noundef %dev6, i32 noundef 17920, ptr noundef nonnull @mt76x0e_ops, ptr noundef nonnull @mt76x0e_probe.drv_ops) #7
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %phy_mutex = getelementptr inbounds %struct.mt76x02_dev, ptr %call12, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %phy_mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @mt76x0e_probe.__key) #7
  %call16 = tail call ptr @pcim_iomap_table(ptr noundef %pdev) #7
  %4 = ptrtoint ptr %call16 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call16, align 4
  tail call void @mt76_mmio_init(ptr noundef nonnull %call12, ptr noundef %5) #7
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %call12, i32 0, i32 10
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call17 = tail call i32 %9(ptr noundef nonnull %call12, i32 noundef 0) #7
  %rev = getelementptr inbounds %struct.mt76_dev, ptr %call12, i32 0, i32 39
  %10 = ptrtoint ptr %rev to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call17, ptr %rev, align 4
  %dev21 = getelementptr inbounds %struct.mt76_dev, ptr %call12, i32 0, i32 13
  %11 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev21, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.2, i32 noundef %call17) #10
  %13 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wr, align 4
  tail call void %16(ptr noundef nonnull %call12, i32 noundef 516, i32 noundef 0) #7
  %17 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev21, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %18, i32 noundef %20, ptr noundef nonnull @mt76x02_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %call12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool26.not = icmp eq i32 %call.i, 0
  br i1 %tobool26.not, label %if.end28, label %if.end15.error_crit_edge

if.end15.error_crit_edge:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end28:                                         ; preds = %if.end15
  %call29 = tail call fastcc i32 @mt76x0e_register_device(ptr noundef nonnull %call12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp = icmp slt i32 %call29, 0
  br i1 %cmp, label %if.end28.error_crit_edge, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28.error_crit_edge:                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

error:                                            ; preds = %if.end28.error_crit_edge, %if.end15.error_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end15.error_crit_edge ], [ %call29, %if.end28.error_crit_edge ]
  tail call void @mt76_free_device(ptr noundef nonnull %call12) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end28.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %pci_name.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %pci_name.exit.cleanup_crit_edge ], [ %call7, %if.end5.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ 0, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt76x0e_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mt76_unregister_device(ptr noundef %1) #7
  %state.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i) #7
  %pre_tbtt_tasklet.i = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 41
  %count.i.i.i = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 41, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %count.i.i.i, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i, ptr %count.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i) #7, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !49
  tail call void @tasklet_unlock_wait(ptr noundef %pre_tbtt_tasklet.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !50
  tail call void @mt76x0_chip_onoff(ptr noundef %1, i1 noundef zeroext false, i1 noundef zeroext false) #7
  tail call fastcc void @mt76x0e_stop_hw(ptr noundef %1) #7
  tail call void @mt76_dma_cleanup(ptr noundef %1) #7
  %call.i = tail call i32 @mt76x02_mcu_cleanup(ptr noundef %1) #7
  tail call void @mt76_free_device(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt76x0e_suspend(ptr noundef %pdev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tx_worker = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_worker, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.mt76_worker_disable.exit_crit_edge, label %if.end.i

entry.mt76_worker_disable.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_worker_disable.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @kthread_park(ptr noundef nonnull %3) #7
  %state.i = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 26, i32 2
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %state.i, align 4
  br label %mt76_worker_disable.exit

mt76_worker_disable.exit:                         ; preds = %if.end.i, %entry.mt76_worker_disable.exit_crit_edge
  %queue_ops = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 24
  %5 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup = getelementptr inbounds %struct.mt76_queue_ops, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %tx_cleanup to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx_cleanup, align 4
  %arrayidx = getelementptr %struct.mt76_phy, ptr %1, i32 0, i32 4, i32 0
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  tail call void %8(ptr noundef %1, ptr noundef %10, i1 noundef zeroext true) #7
  %11 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup.1 = getelementptr inbounds %struct.mt76_queue_ops, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %tx_cleanup.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tx_cleanup.1, align 4
  %arrayidx.1 = getelementptr %struct.mt76_phy, ptr %1, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.1, align 4
  tail call void %14(ptr noundef %1, ptr noundef %16, i1 noundef zeroext true) #7
  %17 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup.2 = getelementptr inbounds %struct.mt76_queue_ops, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %tx_cleanup.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tx_cleanup.2, align 4
  %arrayidx.2 = getelementptr %struct.mt76_phy, ptr %1, i32 0, i32 4, i32 2
  %21 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.2, align 4
  tail call void %20(ptr noundef %1, ptr noundef %22, i1 noundef zeroext true) #7
  %23 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup.3 = getelementptr inbounds %struct.mt76_queue_ops, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %tx_cleanup.3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tx_cleanup.3, align 4
  %arrayidx.3 = getelementptr %struct.mt76_phy, ptr %1, i32 0, i32 4, i32 3
  %27 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.3, align 4
  tail call void %26(ptr noundef %1, ptr noundef %28, i1 noundef zeroext true) #7
  %29 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup.4 = getelementptr inbounds %struct.mt76_queue_ops, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %tx_cleanup.4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tx_cleanup.4, align 4
  %arrayidx.4 = getelementptr %struct.mt76_phy, ptr %1, i32 0, i32 4, i32 4
  %33 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.4, align 4
  tail call void %32(ptr noundef %1, ptr noundef %34, i1 noundef zeroext true) #7
  %35 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup.5 = getelementptr inbounds %struct.mt76_queue_ops, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %tx_cleanup.5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tx_cleanup.5, align 4
  %arrayidx.5 = getelementptr %struct.mt76_phy, ptr %1, i32 0, i32 4, i32 5
  %39 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.5, align 4
  tail call void %38(ptr noundef %1, ptr noundef %40, i1 noundef zeroext true) #7
  %41 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup.6 = getelementptr inbounds %struct.mt76_queue_ops, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %tx_cleanup.6 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tx_cleanup.6, align 4
  %arrayidx.6 = getelementptr %struct.mt76_phy, ptr %1, i32 0, i32 4, i32 6
  %45 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.6, align 4
  tail call void %44(ptr noundef %1, ptr noundef %46, i1 noundef zeroext true) #7
  %47 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup5 = getelementptr inbounds %struct.mt76_queue_ops, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %tx_cleanup5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tx_cleanup5, align 4
  %arrayidx6 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 22, i32 0
  %51 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx6, align 4
  tail call void %50(ptr noundef %1, ptr noundef %52, i1 noundef zeroext true) #7
  %53 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup5.1 = getelementptr inbounds %struct.mt76_queue_ops, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %tx_cleanup5.1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tx_cleanup5.1, align 4
  %arrayidx6.1 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 22, i32 1
  %57 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx6.1, align 4
  tail call void %56(ptr noundef %1, ptr noundef %58, i1 noundef zeroext true) #7
  %59 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup5.2 = getelementptr inbounds %struct.mt76_queue_ops, ptr %60, i32 0, i32 6
  %61 = ptrtoint ptr %tx_cleanup5.2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tx_cleanup5.2, align 4
  %arrayidx6.2 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 22, i32 2
  %63 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx6.2, align 4
  tail call void %62(ptr noundef %1, ptr noundef %64, i1 noundef zeroext true) #7
  %tx_napi = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 27
  tail call void @napi_disable(ptr noundef %tx_napi) #7
  %ndesc = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 0, i32 8
  %65 = ptrtoint ptr %ndesc to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ndesc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not = icmp eq i32 %66, 0
  br i1 %tobool.not, label %mt76_worker_disable.exit.for.end17_crit_edge, label %for.body13

mt76_worker_disable.exit.for.end17_crit_edge:     ; preds = %mt76_worker_disable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end17

for.body13:                                       ; preds = %mt76_worker_disable.exit
  %arrayidx14 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 0
  tail call void @napi_disable(ptr noundef %arrayidx14) #7
  %ndesc.1 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 1, i32 8
  %67 = ptrtoint ptr %ndesc.1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ndesc.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.1 = icmp eq i32 %68, 0
  br i1 %tobool.not.1, label %for.body13.for.end17_crit_edge, label %for.body13.1

for.body13.for.end17_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end17

for.body13.1:                                     ; preds = %for.body13
  %arrayidx14.1 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 1
  tail call void @napi_disable(ptr noundef %arrayidx14.1) #7
  %ndesc.2 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 2, i32 8
  %69 = ptrtoint ptr %ndesc.2 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ndesc.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.2 = icmp eq i32 %70, 0
  br i1 %tobool.not.2, label %for.body13.1.for.end17_crit_edge, label %for.body13.2

for.body13.1.for.end17_crit_edge:                 ; preds = %for.body13.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end17

for.body13.2:                                     ; preds = %for.body13.1
  %arrayidx14.2 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 2
  tail call void @napi_disable(ptr noundef %arrayidx14.2) #7
  %ndesc.3 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 3, i32 8
  %71 = ptrtoint ptr %ndesc.3 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ndesc.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.3 = icmp eq i32 %72, 0
  br i1 %tobool.not.3, label %for.body13.2.for.end17_crit_edge, label %for.body13.3

for.body13.2.for.end17_crit_edge:                 ; preds = %for.body13.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end17

for.body13.3:                                     ; preds = %for.body13.2
  %arrayidx14.3 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 3
  tail call void @napi_disable(ptr noundef %arrayidx14.3) #7
  %ndesc.4 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 4, i32 8
  %73 = ptrtoint ptr %ndesc.4 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ndesc.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.4 = icmp eq i32 %74, 0
  br i1 %tobool.not.4, label %for.body13.3.for.end17_crit_edge, label %for.body13.4

for.body13.3.for.end17_crit_edge:                 ; preds = %for.body13.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end17

for.body13.4:                                     ; preds = %for.body13.3
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx14.4 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 4
  tail call void @napi_disable(ptr noundef %arrayidx14.4) #7
  br label %for.end17

for.end17:                                        ; preds = %for.body13.4, %for.body13.3.for.end17_crit_edge, %for.body13.2.for.end17_crit_edge, %for.body13.1.for.end17_crit_edge, %for.body13.for.end17_crit_edge, %mt76_worker_disable.exit.for.end17_crit_edge
  tail call void @mt76x02_dma_disable(ptr noundef %1) #7
  %call18 = tail call i32 @mt76x02_mcu_cleanup(ptr noundef %1) #7
  tail call void @mt76x0_chip_onoff(ptr noundef %1, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call20 = tail call i32 @pci_choose_state(ptr noundef %pdev, [1 x i32] %state.coerce) #7
  %call21 = tail call i32 @pci_enable_wake(ptr noundef %pdev, i32 noundef %call20, i1 noundef zeroext true) #7
  %call22 = tail call i32 @pci_save_state(ptr noundef %pdev) #7
  %call24 = tail call i32 @pci_choose_state(ptr noundef %pdev, [1 x i32] %state.coerce) #7
  %call25 = tail call i32 @pci_set_power_state(ptr noundef %pdev, i32 noundef %call24) #7
  ret i32 %call25
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt76x0e_resume(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @pci_set_power_state(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @pci_restore_state(ptr noundef %pdev) #7
  %tx_worker = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_worker, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.mt76_worker_enable.exit_crit_edge, label %if.end.i

if.end.mt76_worker_enable.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_worker_enable.exit

if.end.i:                                         ; preds = %if.end
  tail call void @kthread_unpark(ptr noundef nonnull %3) #7
  %4 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_worker, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.mt76_worker_enable.exit_crit_edge, label %if.end.i.i

if.end.i.mt76_worker_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_worker_enable.exit

if.end.i.i:                                       ; preds = %if.end.i
  %state.i.i = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 26, i32 2
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i, label %if.end.i.i.mt76_worker_enable.exit_crit_edge

if.end.i.i.mt76_worker_enable.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_worker_enable.exit

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %6 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i.i, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %land.lhs.true.i.i.mt76_worker_enable.exit_crit_edge

land.lhs.true.i.i.mt76_worker_enable.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_worker_enable.exit

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_worker, align 4
  %call7.i.i = tail call i32 @wake_up_process(ptr noundef %10) #7
  br label %mt76_worker_enable.exit

mt76_worker_enable.exit:                          ; preds = %if.then5.i.i, %land.lhs.true.i.i.mt76_worker_enable.exit_crit_edge, %if.end.i.i.mt76_worker_enable.exit_crit_edge, %if.end.i.mt76_worker_enable.exit_crit_edge, %if.end.mt76_worker_enable.exit_crit_edge
  tail call fastcc void @local_bh_disable()
  %queue_ops = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 24
  %ndesc = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 0, i32 8
  %11 = ptrtoint ptr %ndesc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ndesc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool2.not = icmp eq i32 %12, 0
  br i1 %tobool2.not, label %mt76_worker_enable.exit.for.end_crit_edge, label %for.body

mt76_worker_enable.exit.for.end_crit_edge:        ; preds = %mt76_worker_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %mt76_worker_enable.exit
  %13 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %queue_ops, align 4
  %rx_reset = getelementptr inbounds %struct.mt76_queue_ops, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %rx_reset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_reset, align 4
  tail call void %16(ptr noundef %1, i32 noundef 0) #7
  %arrayidx3 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 0
  tail call void @napi_enable(ptr noundef %arrayidx3) #7
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx3) #7
  br i1 %call.i, label %if.then.i, label %for.body.napi_schedule.exit_crit_edge

for.body.napi_schedule.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %napi_schedule.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__napi_schedule(ptr noundef %arrayidx3) #7
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i, %for.body.napi_schedule.exit_crit_edge
  %ndesc.1 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 1, i32 8
  %17 = ptrtoint ptr %ndesc.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ndesc.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool2.not.1 = icmp eq i32 %18, 0
  br i1 %tobool2.not.1, label %napi_schedule.exit.for.end_crit_edge, label %for.body.1

napi_schedule.exit.for.end_crit_edge:             ; preds = %napi_schedule.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.1:                                       ; preds = %napi_schedule.exit
  %19 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %queue_ops, align 4
  %rx_reset.1 = getelementptr inbounds %struct.mt76_queue_ops, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %rx_reset.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_reset.1, align 4
  tail call void %22(ptr noundef %1, i32 noundef 1) #7
  %arrayidx3.1 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 1
  tail call void @napi_enable(ptr noundef %arrayidx3.1) #7
  %call.i.1 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx3.1) #7
  br i1 %call.i.1, label %if.then.i.1, label %for.body.1.napi_schedule.exit.1_crit_edge

for.body.1.napi_schedule.exit.1_crit_edge:        ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %napi_schedule.exit.1

if.then.i.1:                                      ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__napi_schedule(ptr noundef %arrayidx3.1) #7
  br label %napi_schedule.exit.1

napi_schedule.exit.1:                             ; preds = %if.then.i.1, %for.body.1.napi_schedule.exit.1_crit_edge
  %ndesc.2 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 2, i32 8
  %23 = ptrtoint ptr %ndesc.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ndesc.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool2.not.2 = icmp eq i32 %24, 0
  br i1 %tobool2.not.2, label %napi_schedule.exit.1.for.end_crit_edge, label %for.body.2

napi_schedule.exit.1.for.end_crit_edge:           ; preds = %napi_schedule.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.2:                                       ; preds = %napi_schedule.exit.1
  %25 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %queue_ops, align 4
  %rx_reset.2 = getelementptr inbounds %struct.mt76_queue_ops, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %rx_reset.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx_reset.2, align 4
  tail call void %28(ptr noundef %1, i32 noundef 2) #7
  %arrayidx3.2 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 2
  tail call void @napi_enable(ptr noundef %arrayidx3.2) #7
  %call.i.2 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx3.2) #7
  br i1 %call.i.2, label %if.then.i.2, label %for.body.2.napi_schedule.exit.2_crit_edge

for.body.2.napi_schedule.exit.2_crit_edge:        ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %napi_schedule.exit.2

if.then.i.2:                                      ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__napi_schedule(ptr noundef %arrayidx3.2) #7
  br label %napi_schedule.exit.2

napi_schedule.exit.2:                             ; preds = %if.then.i.2, %for.body.2.napi_schedule.exit.2_crit_edge
  %ndesc.3 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 3, i32 8
  %29 = ptrtoint ptr %ndesc.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ndesc.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool2.not.3 = icmp eq i32 %30, 0
  br i1 %tobool2.not.3, label %napi_schedule.exit.2.for.end_crit_edge, label %for.body.3

napi_schedule.exit.2.for.end_crit_edge:           ; preds = %napi_schedule.exit.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.3:                                       ; preds = %napi_schedule.exit.2
  %31 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %queue_ops, align 4
  %rx_reset.3 = getelementptr inbounds %struct.mt76_queue_ops, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %rx_reset.3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rx_reset.3, align 4
  tail call void %34(ptr noundef %1, i32 noundef 3) #7
  %arrayidx3.3 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 3
  tail call void @napi_enable(ptr noundef %arrayidx3.3) #7
  %call.i.3 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx3.3) #7
  br i1 %call.i.3, label %if.then.i.3, label %for.body.3.napi_schedule.exit.3_crit_edge

for.body.3.napi_schedule.exit.3_crit_edge:        ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %napi_schedule.exit.3

if.then.i.3:                                      ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__napi_schedule(ptr noundef %arrayidx3.3) #7
  br label %napi_schedule.exit.3

napi_schedule.exit.3:                             ; preds = %if.then.i.3, %for.body.3.napi_schedule.exit.3_crit_edge
  %ndesc.4 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 4, i32 8
  %35 = ptrtoint ptr %ndesc.4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ndesc.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool2.not.4 = icmp eq i32 %36, 0
  br i1 %tobool2.not.4, label %napi_schedule.exit.3.for.end_crit_edge, label %for.body.4

napi_schedule.exit.3.for.end_crit_edge:           ; preds = %napi_schedule.exit.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.4:                                       ; preds = %napi_schedule.exit.3
  %37 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %queue_ops, align 4
  %rx_reset.4 = getelementptr inbounds %struct.mt76_queue_ops, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %rx_reset.4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rx_reset.4, align 4
  tail call void %40(ptr noundef %1, i32 noundef 4) #7
  %arrayidx3.4 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 4
  tail call void @napi_enable(ptr noundef %arrayidx3.4) #7
  %call.i.4 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx3.4) #7
  br i1 %call.i.4, label %if.then.i.4, label %for.body.4.for.end_crit_edge

for.body.4.for.end_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then.i.4:                                      ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__napi_schedule(ptr noundef %arrayidx3.4) #7
  br label %for.end

for.end:                                          ; preds = %if.then.i.4, %for.body.4.for.end_crit_edge, %napi_schedule.exit.3.for.end_crit_edge, %napi_schedule.exit.2.for.end_crit_edge, %napi_schedule.exit.1.for.end_crit_edge, %napi_schedule.exit.for.end_crit_edge, %mt76_worker_enable.exit.for.end_crit_edge
  %tx_napi = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 27
  tail call void @napi_enable(ptr noundef %tx_napi) #7
  %call.i28 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %tx_napi) #7
  br i1 %call.i28, label %if.then.i29, label %for.end.napi_schedule.exit31_crit_edge

for.end.napi_schedule.exit31_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %napi_schedule.exit31

if.then.i29:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__napi_schedule(ptr noundef %tx_napi) #7
  br label %napi_schedule.exit31

napi_schedule.exit31:                             ; preds = %if.then.i29, %for.end.napi_schedule.exit31_crit_edge
  tail call fastcc void @local_bh_enable()
  %call7 = tail call fastcc i32 @mt76x0e_init_hardware(ptr noundef %1, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %napi_schedule.exit31, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %napi_schedule.exit31 ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_update_channel(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_tx_prepare_skb(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_tx_complete_skb(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_queue_rx_skb(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_rx_poll_complete(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_sta_ps(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_sta_add(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_sta_remove(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_pci_disable_aspm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mt76_alloc_device(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_mmio_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_irq_handler(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt76x0e_register_device(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mt76x0e_init_hardware(ptr noundef %dev, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @mt76x0_register_device(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %state = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_tx(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt76x0e_start(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void @mt76x02_mac_start(ptr noundef %1) #7
  tail call void @mt76x0_phy_calibrate(ptr noundef %1, i1 noundef zeroext true) #7
  %hw1 = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw1, align 4
  %mac_work = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 18
  tail call void @ieee80211_queue_delayed_work(ptr noundef %3, ptr noundef %mac_work, i32 noundef 10) #7
  %4 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw1, align 4
  %cal_work = getelementptr inbounds %struct.mt76x02_dev, ptr %1, i32 0, i32 9
  tail call void @ieee80211_queue_delayed_work(ptr noundef %5, ptr noundef %cal_work, i32 noundef 100) #7
  %state = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt76x0e_stop(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %state = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #7
  tail call fastcc void @mt76x0e_stop_hw(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_add_interface(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_remove_interface(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x0_config(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_bss_info_changed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_configure_filter(ptr noundef, i32 noundef, ptr noundef, i64 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_set_tim(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_set_key(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_sw_scan(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_sw_scan_complete(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_set_rts_threshold(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_sta_state(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_sta_pre_rcu_remove(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_sta_rate_tbl_update(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_conf_tx(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_ampdu_action(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_get_survey(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_set_coverage_class(ptr noundef, i16 noundef signext) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mt76x0e_flush(ptr nocapture noundef %hw, ptr nocapture noundef %vif, i32 noundef %queues, i1 noundef zeroext %drop) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_get_antenna(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_release_buffered_frames(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_reconfig_complete(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_get_txpower(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_wake_tx_queue(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x0_set_sar_specs(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_mac_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x0_phy_calibrate(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt76x0e_stop_hw(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cal_work = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 9
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %cal_work) #7
  %mac_work = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 18
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mac_work) #7
  %state = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %state) #7
  %call2 = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef 520, i32 noundef 2, i32 noundef 0, i32 noundef 1000) #7
  br i1 %call2, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev3 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %0 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev3, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.7) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmw, align 4
  %call4 = tail call i32 %5(ptr noundef %dev, i32 noundef 520, i32 noundef 1, i32 noundef 0) #7
  tail call void @mt76x0_mac_stop(ptr noundef %dev) #7
  %call5 = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef 520, i32 noundef 8, i32 noundef 0, i32 noundef 1000) #7
  br i1 %call5, label %if.end.if.end10_crit_edge, label %do.end8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev9 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %6 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev9, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.7) #10
  br label %if.end10

if.end10:                                         ; preds = %do.end8, %if.end.if.end10_crit_edge
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 4
  %rmw12 = getelementptr inbounds %struct.mt76_bus_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %rmw12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmw12, align 4
  %call13 = tail call i32 %11(ptr noundef %dev, i32 noundef 520, i32 noundef 4, i32 noundef 0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mt76_poll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x0_mac_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt76x0e_init_hardware(ptr noundef %dev, i1 noundef zeroext %resume) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mt76x0_chip_onoff(ptr noundef %dev, i1 noundef zeroext true, i1 noundef zeroext false) #7
  %state.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  %bus.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %sw.epilog.i.for.body.i_crit_edge, %entry
  %i.06.i = phi i32 [ 0, %entry ], [ %inc.i, %sw.epilog.i.for.body.i_crit_edge ]
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %2 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %for.body.i
  %3 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call1.i = tail call i32 %6(ptr noundef %dev, i32 noundef 4096) #7
  %7 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1.i, label %if.end [
    i32 0, label %if.end.i.sw.epilog.i_crit_edge
    i32 -1, label %if.end.i.sw.epilog.i_crit_edge58
  ]

if.end.i.sw.epilog.i_crit_edge58:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end.i.sw.epilog.i_crit_edge, %if.end.i.sw.epilog.i_crit_edge58
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #7
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 500
  br i1 %exitcond.not.i, label %sw.epilog.i.cleanup_crit_edge, label %sw.epilog.i.for.body.i_crit_edge

sw.epilog.i.for.body.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  tail call void @mt76x02_dma_disable(ptr noundef %dev) #7
  %call1 = tail call i32 @mt76x0e_mcu_init(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  br i1 %resume, label %if.end3.if.end9_crit_edge, label %if.then4

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then4:                                         ; preds = %if.end3
  %call5 = tail call i32 @mt76x02_dma_init(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then4.cleanup_crit_edge, label %if.then4.if.end9_crit_edge

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.then4.if.end9_crit_edge, %if.end3.if.end9_crit_edge
  %call10 = tail call i32 @mt76x0_init_hardware(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  tail call void @mt76x02e_init_beacon_config(ptr noundef %dev) #7
  %rev.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 39
  %8 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rev.i, align 4
  %shr.i.mask = and i32 %9, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1980760064, i32 %shr.i.mask)
  %cmp15 = icmp eq i32 %shr.i.mask, 1980760064
  br i1 %cmp15, label %if.then17, label %if.end13.if.end28_crit_edge

if.end13.if.end28_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then17:                                        ; preds = %if.end13
  %10 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmw, align 4
  %call18 = tail call i32 %13(ptr noundef %dev, i32 noundef 64, i32 noundef 1, i32 noundef 0) #7
  %eeprom.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %14 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %eeprom.i, align 16
  %add.ptr.i = getelementptr i8, ptr %15, i32 52
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %add.ptr.i, align 1
  %18 = and i16 %17, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool22.not = icmp eq i16 %18, 0
  br i1 %tobool22.not, label %if.then23, label %if.then17.if.end28_crit_edge

if.then17.if.end28_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then23:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus.i, align 4
  %rmw25 = getelementptr inbounds %struct.mt76_bus_ops, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %rmw25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmw25, align 4
  %call26 = tail call i32 %22(ptr noundef %dev, i32 noundef 284, i32 noundef 0, i32 noundef 3075) #7
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %if.then17.if.end28_crit_edge, %if.end13.if.end28_crit_edge
  %23 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus.i, align 4
  %rmw30 = getelementptr inbounds %struct.mt76_bus_ops, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %rmw30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmw30, align 4
  %call31 = tail call i32 %26(ptr noundef %dev, i32 noundef 272, i32 noundef 512, i32 noundef 0) #7
  %27 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus.i, align 4
  %rmw33 = getelementptr inbounds %struct.mt76_bus_ops, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %rmw33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmw33, align 4
  %call34 = tail call i32 %30(ptr noundef %dev, i32 noundef 4120, i32 noundef 0, i32 noundef 8192) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end9.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.epilog.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.then4.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ -110, %for.body.i.cleanup_crit_edge ], [ -110, %sw.epilog.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x0_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x0_chip_onoff(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_dma_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x0e_mcu_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_dma_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x0_init_hardware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02e_init_beacon_config(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_dma_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_mcu_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_wake(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_choose_state(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_park(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_unpark(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !33, !34, !35, !36, !38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__UNIQUE_ID_firmware389, !1, !"__UNIQUE_ID_firmware389", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/pci.c", i32 303, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware390, !3, !"__UNIQUE_ID_firmware390", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/pci.c", i32 304, i32 1}
!4 = !{ptr @__UNIQUE_ID_file391, !5, !"__UNIQUE_ID_file391", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/pci.c", i32 305, i32 1}
!6 = !{ptr @__UNIQUE_ID_license392, !5, !"__UNIQUE_ID_license392", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_mt76x0e__393_318_mt76x0e_driver_init6, !8, !"__initcall__kmod_mt76x0e__393_318_mt76x0e_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/pci.c", i32 318, i32 1}
!9 = !{ptr @__exitcall_mt76x0e_driver_exit, !8, !"__exitcall_mt76x0e_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mt76x0e_driver, !12, !"mt76x0e_driver", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/pci.c", i32 307, i32 26}
!13 = !{ptr @mt76x0e_device_table, !14, !"mt76x0e_device_table", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/pci.c", i32 295, i32 35}
!15 = !{ptr @mt76x0e_probe.drv_ops, !16, !"drv_ops", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/pci.c", i32 152, i32 38}
!17 = !{ptr @mt76x0e_probe.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/pci.c", i32 192, i32 2}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/pci.c", i32 197, i32 2}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mt76x0e_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @mt76x0e_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @mt76x0e_ops, !29, !"mt76x0e_ops", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/pci.c", i32 61, i32 35}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/pci.c", i32 36, i32 3}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mt76x0e_stop_hw._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @mt76x0e_stop_hw._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @mt76x0e_stop_hw._entry.10, !37, !"_entry", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/pci.c", i32 43, i32 3}
!38 = !{ptr @mt76x0e_stop_hw._entry_ptr.11, !37, !"_entry_ptr", i1 false, i1 false}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i64 2148215637, i64 2148215663, i64 2148215692, i64 2148215726, i64 2148215757, i64 2148215780}
!49 = !{i64 2153082177}
!50 = !{i64 2153082819}
