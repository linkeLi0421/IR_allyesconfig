; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt76x2/pci_mcu.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt76x2/pci_mcu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mt76_mcu_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.firmware = type { i32, ptr, ptr }
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.mt76x02_fw_header = type { i32, i32, i16, i16, [4 x i8], [16 x i8] }

@mt76x2_mcu_init.mt76x2_mcu_ops = internal constant { %struct.mt76_mcu_ops, [56 x i8] } { %struct.mt76_mcu_ops { i32 0, i32 0, ptr @mt76x02_mcu_msg_send, ptr null, ptr @mt76x02_mcu_parse_response, ptr null, ptr null, ptr null, ptr null, ptr @mt76pci_mcu_restart }, [56 x i8] zeroinitializer }, align 32
@mt76pci_load_rom_patch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 26, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Could not get hardware semaphore for ROM PATCH\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mt76pci_load_rom_patch\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/mediatek/mt76/mt76x2/pci_mcu.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt76pci_load_rom_patch._entry_ptr = internal global ptr @mt76pci_load_rom_patch._entry, section ".printk_index", align 4
@mt76pci_load_rom_patch._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 39, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ROM patch already applied\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mt76pci_load_rom_patch._entry_ptr.8 = internal global ptr @mt76pci_load_rom_patch._entry.5, section ".printk_index", align 4
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mt7662_rom_patch.bin\00", [43 x i8] zeroinitializer }, align 32
@mt76pci_load_rom_patch._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 49, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to load firmware\0A\00", [39 x i8] zeroinitializer }, align 32
@mt76pci_load_rom_patch._entry_ptr.12 = internal global ptr @mt76pci_load_rom_patch._entry.10, section ".printk_index", align 4
@mt76pci_load_rom_patch._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 54, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ROM patch build: %.15s\0A\00", [40 x i8] zeroinitializer }, align 32
@mt76pci_load_rom_patch._entry_ptr.15 = internal global ptr @mt76pci_load_rom_patch._entry.13, section ".printk_index", align 4
@mt76pci_load_rom_patch._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 68, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to load ROM patch\0A\00", [38 x i8] zeroinitializer }, align 32
@mt76pci_load_rom_patch._entry_ptr.18 = internal global ptr @mt76pci_load_rom_patch._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mt7662.bin\00", [21 x i8] zeroinitializer }, align 32
@mt76pci_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 107, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Firmware Version: %d.%d.%02d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt76pci_load_firmware\00", [42 x i8] zeroinitializer }, align 32
@mt76pci_load_firmware._entry_ptr = internal global ptr @mt76pci_load_firmware._entry, section ".printk_index", align 4
@mt76pci_load_firmware._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 110, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Build: %x\0A\00", [21 x i8] zeroinitializer }, align 32
@mt76pci_load_firmware._entry_ptr.24 = internal global ptr @mt76pci_load_firmware._entry.22, section ".printk_index", align 4
@mt76pci_load_firmware._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.2, i32 111, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Build Time: %.16s\0A\00", [45 x i8] zeroinitializer }, align 32
@mt76pci_load_firmware._entry_ptr.27 = internal global ptr @mt76pci_load_firmware._entry.25, section ".printk_index", align 4
@mt76pci_load_firmware._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.21, ptr @.str.2, i32 139, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Firmware failed to start\0A\00", [38 x i8] zeroinitializer }, align 32
@mt76pci_load_firmware._entry_ptr.30 = internal global ptr @mt76pci_load_firmware._entry.28, section ".printk_index", align 4
@mt76pci_load_firmware._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.21, ptr @.str.2, i32 145, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Firmware running!\0A\00", [45 x i8] zeroinitializer }, align 32
@mt76pci_load_firmware._entry_ptr.33 = internal global ptr @mt76pci_load_firmware._entry.31, section ".printk_index", align 4
@mt76pci_load_firmware._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.21, ptr @.str.2, i32 152, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid firmware\0A\00", [46 x i8] zeroinitializer }, align 32
@mt76pci_load_firmware._entry_ptr.36 = internal global ptr @mt76pci_load_firmware._entry.34, section ".printk_index", align 4
@___asan_gen_.37 = private unnamed_addr constant [15 x i8] c"mt76x2_mcu_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 179, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 25, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 39, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 43, i32 30 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 49, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 54, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 68, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 89, i32 30 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 106, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 110, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 111, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 139, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 145, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.128 = private constant [55 x i8] c"../drivers/net/wireless/mediatek/mt76/mt76x2/pci_mcu.c\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 152, i32 2 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @mt76pci_load_firmware._entry, ptr @mt76pci_load_firmware._entry.22, ptr @mt76pci_load_firmware._entry.25, ptr @mt76pci_load_firmware._entry.28, ptr @mt76pci_load_firmware._entry.31, ptr @mt76pci_load_firmware._entry.34, ptr @mt76pci_load_firmware._entry_ptr, ptr @mt76pci_load_firmware._entry_ptr.24, ptr @mt76pci_load_firmware._entry_ptr.27, ptr @mt76pci_load_firmware._entry_ptr.30, ptr @mt76pci_load_firmware._entry_ptr.33, ptr @mt76pci_load_firmware._entry_ptr.36, ptr @mt76pci_load_rom_patch._entry, ptr @mt76pci_load_rom_patch._entry.10, ptr @mt76pci_load_rom_patch._entry.13, ptr @mt76pci_load_rom_patch._entry.16, ptr @mt76pci_load_rom_patch._entry.5, ptr @mt76pci_load_rom_patch._entry_ptr, ptr @mt76pci_load_rom_patch._entry_ptr.12, ptr @mt76pci_load_rom_patch._entry_ptr.15, ptr @mt76pci_load_rom_patch._entry_ptr.18, ptr @mt76pci_load_rom_patch._entry_ptr.8, ptr @mt76x2_mcu_init.mt76x2_mcu_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x2_mcu_init.mt76x2_mcu_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76pci_load_rom_patch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76pci_load_rom_patch._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76pci_load_rom_patch._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76pci_load_rom_patch._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76pci_load_rom_patch._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76pci_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76pci_load_firmware._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76pci_load_firmware._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76pci_load_firmware._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76pci_load_firmware._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76pci_load_firmware._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76x2_mcu_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %fw.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mcu_ops = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %mcu_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mt76x2_mcu_init.mt76x2_mcu_ops, ptr %mcu_ops, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #5
  %1 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %fw.i, align 4
  %rev.i.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 39
  %2 = ptrtoint ptr %rev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rev.i.i.i, align 4
  %shr.i.mask.i.i = and i32 %3, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1980891136, i32 %shr.i.mask.i.i)
  %cmp.i.i = icmp eq i32 %shr.i.mask.i.i, 1980891136
  br i1 %cmp.i.i, label %if.end.thread.i, label %land.lhs.true.i

if.end.thread.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i95.i = trunc i32 %3 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 33, i16 %conv.i95.i)
  %cmp96.i = icmp ugt i16 %conv.i95.i, 33
  %.97.i = select i1 %cmp96.i, i32 1, i32 2
  %.9498.i = select i1 %cmp96.i, i32 1800, i32 1840
  br label %if.end17.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef 1980, i32 noundef 1, i32 noundef 1, i32 noundef 600) #5
  br i1 %call1.i, label %land.lhs.true9.i, label %mt76pci_load_rom_patch.exit.thread

mt76pci_load_rom_patch.exit.thread:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev2.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %4 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #5
  br label %cleanup

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %6 = ptrtoint ptr %rev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rev.i.i.i, align 4
  %conv.i.i = trunc i32 %7 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 33, i16 %conv.i.i)
  %cmp.i = icmp ugt i16 %conv.i.i, 33
  %..i = select i1 %cmp.i, i32 1, i32 2
  %.94.i = select i1 %cmp.i, i32 1800, i32 1840
  %bus.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call10.i = tail call i32 %11(ptr noundef %dev, i32 noundef %.94.i) #5
  %and.i = and i32 %call10.i, %..i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true9.i.if.end17.i_crit_edge, label %out.thread.i

land.lhs.true9.i.if.end17.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

out.thread.i:                                     ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev16.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %12 = ptrtoint ptr %dev16.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev16.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.6) #8
  br label %if.then55.i

if.end17.i:                                       ; preds = %land.lhs.true9.i.if.end17.i_crit_edge, %if.end.thread.i
  %.94100.i = phi i32 [ %.9498.i, %if.end.thread.i ], [ %.94.i, %land.lhs.true9.i.if.end17.i_crit_edge ]
  %.99.i = phi i32 [ %.97.i, %if.end.thread.i ], [ %..i, %land.lhs.true9.i.if.end17.i_crit_edge ]
  %dev18.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %14 = ptrtoint ptr %dev18.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev18.i, align 8
  %call19.i = call i32 @request_firmware(ptr noundef nonnull %fw.i, ptr noundef nonnull @.str.9, ptr noundef %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.end17.i.out.i_crit_edge

if.end17.i.out.i_crit_edge:                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.i

if.end22.i:                                       ; preds = %if.end17.i
  %16 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw.i, align 4
  %tobool23.not.i = icmp eq ptr %17, null
  br i1 %tobool23.not.i, label %if.end22.i.out.sink.split.i_crit_edge, label %lor.lhs.false.i

if.end22.i.out.sink.split.i_crit_edge:            ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split.i

lor.lhs.false.i:                                  ; preds = %if.end22.i
  %data.i = getelementptr inbounds %struct.firmware, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i, align 4
  %tobool24.not.i = icmp eq ptr %19, null
  br i1 %tobool24.not.i, label %lor.lhs.false.i.out.sink.split.i_crit_edge, label %lor.lhs.false25.i

lor.lhs.false.i.out.sink.split.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split.i

lor.lhs.false25.i:                                ; preds = %lor.lhs.false.i
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %21)
  %cmp26.i = icmp ult i32 %21, 31
  br i1 %cmp26.i, label %lor.lhs.false25.i.out.sink.split.i_crit_edge, label %if.end33.i

lor.lhs.false25.i.out.sink.split.i_crit_edge:     ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split.i

if.end33.i:                                       ; preds = %lor.lhs.false25.i
  %22 = ptrtoint ptr %dev18.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev18.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.14, ptr noundef nonnull %19) #8
  %bus39.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %24 = ptrtoint ptr %bus39.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus39.i, align 4
  %wr.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wr.i, align 4
  call void %27(ptr noundef %dev, i32 noundef 1868, i32 noundef 524288) #5
  %28 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fw.i, align 4
  %data40.i = getelementptr inbounds %struct.firmware, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %data40.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data40.i, align 4
  %add.ptr.i = getelementptr i8, ptr %31, i32 30
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %29, align 4
  %sub.i = add i32 %33, -30
  %34 = ptrtoint ptr %bus39.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus39.i, align 4
  %write_copy.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %write_copy.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write_copy.i, align 4
  call void %37(ptr noundef %dev, i32 noundef 589824, ptr noundef %add.ptr.i, i32 noundef %sub.i) #5
  %38 = ptrtoint ptr %bus39.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bus39.i, align 4
  %wr44.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %wr44.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wr44.i, align 4
  call void %41(ptr noundef %dev, i32 noundef 1868, i32 noundef 0) #5
  %42 = ptrtoint ptr %bus39.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bus39.i, align 4
  %wr46.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %wr46.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %wr46.i, align 4
  call void %45(ptr noundef %dev, i32 noundef 1816, i32 noundef 4) #5
  %call47.i = call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef %.94100.i, i32 noundef %.99.i, i32 noundef %.99.i, i32 noundef 2000) #5
  br i1 %call47.i, label %if.end33.i.out.i_crit_edge, label %if.end33.i.out.sink.split.i_crit_edge

if.end33.i.out.sink.split.i_crit_edge:            ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split.i

if.end33.i.out.i_crit_edge:                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.i

out.sink.split.i:                                 ; preds = %if.end33.i.out.sink.split.i_crit_edge, %lor.lhs.false25.i.out.sink.split.i_crit_edge, %lor.lhs.false.i.out.sink.split.i_crit_edge, %if.end22.i.out.sink.split.i_crit_edge
  %.str.17.sink.i = phi ptr [ @.str.11, %lor.lhs.false25.i.out.sink.split.i_crit_edge ], [ @.str.11, %lor.lhs.false.i.out.sink.split.i_crit_edge ], [ @.str.11, %if.end22.i.out.sink.split.i_crit_edge ], [ @.str.17, %if.end33.i.out.sink.split.i_crit_edge ]
  %ret.0.ph.i = phi i32 [ -5, %lor.lhs.false25.i.out.sink.split.i_crit_edge ], [ -5, %lor.lhs.false.i.out.sink.split.i_crit_edge ], [ -5, %if.end22.i.out.sink.split.i_crit_edge ], [ -110, %if.end33.i.out.sink.split.i_crit_edge ]
  %46 = ptrtoint ptr %dev18.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev18.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull %.str.17.sink.i) #8
  br label %out.i

out.i:                                            ; preds = %out.sink.split.i, %if.end33.i.out.i_crit_edge, %if.end17.i.out.i_crit_edge
  %ret.0.i = phi i32 [ %call19.i, %if.end17.i.out.i_crit_edge ], [ 0, %if.end33.i.out.i_crit_edge ], [ %ret.0.ph.i, %out.sink.split.i ]
  br i1 %cmp.i.i, label %out.i.mt76pci_load_rom_patch.exit_crit_edge, label %out.i.if.then55.i_crit_edge

out.i.if.then55.i_crit_edge:                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then55.i

out.i.mt76pci_load_rom_patch.exit_crit_edge:      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76pci_load_rom_patch.exit

if.then55.i:                                      ; preds = %out.i.if.then55.i_crit_edge, %out.thread.i
  %ret.0102.i = phi i32 [ 0, %out.thread.i ], [ %ret.0.i, %out.i.if.then55.i_crit_edge ]
  %bus56.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %48 = ptrtoint ptr %bus56.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus56.i, align 4
  %wr57.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %wr57.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %wr57.i, align 4
  call void %51(ptr noundef %dev, i32 noundef 1980, i32 noundef 1) #5
  br label %mt76pci_load_rom_patch.exit

mt76pci_load_rom_patch.exit:                      ; preds = %if.then55.i, %out.i.mt76pci_load_rom_patch.exit_crit_edge
  %ret.0103.i = phi i32 [ %ret.0102.i, %if.then55.i ], [ %ret.0.i, %out.i.mt76pci_load_rom_patch.exit_crit_edge ]
  %52 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %53) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0103.i)
  %tobool.not = icmp eq i32 %ret.0103.i, 0
  br i1 %tobool.not, label %if.end, label %mt76pci_load_rom_patch.exit.cleanup_crit_edge

mt76pci_load_rom_patch.exit.cleanup_crit_edge:    ; preds = %mt76pci_load_rom_patch.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %mt76pci_load_rom_patch.exit
  %call1 = call fastcc i32 @mt76pci_load_firmware(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = call i32 @mt76x02_mcu_function_select(ptr noundef %dev, i32 noundef 1, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %mt76pci_load_rom_patch.exit.cleanup_crit_edge, %mt76pci_load_rom_patch.exit.thread
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %ret.0103.i, %mt76pci_load_rom_patch.exit.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -110, %mt76pci_load_rom_patch.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_mcu_msg_send(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_mcu_parse_response(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt76pci_mcu_restart(ptr noundef %mdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mt76x02_mcu_cleanup(ptr noundef %mdev) #5
  %call1 = tail call i32 @mt76x2_mac_reset(ptr noundef %mdev, i1 noundef zeroext true) #5
  %call2 = tail call fastcc i32 @mt76pci_load_firmware(ptr noundef %mdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wr, align 4
  tail call void %3(ptr noundef %mdev, i32 noundef 524, i32 noundef -1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt76pci_load_firmware(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #5
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !65
  %dev1 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1, align 8
  %call = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @.str.19, ptr noundef %2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fw, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.end.do.end82_crit_edge, label %lor.lhs.false

if.end.do.end82_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end82

lor.lhs.false:                                    ; preds = %if.end
  %data = getelementptr inbounds %struct.firmware, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %lor.lhs.false.do.end82_crit_edge, label %lor.lhs.false4

lor.lhs.false.do.end82_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end82

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %8)
  %cmp = icmp ult i32 %8, 32
  br i1 %cmp, label %lor.lhs.false4.do.end82_crit_edge, label %if.end6

lor.lhs.false4.do.end82_crit_edge:                ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end82

if.end6:                                          ; preds = %lor.lhs.false4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %6, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %10)
  %add = add i32 %11, 32
  %dlm_len = getelementptr inbounds %struct.mt76x02_fw_header, ptr %6, i32 0, i32 1
  %12 = ptrtoint ptr %dlm_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dlm_len, align 4
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  %add8 = add i32 %add, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %add8)
  %cmp10.not = icmp eq i32 %8, %add8
  br i1 %cmp10.not, label %if.end12, label %if.end6.do.end82_crit_edge

if.end6.do.end82_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end82

if.end12:                                         ; preds = %if.end6
  %fw_ver = getelementptr inbounds %struct.mt76x02_fw_header, ptr %6, i32 0, i32 3
  %15 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %fw_ver, align 2
  %17 = call i16 @llvm.bswap.i16(i16 %16)
  %conv = zext i16 %17 to i32
  %18 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev1, align 8
  %shr = lshr i32 %conv, 12
  %shr14 = lshr i32 %conv, 8
  %and15 = and i32 %shr14, 15
  %and16 = and i32 %conv, 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.20, i32 noundef %shr, i32 noundef %and15, i32 noundef %and16) #8
  %build_ver = getelementptr inbounds %struct.mt76x02_fw_header, ptr %6, i32 0, i32 2
  %20 = ptrtoint ptr %build_ver to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %build_ver, align 4
  %22 = call i16 @llvm.bswap.i16(i16 %21)
  %conv17 = zext i16 %22 to i32
  %23 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev1, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.23, i32 noundef %conv17) #8
  %25 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev1, align 8
  %build_time = getelementptr inbounds %struct.mt76x02_fw_header, ptr %6, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.26, ptr noundef %build_time) #8
  %27 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fw, align 4
  %data26 = getelementptr inbounds %struct.firmware, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %data26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data26, align 4
  %add.ptr = getelementptr i8, ptr %30, i32 32
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %6, align 4
  %33 = call i32 @llvm.bswap.i32(i32 %32)
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %34 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wr, align 4
  call void %37(ptr noundef %dev, i32 noundef 1868, i32 noundef 524288) #5
  %38 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bus, align 4
  %write_copy = getelementptr inbounds %struct.mt76_bus_ops, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %write_copy to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_copy, align 4
  call void %41(ptr noundef %dev, i32 noundef 524288, ptr noundef %add.ptr, i32 noundef %33) #5
  %div136 = lshr i32 %33, 2
  %add.ptr29 = getelementptr i32, ptr %add.ptr, i32 %div136
  %42 = ptrtoint ptr %dlm_len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dlm_len, align 4
  %44 = call i32 @llvm.bswap.i32(i32 %43)
  %rev.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 39
  %45 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rev.i, align 4
  %conv.i = trunc i32 %46 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 33, i16 %conv.i)
  %cmp33 = icmp ugt i16 %conv.i, 33
  %. = select i1 %cmp33, i32 591872, i32 589824
  %47 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bus, align 4
  %wr38 = getelementptr inbounds %struct.mt76_bus_ops, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %wr38 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %wr38, align 4
  call void %50(ptr noundef %dev, i32 noundef 1868, i32 noundef 1048576) #5
  %51 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bus, align 4
  %write_copy40 = getelementptr inbounds %struct.mt76_bus_ops, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %write_copy40 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write_copy40, align 4
  call void %54(ptr noundef %dev, i32 noundef %., ptr noundef %add.ptr29, i32 noundef %44) #5
  %55 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bus, align 4
  %wr42 = getelementptr inbounds %struct.mt76_bus_ops, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %wr42 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wr42, align 4
  call void %58(ptr noundef %dev, i32 noundef 1868, i32 noundef 0) #5
  %eeprom.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %59 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %eeprom.i, align 16
  %add.ptr.i = getelementptr i8, ptr %60, i32 66
  %61 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 2)
  %62 = load i16, ptr %add.ptr.i, align 1
  %63 = and i16 %62, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %63)
  %cmp61 = icmp eq i16 %63, 2
  br i1 %cmp61, label %if.then63, label %if.end12.if.end66_crit_edge

if.end12.if.end66_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.then63:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rmw, align 4
  %call65 = call i32 %67(ptr noundef %dev, i32 noundef 1840, i32 noundef 0, i32 noundef 1073741824) #5
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %if.end12.if.end66_crit_edge
  %68 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bus, align 4
  %wr68 = getelementptr inbounds %struct.mt76_bus_ops, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %wr68 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %wr68, align 4
  call void %71(ptr noundef %dev, i32 noundef 1816, i32 noundef 2) #5
  %call69 = call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef 1840, i32 noundef 1, i32 noundef 1, i32 noundef 200) #5
  br i1 %call69, label %if.end75, label %do.end73

do.end73:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.29) #8
  br label %cleanup.sink.split

if.end75:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  call void @mt76x02_set_ethtool_fwver(ptr noundef %dev, ptr noundef nonnull %6) #5
  %74 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev1, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %75, ptr noundef nonnull @.str.32) #8
  br label %cleanup.sink.split

do.end82:                                         ; preds = %if.end6.do.end82_crit_edge, %lor.lhs.false4.do.end82_crit_edge, %lor.lhs.false.do.end82_crit_edge, %if.end.do.end82_crit_edge
  %76 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.35) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end82, %if.end75, %do.end73
  %retval.0.ph = phi i32 [ -110, %do.end73 ], [ 0, %if.end75 ], [ -2, %do.end82 ]
  %78 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %78)
  %.sink = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %.sink) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_mcu_function_select(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_mcu_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x2_mac_reset(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mt76_poll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mt76_poll_msec(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_set_ethtool_fwver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @mt76x2_mcu_init.mt76x2_mcu_ops, !1, !"mt76x2_mcu_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/pci_mcu.c", i32 179, i32 35}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/pci_mcu.c", i32 25, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @mt76pci_load_rom_patch._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @mt76pci_load_rom_patch._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/pci_mcu.c", i32 39, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @mt76pci_load_rom_patch._entry.5, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @mt76pci_load_rom_patch._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/pci_mcu.c", i32 43, i32 30}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/pci_mcu.c", i32 49, i32 3}
!19 = !{ptr @mt76pci_load_rom_patch._entry.10, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @mt76pci_load_rom_patch._entry_ptr.12, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/pci_mcu.c", i32 54, i32 2}
!23 = !{ptr @mt76pci_load_rom_patch._entry.13, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @mt76pci_load_rom_patch._entry_ptr.15, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/pci_mcu.c", i32 68, i32 3}
!27 = !{ptr @mt76pci_load_rom_patch._entry.16, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @mt76pci_load_rom_patch._entry_ptr.18, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/pci_mcu.c", i32 89, i32 30}
!31 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/pci_mcu.c", i32 106, i32 2}
!33 = !{ptr @.str.21, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mt76pci_load_firmware._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @mt76pci_load_firmware._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/pci_mcu.c", i32 110, i32 2}
!38 = !{ptr @mt76pci_load_firmware._entry.22, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @mt76pci_load_firmware._entry_ptr.24, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/pci_mcu.c", i32 111, i32 2}
!42 = !{ptr @mt76pci_load_firmware._entry.25, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @mt76pci_load_firmware._entry_ptr.27, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.29, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/pci_mcu.c", i32 139, i32 3}
!46 = !{ptr @mt76pci_load_firmware._entry.28, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @mt76pci_load_firmware._entry_ptr.30, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.32, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/pci_mcu.c", i32 145, i32 2}
!50 = !{ptr @mt76pci_load_firmware._entry.31, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @mt76pci_load_firmware._entry_ptr.33, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.35, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/pci_mcu.c", i32 152, i32 2}
!54 = !{ptr @mt76pci_load_firmware._entry.34, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @mt76pci_load_firmware._entry_ptr.36, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"auto-init"}
