; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt7921/sdio.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt7921/sdio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sdio_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdio_device_id = type { i8, i16, i16, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mt76_driver_ops = type { i32, i32, i16, i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.mt7921_hif_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.sdio_func = type { ptr, %struct.device, ptr, i32, i8, i16, i16, i32, i32, i32, i32, ptr, i8, i8, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mt7921_dev = type { %union.anon.148, ptr, %struct.mt7921_phy, %struct.tasklet_struct, %struct.work_struct, i8, %struct.list_head, %struct.spinlock, i8, %struct.mt76_connac_pm, %struct.mt76_connac_coredump, ptr, [32 x i8] }
%union.anon.148 = type { %struct.mt76_dev }
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
%struct.hlist_head = type { ptr }
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
%struct.mt7921_phy = type { ptr, ptr, [6 x [13 x %struct.ieee80211_sband_iftype_data]], i32, i64, i16, i16, i8, i32, i32, %struct.mib_stats, i8, %struct.sk_buff_head, %struct.delayed_work }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.125 }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.anon.125 = type { ptr, i32 }
%struct.mib_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.140, i32 }
%union.anon.140 = type { ptr }
%struct.mt76_connac_pm = type { i8, i8, i8, %struct.spinlock, [4 x %struct.anon.149], %struct.work_struct, %struct.wait_queue_head, %struct.anon.150, %struct.mutex, %struct.delayed_work, i32, i32, %struct.anon.151 }
%struct.anon.149 = type { ptr, ptr }
%struct.anon.150 = type { %struct.spinlock, i32 }
%struct.anon.151 = type { i32, i32, i32, i32, i32 }
%struct.mt76_connac_coredump = type { %struct.sk_buff_head, %struct.delayed_work, i32 }
%struct.mt7921_sdio_intr = type { i32, %struct.anon.161, %struct.anon.162, [2 x i32] }
%struct.anon.161 = type { [16 x i32] }
%struct.anon.162 = type { [2 x i16], [16 x i16], [128 x i16] }
%struct.mt76s_intr = type { i32, ptr, %struct.anon.146, %struct.anon.147 }
%struct.anon.146 = type { ptr }
%struct.anon.147 = type { [2 x ptr], ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.131, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.131 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.127 = type { i64, i64, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__UNIQUE_ID_firmware459 = internal constant [53 x i8] c"mt7921s.firmware=mediatek/WIFI_RAM_CODE_MT7961_1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware460 = internal constant [60 x i8] c"mt7921s.firmware=mediatek/WIFI_MT7961_patch_mcu_1_2_hdr.bin\00", section ".modinfo", align 1
@__initcall__kmod_mt7921s__461_326_mt7921s_driver_init6 = internal global ptr @mt7921s_driver_init, section ".initcall6.init", align 4
@mt7921s_driver = internal global { %struct.sdio_driver, [36 x i8] } { %struct.sdio_driver { ptr @.str, ptr @mt7921s_table, ptr @mt7921s_probe, ptr @mt7921s_remove, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt7921s_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_mt7921s_driver_exit = internal global ptr @mt7921s_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author462 = internal constant [50 x i8] c"mt7921s.author=Sean Wang <sean.wang@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file463 = internal constant [63 x i8] c"mt7921s.file=drivers/net/wireless/mediatek/mt76/mt7921/mt7921s\00", section ".modinfo", align 1
@__UNIQUE_ID_license464 = internal constant [29 x i8] c"mt7921s.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mt7921s\00", [24 x i8] zeroinitializer }, align 32
@mt7921s_table = internal constant { [2 x %struct.sdio_device_id], [40 x i8] } { [2 x %struct.sdio_device_id] [%struct.sdio_device_id { i8 -1, i16 890, i16 30977, i32 0 }, %struct.sdio_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@mt7921s_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mt7921s_suspend, ptr @mt7921s_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mt7921s_probe.drv_ops = internal constant { %struct.mt76_driver_ops, [36 x i8] } { %struct.mt76_driver_ops { i32 0, i32 352, i16 64, i16 0, i8 0, ptr @mt7921_update_channel, ptr @mt7921s_tx_prepare_skb, ptr @mt7921s_tx_complete_skb, ptr @mt7921s_tx_status_data, ptr null, ptr @mt7921_queue_rx_skb, ptr null, ptr @mt7921_sta_ps, ptr @mt7921_mac_sta_add, ptr @mt7921_mac_sta_assoc, ptr @mt7921_mac_sta_remove }, [36 x i8] zeroinitializer }, align 32
@mt7921s_probe.mt7921s_ops = internal constant { %struct.mt76_bus_ops, [32 x i8] } { %struct.mt76_bus_ops { ptr @mt76s_rr, ptr @mt76s_wr, ptr @mt76s_rmw, ptr @mt76s_write_copy, ptr @mt76s_read_copy, ptr @mt76s_wr_rp, ptr @mt76s_rd_rp, i32 2 }, [32 x i8] zeroinitializer }, align 32
@mt7921s_probe.mt7921_sdio_ops = internal constant { %struct.mt7921_hif_ops, [44 x i8] } { %struct.mt7921_hif_ops { ptr @mt7921s_init_reset, ptr @mt7921s_mac_reset, ptr @mt7921s_mcu_init, ptr @mt7921s_mcu_drv_pmctrl, ptr @mt7921s_mcu_fw_pmctrl }, [44 x i8] zeroinitializer }, align 32
@mt7921_ops = external dso_local constant %struct.ieee80211_ops, align 4
@mt7921s_probe.__UNIQUE_ID_ddebug458 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt7921s_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/wireless/mediatek/mt76/mt7921/sdio.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ASIC revision: %04x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdio-txrx\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mt76-%s %s\00", [21 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@___asan_gen_.6 = private unnamed_addr constant [15 x i8] c"mt7921s_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 315, i32 27 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 316, i32 11 }
@___asan_gen_.12 = private unnamed_addr constant [14 x i8] c"mt7921s_table\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 19, i32 36 }
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"mt7921s_pm_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 305, i32 32 }
@___asan_gen_.18 = private unnamed_addr constant [8 x i8] c"drv_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 86, i32 38 }
@___asan_gen_.21 = private unnamed_addr constant [12 x i8] c"mt7921s_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 101, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"mt7921_sdio_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 111, i32 37 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 143, i32 2 }
@___asan_gen_.37 = private constant [52 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7921/sdio.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 177, i32 26 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [55 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7921/../util.h\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 73, i32 12 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author462, ptr @__UNIQUE_ID_file463, ptr @__UNIQUE_ID_firmware459, ptr @__UNIQUE_ID_firmware460, ptr @__UNIQUE_ID_license464, ptr @__exitcall_mt7921s_driver_exit, ptr @__initcall__kmod_mt7921s__461_326_mt7921s_driver_init6, ptr @mt7921s_driver_exit, ptr @mt7921s_driver, ptr @.str, ptr @mt7921s_table, ptr @mt7921s_pm_ops, ptr @mt7921s_probe.drv_ops, ptr @mt7921s_probe.mt7921s_ops, ptr @mt7921s_probe.mt7921_sdio_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921s_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921s_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921s_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921s_probe.drv_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921s_probe.mt7921s_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921s_probe.mt7921_sdio_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921s_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sdio_register_driver(ptr noundef nonnull @mt7921s_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt7921s_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @sdio_unregister_driver(ptr noundef nonnull @mt7921s_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921s_probe(ptr noundef %func, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1
  %call = tail call ptr @mt76_alloc_device(ptr noundef %dev1, i32 noundef 17408, ptr noundef nonnull @mt7921_ops, ptr noundef nonnull @mt7921s_probe.drv_ops) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %hif_ops = getelementptr inbounds %struct.mt7921_dev, ptr %call, i32 0, i32 11
  %0 = ptrtoint ptr %hif_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mt7921s_probe.mt7921_sdio_ops, ptr %hif_ops, align 4
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %driver_data.i, align 4
  %call3 = tail call i32 @mt76s_init(ptr noundef nonnull %call, ptr noundef %func, ptr noundef nonnull @mt7921s_probe.mt7921s_ops) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.error_crit_edge, label %if.end5

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @mt76s_hw_init(ptr noundef nonnull %call, ptr noundef %func, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.error_crit_edge

if.end5.error_crit_edge:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

if.end9:                                          ; preds = %if.end5
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %call, i32 0, i32 10
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call10 = tail call i32 %5(ptr noundef nonnull %call, i32 noundef 1879114240) #5
  %shl = shl i32 %call10, 16
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call13 = tail call i32 %9(ptr noundef nonnull %call, i32 noundef 1879114244) #5
  %and = and i32 %call13, 255
  %or = or i32 %and, %shl
  %rev = getelementptr inbounds %struct.mt76_dev, ptr %call, i32 0, i32 39
  %10 = ptrtoint ptr %rev to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or, ptr %rev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt7921s_probe.__UNIQUE_ID_ddebug458, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt7921s_probe, %if.then19)) #5
          to label %do.end [label %if.then19], !srcloc !44

if.then19:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %dev20 = getelementptr inbounds %struct.mt76_dev, ptr %call, i32 0, i32 13
  %11 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev20, align 8
  %13 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt7921s_probe.__UNIQUE_ID_ddebug458, ptr noundef %12, ptr noundef nonnull @.str.3, i32 noundef %14) #5
  br label %do.end

do.end:                                           ; preds = %if.then19, %if.end9
  %15 = getelementptr inbounds %struct.mt76_dev, ptr %call, i32 0, i32 59
  %parse_irq = getelementptr inbounds %struct.mt76_dev, ptr %call, i32 0, i32 59, i32 0, i32 9, i32 2
  %16 = ptrtoint ptr %parse_irq to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @mt7921s_parse_intr, ptr %parse_irq, align 4
  %dev23 = getelementptr inbounds %struct.mt76_dev, ptr %call, i32 0, i32 13
  %17 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev23, align 8
  %call24 = tail call noalias ptr @devm_kmalloc(ptr noundef %18, i32 noundef 368, i32 noundef 3264) #5
  %intr_data = getelementptr inbounds %struct.mt76_dev, ptr %call, i32 0, i32 59, i32 0, i32 3, i32 2
  %19 = ptrtoint ptr %intr_data to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call24, ptr %intr_data, align 4
  %tobool26.not = icmp eq ptr %call24, null
  br i1 %tobool26.not, label %do.end.error_crit_edge, label %for.cond.preheader

do.end.error_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

for.cond.preheader:                               ; preds = %do.end
  %xmit_buf = getelementptr inbounds %struct.mt76_dev, ptr %call, i32 0, i32 59, i32 0, i32 0, i32 5, i32 3
  %20 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev23, align 8
  %call31 = tail call noalias ptr @devm_kmalloc(ptr noundef %21, i32 noundef 65536, i32 noundef 3264) #5
  %22 = ptrtoint ptr %xmit_buf to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call31, ptr %xmit_buf, align 4
  %tobool34.not = icmp eq ptr %call31, null
  br i1 %tobool34.not, label %for.cond.preheader.error_crit_edge, label %for.cond

for.cond.preheader.error_crit_edge:               ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

for.cond:                                         ; preds = %for.cond.preheader
  %23 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev23, align 8
  %call31.1 = tail call noalias ptr @devm_kmalloc(ptr noundef %24, i32 noundef 65536, i32 noundef 3264) #5
  %arrayidx.1 = getelementptr %struct.mt76_dev, ptr %call, i32 0, i32 59, i32 0, i32 0, i32 5, i32 6
  %25 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call31.1, ptr %arrayidx.1, align 4
  %tobool34.not.1 = icmp eq ptr %call31.1, null
  br i1 %tobool34.not.1, label %for.cond.error_crit_edge, label %for.cond.1

for.cond.error_crit_edge:                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

for.cond.1:                                       ; preds = %for.cond
  %26 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev23, align 8
  %call31.2 = tail call noalias ptr @devm_kmalloc(ptr noundef %27, i32 noundef 65536, i32 noundef 3264) #5
  %arrayidx.2 = getelementptr %struct.mt76_dev, ptr %call, i32 0, i32 59, i32 0, i32 0, i32 5, i32 7
  %28 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call31.2, ptr %arrayidx.2, align 4
  %tobool34.not.2 = icmp eq ptr %call31.2, null
  br i1 %tobool34.not.2, label %for.cond.1.error_crit_edge, label %for.cond.2

for.cond.1.error_crit_edge:                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

for.cond.2:                                       ; preds = %for.cond.1
  %29 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev23, align 8
  %call31.3 = tail call noalias ptr @devm_kmalloc(ptr noundef %30, i32 noundef 65536, i32 noundef 3264) #5
  %arrayidx.3 = getelementptr %struct.mt76_dev, ptr %call, i32 0, i32 59, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call31.3, ptr %arrayidx.3, align 4
  %tobool34.not.3 = icmp eq ptr %call31.3, null
  br i1 %tobool34.not.3, label %for.cond.2.error_crit_edge, label %for.cond.3

for.cond.2.error_crit_edge:                       ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

for.cond.3:                                       ; preds = %for.cond.2
  %32 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev23, align 8
  %call31.4 = tail call noalias ptr @devm_kmalloc(ptr noundef %33, i32 noundef 65536, i32 noundef 3264) #5
  %arrayidx.4 = getelementptr %struct.mt76_dev, ptr %call, i32 0, i32 59, i32 0, i32 2
  %34 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call31.4, ptr %arrayidx.4, align 4
  %tobool34.not.4 = icmp eq ptr %call31.4, null
  br i1 %tobool34.not.4, label %for.cond.3.error_crit_edge, label %for.cond.4

for.cond.3.error_crit_edge:                       ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

for.cond.4:                                       ; preds = %for.cond.3
  %35 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev23, align 8
  %call31.5 = tail call noalias ptr @devm_kmalloc(ptr noundef %36, i32 noundef 65536, i32 noundef 3264) #5
  %arrayidx.5 = getelementptr %struct.mt76_dev, ptr %call, i32 0, i32 59, i32 0, i32 3
  %37 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call31.5, ptr %arrayidx.5, align 4
  %tobool34.not.5 = icmp eq ptr %call31.5, null
  br i1 %tobool34.not.5, label %for.cond.4.error_crit_edge, label %for.cond.5

for.cond.4.error_crit_edge:                       ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

for.cond.5:                                       ; preds = %for.cond.4
  %call37 = tail call i32 @mt76s_alloc_rx_queue(ptr noundef nonnull %call, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %for.cond.5.error_crit_edge

for.cond.5.error_crit_edge:                       ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

if.end40:                                         ; preds = %for.cond.5
  %call41 = tail call i32 @mt76s_alloc_rx_queue(ptr noundef nonnull %call, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end40.error_crit_edge

if.end40.error_crit_edge:                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

if.end44:                                         ; preds = %if.end40
  %call45 = tail call i32 @mt76s_alloc_tx(ptr noundef nonnull %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end44.error_crit_edge

if.end44.error_crit_edge:                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

if.end48:                                         ; preds = %if.end44
  %38 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call, align 128
  %call49 = tail call fastcc i32 @mt76_worker_setup(ptr noundef %39, ptr noundef %15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end48.error_crit_edge

if.end48.error_crit_edge:                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

if.end52:                                         ; preds = %if.end48
  %40 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %15, align 4
  tail call void @sched_set_fifo_low(ptr noundef %41) #5
  %call54 = tail call i32 @mt7921_register_device(ptr noundef nonnull %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end52.cleanup_crit_edge, label %if.end52.error_crit_edge

if.end52.error_crit_edge:                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

error:                                            ; preds = %if.end52.error_crit_edge, %if.end48.error_crit_edge, %if.end44.error_crit_edge, %if.end40.error_crit_edge, %for.cond.5.error_crit_edge, %for.cond.4.error_crit_edge, %for.cond.3.error_crit_edge, %for.cond.2.error_crit_edge, %for.cond.1.error_crit_edge, %for.cond.error_crit_edge, %for.cond.preheader.error_crit_edge, %do.end.error_crit_edge, %if.end5.error_crit_edge, %if.end.error_crit_edge
  %ret.0 = phi i32 [ %call3, %if.end.error_crit_edge ], [ %call6, %if.end5.error_crit_edge ], [ %call37, %for.cond.5.error_crit_edge ], [ %call41, %if.end40.error_crit_edge ], [ %call45, %if.end44.error_crit_edge ], [ %call49, %if.end48.error_crit_edge ], [ %call54, %if.end52.error_crit_edge ], [ -12, %do.end.error_crit_edge ], [ -12, %for.cond.4.error_crit_edge ], [ -12, %for.cond.3.error_crit_edge ], [ -12, %for.cond.2.error_crit_edge ], [ -12, %for.cond.1.error_crit_edge ], [ -12, %for.cond.error_crit_edge ], [ -12, %for.cond.preheader.error_crit_edge ]
  tail call void @mt76s_deinit(ptr noundef nonnull %call) #5
  tail call void @mt76_free_device(ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end52.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end52.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7921s_remove(ptr nocapture noundef readonly %func) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @mt76_unregister_device(ptr noundef %1) #5
  %ps_work.i = getelementptr inbounds %struct.mt7921_dev, ptr %1, i32 0, i32 9, i32 9
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ps_work.i) #5
  %wake_work.i = getelementptr inbounds %struct.mt7921_dev, ptr %1, i32 0, i32 9, i32 5
  %call2.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %wake_work.i) #5
  tail call void @mt76s_deinit(ptr noundef %1) #5
  %call3.i = tail call i32 @mt7921s_wfsys_reset(ptr noundef %1) #5
  tail call void @mt7921_mcu_exit(ptr noundef %1) #5
  tail call void @mt76_free_device(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7921_update_channel(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921s_tx_prepare_skb(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7921s_tx_complete_skb(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mt7921s_tx_status_data(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7921_queue_rx_skb(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7921_sta_ps(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_mac_sta_add(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7921_mac_sta_assoc(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7921_mac_sta_remove(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76s_rr(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76s_wr(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76s_rmw(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76s_write_copy(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76s_read_copy(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76s_wr_rp(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76s_rd_rp(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921s_init_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921s_mac_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921s_mcu_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921s_mcu_drv_pmctrl(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921s_mcu_fw_pmctrl(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mt76_alloc_device(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76s_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76s_hw_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921s_parse_intr(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %intr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %intr_data = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %intr_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intr_data, align 4
  %func = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %func, align 4
  %call = tail call i32 @sdio_readsb(ptr noundef %3, ptr noundef %1, i32 noundef 16, i32 noundef 368) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx = getelementptr inbounds %struct.mt7921_sdio_intr, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %rx to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %rx, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %5)
  %cmp1 = icmp ugt i16 %5, 16
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx5 = getelementptr %struct.mt7921_sdio_intr, ptr %1, i32 0, i32 2, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %arrayidx5, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %7)
  %cmp7 = icmp ugt i16 %7, 128
  br i1 %cmp7, label %lor.lhs.false.cleanup_crit_edge, label %for.inc.1

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.1:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %1, align 1
  %10 = ptrtoint ptr %intr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %intr, align 4
  %rec_mb = getelementptr inbounds %struct.mt7921_sdio_intr, ptr %1, i32 0, i32 3
  %rec_mb12 = getelementptr inbounds %struct.mt76s_intr, ptr %intr, i32 0, i32 1
  %11 = ptrtoint ptr %rec_mb12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %rec_mb, ptr %rec_mb12, align 4
  %tx = getelementptr inbounds %struct.mt7921_sdio_intr, ptr %1, i32 0, i32 1
  %tx14 = getelementptr inbounds %struct.mt76s_intr, ptr %intr, i32 0, i32 2
  %12 = ptrtoint ptr %tx14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %tx, ptr %tx14, align 4
  %num20 = getelementptr inbounds %struct.mt76s_intr, ptr %intr, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %num20 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %rx, ptr %num20, align 4
  %len1 = getelementptr inbounds %struct.mt7921_sdio_intr, ptr %1, i32 0, i32 2, i32 2
  %arrayidx32 = getelementptr %struct.mt76s_intr, ptr %intr, i32 0, i32 3, i32 0, i32 1
  %len0 = getelementptr inbounds %struct.mt7921_sdio_intr, ptr %1, i32 0, i32 2, i32 1
  %rx19 = getelementptr inbounds %struct.mt76s_intr, ptr %intr, i32 0, i32 3
  %14 = ptrtoint ptr %rx19 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %len0, ptr %rx19, align 4
  %15 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %len1, ptr %arrayidx32, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.inc.1, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %for.inc.1 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76s_alloc_rx_queue(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76s_alloc_tx(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt76_worker_setup(ptr nocapture noundef readonly %hw, ptr noundef %w) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 56, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.wiphy_name.exit_crit_edge

entry.wiphy_name.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 56
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %entry.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.wiphy_name.exit_crit_edge ]
  %fn1 = getelementptr inbounds %struct.mt76_worker, ptr %w, i32 0, i32 1
  %6 = ptrtoint ptr %fn1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @mt7921s_txrx_worker, ptr %fn1, align 4
  %call2 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @__mt76_worker_fn, ptr noundef %w, i32 noundef -1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef %retval.0.i.i) #5
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end6

if.end6:                                          ; preds = %wiphy_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 @wake_up_process(ptr noundef %call2) #5
  br label %cleanup

if.then9:                                         ; preds = %wiphy_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call2 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end6
  %storemerge = phi ptr [ %call2, %if.end6 ], [ null, %if.then9 ]
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %7, %if.then9 ]
  %8 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %storemerge, ptr %w, align 4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7921s_txrx_worker(ptr noundef %w) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %w, i32 -10788
  %pm = getelementptr i8, ptr %w, i32 5980
  %wake.i = getelementptr i8, ptr %w, i32 6156
  tail call void @_raw_spin_lock_bh(ptr noundef %wake.i) #5
  %state.i = getelementptr i8, ptr %w, i32 -10776
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %2 = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %wake.i) #5
  %wq = getelementptr i8, ptr %w, i32 -4
  %3 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wq, align 32
  %wake_work = getelementptr i8, ptr %w, i32 6060
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %wake_work) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %count.i = getelementptr i8, ptr %w, i32 6200
  %5 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count.i, align 4
  %inc.i = add i32 %6, 1
  store i32 %inc.i, ptr %count.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %wake.i) #5
  tail call void @mt76s_txrx_worker(ptr noundef %w) #5
  tail call void @_raw_spin_lock_bh(ptr noundef %wake.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %last_activity.i = getelementptr i8, ptr %w, i32 6396
  %8 = ptrtoint ptr %last_activity.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %last_activity.i, align 4
  %9 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count.i, align 4
  %dec.i = add i32 %10, -1
  store i32 %dec.i, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.mt76_connac_pm_unref.exit_crit_edge

if.end.mt76_connac_pm_unref.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_connac_pm_unref.exit

land.lhs.true.i:                                  ; preds = %if.end
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i21 = icmp eq i32 %13, 0
  br i1 %tobool.not.i21, label %land.lhs.true.i.mt76_connac_pm_unref.exit_crit_edge, label %if.then.i

land.lhs.true.i.mt76_connac_pm_unref.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_connac_pm_unref.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mt76_connac_power_save_sched(ptr noundef %add.ptr3, ptr noundef %pm) #5
  br label %mt76_connac_pm_unref.exit

mt76_connac_pm_unref.exit:                        ; preds = %if.then.i, %land.lhs.true.i.mt76_connac_pm_unref.exit_crit_edge, %if.end.mt76_connac_pm_unref.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %wake.i) #5
  br label %cleanup

cleanup:                                          ; preds = %mt76_connac_pm_unref.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_set_fifo_low(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76s_deinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_readsb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mt76_worker_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76s_txrx_worker(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_connac_power_save_sched(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921s_wfsys_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7921_mcu_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921s_suspend(ptr noundef %__dev) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %__dev, i32 -8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %__dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %suspended = getelementptr inbounds %struct.mt7921_dev, ptr %1, i32 0, i32 9, i32 2
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %suspended, align 2
  %state = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 12, ptr noundef %state) #5
  %ps_work = getelementptr inbounds %struct.mt7921_dev, ptr %1, i32 0, i32 9, i32 9
  %call3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ps_work) #5
  %wake_work = getelementptr inbounds %struct.mt7921_dev, ptr %1, i32 0, i32 9, i32 5
  %call4 = tail call zeroext i1 @cancel_work_sync(ptr noundef %wake_work) #5
  %call5 = tail call i32 @mt7921_mcu_drv_pmctrl(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %entry.restore_suspend_crit_edge, label %if.end

entry.restore_suspend_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %restore_suspend

if.end:                                           ; preds = %entry
  %call6 = tail call i32 @mt76_connac_mcu_set_deep_sleep(ptr noundef %1, i1 noundef zeroext true) #5
  tail call void @mt76_txq_schedule_all(ptr noundef %1) #5
  %tx_worker = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 26
  %3 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tx_worker, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.mt76_worker_disable.exit_crit_edge, label %if.end.i

if.end.mt76_worker_disable.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_disable.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @kthread_park(ptr noundef nonnull %4) #5
  %state.i = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 26, i32 2
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %state.i, align 4
  br label %mt76_worker_disable.exit

mt76_worker_disable.exit:                         ; preds = %if.end.i, %if.end.mt76_worker_disable.exit_crit_edge
  %6 = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 59
  %status_worker = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 59, i32 0, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %status_worker to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %status_worker, align 4
  %tobool.not.i114 = icmp eq ptr %8, null
  br i1 %tobool.not.i114, label %mt76_worker_disable.exit.mt76_worker_disable.exit118_crit_edge, label %if.end.i117

mt76_worker_disable.exit.mt76_worker_disable.exit118_crit_edge: ; preds = %mt76_worker_disable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_disable.exit118

if.end.i117:                                      ; preds = %mt76_worker_disable.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i115 = tail call i32 @kthread_park(ptr noundef nonnull %8) #5
  %state.i116 = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 59, i32 0, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %state.i116 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %state.i116, align 4
  br label %mt76_worker_disable.exit118

mt76_worker_disable.exit118:                      ; preds = %if.end.i117, %mt76_worker_disable.exit.mt76_worker_disable.exit118_crit_edge
  %stat_work = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 59, i32 0, i32 0, i32 1, i32 4, i32 3
  %call7 = tail call zeroext i1 @cancel_work_sync(ptr noundef %stat_work) #5
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %state) #5
  tail call void @mt76_tx_status_check(ptr noundef %1, i1 noundef zeroext true) #5
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %6, align 4
  %tobool.not.i119 = icmp eq ptr %11, null
  br i1 %tobool.not.i119, label %mt76_worker_disable.exit118.mt76_worker_schedule.exit_crit_edge, label %if.end.i122

mt76_worker_disable.exit118.mt76_worker_schedule.exit_crit_edge: ; preds = %mt76_worker_disable.exit118
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_schedule.exit

if.end.i122:                                      ; preds = %mt76_worker_disable.exit118
  %state.i120 = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 59, i32 0, i32 0, i32 1, i32 1
  %call.i121 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i120) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121)
  %tobool1.not.i = icmp eq i32 %call.i121, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i, label %if.end.i122.mt76_worker_schedule.exit_crit_edge

if.end.i122.mt76_worker_schedule.exit_crit_edge:  ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_schedule.exit

land.lhs.true.i:                                  ; preds = %if.end.i122
  %12 = ptrtoint ptr %state.i120 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i120, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.not.i = icmp eq i32 %14, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %land.lhs.true.i.mt76_worker_schedule.exit_crit_edge

land.lhs.true.i.mt76_worker_schedule.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_schedule.exit

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %6, align 4
  %call7.i = tail call i32 @wake_up_process(ptr noundef %16) #5
  br label %mt76_worker_schedule.exit

mt76_worker_schedule.exit:                        ; preds = %if.then5.i, %land.lhs.true.i.mt76_worker_schedule.exit_crit_edge, %if.end.i122.mt76_worker_schedule.exit_crit_edge, %mt76_worker_disable.exit118.mt76_worker_schedule.exit_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 236) #5
  %call12 = tail call zeroext i1 @mt76s_txqs_empty(ptr noundef %1) #5
  br i1 %call12, label %mt76_worker_schedule.exit.if.end44_crit_edge, label %if.then20

mt76_worker_schedule.exit.if.end44_crit_edge:     ; preds = %mt76_worker_schedule.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then20:                                        ; preds = %mt76_worker_schedule.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #5
  %17 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #5
  %wait = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 59, i32 0, i32 4, i32 1
  %call22174 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #5
  %call24175 = call zeroext i1 @mt76s_txqs_empty(ptr noundef %1) #5
  br i1 %call24175, label %if.then20.for.end_crit_edge, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  br label %cleanup

if.then20.for.end_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then20.cleanup_crit_edge
  %__ret21.1176 = phi i32 [ %__ret21.1, %cleanup.cleanup_crit_edge ], [ 500, %if.then20.cleanup_crit_edge ]
  %call41 = call i32 @schedule_timeout(i32 noundef %__ret21.1176) #5
  %call22 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #5
  %call24 = call zeroext i1 @mt76s_txqs_empty(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool28.not = icmp eq i32 %call41, 0
  %18 = select i1 %call24, i1 %tobool28.not, i1 false
  %__ret21.1 = select i1 %18, i32 1, i32 %call41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret21.1)
  %tobool34.not = icmp eq i32 %__ret21.1, 0
  %19 = select i1 %call24, i1 true, i1 %tobool34.not
  br i1 %19, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then20.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  br label %if.end44

if.end44:                                         ; preds = %for.end, %mt76_worker_schedule.exit.if.end44_crit_edge
  %call46 = call i32 @mt76_connac_mcu_set_hif_suspend(ptr noundef %1, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end44.restore_worker_crit_edge

if.end44.restore_worker_crit_edge:                ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %restore_worker

if.end49:                                         ; preds = %if.end44
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %6, align 4
  %tobool.not.i123 = icmp eq ptr %21, null
  br i1 %tobool.not.i123, label %if.end49.mt76_worker_disable.exit127_crit_edge, label %if.end.i126

if.end49.mt76_worker_disable.exit127_crit_edge:   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_disable.exit127

if.end.i126:                                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  %call.i124 = call i32 @kthread_park(ptr noundef nonnull %21) #5
  %state.i125 = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 59, i32 0, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %state.i125 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 0, ptr %state.i125, align 4
  br label %mt76_worker_disable.exit127

mt76_worker_disable.exit127:                      ; preds = %if.end.i126, %if.end49.mt76_worker_disable.exit127_crit_edge
  %net_worker = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 59, i32 0, i32 0, i32 1, i32 4, i32 1
  %23 = ptrtoint ptr %net_worker to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net_worker, align 4
  %tobool.not.i128 = icmp eq ptr %24, null
  br i1 %tobool.not.i128, label %mt76_worker_disable.exit127.mt76_worker_disable.exit132_crit_edge, label %if.end.i131

mt76_worker_disable.exit127.mt76_worker_disable.exit132_crit_edge: ; preds = %mt76_worker_disable.exit127
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_disable.exit132

if.end.i131:                                      ; preds = %mt76_worker_disable.exit127
  call void @__sanitizer_cov_trace_pc() #7
  %call.i129 = call i32 @kthread_park(ptr noundef nonnull %24) #5
  %state.i130 = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 59, i32 0, i32 0, i32 1, i32 4, i32 2
  %25 = ptrtoint ptr %state.i130 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 0, ptr %state.i130, align 4
  br label %mt76_worker_disable.exit132

mt76_worker_disable.exit132:                      ; preds = %if.end.i131, %mt76_worker_disable.exit127.mt76_worker_disable.exit132_crit_edge
  %call51 = call i32 @mt7921_mcu_fw_pmctrl(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %restore_txrx_worker

if.end54:                                         ; preds = %mt76_worker_disable.exit132
  call void @__sanitizer_cov_trace_pc() #7
  %call55 = call i32 @sdio_set_host_pm_flags(ptr noundef %add.ptr, i32 noundef 1) #5
  br label %cleanup68

restore_txrx_worker:                              ; preds = %mt76_worker_disable.exit132
  %26 = ptrtoint ptr %net_worker to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net_worker, align 4
  %tobool.not.i133 = icmp eq ptr %27, null
  br i1 %tobool.not.i133, label %restore_txrx_worker.mt76_worker_enable.exit_crit_edge, label %if.end.i134

restore_txrx_worker.mt76_worker_enable.exit_crit_edge: ; preds = %restore_txrx_worker
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_enable.exit

if.end.i134:                                      ; preds = %restore_txrx_worker
  call void @kthread_unpark(ptr noundef nonnull %27) #5
  %28 = ptrtoint ptr %net_worker to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %net_worker, align 4
  %tobool.not.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i, label %if.end.i134.mt76_worker_enable.exit_crit_edge, label %if.end.i.i

if.end.i134.mt76_worker_enable.exit_crit_edge:    ; preds = %if.end.i134
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_enable.exit

if.end.i.i:                                       ; preds = %if.end.i134
  %state.i.i = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 59, i32 0, i32 0, i32 1, i32 4, i32 2
  %call.i.i = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i, label %if.end.i.i.mt76_worker_enable.exit_crit_edge

if.end.i.i.mt76_worker_enable.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_enable.exit

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %30 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %state.i.i, align 4
  %32 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool4.not.i.i = icmp eq i32 %32, 0
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %land.lhs.true.i.i.mt76_worker_enable.exit_crit_edge

land.lhs.true.i.i.mt76_worker_enable.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_enable.exit

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %net_worker to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %net_worker, align 4
  %call7.i.i = call i32 @wake_up_process(ptr noundef %34) #5
  br label %mt76_worker_enable.exit

mt76_worker_enable.exit:                          ; preds = %if.then5.i.i, %land.lhs.true.i.i.mt76_worker_enable.exit_crit_edge, %if.end.i.i.mt76_worker_enable.exit_crit_edge, %if.end.i134.mt76_worker_enable.exit_crit_edge, %restore_txrx_worker.mt76_worker_enable.exit_crit_edge
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %6, align 4
  %tobool.not.i135 = icmp eq ptr %36, null
  br i1 %tobool.not.i135, label %mt76_worker_enable.exit.mt76_worker_enable.exit146_crit_edge, label %if.end.i137

mt76_worker_enable.exit.mt76_worker_enable.exit146_crit_edge: ; preds = %mt76_worker_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_enable.exit146

if.end.i137:                                      ; preds = %mt76_worker_enable.exit
  call void @kthread_unpark(ptr noundef nonnull %36) #5
  %37 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %6, align 4
  %tobool.not.i.i136 = icmp eq ptr %38, null
  br i1 %tobool.not.i.i136, label %if.end.i137.mt76_worker_enable.exit146_crit_edge, label %if.end.i.i141

if.end.i137.mt76_worker_enable.exit146_crit_edge: ; preds = %if.end.i137
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_enable.exit146

if.end.i.i141:                                    ; preds = %if.end.i137
  %state.i.i138 = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 59, i32 0, i32 0, i32 1, i32 1
  %call.i.i139 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i138) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i139)
  %tobool1.not.i.i140 = icmp eq i32 %call.i.i139, 0
  br i1 %tobool1.not.i.i140, label %land.lhs.true.i.i143, label %if.end.i.i141.mt76_worker_enable.exit146_crit_edge

if.end.i.i141.mt76_worker_enable.exit146_crit_edge: ; preds = %if.end.i.i141
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_enable.exit146

land.lhs.true.i.i143:                             ; preds = %if.end.i.i141
  %39 = ptrtoint ptr %state.i.i138 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %state.i.i138, align 4
  %41 = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool4.not.i.i142 = icmp eq i32 %41, 0
  br i1 %tobool4.not.i.i142, label %if.then5.i.i145, label %land.lhs.true.i.i143.mt76_worker_enable.exit146_crit_edge

land.lhs.true.i.i143.mt76_worker_enable.exit146_crit_edge: ; preds = %land.lhs.true.i.i143
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_enable.exit146

if.then5.i.i145:                                  ; preds = %land.lhs.true.i.i143
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %6, align 4
  %call7.i.i144 = call i32 @wake_up_process(ptr noundef %43) #5
  br label %mt76_worker_enable.exit146

mt76_worker_enable.exit146:                       ; preds = %if.then5.i.i145, %land.lhs.true.i.i143.mt76_worker_enable.exit146_crit_edge, %if.end.i.i141.mt76_worker_enable.exit146_crit_edge, %if.end.i137.mt76_worker_enable.exit146_crit_edge, %mt76_worker_enable.exit.mt76_worker_enable.exit146_crit_edge
  %call58 = call i32 @mt76_connac_mcu_set_hif_suspend(ptr noundef %1, i1 noundef zeroext false) #5
  br label %restore_worker

restore_worker:                                   ; preds = %mt76_worker_enable.exit146, %if.end44.restore_worker_crit_edge
  %err.0 = phi i32 [ %call46, %if.end44.restore_worker_crit_edge ], [ %call51, %mt76_worker_enable.exit146 ]
  %44 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tx_worker, align 4
  %tobool.not.i147 = icmp eq ptr %45, null
  br i1 %tobool.not.i147, label %restore_worker.mt76_worker_enable.exit158_crit_edge, label %if.end.i149

restore_worker.mt76_worker_enable.exit158_crit_edge: ; preds = %restore_worker
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_enable.exit158

if.end.i149:                                      ; preds = %restore_worker
  call void @kthread_unpark(ptr noundef nonnull %45) #5
  %46 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tx_worker, align 4
  %tobool.not.i.i148 = icmp eq ptr %47, null
  br i1 %tobool.not.i.i148, label %if.end.i149.mt76_worker_enable.exit158_crit_edge, label %if.end.i.i153

if.end.i149.mt76_worker_enable.exit158_crit_edge: ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_enable.exit158

if.end.i.i153:                                    ; preds = %if.end.i149
  %state.i.i150 = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 26, i32 2
  %call.i.i151 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i150) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i151)
  %tobool1.not.i.i152 = icmp eq i32 %call.i.i151, 0
  br i1 %tobool1.not.i.i152, label %land.lhs.true.i.i155, label %if.end.i.i153.mt76_worker_enable.exit158_crit_edge

if.end.i.i153.mt76_worker_enable.exit158_crit_edge: ; preds = %if.end.i.i153
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_enable.exit158

land.lhs.true.i.i155:                             ; preds = %if.end.i.i153
  %48 = ptrtoint ptr %state.i.i150 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %state.i.i150, align 4
  %50 = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool4.not.i.i154 = icmp eq i32 %50, 0
  br i1 %tobool4.not.i.i154, label %if.then5.i.i157, label %land.lhs.true.i.i155.mt76_worker_enable.exit158_crit_edge

land.lhs.true.i.i155.mt76_worker_enable.exit158_crit_edge: ; preds = %land.lhs.true.i.i155
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_enable.exit158

if.then5.i.i157:                                  ; preds = %land.lhs.true.i.i155
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tx_worker, align 4
  %call7.i.i156 = call i32 @wake_up_process(ptr noundef %52) #5
  br label %mt76_worker_enable.exit158

mt76_worker_enable.exit158:                       ; preds = %if.then5.i.i157, %land.lhs.true.i.i155.mt76_worker_enable.exit158_crit_edge, %if.end.i.i153.mt76_worker_enable.exit158_crit_edge, %if.end.i149.mt76_worker_enable.exit158_crit_edge, %restore_worker.mt76_worker_enable.exit158_crit_edge
  %53 = ptrtoint ptr %status_worker to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %status_worker, align 4
  %tobool.not.i159 = icmp eq ptr %54, null
  br i1 %tobool.not.i159, label %mt76_worker_enable.exit158.mt76_worker_enable.exit170_crit_edge, label %if.end.i161

mt76_worker_enable.exit158.mt76_worker_enable.exit170_crit_edge: ; preds = %mt76_worker_enable.exit158
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_enable.exit170

if.end.i161:                                      ; preds = %mt76_worker_enable.exit158
  call void @kthread_unpark(ptr noundef nonnull %54) #5
  %55 = ptrtoint ptr %status_worker to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %status_worker, align 4
  %tobool.not.i.i160 = icmp eq ptr %56, null
  br i1 %tobool.not.i.i160, label %if.end.i161.mt76_worker_enable.exit170_crit_edge, label %if.end.i.i165

if.end.i161.mt76_worker_enable.exit170_crit_edge: ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_enable.exit170

if.end.i.i165:                                    ; preds = %if.end.i161
  %state.i.i162 = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 59, i32 0, i32 0, i32 1, i32 4
  %call.i.i163 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i162) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i163)
  %tobool1.not.i.i164 = icmp eq i32 %call.i.i163, 0
  br i1 %tobool1.not.i.i164, label %land.lhs.true.i.i167, label %if.end.i.i165.mt76_worker_enable.exit170_crit_edge

if.end.i.i165.mt76_worker_enable.exit170_crit_edge: ; preds = %if.end.i.i165
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_enable.exit170

land.lhs.true.i.i167:                             ; preds = %if.end.i.i165
  %57 = ptrtoint ptr %state.i.i162 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %state.i.i162, align 4
  %59 = and i32 %58, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool4.not.i.i166 = icmp eq i32 %59, 0
  br i1 %tobool4.not.i.i166, label %if.then5.i.i169, label %land.lhs.true.i.i167.mt76_worker_enable.exit170_crit_edge

land.lhs.true.i.i167.mt76_worker_enable.exit170_crit_edge: ; preds = %land.lhs.true.i.i167
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_enable.exit170

if.then5.i.i169:                                  ; preds = %land.lhs.true.i.i167
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %status_worker to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %status_worker, align 4
  %call7.i.i168 = call i32 @wake_up_process(ptr noundef %61) #5
  br label %mt76_worker_enable.exit170

mt76_worker_enable.exit170:                       ; preds = %if.then5.i.i169, %land.lhs.true.i.i167.mt76_worker_enable.exit170_crit_edge, %if.end.i.i165.mt76_worker_enable.exit170_crit_edge, %if.end.i161.mt76_worker_enable.exit170_crit_edge, %mt76_worker_enable.exit158.mt76_worker_enable.exit170_crit_edge
  %ds_enable = getelementptr inbounds %struct.mt7921_dev, ptr %1, i32 0, i32 9, i32 1
  %62 = ptrtoint ptr %ds_enable to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %ds_enable, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool61.not = icmp eq i8 %63, 0
  br i1 %tobool61.not, label %if.then62, label %mt76_worker_enable.exit170.restore_suspend_crit_edge

mt76_worker_enable.exit170.restore_suspend_crit_edge: ; preds = %mt76_worker_enable.exit170
  call void @__sanitizer_cov_trace_pc() #7
  br label %restore_suspend

if.then62:                                        ; preds = %mt76_worker_enable.exit170
  call void @__sanitizer_cov_trace_pc() #7
  %call63 = call i32 @mt76_connac_mcu_set_deep_sleep(ptr noundef %1, i1 noundef zeroext false) #5
  br label %restore_suspend

restore_suspend:                                  ; preds = %if.then62, %mt76_worker_enable.exit170.restore_suspend_crit_edge, %entry.restore_suspend_crit_edge
  %err.1 = phi i32 [ %call5, %entry.restore_suspend_crit_edge ], [ %err.0, %mt76_worker_enable.exit170.restore_suspend_crit_edge ], [ %err.0, %if.then62 ]
  call void @_clear_bit(i32 noundef 12, ptr noundef %state) #5
  %64 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %suspended, align 2
  br label %cleanup68

cleanup68:                                        ; preds = %restore_suspend, %if.end54
  %retval.0 = phi i32 [ %err.1, %restore_suspend ], [ 0, %if.end54 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921s_resume(ptr nocapture noundef readonly %__dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %__dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %state = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %state) #5
  %call3 = tail call i32 @mt7921_mcu_drv_pmctrl(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_worker = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_worker, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.mt76_worker_enable.exit_crit_edge, label %if.end.i

if.end.mt76_worker_enable.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_enable.exit

if.end.i:                                         ; preds = %if.end
  tail call void @kthread_unpark(ptr noundef nonnull %3) #5
  %4 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_worker, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.mt76_worker_enable.exit_crit_edge, label %if.end.i.i

if.end.i.mt76_worker_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_enable.exit

if.end.i.i:                                       ; preds = %if.end.i
  %state.i.i = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 26, i32 2
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i, label %if.end.i.i.mt76_worker_enable.exit_crit_edge

if.end.i.i.mt76_worker_enable.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_enable.exit

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_worker, align 4
  %call7.i.i = tail call i32 @wake_up_process(ptr noundef %10) #5
  br label %mt76_worker_enable.exit

mt76_worker_enable.exit:                          ; preds = %if.then5.i.i, %land.lhs.true.i.i.mt76_worker_enable.exit_crit_edge, %if.end.i.i.mt76_worker_enable.exit_crit_edge, %if.end.i.mt76_worker_enable.exit_crit_edge, %if.end.mt76_worker_enable.exit_crit_edge
  %11 = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 59
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool.not.i28 = icmp eq ptr %13, null
  br i1 %tobool.not.i28, label %mt76_worker_enable.exit.mt76_worker_enable.exit39_crit_edge, label %if.end.i30

mt76_worker_enable.exit.mt76_worker_enable.exit39_crit_edge: ; preds = %mt76_worker_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_enable.exit39

if.end.i30:                                       ; preds = %mt76_worker_enable.exit
  tail call void @kthread_unpark(ptr noundef nonnull %13) #5
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %tobool.not.i.i29 = icmp eq ptr %15, null
  br i1 %tobool.not.i.i29, label %if.end.i30.mt76_worker_enable.exit39_crit_edge, label %if.end.i.i34

if.end.i30.mt76_worker_enable.exit39_crit_edge:   ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_enable.exit39

if.end.i.i34:                                     ; preds = %if.end.i30
  %state.i.i31 = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 59, i32 0, i32 0, i32 1, i32 1
  %call.i.i32 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i31) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i32)
  %tobool1.not.i.i33 = icmp eq i32 %call.i.i32, 0
  br i1 %tobool1.not.i.i33, label %land.lhs.true.i.i36, label %if.end.i.i34.mt76_worker_enable.exit39_crit_edge

if.end.i.i34.mt76_worker_enable.exit39_crit_edge: ; preds = %if.end.i.i34
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_enable.exit39

land.lhs.true.i.i36:                              ; preds = %if.end.i.i34
  %16 = ptrtoint ptr %state.i.i31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state.i.i31, align 4
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool4.not.i.i35 = icmp eq i32 %18, 0
  br i1 %tobool4.not.i.i35, label %if.then5.i.i38, label %land.lhs.true.i.i36.mt76_worker_enable.exit39_crit_edge

land.lhs.true.i.i36.mt76_worker_enable.exit39_crit_edge: ; preds = %land.lhs.true.i.i36
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_enable.exit39

if.then5.i.i38:                                   ; preds = %land.lhs.true.i.i36
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %11, align 4
  %call7.i.i37 = tail call i32 @wake_up_process(ptr noundef %20) #5
  br label %mt76_worker_enable.exit39

mt76_worker_enable.exit39:                        ; preds = %if.then5.i.i38, %land.lhs.true.i.i36.mt76_worker_enable.exit39_crit_edge, %if.end.i.i34.mt76_worker_enable.exit39_crit_edge, %if.end.i30.mt76_worker_enable.exit39_crit_edge, %mt76_worker_enable.exit.mt76_worker_enable.exit39_crit_edge
  %status_worker = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 59, i32 0, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %status_worker to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %status_worker, align 4
  %tobool.not.i40 = icmp eq ptr %22, null
  br i1 %tobool.not.i40, label %mt76_worker_enable.exit39.mt76_worker_enable.exit51_crit_edge, label %if.end.i42

mt76_worker_enable.exit39.mt76_worker_enable.exit51_crit_edge: ; preds = %mt76_worker_enable.exit39
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_enable.exit51

if.end.i42:                                       ; preds = %mt76_worker_enable.exit39
  tail call void @kthread_unpark(ptr noundef nonnull %22) #5
  %23 = ptrtoint ptr %status_worker to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %status_worker, align 4
  %tobool.not.i.i41 = icmp eq ptr %24, null
  br i1 %tobool.not.i.i41, label %if.end.i42.mt76_worker_enable.exit51_crit_edge, label %if.end.i.i46

if.end.i42.mt76_worker_enable.exit51_crit_edge:   ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_enable.exit51

if.end.i.i46:                                     ; preds = %if.end.i42
  %state.i.i43 = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 59, i32 0, i32 0, i32 1, i32 4
  %call.i.i44 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i43) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i44)
  %tobool1.not.i.i45 = icmp eq i32 %call.i.i44, 0
  br i1 %tobool1.not.i.i45, label %land.lhs.true.i.i48, label %if.end.i.i46.mt76_worker_enable.exit51_crit_edge

if.end.i.i46.mt76_worker_enable.exit51_crit_edge: ; preds = %if.end.i.i46
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_enable.exit51

land.lhs.true.i.i48:                              ; preds = %if.end.i.i46
  %25 = ptrtoint ptr %state.i.i43 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %state.i.i43, align 4
  %27 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool4.not.i.i47 = icmp eq i32 %27, 0
  br i1 %tobool4.not.i.i47, label %if.then5.i.i50, label %land.lhs.true.i.i48.mt76_worker_enable.exit51_crit_edge

land.lhs.true.i.i48.mt76_worker_enable.exit51_crit_edge: ; preds = %land.lhs.true.i.i48
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_enable.exit51

if.then5.i.i50:                                   ; preds = %land.lhs.true.i.i48
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %status_worker to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %status_worker, align 4
  %call7.i.i49 = tail call i32 @wake_up_process(ptr noundef %29) #5
  br label %mt76_worker_enable.exit51

mt76_worker_enable.exit51:                        ; preds = %if.then5.i.i50, %land.lhs.true.i.i48.mt76_worker_enable.exit51_crit_edge, %if.end.i.i46.mt76_worker_enable.exit51_crit_edge, %if.end.i42.mt76_worker_enable.exit51_crit_edge, %mt76_worker_enable.exit39.mt76_worker_enable.exit51_crit_edge
  %net_worker = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 59, i32 0, i32 0, i32 1, i32 4, i32 1
  %30 = ptrtoint ptr %net_worker to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %net_worker, align 4
  %tobool.not.i52 = icmp eq ptr %31, null
  br i1 %tobool.not.i52, label %mt76_worker_enable.exit51.mt76_worker_enable.exit63_crit_edge, label %if.end.i54

mt76_worker_enable.exit51.mt76_worker_enable.exit63_crit_edge: ; preds = %mt76_worker_enable.exit51
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_enable.exit63

if.end.i54:                                       ; preds = %mt76_worker_enable.exit51
  tail call void @kthread_unpark(ptr noundef nonnull %31) #5
  %32 = ptrtoint ptr %net_worker to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %net_worker, align 4
  %tobool.not.i.i53 = icmp eq ptr %33, null
  br i1 %tobool.not.i.i53, label %if.end.i54.mt76_worker_enable.exit63_crit_edge, label %if.end.i.i58

if.end.i54.mt76_worker_enable.exit63_crit_edge:   ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_enable.exit63

if.end.i.i58:                                     ; preds = %if.end.i54
  %state.i.i55 = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 59, i32 0, i32 0, i32 1, i32 4, i32 2
  %call.i.i56 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i55) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i56)
  %tobool1.not.i.i57 = icmp eq i32 %call.i.i56, 0
  br i1 %tobool1.not.i.i57, label %land.lhs.true.i.i60, label %if.end.i.i58.mt76_worker_enable.exit63_crit_edge

if.end.i.i58.mt76_worker_enable.exit63_crit_edge: ; preds = %if.end.i.i58
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_enable.exit63

land.lhs.true.i.i60:                              ; preds = %if.end.i.i58
  %34 = ptrtoint ptr %state.i.i55 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %state.i.i55, align 4
  %36 = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool4.not.i.i59 = icmp eq i32 %36, 0
  br i1 %tobool4.not.i.i59, label %if.then5.i.i62, label %land.lhs.true.i.i60.mt76_worker_enable.exit63_crit_edge

land.lhs.true.i.i60.mt76_worker_enable.exit63_crit_edge: ; preds = %land.lhs.true.i.i60
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_enable.exit63

if.then5.i.i62:                                   ; preds = %land.lhs.true.i.i60
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %net_worker to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %net_worker, align 4
  %call7.i.i61 = tail call i32 @wake_up_process(ptr noundef %38) #5
  br label %mt76_worker_enable.exit63

mt76_worker_enable.exit63:                        ; preds = %if.then5.i.i62, %land.lhs.true.i.i60.mt76_worker_enable.exit63_crit_edge, %if.end.i.i58.mt76_worker_enable.exit63_crit_edge, %if.end.i54.mt76_worker_enable.exit63_crit_edge, %mt76_worker_enable.exit51.mt76_worker_enable.exit63_crit_edge
  %ds_enable = getelementptr inbounds %struct.mt7921_dev, ptr %1, i32 0, i32 9, i32 1
  %39 = ptrtoint ptr %ds_enable to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ds_enable, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not = icmp eq i8 %40, 0
  br i1 %tobool.not, label %if.then4, label %mt76_worker_enable.exit63.if.end6_crit_edge

mt76_worker_enable.exit63.if.end6_crit_edge:      ; preds = %mt76_worker_enable.exit63
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then4:                                         ; preds = %mt76_worker_enable.exit63
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 @mt76_connac_mcu_set_deep_sleep(ptr noundef %1, i1 noundef zeroext false) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %mt76_worker_enable.exit63.if.end6_crit_edge
  %call7 = tail call i32 @mt76_connac_mcu_set_hif_suspend(ptr noundef %1, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %suspended = getelementptr inbounds %struct.mt7921_dev, ptr %1, i32 0, i32 9, i32 2
  %41 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %suspended, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ %call3, %entry.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_mcu_drv_pmctrl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_mcu_set_deep_sleep(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_txq_schedule_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_tx_status_check(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mt76s_txqs_empty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_mcu_set_hif_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_mcu_fw_pmctrl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_set_host_pm_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_park(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_unpark(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__UNIQUE_ID_firmware459, !1, !"__UNIQUE_ID_firmware459", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/sdio.c", i32 312, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware460, !3, !"__UNIQUE_ID_firmware460", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/sdio.c", i32 313, i32 1}
!4 = !{ptr @__initcall__kmod_mt7921s__461_326_mt7921s_driver_init6, !5, !"__initcall__kmod_mt7921s__461_326_mt7921s_driver_init6", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/sdio.c", i32 326, i32 1}
!6 = !{ptr @__exitcall_mt7921s_driver_exit, !5, !"__exitcall_mt7921s_driver_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author462, !8, !"__UNIQUE_ID_author462", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/sdio.c", i32 327, i32 1}
!9 = !{ptr @__UNIQUE_ID_file463, !10, !"__UNIQUE_ID_file463", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/sdio.c", i32 328, i32 1}
!11 = !{ptr @__UNIQUE_ID_license464, !10, !"__UNIQUE_ID_license464", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/sdio.c", i32 316, i32 11}
!14 = !{ptr @mt7921s_driver, !15, !"mt7921s_driver", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/sdio.c", i32 315, i32 27}
!16 = !{ptr @mt7921s_table, !17, !"mt7921s_table", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/sdio.c", i32 19, i32 36}
!18 = !{ptr @mt7921s_probe.drv_ops, !19, !"drv_ops", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/sdio.c", i32 86, i32 38}
!20 = !{ptr @mt7921s_probe.mt7921s_ops, !21, !"mt7921s_ops", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/sdio.c", i32 101, i32 35}
!22 = !{ptr @mt7921s_probe.mt7921_sdio_ops, !23, !"mt7921_sdio_ops", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/sdio.c", i32 111, i32 37}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/sdio.c", i32 143, i32 2}
!26 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mt7921s_probe.__UNIQUE_ID_ddebug458, !25, !"__UNIQUE_ID_ddebug458", i1 false, i1 false}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/sdio.c", i32 177, i32 26}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/../util.h", i32 73, i32 12}
!33 = !{ptr @mt7921s_pm_ops, !34, !"mt7921s_pm_ops", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/sdio.c", i32 305, i32 32}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{i64 2148697469, i64 2148697474, i64 2148697487, i64 2148697531, i64 2148697565, i64 2148697586}
!45 = !{i8 0, i8 2}
