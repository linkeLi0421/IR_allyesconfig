; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt76x2/pci.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt76x2/pci.c"
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@__UNIQUE_ID_firmware404 = internal constant [28 x i8] c"mt76x2e.firmware=mt7662.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware405 = internal constant [38 x i8] c"mt76x2e.firmware=mt7662_rom_patch.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_file406 = internal constant [63 x i8] c"mt76x2e.file=drivers/net/wireless/mediatek/mt76/mt76x2/mt76x2e\00", section ".modinfo", align 1
@__UNIQUE_ID_license407 = internal constant [29 x i8] c"mt76x2e.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__initcall__kmod_mt76x2e__408_181_mt76pci_driver_init6 = internal global ptr @mt76pci_driver_init, section ".initcall6.init", align 4
@mt76pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @mt76x2e_device_table, ptr @mt76x2e_probe, ptr @mt76x2e_remove, ptr @mt76x2e_suspend, ptr @mt76x2e_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_mt76pci_driver_exit = internal global ptr @mt76pci_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mt76x2e\00", [24 x i8] zeroinitializer }, align 32
@mt76x2e_device_table = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 5315, i32 30306, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5315, i32 30226, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5315, i32 30210, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@mt76x2e_probe.drv_ops = internal constant { %struct.mt76_driver_ops, [36 x i8] } { %struct.mt76_driver_ops { i32 6, i32 64, i16 20, i16 0, i8 0, ptr @mt76x02_update_channel, ptr @mt76x02_tx_prepare_skb, ptr @mt76x02_tx_complete_skb, ptr null, ptr null, ptr @mt76x02_queue_rx_skb, ptr @mt76x02_rx_poll_complete, ptr @mt76x02_sta_ps, ptr @mt76x02_sta_add, ptr null, ptr @mt76x02_sta_remove }, [36 x i8] zeroinitializer }, align 32
@mt76x2_ops = external dso_local constant %struct.ieee80211_ops, align 4
@mt76x2e_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 64, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ASIC revision: %08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt76x2e_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/wireless/mediatek/mt76/mt76x2/pci.c\00", [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt76x2e_probe._entry_ptr = internal global ptr @mt76x2e_probe._entry, section ".printk_index", align 4
@___asan_gen_.6 = private unnamed_addr constant [15 x i8] c"mt76pci_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 170, i32 26 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 181, i32 1 }
@___asan_gen_.12 = private unnamed_addr constant [21 x i8] c"mt76x2e_device_table\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 12, i32 35 }
@___asan_gen_.15 = private unnamed_addr constant [8 x i8] c"drv_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 22, i32 38 }
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [51 x i8] c"../drivers/net/wireless/mediatek/mt76/mt76x2/pci.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 64, i32 2 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_file406, ptr @__UNIQUE_ID_firmware404, ptr @__UNIQUE_ID_firmware405, ptr @__UNIQUE_ID_license407, ptr @__exitcall_mt76pci_driver_exit, ptr @__initcall__kmod_mt76x2e__408_181_mt76pci_driver_init6, ptr @mt76pci_driver_exit, ptr @mt76x2e_probe._entry, ptr @mt76x2e_probe._entry_ptr, ptr @mt76pci_driver, ptr @.str, ptr @mt76x2e_device_table, ptr @mt76x2e_probe.drv_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x2e_device_table to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x2e_probe.drv_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x2e_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt76pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @mt76pci_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt76pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_unregister_driver(ptr noundef nonnull @mt76pci_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt76x2e_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcim_enable_device(ptr noundef %pdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %0 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.pci_name.exit_crit_edge

if.end.pci_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %3, %if.end.i.i ], [ %1, %if.end.pci_name.exit_crit_edge ]
  %call2 = tail call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 1, ptr noundef %retval.0.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %pci_name.exit.cleanup_crit_edge

pci_name.exit.cleanup_crit_edge:                  ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %pci_name.exit
  tail call void @pci_set_master(ptr noundef %pdev) #5
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call7 = tail call i32 @dma_set_mask(ptr noundef %dev6, i64 noundef 4294967295) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %call12 = tail call ptr @mt76_alloc_device(ptr noundef %dev6, i32 noundef 17920, ptr noundef nonnull @mt76x2_ops, ptr noundef nonnull @mt76x2e_probe.drv_ops) #5
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %call16 = tail call ptr @pcim_iomap_table(ptr noundef %pdev) #5
  %4 = ptrtoint ptr %call16 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call16, align 4
  tail call void @mt76_mmio_init(ptr noundef nonnull %call12, ptr noundef %5) #5
  tail call void @mt76x2_reset_wlan(ptr noundef nonnull %call12, i1 noundef zeroext false) #5
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %call12, i32 0, i32 10
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call17 = tail call i32 %9(ptr noundef nonnull %call12, i32 noundef 0) #5
  %rev = getelementptr inbounds %struct.mt76_dev, ptr %call12, i32 0, i32 39
  %10 = ptrtoint ptr %rev to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call17, ptr %rev, align 4
  %dev18 = getelementptr inbounds %struct.mt76_dev, ptr %call12, i32 0, i32 13
  %11 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev18, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.1, i32 noundef %call17) #8
  %13 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wr, align 4
  tail call void %16(ptr noundef nonnull %call12, i32 noundef 516, i32 noundef 0) #5
  %17 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev18, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %18, i32 noundef %20, ptr noundef nonnull @mt76x02_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %call12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool23.not = icmp eq i32 %call.i, 0
  br i1 %tobool23.not, label %if.end25, label %if.end15.error_crit_edge

if.end15.error_crit_edge:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

if.end25:                                         ; preds = %if.end15
  %call26 = tail call i32 @mt76x2_register_device(ptr noundef nonnull %call12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.error_crit_edge

if.end25.error_crit_edge:                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

if.end29:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rmw, align 4
  %call47 = tail call i32 %24(ptr noundef nonnull %call12, i32 noundef 88592, i32 noundef 2031616, i32 noundef 589824) #5
  %25 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus, align 4
  %rmw49 = getelementptr inbounds %struct.mt76_bus_ops, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %rmw49 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rmw49, align 4
  %call66 = tail call i32 %28(ptr noundef nonnull %call12, i32 noundef 88588, i32 noundef -268435456, i32 noundef -268435456) #5
  %29 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bus, align 4
  %rmw68 = getelementptr inbounds %struct.mt76_bus_ops, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %rmw68 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rmw68, align 4
  %call85 = tail call i32 %32(ptr noundef nonnull %call12, i32 noundef 89176, i32 noundef 192, i32 noundef 192) #5
  tail call void @mt76_pci_disable_aspm(ptr noundef %pdev) #5
  br label %cleanup

error:                                            ; preds = %if.end25.error_crit_edge, %if.end15.error_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end15.error_crit_edge ], [ %call26, %if.end25.error_crit_edge ]
  tail call void @mt76_free_device(ptr noundef nonnull %call12) #5
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end29, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %pci_name.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error ], [ 0, %if.end29 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %pci_name.exit.cleanup_crit_edge ], [ %call7, %if.end5.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt76x2e_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mt76_unregister_device(ptr noundef %1) #5
  tail call void @mt76x2_cleanup(ptr noundef %1) #5
  tail call void @mt76_free_device(ptr noundef %1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt76x2e_suspend(ptr noundef %pdev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tx_napi = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 27
  tail call void @napi_disable(ptr noundef %tx_napi) #5
  %pre_tbtt_tasklet = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 41
  tail call void @tasklet_kill(ptr noundef %pre_tbtt_tasklet) #5
  %tx_worker = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_worker, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.mt76_worker_disable.exit_crit_edge, label %if.end.i

entry.mt76_worker_disable.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_disable.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @kthread_park(ptr noundef nonnull %3) #5
  %state.i = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 26, i32 2
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %state.i, align 4
  br label %mt76_worker_disable.exit

mt76_worker_disable.exit:                         ; preds = %if.end.i, %entry.mt76_worker_disable.exit_crit_edge
  %ndesc = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 0, i32 8
  %5 = ptrtoint ptr %ndesc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ndesc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %mt76_worker_disable.exit.for.end_crit_edge, label %for.body

mt76_worker_disable.exit.for.end_crit_edge:       ; preds = %mt76_worker_disable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %mt76_worker_disable.exit
  %arrayidx1 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 0
  tail call void @napi_disable(ptr noundef %arrayidx1) #5
  %ndesc.1 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 1, i32 8
  %7 = ptrtoint ptr %ndesc.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ndesc.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.1 = icmp eq i32 %8, 0
  br i1 %tobool.not.1, label %for.body.for.end_crit_edge, label %for.body.1

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.1:                                       ; preds = %for.body
  %arrayidx1.1 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 1
  tail call void @napi_disable(ptr noundef %arrayidx1.1) #5
  %ndesc.2 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 2, i32 8
  %9 = ptrtoint ptr %ndesc.2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ndesc.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.2 = icmp eq i32 %10, 0
  br i1 %tobool.not.2, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  %arrayidx1.2 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 2
  tail call void @napi_disable(ptr noundef %arrayidx1.2) #5
  %ndesc.3 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 3, i32 8
  %11 = ptrtoint ptr %ndesc.3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ndesc.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.3 = icmp eq i32 %12, 0
  br i1 %tobool.not.3, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  %arrayidx1.3 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 3
  tail call void @napi_disable(ptr noundef %arrayidx1.3) #5
  %ndesc.4 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 4, i32 8
  %13 = ptrtoint ptr %ndesc.4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ndesc.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.4 = icmp eq i32 %14, 0
  br i1 %tobool.not.4, label %for.body.3.for.end_crit_edge, label %for.body.4

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.4:                                       ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx1.4 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 4
  tail call void @napi_disable(ptr noundef %arrayidx1.4) #5
  br label %for.end

for.end:                                          ; preds = %for.body.4, %for.body.3.for.end_crit_edge, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.for.end_crit_edge, %mt76_worker_disable.exit.for.end_crit_edge
  %call3 = tail call i32 @pci_choose_state(ptr noundef %pdev, [1 x i32] %state.coerce) #5
  %call4 = tail call i32 @pci_enable_wake(ptr noundef %pdev, i32 noundef %call3, i1 noundef zeroext true) #5
  %call5 = tail call i32 @pci_save_state(ptr noundef %pdev) #5
  %call7 = tail call i32 @pci_choose_state(ptr noundef %pdev, [1 x i32] %state.coerce) #5
  %call8 = tail call i32 @pci_set_power_state(ptr noundef %pdev, i32 noundef %call7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %for.end.cleanup_crit_edge, label %land.rhs12.preheader

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.rhs12.preheader:                             ; preds = %for.end
  %15 = ptrtoint ptr %ndesc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ndesc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool16.not = icmp eq i32 %16, 0
  br i1 %tobool16.not, label %land.rhs12.preheader.for.end23_crit_edge, label %for.body18

land.rhs12.preheader.for.end23_crit_edge:         ; preds = %land.rhs12.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end23

for.body18:                                       ; preds = %land.rhs12.preheader
  %arrayidx20 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 0
  tail call void @napi_enable(ptr noundef %arrayidx20) #5
  %ndesc15.1 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 1, i32 8
  %17 = ptrtoint ptr %ndesc15.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ndesc15.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool16.not.1 = icmp eq i32 %18, 0
  br i1 %tobool16.not.1, label %for.body18.for.end23_crit_edge, label %for.body18.1

for.body18.for.end23_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end23

for.body18.1:                                     ; preds = %for.body18
  %arrayidx20.1 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 1
  tail call void @napi_enable(ptr noundef %arrayidx20.1) #5
  %ndesc15.2 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 2, i32 8
  %19 = ptrtoint ptr %ndesc15.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ndesc15.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool16.not.2 = icmp eq i32 %20, 0
  br i1 %tobool16.not.2, label %for.body18.1.for.end23_crit_edge, label %for.body18.2

for.body18.1.for.end23_crit_edge:                 ; preds = %for.body18.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end23

for.body18.2:                                     ; preds = %for.body18.1
  %arrayidx20.2 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 2
  tail call void @napi_enable(ptr noundef %arrayidx20.2) #5
  %ndesc15.3 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 3, i32 8
  %21 = ptrtoint ptr %ndesc15.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ndesc15.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool16.not.3 = icmp eq i32 %22, 0
  br i1 %tobool16.not.3, label %for.body18.2.for.end23_crit_edge, label %for.body18.3

for.body18.2.for.end23_crit_edge:                 ; preds = %for.body18.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end23

for.body18.3:                                     ; preds = %for.body18.2
  %arrayidx20.3 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 3
  tail call void @napi_enable(ptr noundef %arrayidx20.3) #5
  %ndesc15.4 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 4, i32 8
  %23 = ptrtoint ptr %ndesc15.4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ndesc15.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool16.not.4 = icmp eq i32 %24, 0
  br i1 %tobool16.not.4, label %for.body18.3.for.end23_crit_edge, label %for.body18.4

for.body18.3.for.end23_crit_edge:                 ; preds = %for.body18.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end23

for.body18.4:                                     ; preds = %for.body18.3
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx20.4 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 4
  tail call void @napi_enable(ptr noundef %arrayidx20.4) #5
  br label %for.end23

for.end23:                                        ; preds = %for.body18.4, %for.body18.3.for.end23_crit_edge, %for.body18.2.for.end23_crit_edge, %for.body18.1.for.end23_crit_edge, %for.body18.for.end23_crit_edge, %land.rhs12.preheader.for.end23_crit_edge
  tail call void @napi_enable(ptr noundef %tx_napi) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end23, %for.end.cleanup_crit_edge
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt76x2e_resume(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @pci_set_power_state(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @pci_restore_state(ptr noundef %pdev) #5
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
  tail call fastcc void @local_bh_disable()
  %ndesc = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 0, i32 8
  %11 = ptrtoint ptr %ndesc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ndesc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool2.not = icmp eq i32 %12, 0
  br i1 %tobool2.not, label %mt76_worker_enable.exit.for.end_crit_edge, label %for.body

mt76_worker_enable.exit.for.end_crit_edge:        ; preds = %mt76_worker_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %mt76_worker_enable.exit
  %arrayidx3 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 0
  tail call void @napi_enable(ptr noundef %arrayidx3) #5
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx3) #5
  br i1 %call.i, label %if.then.i, label %for.body.napi_schedule.exit_crit_edge

for.body.napi_schedule.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %napi_schedule.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__napi_schedule(ptr noundef %arrayidx3) #5
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i, %for.body.napi_schedule.exit_crit_edge
  %ndesc.1 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 1, i32 8
  %13 = ptrtoint ptr %ndesc.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ndesc.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool2.not.1 = icmp eq i32 %14, 0
  br i1 %tobool2.not.1, label %napi_schedule.exit.for.end_crit_edge, label %for.body.1

napi_schedule.exit.for.end_crit_edge:             ; preds = %napi_schedule.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.1:                                       ; preds = %napi_schedule.exit
  %arrayidx3.1 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 1
  tail call void @napi_enable(ptr noundef %arrayidx3.1) #5
  %call.i.1 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx3.1) #5
  br i1 %call.i.1, label %if.then.i.1, label %for.body.1.napi_schedule.exit.1_crit_edge

for.body.1.napi_schedule.exit.1_crit_edge:        ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %napi_schedule.exit.1

if.then.i.1:                                      ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__napi_schedule(ptr noundef %arrayidx3.1) #5
  br label %napi_schedule.exit.1

napi_schedule.exit.1:                             ; preds = %if.then.i.1, %for.body.1.napi_schedule.exit.1_crit_edge
  %ndesc.2 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 2, i32 8
  %15 = ptrtoint ptr %ndesc.2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ndesc.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool2.not.2 = icmp eq i32 %16, 0
  br i1 %tobool2.not.2, label %napi_schedule.exit.1.for.end_crit_edge, label %for.body.2

napi_schedule.exit.1.for.end_crit_edge:           ; preds = %napi_schedule.exit.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.2:                                       ; preds = %napi_schedule.exit.1
  %arrayidx3.2 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 2
  tail call void @napi_enable(ptr noundef %arrayidx3.2) #5
  %call.i.2 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx3.2) #5
  br i1 %call.i.2, label %if.then.i.2, label %for.body.2.napi_schedule.exit.2_crit_edge

for.body.2.napi_schedule.exit.2_crit_edge:        ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %napi_schedule.exit.2

if.then.i.2:                                      ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__napi_schedule(ptr noundef %arrayidx3.2) #5
  br label %napi_schedule.exit.2

napi_schedule.exit.2:                             ; preds = %if.then.i.2, %for.body.2.napi_schedule.exit.2_crit_edge
  %ndesc.3 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 3, i32 8
  %17 = ptrtoint ptr %ndesc.3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ndesc.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool2.not.3 = icmp eq i32 %18, 0
  br i1 %tobool2.not.3, label %napi_schedule.exit.2.for.end_crit_edge, label %for.body.3

napi_schedule.exit.2.for.end_crit_edge:           ; preds = %napi_schedule.exit.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.3:                                       ; preds = %napi_schedule.exit.2
  %arrayidx3.3 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 3
  tail call void @napi_enable(ptr noundef %arrayidx3.3) #5
  %call.i.3 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx3.3) #5
  br i1 %call.i.3, label %if.then.i.3, label %for.body.3.napi_schedule.exit.3_crit_edge

for.body.3.napi_schedule.exit.3_crit_edge:        ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %napi_schedule.exit.3

if.then.i.3:                                      ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__napi_schedule(ptr noundef %arrayidx3.3) #5
  br label %napi_schedule.exit.3

napi_schedule.exit.3:                             ; preds = %if.then.i.3, %for.body.3.napi_schedule.exit.3_crit_edge
  %ndesc.4 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 4, i32 8
  %19 = ptrtoint ptr %ndesc.4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ndesc.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool2.not.4 = icmp eq i32 %20, 0
  br i1 %tobool2.not.4, label %napi_schedule.exit.3.for.end_crit_edge, label %for.body.4

napi_schedule.exit.3.for.end_crit_edge:           ; preds = %napi_schedule.exit.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.4:                                       ; preds = %napi_schedule.exit.3
  %arrayidx3.4 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 4
  tail call void @napi_enable(ptr noundef %arrayidx3.4) #5
  %call.i.4 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx3.4) #5
  br i1 %call.i.4, label %if.then.i.4, label %for.body.4.for.end_crit_edge

for.body.4.for.end_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.then.i.4:                                      ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__napi_schedule(ptr noundef %arrayidx3.4) #5
  br label %for.end

for.end:                                          ; preds = %if.then.i.4, %for.body.4.for.end_crit_edge, %napi_schedule.exit.3.for.end_crit_edge, %napi_schedule.exit.2.for.end_crit_edge, %napi_schedule.exit.1.for.end_crit_edge, %napi_schedule.exit.for.end_crit_edge, %mt76_worker_enable.exit.for.end_crit_edge
  %tx_napi = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 27
  tail call void @napi_enable(ptr noundef %tx_napi) #5
  %call.i25 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %tx_napi) #5
  br i1 %call.i25, label %if.then.i26, label %for.end.napi_schedule.exit28_crit_edge

for.end.napi_schedule.exit28_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %napi_schedule.exit28

if.then.i26:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__napi_schedule(ptr noundef %tx_napi) #5
  br label %napi_schedule.exit28

napi_schedule.exit28:                             ; preds = %if.then.i26, %for.end.napi_schedule.exit28_crit_edge
  tail call fastcc void @local_bh_enable()
  %call7 = tail call i32 @mt76x2_resume_device(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %napi_schedule.exit28, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %napi_schedule.exit28 ], [ %call1, %entry.cleanup_crit_edge ]
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
declare dso_local ptr @mt76_alloc_device(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_mmio_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x2_reset_wlan(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_irq_handler(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x2_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_pci_disable_aspm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x2_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_wake(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_choose_state(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_park(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #5
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x2_resume_device(ptr noundef) local_unnamed_addr #1

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
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__UNIQUE_ID_firmware404, !1, !"__UNIQUE_ID_firmware404", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/pci.c", i32 166, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware405, !3, !"__UNIQUE_ID_firmware405", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/pci.c", i32 167, i32 1}
!4 = !{ptr @__UNIQUE_ID_file406, !5, !"__UNIQUE_ID_file406", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/pci.c", i32 168, i32 1}
!6 = !{ptr @__UNIQUE_ID_license407, !5, !"__UNIQUE_ID_license407", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_mt76x2e__408_181_mt76pci_driver_init6, !8, !"__initcall__kmod_mt76x2e__408_181_mt76pci_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/pci.c", i32 181, i32 1}
!9 = !{ptr @__exitcall_mt76pci_driver_exit, !8, !"__exitcall_mt76pci_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mt76pci_driver, !12, !"mt76pci_driver", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/pci.c", i32 170, i32 26}
!13 = !{ptr @mt76x2e_device_table, !14, !"mt76x2e_device_table", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/pci.c", i32 12, i32 35}
!15 = !{ptr @mt76x2e_probe.drv_ops, !16, !"drv_ops", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/pci.c", i32 22, i32 38}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/pci.c", i32 64, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mt76x2e_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @mt76x2e_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
