; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt7615/pci.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt7615/pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.mt7615_dev = type { %union.anon.146, ptr, %struct.tasklet_struct, %struct.mt7615_phy, i64, i16, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, i32, %struct.list_head, %struct.spinlock, %struct.anon.156, i32, i8, i8, i8, i8, %struct.work_struct, %struct.list_head, i32, i32, i32, %struct.mt76_connac_pm, %struct.mt76_connac_coredump, [48 x i8] }
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
%struct.mt7615_phy = type { ptr, ptr, ptr, i8, i32, i64, i16, i8, i32, i32, i32, i8, i8, i16, i8, i8, i8, i32, i32, i32, %struct.mib_stats, %struct.sk_buff_head, %struct.delayed_work, %struct.work_struct, %struct.timer_list, %struct.wait_queue_head, i8, %struct.anon.147 }
%struct.mib_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.anon.147 = type { ptr, i16, [4 x i8], [4 x i8], [4 x i8] }
%struct.anon.156 = type { i8, i32, i16, i16 }
%struct.mt76_connac_pm = type { i8, i8, i8, %struct.spinlock, [4 x %struct.anon.157], %struct.work_struct, %struct.wait_queue_head, %struct.anon.158, %struct.mutex, %struct.delayed_work, i32, i32, %struct.anon.159 }
%struct.anon.157 = type { ptr, ptr }
%struct.anon.158 = type { %struct.spinlock, i32 }
%struct.anon.159 = type { i32, i32, i32, i32, i32 }
%struct.mt76_connac_coredump = type { %struct.sk_buff_head, %struct.delayed_work, i32 }
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.mt7615_mcu_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mt7615e\00", [24 x i8] zeroinitializer }, align 32
@mt7615_pci_device_table = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 5315, i32 30229, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5315, i32 30307, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5315, i32 30225, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@mt7615_pci_driver = dso_local global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @mt7615_pci_device_table, ptr @mt7615_pci_probe, ptr @mt7615_pci_remove, ptr @mt7615_pci_suspend, ptr @mt7615_pci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_firmware383 = internal constant [41 x i8] c"mt7615e.firmware=mediatek/mt7615_cr4.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware384 = internal constant [40 x i8] c"mt7615e.firmware=mediatek/mt7615_n9.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware385 = internal constant [47 x i8] c"mt7615e.firmware=mediatek/mt7615_rom_patch.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware386 = internal constant [43 x i8] c"mt7615e.firmware=mediatek/mt7663_n9_v3.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware387 = internal constant [41 x i8] c"mt7615e.firmware=mediatek/mt7663pr2h.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware388 = internal constant [45 x i8] c"mt7615e.firmware=mediatek/mt7663_n9_rebb.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware389 = internal constant [46 x i8] c"mt7615e.firmware=mediatek/mt7663pr2h_rebb.bin\00", section ".modinfo", align 1
@mt7663e_reg_map = external dso_local constant [24 x i32], align 4
@mt7615e_reg_map = external dso_local constant [24 x i32], align 4
@mt7615_pci_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 110, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PDMA sleep protection failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt7615_pci_suspend\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/wireless/mediatek/mt76/mt7615/pci.c\00", [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt7615_pci_suspend._entry_ptr = internal global ptr @mt7615_pci_suspend._entry, section ".printk_index", align 4
@mt7615_pci_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 164, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PDMA engine must be reinitialized\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mt7615_pci_resume\00", [46 x i8] zeroinitializer }, align 32
@mt7615_pci_resume._entry_ptr = internal global ptr @mt7615_pci_resume._entry, section ".printk_index", align 4
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 185, i32 11 }
@___asan_gen_.11 = private unnamed_addr constant [24 x i8] c"mt7615_pci_device_table\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 15, i32 35 }
@___asan_gen_.14 = private unnamed_addr constant [18 x i8] c"mt7615_pci_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 184, i32 19 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 110, i32 4 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [51 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7615/pci.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 164, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_firmware383, ptr @__UNIQUE_ID_firmware384, ptr @__UNIQUE_ID_firmware385, ptr @__UNIQUE_ID_firmware386, ptr @__UNIQUE_ID_firmware387, ptr @__UNIQUE_ID_firmware388, ptr @__UNIQUE_ID_firmware389, ptr @mt7615_pci_resume._entry, ptr @mt7615_pci_resume._entry_ptr, ptr @mt7615_pci_suspend._entry, ptr @mt7615_pci_suspend._entry_ptr, ptr @.str, ptr @mt7615_pci_device_table, ptr @mt7615_pci_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7615_pci_device_table to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7615_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7615_pci_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7615_pci_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_pci_probe(ptr noundef %pdev, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcim_enable_device(ptr noundef %pdev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %0 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.pci_name.exit_crit_edge

if.end.pci_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %3, %if.end.i.i ], [ %1, %if.end.pci_name.exit_crit_edge ]
  %call2 = tail call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 1, ptr noundef %retval.0.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %pci_name.exit.cleanup_crit_edge

pci_name.exit.cleanup_crit_edge:                  ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %pci_name.exit
  tail call void @pci_set_master(ptr noundef %pdev) #4
  %call.i = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %pdev, i32 noundef 1, i32 noundef 1, i32 noundef 7, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call9 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.error_crit_edge

if.end8.error_crit_edge:                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

if.end12:                                         ; preds = %if.end8
  tail call void @mt76_pci_disable_aspm(ptr noundef %pdev) #4
  %device = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30307, i32 %5)
  %cmp13 = icmp eq i32 %5, 30307
  %cond = select i1 %cmp13, ptr @mt7663e_reg_map, ptr @mt7615e_reg_map
  %call15 = tail call ptr @pcim_iomap_table(ptr noundef %pdev) #4
  %6 = ptrtoint ptr %call15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call15, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %call16 = tail call i32 @mt7615_mmio_probe(ptr noundef %dev, ptr noundef %7, i32 noundef %9, ptr noundef nonnull %cond) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end12.cleanup_crit_edge, label %if.end12.error_crit_edge

if.end12.error_crit_edge:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

error:                                            ; preds = %if.end12.error_crit_edge, %if.end8.error_crit_edge
  %ret.0 = phi i32 [ %call9, %if.end8.error_crit_edge ], [ %call16, %if.end12.error_crit_edge ]
  tail call void @pci_free_irq_vectors(ptr noundef %pdev) #4
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end12.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %pci_name.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %pci_name.exit.cleanup_crit_edge ], [ %call.i, %if.end5.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7615_pci_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mt7615_unregister_device(ptr noundef %1) #4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @devm_free_irq(ptr noundef %dev1, i32 noundef %3, ptr noundef %1) #4
  tail call void @pci_free_irq_vectors(ptr noundef %pdev) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_pci_suspend(ptr noundef %pdev, [1 x i32] %state.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %1, i32 0, i32 27
  %call1 = tail call i32 @mt76_connac_pm_wake(ptr noundef %1, ptr noundef %pm) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %state2 = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state2, align 4
  %4 = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %land.end, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

land.end:                                         ; preds = %if.end
  %fw_ver.i = getelementptr inbounds %struct.mt7615_dev, ptr %1, i32 0, i32 21
  %5 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fw_ver.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp.i = icmp ugt i8 %6, 2
  br i1 %cmp.i, label %if.then6, label %land.end.if.end11_crit_edge

land.end.if.end11_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then6:                                         ; preds = %land.end
  %call7 = tail call i32 @mt76_connac_mcu_set_hif_suspend(ptr noundef %1, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then6.if.end11_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.end11:                                         ; preds = %if.then6.if.end11_crit_edge, %land.end.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %7 = phi i1 [ true, %if.then6.if.end11_crit_edge ], [ false, %land.end.if.end11_crit_edge ], [ false, %if.end.if.end11_crit_edge ]
  %tx_napi = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 27
  tail call void @napi_disable(ptr noundef %tx_napi) #4
  %tx_worker = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 26
  %8 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_worker, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end11.mt76_worker_disable.exit_crit_edge, label %if.end.i

if.end11.mt76_worker_disable.exit_crit_edge:      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_disable.exit

if.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 @kthread_park(ptr noundef nonnull %9) #4
  %state.i = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 26, i32 2
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %state.i, align 4
  br label %mt76_worker_disable.exit

mt76_worker_disable.exit:                         ; preds = %if.end.i, %if.end11.mt76_worker_disable.exit_crit_edge
  %ndesc = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 0, i32 8
  %11 = ptrtoint ptr %ndesc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ndesc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool14.not = icmp eq i32 %12, 0
  br i1 %tobool14.not, label %mt76_worker_disable.exit.for.end_crit_edge, label %for.body

mt76_worker_disable.exit.for.end_crit_edge:       ; preds = %mt76_worker_disable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %mt76_worker_disable.exit
  %arrayidx16 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 0
  tail call void @napi_disable(ptr noundef %arrayidx16) #4
  %ndesc.1 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 1, i32 8
  %13 = ptrtoint ptr %ndesc.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ndesc.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool14.not.1 = icmp eq i32 %14, 0
  br i1 %tobool14.not.1, label %for.body.for.end_crit_edge, label %for.body.1

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.1:                                       ; preds = %for.body
  %arrayidx16.1 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 1
  tail call void @napi_disable(ptr noundef %arrayidx16.1) #4
  %ndesc.2 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 2, i32 8
  %15 = ptrtoint ptr %ndesc.2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ndesc.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool14.not.2 = icmp eq i32 %16, 0
  br i1 %tobool14.not.2, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  %arrayidx16.2 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 2
  tail call void @napi_disable(ptr noundef %arrayidx16.2) #4
  %ndesc.3 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 3, i32 8
  %17 = ptrtoint ptr %ndesc.3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ndesc.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool14.not.3 = icmp eq i32 %18, 0
  br i1 %tobool14.not.3, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  %arrayidx16.3 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 3
  tail call void @napi_disable(ptr noundef %arrayidx16.3) #4
  %ndesc.4 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 4, i32 8
  %19 = ptrtoint ptr %ndesc.4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ndesc.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool14.not.4 = icmp eq i32 %20, 0
  br i1 %tobool14.not.4, label %for.body.3.for.end_crit_edge, label %for.body.4

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.4:                                       ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx16.4 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 4
  tail call void @napi_disable(ptr noundef %arrayidx16.4) #4
  br label %for.end

for.end:                                          ; preds = %for.body.4, %for.body.3.for.end_crit_edge, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.for.end_crit_edge, %mt76_worker_disable.exit.for.end_crit_edge
  %irq_tasklet = getelementptr inbounds %struct.mt7615_dev, ptr %1, i32 0, i32 2
  tail call void @tasklet_kill(ptr noundef %irq_tasklet) #4
  tail call void @mt7615_dma_reset(ptr noundef %1) #4
  %call17 = tail call i32 @mt7615_wait_pdma_busy(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %for.end.restore_crit_edge

for.end.restore_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %restore

if.end20:                                         ; preds = %for.end
  %rev.i.i = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 39
  %21 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rev.i.i, align 4
  %shr.i.mask.i = and i32 %22, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1986199552, i32 %shr.i.mask.i)
  %cmp.i118 = icmp eq i32 %shr.i.mask.i, 1986199552
  br i1 %cmp.i118, label %if.then22, label %if.end20.if.end32_crit_edge

if.end20.if.end32_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.then22:                                        ; preds = %if.end20
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 10
  %23 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmw, align 4
  %reg_map = getelementptr inbounds %struct.mt7615_dev, ptr %1, i32 0, i32 9
  %27 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_map, align 8
  %arrayidx23 = getelementptr i32, ptr %28, i32 5
  %29 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx23, align 4
  %add = add i32 %30, 340
  %call24 = tail call i32 %26(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 1) #4
  %31 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_map, align 8
  %arrayidx26 = getelementptr i32, ptr %32, i32 5
  %33 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx26, align 4
  %add27 = add i32 %34, 340
  %call28 = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %1, i32 noundef %add27, i32 noundef 65536, i32 noundef 65536, i32 noundef 1000) #4
  br i1 %call28, label %if.then22.if.end32_crit_edge, label %do.end

if.then22.if.end32_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

do.end:                                           ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  %dev30 = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 13
  %35 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev30, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.1) #7
  br label %restore

if.end32:                                         ; preds = %if.then22.if.end32_crit_edge, %if.end20.if.end32_crit_edge
  %call34 = tail call i32 @pci_choose_state(ptr noundef %pdev, [1 x i32] %state.coerce) #4
  %call35 = tail call i32 @pci_enable_wake(ptr noundef %pdev, i32 noundef %call34, i1 noundef zeroext true) #4
  %call36 = tail call i32 @pci_save_state(ptr noundef %pdev) #4
  %call38 = tail call i32 @pci_choose_state(ptr noundef %pdev, [1 x i32] %state.coerce) #4
  %call39 = tail call i32 @pci_set_power_state(ptr noundef %pdev, i32 noundef %call38) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end32.restore_crit_edge

if.end32.restore_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %restore

if.end42:                                         ; preds = %if.end32
  %mcu_ops = getelementptr inbounds %struct.mt7615_dev, ptr %1, i32 0, i32 7
  %37 = ptrtoint ptr %mcu_ops to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mcu_ops, align 16
  %set_fw_ctrl = getelementptr inbounds %struct.mt7615_mcu_ops, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %set_fw_ctrl to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %set_fw_ctrl, align 4
  %call43 = tail call i32 %40(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end42.cleanup_crit_edge, label %if.end42.restore_crit_edge

if.end42.restore_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  br label %restore

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

restore:                                          ; preds = %if.end42.restore_crit_edge, %if.end32.restore_crit_edge, %do.end, %for.end.restore_crit_edge
  %err.0 = phi i32 [ %call17, %for.end.restore_crit_edge ], [ %call39, %if.end32.restore_crit_edge ], [ %call43, %if.end42.restore_crit_edge ], [ -5, %do.end ]
  %41 = ptrtoint ptr %ndesc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ndesc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool53.not = icmp eq i32 %42, 0
  br i1 %tobool53.not, label %restore.for.end60_crit_edge, label %for.body55

restore.for.end60_crit_edge:                      ; preds = %restore
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end60

for.body55:                                       ; preds = %restore
  %arrayidx57 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 0
  tail call void @napi_enable(ptr noundef %arrayidx57) #4
  %ndesc52.1 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 1, i32 8
  %43 = ptrtoint ptr %ndesc52.1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ndesc52.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool53.not.1 = icmp eq i32 %44, 0
  br i1 %tobool53.not.1, label %for.body55.for.end60_crit_edge, label %for.body55.1

for.body55.for.end60_crit_edge:                   ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end60

for.body55.1:                                     ; preds = %for.body55
  %arrayidx57.1 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 1
  tail call void @napi_enable(ptr noundef %arrayidx57.1) #4
  %ndesc52.2 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 2, i32 8
  %45 = ptrtoint ptr %ndesc52.2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ndesc52.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool53.not.2 = icmp eq i32 %46, 0
  br i1 %tobool53.not.2, label %for.body55.1.for.end60_crit_edge, label %for.body55.2

for.body55.1.for.end60_crit_edge:                 ; preds = %for.body55.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end60

for.body55.2:                                     ; preds = %for.body55.1
  %arrayidx57.2 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 2
  tail call void @napi_enable(ptr noundef %arrayidx57.2) #4
  %ndesc52.3 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 3, i32 8
  %47 = ptrtoint ptr %ndesc52.3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ndesc52.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool53.not.3 = icmp eq i32 %48, 0
  br i1 %tobool53.not.3, label %for.body55.2.for.end60_crit_edge, label %for.body55.3

for.body55.2.for.end60_crit_edge:                 ; preds = %for.body55.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end60

for.body55.3:                                     ; preds = %for.body55.2
  %arrayidx57.3 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 3
  tail call void @napi_enable(ptr noundef %arrayidx57.3) #4
  %ndesc52.4 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 4, i32 8
  %49 = ptrtoint ptr %ndesc52.4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ndesc52.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool53.not.4 = icmp eq i32 %50, 0
  br i1 %tobool53.not.4, label %for.body55.3.for.end60_crit_edge, label %for.body55.4

for.body55.3.for.end60_crit_edge:                 ; preds = %for.body55.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end60

for.body55.4:                                     ; preds = %for.body55.3
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx57.4 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 4
  tail call void @napi_enable(ptr noundef %arrayidx57.4) #4
  br label %for.end60

for.end60:                                        ; preds = %for.body55.4, %for.body55.3.for.end60_crit_edge, %for.body55.2.for.end60_crit_edge, %for.body55.1.for.end60_crit_edge, %for.body55.for.end60_crit_edge, %restore.for.end60_crit_edge
  tail call void @napi_enable(ptr noundef %tx_napi) #4
  br i1 %7, label %if.then63, label %for.end60.cleanup_crit_edge

for.end60.cleanup_crit_edge:                      ; preds = %for.end60
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then63:                                        ; preds = %for.end60
  call void @__sanitizer_cov_trace_pc() #6
  %call64 = tail call i32 @mt76_connac_mcu_set_hif_suspend(ptr noundef %1, i1 noundef zeroext false) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %for.end60.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call7, %if.then6.cleanup_crit_edge ], [ 0, %if.end42.cleanup_crit_edge ], [ %err.0, %if.then63 ], [ %err.0, %for.end60.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_pci_resume(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mcu_ops = getelementptr inbounds %struct.mt7615_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %mcu_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mcu_ops, align 16
  %set_drv_ctrl = getelementptr inbounds %struct.mt7615_mcu_ops, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %set_drv_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_drv_ctrl, align 4
  %call1 = tail call i32 %5(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @pci_set_power_state(ptr noundef %pdev, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @pci_restore_state(ptr noundef %pdev) #4
  %rev.i.i = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 39
  %6 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rev.i.i, align 4
  %shr.i.mask.i = and i32 %7, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1986199552, i32 %shr.i.mask.i)
  %cmp.i = icmp eq i32 %shr.i.mask.i, 1986199552
  br i1 %cmp.i, label %if.then6, label %if.end4.if.end9_crit_edge

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmw, align 4
  %reg_map = getelementptr inbounds %struct.mt7615_dev, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_map, align 8
  %arrayidx = getelementptr i32, ptr %13, i32 5
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %add = add i32 %15, 340
  %call7 = tail call i32 %11(ptr noundef %1, i32 noundef %add, i32 noundef 1, i32 noundef 0) #4
  %16 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wr, align 4
  tail call void %19(ptr noundef %1, i32 noundef 983432, i32 noundef 1) #4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end4.if.end9_crit_edge
  %bus10 = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %bus10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus10, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %reg_map11 = getelementptr inbounds %struct.mt7615_dev, ptr %1, i32 0, i32 9
  %24 = ptrtoint ptr %reg_map11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_map11, align 8
  %arrayidx12 = getelementptr i32, ptr %25, i32 5
  %26 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx12, align 4
  %add13 = add i32 %27, 768
  %call14 = tail call i32 %23(ptr noundef %1, i32 noundef %add13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.rhs, label %if.end9.if.end26_crit_edge

if.end9.if.end26_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

land.rhs:                                         ; preds = %if.end9
  %28 = ptrtoint ptr %bus10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus10, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %32 = ptrtoint ptr %reg_map11 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_map11, align 8
  %arrayidx19 = getelementptr i32, ptr %33, i32 5
  %34 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx19, align 4
  %add20 = add i32 %35, 772
  %call21 = tail call i32 %31(ptr noundef %1, i32 noundef %add20) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %do.end, label %land.rhs.if.end26_crit_edge

land.rhs.if.end26_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  %dev25 = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 13
  %36 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev25, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.6) #7
  br label %if.end26

if.end26:                                         ; preds = %do.end, %land.rhs.if.end26_crit_edge, %if.end9.if.end26_crit_edge
  %tx_worker = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 26
  %38 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tx_worker, align 4
  %tobool.not.i = icmp eq ptr %39, null
  br i1 %tobool.not.i, label %if.end26.mt76_worker_enable.exit_crit_edge, label %if.end.i

if.end26.mt76_worker_enable.exit_crit_edge:       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_enable.exit

if.end.i:                                         ; preds = %if.end26
  tail call void @kthread_unpark(ptr noundef nonnull %39) #4
  %40 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tx_worker, align 4
  %tobool.not.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i, label %if.end.i.mt76_worker_enable.exit_crit_edge, label %if.end.i.i

if.end.i.mt76_worker_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_enable.exit

if.end.i.i:                                       ; preds = %if.end.i
  %state.i.i = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 26, i32 2
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i, label %if.end.i.i.mt76_worker_enable.exit_crit_edge

if.end.i.i.mt76_worker_enable.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_enable.exit

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %42 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %state.i.i, align 4
  %44 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool4.not.i.i = icmp eq i32 %44, 0
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %land.lhs.true.i.i.mt76_worker_enable.exit_crit_edge

land.lhs.true.i.i.mt76_worker_enable.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_enable.exit

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %45 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tx_worker, align 4
  %call7.i.i = tail call i32 @wake_up_process(ptr noundef %46) #4
  br label %mt76_worker_enable.exit

mt76_worker_enable.exit:                          ; preds = %if.then5.i.i, %land.lhs.true.i.i.mt76_worker_enable.exit_crit_edge, %if.end.i.i.mt76_worker_enable.exit_crit_edge, %if.end.i.mt76_worker_enable.exit_crit_edge, %if.end26.mt76_worker_enable.exit_crit_edge
  tail call fastcc void @local_bh_disable()
  %ndesc = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 0, i32 8
  %47 = ptrtoint ptr %ndesc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ndesc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool30.not = icmp eq i32 %48, 0
  br i1 %tobool30.not, label %mt76_worker_enable.exit.for.end_crit_edge, label %for.body

mt76_worker_enable.exit.for.end_crit_edge:        ; preds = %mt76_worker_enable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %mt76_worker_enable.exit
  %arrayidx32 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 0
  tail call void @napi_enable(ptr noundef %arrayidx32) #4
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx32) #4
  br i1 %call.i, label %if.then.i, label %for.body.napi_schedule.exit_crit_edge

for.body.napi_schedule.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %napi_schedule.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__napi_schedule(ptr noundef %arrayidx32) #4
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i, %for.body.napi_schedule.exit_crit_edge
  %ndesc.1 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 1, i32 8
  %49 = ptrtoint ptr %ndesc.1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ndesc.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool30.not.1 = icmp eq i32 %50, 0
  br i1 %tobool30.not.1, label %napi_schedule.exit.for.end_crit_edge, label %for.body.1

napi_schedule.exit.for.end_crit_edge:             ; preds = %napi_schedule.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.1:                                       ; preds = %napi_schedule.exit
  %arrayidx32.1 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 1
  tail call void @napi_enable(ptr noundef %arrayidx32.1) #4
  %call.i.1 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx32.1) #4
  br i1 %call.i.1, label %if.then.i.1, label %for.body.1.napi_schedule.exit.1_crit_edge

for.body.1.napi_schedule.exit.1_crit_edge:        ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %napi_schedule.exit.1

if.then.i.1:                                      ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__napi_schedule(ptr noundef %arrayidx32.1) #4
  br label %napi_schedule.exit.1

napi_schedule.exit.1:                             ; preds = %if.then.i.1, %for.body.1.napi_schedule.exit.1_crit_edge
  %ndesc.2 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 2, i32 8
  %51 = ptrtoint ptr %ndesc.2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ndesc.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool30.not.2 = icmp eq i32 %52, 0
  br i1 %tobool30.not.2, label %napi_schedule.exit.1.for.end_crit_edge, label %for.body.2

napi_schedule.exit.1.for.end_crit_edge:           ; preds = %napi_schedule.exit.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.2:                                       ; preds = %napi_schedule.exit.1
  %arrayidx32.2 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 2
  tail call void @napi_enable(ptr noundef %arrayidx32.2) #4
  %call.i.2 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx32.2) #4
  br i1 %call.i.2, label %if.then.i.2, label %for.body.2.napi_schedule.exit.2_crit_edge

for.body.2.napi_schedule.exit.2_crit_edge:        ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %napi_schedule.exit.2

if.then.i.2:                                      ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__napi_schedule(ptr noundef %arrayidx32.2) #4
  br label %napi_schedule.exit.2

napi_schedule.exit.2:                             ; preds = %if.then.i.2, %for.body.2.napi_schedule.exit.2_crit_edge
  %ndesc.3 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 3, i32 8
  %53 = ptrtoint ptr %ndesc.3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ndesc.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool30.not.3 = icmp eq i32 %54, 0
  br i1 %tobool30.not.3, label %napi_schedule.exit.2.for.end_crit_edge, label %for.body.3

napi_schedule.exit.2.for.end_crit_edge:           ; preds = %napi_schedule.exit.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.3:                                       ; preds = %napi_schedule.exit.2
  %arrayidx32.3 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 3
  tail call void @napi_enable(ptr noundef %arrayidx32.3) #4
  %call.i.3 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx32.3) #4
  br i1 %call.i.3, label %if.then.i.3, label %for.body.3.napi_schedule.exit.3_crit_edge

for.body.3.napi_schedule.exit.3_crit_edge:        ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %napi_schedule.exit.3

if.then.i.3:                                      ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__napi_schedule(ptr noundef %arrayidx32.3) #4
  br label %napi_schedule.exit.3

napi_schedule.exit.3:                             ; preds = %if.then.i.3, %for.body.3.napi_schedule.exit.3_crit_edge
  %ndesc.4 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 4, i32 8
  %55 = ptrtoint ptr %ndesc.4 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ndesc.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool30.not.4 = icmp eq i32 %56, 0
  br i1 %tobool30.not.4, label %napi_schedule.exit.3.for.end_crit_edge, label %for.body.4

napi_schedule.exit.3.for.end_crit_edge:           ; preds = %napi_schedule.exit.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.4:                                       ; preds = %napi_schedule.exit.3
  %arrayidx32.4 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 4
  tail call void @napi_enable(ptr noundef %arrayidx32.4) #4
  %call.i.4 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx32.4) #4
  br i1 %call.i.4, label %if.then.i.4, label %for.body.4.for.end_crit_edge

for.body.4.for.end_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.then.i.4:                                      ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__napi_schedule(ptr noundef %arrayidx32.4) #4
  br label %for.end

for.end:                                          ; preds = %if.then.i.4, %for.body.4.for.end_crit_edge, %napi_schedule.exit.3.for.end_crit_edge, %napi_schedule.exit.2.for.end_crit_edge, %napi_schedule.exit.1.for.end_crit_edge, %napi_schedule.exit.for.end_crit_edge, %mt76_worker_enable.exit.for.end_crit_edge
  %tx_napi = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 27
  tail call void @napi_enable(ptr noundef %tx_napi) #4
  %call.i80 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %tx_napi) #4
  br i1 %call.i80, label %if.then.i81, label %for.end.napi_schedule.exit83_crit_edge

for.end.napi_schedule.exit83_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %napi_schedule.exit83

if.then.i81:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__napi_schedule(ptr noundef %tx_napi) #4
  br label %napi_schedule.exit83

napi_schedule.exit83:                             ; preds = %if.then.i81, %for.end.napi_schedule.exit83_crit_edge
  tail call fastcc void @local_bh_enable()
  %state = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 3
  %57 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %state, align 4
  %59 = and i32 %58, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool37.not = icmp eq i32 %59, 0
  br i1 %tobool37.not, label %land.lhs.true, label %napi_schedule.exit83.cleanup_crit_edge

napi_schedule.exit83.cleanup_crit_edge:           ; preds = %napi_schedule.exit83
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %napi_schedule.exit83
  %fw_ver.i = getelementptr inbounds %struct.mt7615_dev, ptr %1, i32 0, i32 21
  %60 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %fw_ver.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %61)
  %cmp.i84 = icmp ugt i8 %61, 2
  br i1 %cmp.i84, label %if.then39, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then39:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %call40 = tail call i32 @mt76_connac_mcu_set_hif_suspend(ptr noundef %1, i1 noundef zeroext false) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %land.lhs.true.cleanup_crit_edge, %napi_schedule.exit83.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ 0, %napi_schedule.exit83.cleanup_crit_edge ], [ %call40, %if.then39 ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

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
declare dso_local i32 @mt7615_mmio_probe(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7615_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_pm_wake(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_mcu_set_hif_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7615_dma_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_wait_pdma_busy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mt76_poll_msec(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

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
define internal fastcc void @local_bh_disable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #4
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
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/pci.c", i32 185, i32 11}
!2 = !{ptr @mt7615_pci_driver, !3, !"mt7615_pci_driver", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/pci.c", i32 184, i32 19}
!4 = !{ptr @__UNIQUE_ID_firmware383, !5, !"__UNIQUE_ID_firmware383", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/pci.c", i32 196, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware384, !7, !"__UNIQUE_ID_firmware384", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/pci.c", i32 197, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware385, !9, !"__UNIQUE_ID_firmware385", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/pci.c", i32 198, i32 1}
!10 = !{ptr @__UNIQUE_ID_firmware386, !11, !"__UNIQUE_ID_firmware386", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/pci.c", i32 199, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware387, !13, !"__UNIQUE_ID_firmware387", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/pci.c", i32 200, i32 1}
!14 = !{ptr @__UNIQUE_ID_firmware388, !15, !"__UNIQUE_ID_firmware388", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/pci.c", i32 201, i32 1}
!16 = !{ptr @__UNIQUE_ID_firmware389, !17, !"__UNIQUE_ID_firmware389", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/pci.c", i32 202, i32 1}
!18 = !{ptr @mt7615_pci_device_table, !19, !"mt7615_pci_device_table", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/pci.c", i32 15, i32 35}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/pci.c", i32 110, i32 4}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mt7615_pci_suspend._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @mt7615_pci_suspend._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/pci.c", i32 164, i32 3}
!30 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @mt7615_pci_resume._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @mt7615_pci_resume._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
