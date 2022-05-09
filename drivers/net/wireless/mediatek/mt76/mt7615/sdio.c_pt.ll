; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt7615/sdio.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt7615/sdio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sdio_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdio_device_id = type { i8, i16, i16, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mt76_driver_ops = type { i32, i32, i16, i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mt7615_dev = type { %union.anon.156, ptr, %struct.tasklet_struct, %struct.mt7615_phy, i64, i16, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, i32, %struct.list_head, %struct.spinlock, %struct.anon.158, i32, i8, i8, i8, i8, %struct.work_struct, %struct.list_head, i32, i32, i32, %struct.mt76_connac_pm, %struct.mt76_connac_coredump, [48 x i8] }
%union.anon.156 = type { %struct.mt76_dev }
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
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.140, i32 }
%union.anon.140 = type { ptr }
%struct.mt7615_phy = type { ptr, ptr, ptr, i8, i32, i64, i16, i8, i32, i32, i32, i8, i8, i16, i8, i8, i8, i32, i32, i32, %struct.mib_stats, %struct.sk_buff_head, %struct.delayed_work, %struct.work_struct, %struct.timer_list, %struct.wait_queue_head, i8, %struct.anon.157 }
%struct.mib_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.anon.157 = type { ptr, i16, [4 x i8], [4 x i8], [4 x i8] }
%struct.anon.158 = type { i8, i32, i16, i16 }
%struct.mt76_connac_pm = type { i8, i8, i8, %struct.spinlock, [4 x %struct.anon.159], %struct.work_struct, %struct.wait_queue_head, %struct.anon.160, %struct.mutex, %struct.delayed_work, i32, i32, %struct.anon.161 }
%struct.anon.159 = type { ptr, ptr }
%struct.anon.160 = type { %struct.spinlock, i32 }
%struct.anon.161 = type { i32, i32, i32, i32, i32 }
%struct.mt76_connac_coredump = type { %struct.sk_buff_head, %struct.delayed_work, i32 }
%struct.mt7663s_intr = type { i32, %struct.anon.163, %struct.anon.164, [2 x i32] }
%struct.anon.163 = type { [8 x i32] }
%struct.anon.164 = type { [2 x i16], [2 x [16 x i16]] }
%struct.mt76s_intr = type { i32, ptr, %struct.anon.146, %struct.anon.147 }
%struct.anon.146 = type { ptr }
%struct.anon.147 = type { [2 x ptr], ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.131, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.131 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.127 = type { i64, i64, i8 }
%struct.mt7615_mcu_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_firmware405 = internal constant [43 x i8] c"mt7663s.firmware=mediatek/mt7663_n9_v3.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware406 = internal constant [41 x i8] c"mt7663s.firmware=mediatek/mt7663pr2h.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware407 = internal constant [45 x i8] c"mt7663s.firmware=mediatek/mt7663_n9_rebb.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware408 = internal constant [46 x i8] c"mt7663s.firmware=mediatek/mt7663pr2h_rebb.bin\00", section ".modinfo", align 1
@__initcall__kmod_mt7663s__409_268_mt7663s_driver_init6 = internal global ptr @mt7663s_driver_init, section ".initcall6.init", align 4
@mt7663s_driver = internal global { %struct.sdio_driver, [36 x i8] } { %struct.sdio_driver { ptr @.str, ptr @mt7663s_table, ptr @mt7663s_probe, ptr @mt7663s_remove, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt7663s_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_mt7663s_driver_exit = internal global ptr @mt7663s_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author410 = internal constant [50 x i8] c"mt7663s.author=Sean Wang <sean.wang@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author411 = internal constant [53 x i8] c"mt7663s.author=Lorenzo Bianconi <lorenzo@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file412 = internal constant [63 x i8] c"mt7663s.file=drivers/net/wireless/mediatek/mt76/mt7615/mt7663s\00", section ".modinfo", align 1
@__UNIQUE_ID_license413 = internal constant [29 x i8] c"mt7663s.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mt7663s\00", [24 x i8] zeroinitializer }, align 32
@mt7663s_table = internal constant { [2 x %struct.sdio_device_id], [40 x i8] } { [2 x %struct.sdio_device_id] [%struct.sdio_device_id { i8 -1, i16 890, i16 30211, i32 0 }, %struct.sdio_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@mt7663s_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mt7663s_suspend, ptr @mt7663s_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mt7663s_probe.drv_ops = internal constant { %struct.mt76_driver_ops, [36 x i8] } { %struct.mt76_driver_ops { i32 8, i32 0, i16 64, i16 0, i8 0, ptr @mt7615_update_channel, ptr @mt7663_usb_sdio_tx_prepare_skb, ptr @mt7663_usb_sdio_tx_complete_skb, ptr @mt7663_usb_sdio_tx_status_data, ptr null, ptr @mt7615_queue_rx_skb, ptr null, ptr @mt7615_sta_ps, ptr @mt7615_mac_sta_add, ptr null, ptr @mt7615_mac_sta_remove }, [36 x i8] zeroinitializer }, align 32
@mt7663s_probe.mt7663s_ops = internal constant { %struct.mt76_bus_ops, [32 x i8] } { %struct.mt76_bus_ops { ptr @mt76s_rr, ptr @mt76s_wr, ptr @mt76s_rmw, ptr @mt76s_write_copy, ptr @mt76s_read_copy, ptr @mt76s_wr_rp, ptr @mt76s_rd_rp, i32 2 }, [32 x i8] zeroinitializer }, align 32
@mt7615_ops = external dso_local constant %struct.ieee80211_ops, align 4
@mt7663s_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&dev->mcu_work)\00", [62 x i8] zeroinitializer }, align 32
@mt7663_usb_sdio_reg_map = external dso_local constant [24 x i32], align 4
@mt7663s_probe.__UNIQUE_ID_ddebug404 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt7663s_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/wireless/mediatek/mt76/mt7615/sdio.c\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ASIC revision: %04x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdio-txrx\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mt76-%s %s\00", [21 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@___asan_gen_.7 = private unnamed_addr constant [15 x i8] c"mt7663s_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 257, i32 27 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 258, i32 11 }
@___asan_gen_.13 = private unnamed_addr constant [14 x i8] c"mt7663s_table\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 22, i32 36 }
@___asan_gen_.16 = private unnamed_addr constant [15 x i8] c"mt7663s_pm_ops\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 245, i32 32 }
@___asan_gen_.19 = private unnamed_addr constant [8 x i8] c"drv_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 76, i32 38 }
@___asan_gen_.22 = private unnamed_addr constant [12 x i8] c"mt7663s_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 88, i32 35 }
@___asan_gen_.25 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 114, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 129, i32 2 }
@___asan_gen_.41 = private constant [52 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7615/sdio.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 159, i32 26 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [55 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7615/../util.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 73, i32 12 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_author410, ptr @__UNIQUE_ID_author411, ptr @__UNIQUE_ID_file412, ptr @__UNIQUE_ID_firmware405, ptr @__UNIQUE_ID_firmware406, ptr @__UNIQUE_ID_firmware407, ptr @__UNIQUE_ID_firmware408, ptr @__UNIQUE_ID_license413, ptr @__exitcall_mt7663s_driver_exit, ptr @__initcall__kmod_mt7663s__409_268_mt7663s_driver_init6, ptr @mt7663s_driver_exit, ptr @mt7663s_driver, ptr @.str, ptr @mt7663s_table, ptr @mt7663s_pm_ops, ptr @mt7663s_probe.drv_ops, ptr @mt7663s_probe.mt7663s_ops, ptr @mt7663s_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7663s_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7663s_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7663s_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7663s_probe.drv_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7663s_probe.mt7663s_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7663s_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7663s_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sdio_register_driver(ptr noundef nonnull @mt7663s_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt7663s_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @sdio_unregister_driver(ptr noundef nonnull @mt7663s_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7663s_probe(ptr noundef %func, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1
  %call = tail call ptr @devm_kmemdup(ptr noundef %dev1, ptr noundef nonnull @mt7615_ops, i32 noundef 452, i32 noundef 3264) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @mt76_alloc_device(ptr noundef %dev1, i32 noundef 12416, ptr noundef nonnull %call, ptr noundef nonnull @mt7663s_probe.drv_ops) #4
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %mcu_work = getelementptr inbounds %struct.mt7615_dev, ptr %call3, i32 0, i32 10
  tail call void @__init_work(ptr noundef %mcu_work, i32 noundef 0) #4
  %0 = ptrtoint ptr %mcu_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %mcu_work, align 4
  %lockdep_map = getelementptr inbounds %struct.mt7615_dev, ptr %call3, i32 0, i32 10, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @mt7663s_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry10 = getelementptr inbounds %struct.mt7615_dev, ptr %call3, i32 0, i32 10, i32 1
  %1 = ptrtoint ptr %entry10 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry10, ptr %entry10, align 4
  %prev.i = getelementptr inbounds %struct.mt7615_dev, ptr %call3, i32 0, i32 10, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry10, ptr %prev.i, align 4
  %func12 = getelementptr inbounds %struct.mt7615_dev, ptr %call3, i32 0, i32 10, i32 2
  %3 = ptrtoint ptr %func12 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @mt7663s_init_work, ptr %func12, align 4
  %reg_map = getelementptr inbounds %struct.mt7615_dev, ptr %call3, i32 0, i32 9
  %4 = ptrtoint ptr %reg_map to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mt7663_usb_sdio_reg_map, ptr %reg_map, align 8
  %ops13 = getelementptr inbounds %struct.mt7615_dev, ptr %call3, i32 0, i32 6
  %5 = ptrtoint ptr %ops13 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %ops13, align 4
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call3, ptr %driver_data.i, align 4
  %call15 = tail call i32 @mt76s_init(ptr noundef nonnull %call3, ptr noundef %func, ptr noundef nonnull @mt7663s_probe.mt7663s_ops) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %if.end6.error_crit_edge, label %if.end17

if.end6.error_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

if.end17:                                         ; preds = %if.end6
  %call18 = tail call i32 @mt76s_hw_init(ptr noundef nonnull %call3, ptr noundef %func, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.error_crit_edge

if.end17.error_crit_edge:                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

if.end21:                                         ; preds = %if.end17
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %call3, i32 0, i32 10
  %7 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %11 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_map, align 8
  %arrayidx = getelementptr i32, ptr %12, i32 1
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %add = add i32 %14, 8
  %call23 = tail call i32 %10(ptr noundef nonnull %call3, i32 noundef %add) #4
  %shl = shl i32 %call23, 16
  %15 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %19 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_map, align 8
  %arrayidx27 = getelementptr i32, ptr %20, i32 1
  %21 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx27, align 4
  %call29 = tail call i32 %18(ptr noundef nonnull %call3, i32 noundef %22) #4
  %and = and i32 %call29, 255
  %or = or i32 %and, %shl
  %rev = getelementptr inbounds %struct.mt76_dev, ptr %call3, i32 0, i32 39
  %23 = ptrtoint ptr %rev to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or, ptr %rev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt7663s_probe.__UNIQUE_ID_ddebug404, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt7663s_probe, %if.then36)) #4
          to label %do.end41 [label %if.then36], !srcloc !51

if.then36:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  %dev37 = getelementptr inbounds %struct.mt76_dev, ptr %call3, i32 0, i32 13
  %24 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev37, align 8
  %26 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt7663s_probe.__UNIQUE_ID_ddebug404, ptr noundef %25, ptr noundef nonnull @.str.4, i32 noundef %27) #4
  br label %do.end41

do.end41:                                         ; preds = %if.then36, %if.end21
  %28 = getelementptr inbounds %struct.mt76_dev, ptr %call3, i32 0, i32 59
  %parse_irq = getelementptr inbounds %struct.mt76_dev, ptr %call3, i32 0, i32 59, i32 0, i32 9, i32 2
  %29 = ptrtoint ptr %parse_irq to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @mt7663s_parse_intr, ptr %parse_irq, align 4
  %dev42 = getelementptr inbounds %struct.mt76_dev, ptr %call3, i32 0, i32 13
  %30 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev42, align 8
  %call43 = tail call noalias ptr @devm_kmalloc(ptr noundef %31, i32 noundef 112, i32 noundef 3264) #4
  %intr_data = getelementptr inbounds %struct.mt76_dev, ptr %call3, i32 0, i32 59, i32 0, i32 3, i32 2
  %32 = ptrtoint ptr %intr_data to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call43, ptr %intr_data, align 4
  %tobool45.not = icmp eq ptr %call43, null
  br i1 %tobool45.not, label %do.end41.error_crit_edge, label %for.cond.preheader

do.end41.error_crit_edge:                         ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

for.cond.preheader:                               ; preds = %do.end41
  %xmit_buf = getelementptr inbounds %struct.mt76_dev, ptr %call3, i32 0, i32 59, i32 0, i32 0, i32 5, i32 3
  %33 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev42, align 8
  %call50 = tail call noalias ptr @devm_kmalloc(ptr noundef %34, i32 noundef 65536, i32 noundef 3264) #4
  %35 = ptrtoint ptr %xmit_buf to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call50, ptr %xmit_buf, align 4
  %tobool54.not = icmp eq ptr %call50, null
  br i1 %tobool54.not, label %for.cond.preheader.error_crit_edge, label %for.cond

for.cond.preheader.error_crit_edge:               ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

for.cond:                                         ; preds = %for.cond.preheader
  %36 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev42, align 8
  %call50.1 = tail call noalias ptr @devm_kmalloc(ptr noundef %37, i32 noundef 65536, i32 noundef 3264) #4
  %arrayidx51.1 = getelementptr %struct.mt76_dev, ptr %call3, i32 0, i32 59, i32 0, i32 0, i32 5, i32 6
  %38 = ptrtoint ptr %arrayidx51.1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call50.1, ptr %arrayidx51.1, align 4
  %tobool54.not.1 = icmp eq ptr %call50.1, null
  br i1 %tobool54.not.1, label %for.cond.error_crit_edge, label %for.cond.1

for.cond.error_crit_edge:                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

for.cond.1:                                       ; preds = %for.cond
  %39 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev42, align 8
  %call50.2 = tail call noalias ptr @devm_kmalloc(ptr noundef %40, i32 noundef 65536, i32 noundef 3264) #4
  %arrayidx51.2 = getelementptr %struct.mt76_dev, ptr %call3, i32 0, i32 59, i32 0, i32 0, i32 5, i32 7
  %41 = ptrtoint ptr %arrayidx51.2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call50.2, ptr %arrayidx51.2, align 4
  %tobool54.not.2 = icmp eq ptr %call50.2, null
  br i1 %tobool54.not.2, label %for.cond.1.error_crit_edge, label %for.cond.2

for.cond.1.error_crit_edge:                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

for.cond.2:                                       ; preds = %for.cond.1
  %42 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev42, align 8
  %call50.3 = tail call noalias ptr @devm_kmalloc(ptr noundef %43, i32 noundef 65536, i32 noundef 3264) #4
  %arrayidx51.3 = getelementptr %struct.mt76_dev, ptr %call3, i32 0, i32 59, i32 0, i32 1
  %44 = ptrtoint ptr %arrayidx51.3 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call50.3, ptr %arrayidx51.3, align 4
  %tobool54.not.3 = icmp eq ptr %call50.3, null
  br i1 %tobool54.not.3, label %for.cond.2.error_crit_edge, label %for.cond.3

for.cond.2.error_crit_edge:                       ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

for.cond.3:                                       ; preds = %for.cond.2
  %45 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev42, align 8
  %call50.4 = tail call noalias ptr @devm_kmalloc(ptr noundef %46, i32 noundef 65536, i32 noundef 3264) #4
  %arrayidx51.4 = getelementptr %struct.mt76_dev, ptr %call3, i32 0, i32 59, i32 0, i32 2
  %47 = ptrtoint ptr %arrayidx51.4 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call50.4, ptr %arrayidx51.4, align 4
  %tobool54.not.4 = icmp eq ptr %call50.4, null
  br i1 %tobool54.not.4, label %for.cond.3.error_crit_edge, label %for.cond.4

for.cond.3.error_crit_edge:                       ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

for.cond.4:                                       ; preds = %for.cond.3
  %48 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev42, align 8
  %call50.5 = tail call noalias ptr @devm_kmalloc(ptr noundef %49, i32 noundef 65536, i32 noundef 3264) #4
  %arrayidx51.5 = getelementptr %struct.mt76_dev, ptr %call3, i32 0, i32 59, i32 0, i32 3
  %50 = ptrtoint ptr %arrayidx51.5 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call50.5, ptr %arrayidx51.5, align 4
  %tobool54.not.5 = icmp eq ptr %call50.5, null
  br i1 %tobool54.not.5, label %for.cond.4.error_crit_edge, label %for.cond.5

for.cond.4.error_crit_edge:                       ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

for.cond.5:                                       ; preds = %for.cond.4
  %call57 = tail call i32 @mt76s_alloc_rx_queue(ptr noundef nonnull %call3, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %for.cond.5.error_crit_edge

for.cond.5.error_crit_edge:                       ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

if.end60:                                         ; preds = %for.cond.5
  %call61 = tail call i32 @mt76s_alloc_tx(ptr noundef nonnull %call3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end60.error_crit_edge

if.end60.error_crit_edge:                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

if.end64:                                         ; preds = %if.end60
  %51 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call3, align 128
  %call65 = tail call fastcc i32 @mt76_worker_setup(ptr noundef %52, ptr noundef %28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end64.error_crit_edge

if.end64.error_crit_edge:                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

if.end68:                                         ; preds = %if.end64
  %53 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %28, align 4
  tail call void @sched_set_fifo_low(ptr noundef %54) #4
  %call70 = tail call i32 @mt7663_usb_sdio_register_device(ptr noundef nonnull %call3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end68.cleanup_crit_edge, label %if.end68.error_crit_edge

if.end68.error_crit_edge:                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

error:                                            ; preds = %if.end68.error_crit_edge, %if.end64.error_crit_edge, %if.end60.error_crit_edge, %for.cond.5.error_crit_edge, %for.cond.4.error_crit_edge, %for.cond.3.error_crit_edge, %for.cond.2.error_crit_edge, %for.cond.1.error_crit_edge, %for.cond.error_crit_edge, %for.cond.preheader.error_crit_edge, %do.end41.error_crit_edge, %if.end17.error_crit_edge, %if.end6.error_crit_edge
  %ret.0 = phi i32 [ %call15, %if.end6.error_crit_edge ], [ %call18, %if.end17.error_crit_edge ], [ %call57, %for.cond.5.error_crit_edge ], [ %call61, %if.end60.error_crit_edge ], [ %call65, %if.end64.error_crit_edge ], [ %call70, %if.end68.error_crit_edge ], [ -12, %do.end41.error_crit_edge ], [ -12, %for.cond.4.error_crit_edge ], [ -12, %for.cond.3.error_crit_edge ], [ -12, %for.cond.2.error_crit_edge ], [ -12, %for.cond.1.error_crit_edge ], [ -12, %for.cond.error_crit_edge ], [ -12, %for.cond.preheader.error_crit_edge ]
  tail call void @mt76s_deinit(ptr noundef nonnull %call3) #4
  tail call void @mt76_free_device(ptr noundef nonnull %call3) #4
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end68.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end68.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7663s_remove(ptr nocapture noundef readonly %func) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %state = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 3
  %call2 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %state) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %hw = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_unregister_hw(ptr noundef %3) #4
  tail call void @mt76s_deinit(ptr noundef %1) #4
  tail call void @mt76_free_device(ptr noundef %1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7615_update_channel(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7663_usb_sdio_tx_prepare_skb(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7663_usb_sdio_tx_complete_skb(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mt7663_usb_sdio_tx_status_data(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7615_queue_rx_skb(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7615_sta_ps(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_mac_sta_add(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7615_mac_sta_remove(ptr noundef, ptr noundef, ptr noundef) #1

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
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mt76_alloc_device(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7663s_init_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -11484
  %call = tail call i32 @mt7663s_mcu_init(ptr noundef %add.ptr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mt7615_init_work(ptr noundef %add.ptr) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76s_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76s_hw_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7663s_parse_intr(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %intr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %intr_data = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %intr_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intr_data, align 4
  %func = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %func, align 4
  %call = tail call i32 @sdio_readsb(ptr noundef %3, ptr noundef %1, i32 noundef 16, i32 noundef 112) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %1, align 1
  %6 = ptrtoint ptr %intr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %intr, align 4
  %rec_mb = getelementptr inbounds %struct.mt7663s_intr, ptr %1, i32 0, i32 3
  %rec_mb2 = getelementptr inbounds %struct.mt76s_intr, ptr %intr, i32 0, i32 1
  %7 = ptrtoint ptr %rec_mb2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %rec_mb, ptr %rec_mb2, align 4
  %tx = getelementptr inbounds %struct.mt7663s_intr, ptr %1, i32 0, i32 1
  %tx4 = getelementptr inbounds %struct.mt76s_intr, ptr %intr, i32 0, i32 2
  %8 = ptrtoint ptr %tx4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %tx, ptr %tx4, align 4
  %rx = getelementptr inbounds %struct.mt7663s_intr, ptr %1, i32 0, i32 2
  %rx7 = getelementptr inbounds %struct.mt76s_intr, ptr %intr, i32 0, i32 3
  %num8 = getelementptr inbounds %struct.mt76s_intr, ptr %intr, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %num8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %rx, ptr %num8, align 4
  %arrayidx = getelementptr %struct.mt7663s_intr, ptr %1, i32 0, i32 2, i32 1, i32 0
  %10 = ptrtoint ptr %rx7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx, ptr %rx7, align 4
  %arrayidx.1 = getelementptr %struct.mt7663s_intr, ptr %1, i32 0, i32 2, i32 1, i32 1
  %arrayidx13.1 = getelementptr %struct.mt76s_intr, ptr %intr, i32 0, i32 3, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx13.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx.1, ptr %arrayidx13.1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76s_alloc_rx_queue(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76s_alloc_tx(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt76_worker_setup(ptr nocapture noundef readonly %hw, ptr noundef %w) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
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
  store ptr @mt7663s_txrx_worker, ptr %fn1, align 4
  %call2 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @__mt76_worker_fn, ptr noundef %w, i32 noundef -1, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, ptr noundef %retval.0.i.i) #4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end6

if.end6:                                          ; preds = %wiphy_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call5 = tail call i32 @wake_up_process(ptr noundef %call2) #4
  br label %cleanup

if.then9:                                         ; preds = %wiphy_name.exit
  call void @__sanitizer_cov_trace_pc() #6
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
define internal void @mt7663s_txrx_worker(ptr noundef %w) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %w, i32 -10788
  %pm = getelementptr i8, ptr %w, i32 976
  %wake.i = getelementptr i8, ptr %w, i32 1152
  tail call void @_raw_spin_lock_bh(ptr noundef %wake.i) #4
  %state.i = getelementptr i8, ptr %w, i32 -10776
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %2 = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %wake.i) #4
  %wq = getelementptr i8, ptr %w, i32 -4
  %3 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wq, align 32
  %wake_work = getelementptr i8, ptr %w, i32 1056
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %wake_work) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %count.i = getelementptr i8, ptr %w, i32 1196
  %5 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count.i, align 4
  %inc.i = add i32 %6, 1
  store i32 %inc.i, ptr %count.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %wake.i) #4
  tail call void @mt76s_txrx_worker(ptr noundef %w) #4
  tail call void @_raw_spin_lock_bh(ptr noundef %wake.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %last_activity.i = getelementptr i8, ptr %w, i32 1392
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
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_connac_pm_unref.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mt76_connac_power_save_sched(ptr noundef %add.ptr3, ptr noundef %pm) #4
  br label %mt76_connac_pm_unref.exit

mt76_connac_pm_unref.exit:                        ; preds = %if.then.i, %land.lhs.true.i.mt76_connac_pm_unref.exit_crit_edge, %if.end.mt76_connac_pm_unref.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %wake.i) #4
  br label %cleanup

cleanup:                                          ; preds = %mt76_connac_pm_unref.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_set_fifo_low(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7663_usb_sdio_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76s_deinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7663s_mcu_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7615_init_work(ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_unregister_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7663s_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %state = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

land.lhs.true:                                    ; preds = %entry
  %fw_ver.i = getelementptr inbounds %struct.mt7615_dev, ptr %1, i32 0, i32 21
  %5 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fw_ver.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp.i = icmp ugt i8 %6, 2
  br i1 %cmp.i, label %if.then, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then:                                          ; preds = %land.lhs.true
  %call5 = tail call i32 @mt76_connac_mcu_set_hif_suspend(ptr noundef %1, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.then.cleanup15_crit_edge, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then.cleanup15_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup15

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  %call8 = tail call i32 @sdio_set_host_pm_flags(ptr noundef %add.ptr, i32 noundef 1) #4
  %mcu_ops = getelementptr inbounds %struct.mt7615_dev, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %mcu_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mcu_ops, align 16
  %set_fw_ctrl = getelementptr inbounds %struct.mt7615_mcu_ops, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %set_fw_ctrl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_fw_ctrl, align 4
  %call9 = tail call i32 %10(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end7.cleanup15_crit_edge

if.end7.cleanup15_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup15

if.end12:                                         ; preds = %if.end7
  %11 = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 59
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end12.mt76_worker_disable.exit_crit_edge, label %if.end.i

if.end12.mt76_worker_disable.exit_crit_edge:      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_disable.exit

if.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 @kthread_park(ptr noundef nonnull %13) #4
  %state.i = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 59, i32 0, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 0, ptr %state.i, align 4
  br label %mt76_worker_disable.exit

mt76_worker_disable.exit:                         ; preds = %if.end.i, %if.end12.mt76_worker_disable.exit_crit_edge
  %status_worker = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 59, i32 0, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %status_worker to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %status_worker, align 4
  %tobool.not.i31 = icmp eq ptr %16, null
  br i1 %tobool.not.i31, label %mt76_worker_disable.exit.mt76_worker_disable.exit35_crit_edge, label %if.end.i34

mt76_worker_disable.exit.mt76_worker_disable.exit35_crit_edge: ; preds = %mt76_worker_disable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_disable.exit35

if.end.i34:                                       ; preds = %mt76_worker_disable.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call.i32 = tail call i32 @kthread_park(ptr noundef nonnull %16) #4
  %state.i33 = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 59, i32 0, i32 0, i32 1, i32 4
  %17 = ptrtoint ptr %state.i33 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 0, ptr %state.i33, align 4
  br label %mt76_worker_disable.exit35

mt76_worker_disable.exit35:                       ; preds = %if.end.i34, %mt76_worker_disable.exit.mt76_worker_disable.exit35_crit_edge
  %net_worker = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 59, i32 0, i32 0, i32 1, i32 4, i32 1
  %18 = ptrtoint ptr %net_worker to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net_worker, align 4
  %tobool.not.i36 = icmp eq ptr %19, null
  br i1 %tobool.not.i36, label %mt76_worker_disable.exit35.mt76_worker_disable.exit40_crit_edge, label %if.end.i39

mt76_worker_disable.exit35.mt76_worker_disable.exit40_crit_edge: ; preds = %mt76_worker_disable.exit35
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_disable.exit40

if.end.i39:                                       ; preds = %mt76_worker_disable.exit35
  call void @__sanitizer_cov_trace_pc() #6
  %call.i37 = tail call i32 @kthread_park(ptr noundef nonnull %19) #4
  %state.i38 = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 59, i32 0, i32 0, i32 1, i32 4, i32 2
  %20 = ptrtoint ptr %state.i38 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 0, ptr %state.i38, align 4
  br label %mt76_worker_disable.exit40

mt76_worker_disable.exit40:                       ; preds = %if.end.i39, %mt76_worker_disable.exit35.mt76_worker_disable.exit40_crit_edge
  %stat_work = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 59, i32 0, i32 0, i32 1, i32 4, i32 3
  %call13 = tail call zeroext i1 @cancel_work_sync(ptr noundef %stat_work) #4
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %state) #4
  tail call void @mt76_tx_status_check(ptr noundef %1, i1 noundef zeroext true) #4
  br label %cleanup15

cleanup15:                                        ; preds = %mt76_worker_disable.exit40, %if.end7.cleanup15_crit_edge, %if.then.cleanup15_crit_edge
  %retval.1 = phi i32 [ 0, %mt76_worker_disable.exit40 ], [ %call5, %if.then.cleanup15_crit_edge ], [ %call9, %if.end7.cleanup15_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7663s_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 59
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.mt76_worker_enable.exit_crit_edge, label %if.end.i

entry.mt76_worker_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_enable.exit

if.end.i:                                         ; preds = %entry
  tail call void @kthread_unpark(ptr noundef nonnull %4) #4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.mt76_worker_enable.exit_crit_edge, label %if.end.i.i

if.end.i.mt76_worker_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_enable.exit

if.end.i.i:                                       ; preds = %if.end.i
  %state.i.i = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 59, i32 0, i32 0, i32 1, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i, label %if.end.i.i.mt76_worker_enable.exit_crit_edge

if.end.i.i.mt76_worker_enable.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_enable.exit

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %7 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i.i, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %land.lhs.true.i.i.mt76_worker_enable.exit_crit_edge

land.lhs.true.i.i.mt76_worker_enable.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_enable.exit

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %2, align 4
  %call7.i.i = tail call i32 @wake_up_process(ptr noundef %11) #4
  br label %mt76_worker_enable.exit

mt76_worker_enable.exit:                          ; preds = %if.then5.i.i, %land.lhs.true.i.i.mt76_worker_enable.exit_crit_edge, %if.end.i.i.mt76_worker_enable.exit_crit_edge, %if.end.i.mt76_worker_enable.exit_crit_edge, %entry.mt76_worker_enable.exit_crit_edge
  %status_worker = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 59, i32 0, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %status_worker to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %status_worker, align 4
  %tobool.not.i20 = icmp eq ptr %13, null
  br i1 %tobool.not.i20, label %mt76_worker_enable.exit.mt76_worker_enable.exit31_crit_edge, label %if.end.i22

mt76_worker_enable.exit.mt76_worker_enable.exit31_crit_edge: ; preds = %mt76_worker_enable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_enable.exit31

if.end.i22:                                       ; preds = %mt76_worker_enable.exit
  tail call void @kthread_unpark(ptr noundef nonnull %13) #4
  %14 = ptrtoint ptr %status_worker to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %status_worker, align 4
  %tobool.not.i.i21 = icmp eq ptr %15, null
  br i1 %tobool.not.i.i21, label %if.end.i22.mt76_worker_enable.exit31_crit_edge, label %if.end.i.i26

if.end.i22.mt76_worker_enable.exit31_crit_edge:   ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_enable.exit31

if.end.i.i26:                                     ; preds = %if.end.i22
  %state.i.i23 = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 59, i32 0, i32 0, i32 1, i32 4
  %call.i.i24 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i23) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24)
  %tobool1.not.i.i25 = icmp eq i32 %call.i.i24, 0
  br i1 %tobool1.not.i.i25, label %land.lhs.true.i.i28, label %if.end.i.i26.mt76_worker_enable.exit31_crit_edge

if.end.i.i26.mt76_worker_enable.exit31_crit_edge: ; preds = %if.end.i.i26
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_enable.exit31

land.lhs.true.i.i28:                              ; preds = %if.end.i.i26
  %16 = ptrtoint ptr %state.i.i23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state.i.i23, align 4
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool4.not.i.i27 = icmp eq i32 %18, 0
  br i1 %tobool4.not.i.i27, label %if.then5.i.i30, label %land.lhs.true.i.i28.mt76_worker_enable.exit31_crit_edge

land.lhs.true.i.i28.mt76_worker_enable.exit31_crit_edge: ; preds = %land.lhs.true.i.i28
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_enable.exit31

if.then5.i.i30:                                   ; preds = %land.lhs.true.i.i28
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %status_worker to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %status_worker, align 4
  %call7.i.i29 = tail call i32 @wake_up_process(ptr noundef %20) #4
  br label %mt76_worker_enable.exit31

mt76_worker_enable.exit31:                        ; preds = %if.then5.i.i30, %land.lhs.true.i.i28.mt76_worker_enable.exit31_crit_edge, %if.end.i.i26.mt76_worker_enable.exit31_crit_edge, %if.end.i22.mt76_worker_enable.exit31_crit_edge, %mt76_worker_enable.exit.mt76_worker_enable.exit31_crit_edge
  %net_worker = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 59, i32 0, i32 0, i32 1, i32 4, i32 1
  %21 = ptrtoint ptr %net_worker to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net_worker, align 4
  %tobool.not.i32 = icmp eq ptr %22, null
  br i1 %tobool.not.i32, label %mt76_worker_enable.exit31.mt76_worker_enable.exit43_crit_edge, label %if.end.i34

mt76_worker_enable.exit31.mt76_worker_enable.exit43_crit_edge: ; preds = %mt76_worker_enable.exit31
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_enable.exit43

if.end.i34:                                       ; preds = %mt76_worker_enable.exit31
  tail call void @kthread_unpark(ptr noundef nonnull %22) #4
  %23 = ptrtoint ptr %net_worker to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net_worker, align 4
  %tobool.not.i.i33 = icmp eq ptr %24, null
  br i1 %tobool.not.i.i33, label %if.end.i34.mt76_worker_enable.exit43_crit_edge, label %if.end.i.i38

if.end.i34.mt76_worker_enable.exit43_crit_edge:   ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_enable.exit43

if.end.i.i38:                                     ; preds = %if.end.i34
  %state.i.i35 = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 59, i32 0, i32 0, i32 1, i32 4, i32 2
  %call.i.i36 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i35) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i36)
  %tobool1.not.i.i37 = icmp eq i32 %call.i.i36, 0
  br i1 %tobool1.not.i.i37, label %land.lhs.true.i.i40, label %if.end.i.i38.mt76_worker_enable.exit43_crit_edge

if.end.i.i38.mt76_worker_enable.exit43_crit_edge: ; preds = %if.end.i.i38
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_enable.exit43

land.lhs.true.i.i40:                              ; preds = %if.end.i.i38
  %25 = ptrtoint ptr %state.i.i35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %state.i.i35, align 4
  %27 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool4.not.i.i39 = icmp eq i32 %27, 0
  br i1 %tobool4.not.i.i39, label %if.then5.i.i42, label %land.lhs.true.i.i40.mt76_worker_enable.exit43_crit_edge

land.lhs.true.i.i40.mt76_worker_enable.exit43_crit_edge: ; preds = %land.lhs.true.i.i40
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_enable.exit43

if.then5.i.i42:                                   ; preds = %land.lhs.true.i.i40
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %net_worker to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %net_worker, align 4
  %call7.i.i41 = tail call i32 @wake_up_process(ptr noundef %29) #4
  br label %mt76_worker_enable.exit43

mt76_worker_enable.exit43:                        ; preds = %if.then5.i.i42, %land.lhs.true.i.i40.mt76_worker_enable.exit43_crit_edge, %if.end.i.i38.mt76_worker_enable.exit43_crit_edge, %if.end.i34.mt76_worker_enable.exit43_crit_edge, %mt76_worker_enable.exit31.mt76_worker_enable.exit43_crit_edge
  %mcu_ops = getelementptr inbounds %struct.mt7615_dev, ptr %1, i32 0, i32 7
  %30 = ptrtoint ptr %mcu_ops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mcu_ops, align 16
  %set_drv_ctrl = getelementptr inbounds %struct.mt7615_mcu_ops, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %set_drv_ctrl to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_drv_ctrl, align 4
  %call2 = tail call i32 %33(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %mt76_worker_enable.exit43.cleanup_crit_edge

mt76_worker_enable.exit43.cleanup_crit_edge:      ; preds = %mt76_worker_enable.exit43
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %mt76_worker_enable.exit43
  %state = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %state, align 4
  %36 = and i32 %35, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool4.not = icmp eq i32 %36, 0
  br i1 %tobool4.not, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %fw_ver.i = getelementptr inbounds %struct.mt7615_dev, ptr %1, i32 0, i32 21
  %37 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %fw_ver.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %38)
  %cmp.i = icmp ugt i8 %38, 2
  br i1 %cmp.i, label %if.then6, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = tail call i32 @mt76_connac_mcu_set_hif_suspend(ptr noundef %1, i1 noundef zeroext false) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %mt76_worker_enable.exit43.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %mt76_worker_enable.exit43.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call7, %if.then6 ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_mcu_set_hif_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_set_host_pm_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_tx_status_check(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_park(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_unpark(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !20, !22, !24, !26, !28, !30, !31, !33, !34, !35, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__UNIQUE_ID_firmware405, !1, !"__UNIQUE_ID_firmware405", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/sdio.c", i32 252, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware406, !3, !"__UNIQUE_ID_firmware406", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/sdio.c", i32 253, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware407, !5, !"__UNIQUE_ID_firmware407", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/sdio.c", i32 254, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware408, !7, !"__UNIQUE_ID_firmware408", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/sdio.c", i32 255, i32 1}
!8 = !{ptr @__initcall__kmod_mt7663s__409_268_mt7663s_driver_init6, !9, !"__initcall__kmod_mt7663s__409_268_mt7663s_driver_init6", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/sdio.c", i32 268, i32 1}
!10 = !{ptr @__exitcall_mt7663s_driver_exit, !9, !"__exitcall_mt7663s_driver_exit", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_author410, !12, !"__UNIQUE_ID_author410", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/sdio.c", i32 270, i32 1}
!13 = !{ptr @__UNIQUE_ID_author411, !14, !"__UNIQUE_ID_author411", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/sdio.c", i32 271, i32 1}
!15 = !{ptr @__UNIQUE_ID_file412, !16, !"__UNIQUE_ID_file412", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/sdio.c", i32 272, i32 1}
!17 = !{ptr @__UNIQUE_ID_license413, !16, !"__UNIQUE_ID_license413", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/sdio.c", i32 258, i32 11}
!20 = !{ptr @mt7663s_driver, !21, !"mt7663s_driver", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/sdio.c", i32 257, i32 27}
!22 = !{ptr @mt7663s_table, !23, !"mt7663s_table", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/sdio.c", i32 22, i32 36}
!24 = !{ptr @mt7663s_probe.drv_ops, !25, !"drv_ops", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/sdio.c", i32 76, i32 38}
!26 = !{ptr @mt7663s_probe.mt7663s_ops, !27, !"mt7663s_ops", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/sdio.c", i32 88, i32 35}
!28 = !{ptr @mt7663s_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/sdio.c", i32 114, i32 2}
!30 = !{ptr @.str.1, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.2, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/sdio.c", i32 129, i32 2}
!33 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @mt7663s_probe.__UNIQUE_ID_ddebug404, !32, !"__UNIQUE_ID_ddebug404", i1 false, i1 false}
!36 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/sdio.c", i32 159, i32 26}
!38 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/../util.h", i32 73, i32 12}
!40 = !{ptr @mt7663s_pm_ops, !41, !"mt7663s_pm_ops", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/sdio.c", i32 245, i32 32}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i64 2148696221, i64 2148696226, i64 2148696239, i64 2148696283, i64 2148696317, i64 2148696338}
