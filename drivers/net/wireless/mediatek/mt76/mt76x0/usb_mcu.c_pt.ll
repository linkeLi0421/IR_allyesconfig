; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt76x0/usb_mcu.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt76x0/usb_mcu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.135 = type { ptr, ptr, i16 }
%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.143, ptr, %union.anon.144, [20 x i8] }
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
%struct.firmware = type { i32, ptr, ptr }
%struct.mt76x02_fw_header = type { i32, i32, i16, i16, [4 x i8], [16 x i8] }

@mt76x0u_load_firmware.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mt76x0u\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt76x0u_load_firmware\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/mediatek/mt76/mt76x0/usb_mcu.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Firmware Version: %d.%d.%02d Build: %x Build time: %.16s\0A\00", [38 x i8] zeroinitializer }, align 32
@mt76x0u_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 158, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid firmware image\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt76x0u_load_firmware._entry_ptr = internal global ptr @mt76x0u_load_firmware._entry, section ".printk_index", align 4
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mediatek/mt7610e.bin\00", [43 x i8] zeroinitializer }, align 32
@mt76x0_get_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 78, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s not found, switching to %s\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mt76x0_get_firmware\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mt76x0_get_firmware._entry_ptr = internal global ptr @mt76x0_get_firmware._entry, section ".printk_index", align 4
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mediatek/mt7610u.bin\00", [43 x i8] zeroinitializer }, align 32
@mt76x0u_upload_firmware.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 7, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mt76x0u_upload_firmware\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"loading FW - ILM %u + IVB %u\0A\00", [34 x i8] zeroinitializer }, align 32
@mt76x0u_upload_firmware.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.14, i8 0, i8 9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"loading FW - DLM %u\0A\00", [43 x i8] zeroinitializer }, align 32
@mt76x0u_upload_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str.2, i32 54, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Firmware failed to start\0A\00", [38 x i8] zeroinitializer }, align 32
@mt76x0u_upload_firmware._entry_ptr = internal global ptr @mt76x0u_upload_firmware._entry, section ".printk_index", align 4
@mt76x0u_upload_firmware.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.16, i8 0, i8 14, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Firmware running!\0A\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 118, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 158, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 75, i32 36 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 77, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 30, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 39, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 54, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private constant [55 x i8] c"../drivers/net/wireless/mediatek/mt76/mt76x0/usb_mcu.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 59, i32 2 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @mt76x0_get_firmware._entry, ptr @mt76x0_get_firmware._entry_ptr, ptr @mt76x0u_load_firmware._entry, ptr @mt76x0u_load_firmware._entry_ptr, ptr @mt76x0u_upload_firmware._entry, ptr @mt76x0u_upload_firmware._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x0u_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x0_get_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x0u_upload_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76x0u_mcu_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mt76x0u_load_firmware(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %state = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 2, ptr noundef %state) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt76x0u_load_firmware(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #5
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !44
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %1 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wr, align 4
  tail call void %4(ptr noundef %dev, i32 noundef 568, i32 noundef 12582912) #5
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call.i = tail call i32 %8(ptr noundef %dev, i32 noundef 1840) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i.not = icmp eq i32 %call.i, 1
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %9 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1.i, align 8
  %call.i130 = call i32 @firmware_request_nowarn(ptr noundef nonnull %fw, ptr noundef nonnull @.str.7, ptr noundef %10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %tobool.not.i = icmp eq i32 %call.i130, 0
  br i1 %tobool.not.i, label %if.end.if.end4_crit_edge, label %mt76x0_get_firmware.exit

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

mt76x0_get_firmware.exit:                         ; preds = %if.end
  %11 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev1.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.11) #8
  %13 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev1.i, align 8
  %call4.i = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @.str.11, ptr noundef %14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool2.not = icmp eq i32 %call4.i, 0
  br i1 %tobool2.not, label %mt76x0_get_firmware.exit.if.end4_crit_edge, label %mt76x0_get_firmware.exit.cleanup_crit_edge

mt76x0_get_firmware.exit.cleanup_crit_edge:       ; preds = %mt76x0_get_firmware.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

mt76x0_get_firmware.exit.if.end4_crit_edge:       ; preds = %mt76x0_get_firmware.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end4:                                          ; preds = %mt76x0_get_firmware.exit.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %15 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fw, align 4
  %tobool5.not = icmp eq ptr %16, null
  br i1 %tobool5.not, label %if.end4.do.end75_crit_edge, label %lor.lhs.false

if.end4.do.end75_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end75

lor.lhs.false:                                    ; preds = %if.end4
  %data = getelementptr inbounds %struct.firmware, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %tobool6.not = icmp eq ptr %18, null
  br i1 %tobool6.not, label %lor.lhs.false.do.end75_crit_edge, label %lor.lhs.false7

lor.lhs.false.do.end75_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end75

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %20)
  %cmp = icmp ult i32 %20, 32
  br i1 %cmp, label %lor.lhs.false7.do.end75_crit_edge, label %if.end9

lor.lhs.false7.do.end75_crit_edge:                ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end75

if.end9:                                          ; preds = %lor.lhs.false7
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %18, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %23)
  %cmp11 = icmp ult i32 %23, 65
  br i1 %cmp11, label %if.end9.do.end75_crit_edge, label %if.end13

if.end9.do.end75_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end75

if.end13:                                         ; preds = %if.end9
  %add = add i32 %23, 32
  %dlm_len = getelementptr inbounds %struct.mt76x02_fw_header, ptr %18, i32 0, i32 1
  %24 = ptrtoint ptr %dlm_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dlm_len, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  %add15 = add i32 %add, %26
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %add15)
  %cmp17.not = icmp eq i32 %20, %add15
  br i1 %cmp17.not, label %if.end19, label %if.end13.do.end75_crit_edge

if.end13.do.end75_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end75

if.end19:                                         ; preds = %if.end13
  %fw_ver = getelementptr inbounds %struct.mt76x02_fw_header, ptr %18, i32 0, i32 3
  %27 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %fw_ver, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt76x0u_load_firmware.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt76x0u_load_firmware, %if.then24)) #5
          to label %do.end [label %if.then24], !srcloc !45

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %29 = call i16 @llvm.bswap.i16(i16 %28)
  %conv = zext i16 %29 to i32
  %30 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev1.i, align 8
  %shr = lshr i32 %conv, 12
  %shr26 = lshr i32 %conv, 8
  %and27 = and i32 %shr26, 15
  %and28 = and i32 %conv, 15
  %build_ver = getelementptr inbounds %struct.mt76x02_fw_header, ptr %18, i32 0, i32 2
  %32 = ptrtoint ptr %build_ver to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %build_ver, align 4
  %34 = call i16 @llvm.bswap.i16(i16 %33)
  %conv29 = zext i16 %34 to i32
  %build_time = getelementptr inbounds %struct.mt76x02_fw_header, ptr %18, i32 0, i32 5
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt76x0u_load_firmware.__UNIQUE_ID_ddebug390, ptr noundef %31, ptr noundef nonnull @.str.3, i32 noundef %shr, i32 noundef %and27, i32 noundef %and28, i32 noundef %conv29, ptr noundef %build_time) #5
  br label %do.end

do.end:                                           ; preds = %if.then24, %if.end19
  %35 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus, align 4
  %wr33 = getelementptr inbounds %struct.mt76_bus_ops, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %wr33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wr33, align 4
  call void %38(ptr noundef %dev, i32 noundef 4100, i32 noundef 44) #5
  %39 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rmw, align 4
  %call51 = call i32 %42(ptr noundef %dev, i32 noundef 568, i32 noundef 0, i32 noundef 12582944) #5
  call void @mt76x02u_mcu_fw_reset(ptr noundef %dev) #5
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #5
  %43 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus, align 4
  %wr53 = getelementptr inbounds %struct.mt76_bus_ops, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %wr53 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wr53, align 4
  call void %46(ptr noundef %dev, i32 noundef 2048, i32 noundef 1) #5
  %47 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bus, align 4
  %wr55 = getelementptr inbounds %struct.mt76_bus_ops, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %wr55 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %wr55, align 4
  call void %50(ptr noundef %dev, i32 noundef 2464, i32 noundef 4194864) #5
  %51 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bus, align 4
  %wr57 = getelementptr inbounds %struct.mt76_bus_ops, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %wr57 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %wr57, align 4
  call void %54(ptr noundef %dev, i32 noundef 2468, i32 noundef 1) #5
  %55 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bus, align 4
  %wr59 = getelementptr inbounds %struct.mt76_bus_ops, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %wr59 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wr59, align 4
  call void %58(ptr noundef %dev, i32 noundef 2500, i32 noundef 68) #5
  %59 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bus, align 4
  %wr61 = getelementptr inbounds %struct.mt76_bus_ops, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %wr61 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %wr61, align 4
  call void %62(ptr noundef %dev, i32 noundef 2668, i32 noundef 3) #5
  %63 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bus, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %call63 = call i32 %66(ptr noundef %dev, i32 noundef 568) #5
  %or64 = or i32 %call63, 65536
  %67 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bus, align 4
  %wr66 = getelementptr inbounds %struct.mt76_bus_ops, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %wr66 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %wr66, align 4
  call void %70(ptr noundef %dev, i32 noundef 568, i32 noundef %or64) #5
  %and67 = and i32 %call63, -65537
  %71 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bus, align 4
  %wr69 = getelementptr inbounds %struct.mt76_bus_ops, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %wr69 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %wr69, align 4
  call void %74(ptr noundef %dev, i32 noundef 568, i32 noundef %and67) #5
  %call70 = call fastcc i32 @mt76x0u_upload_firmware(ptr noundef %dev, ptr noundef nonnull %18)
  %75 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %76) #5
  %77 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bus, align 4
  %wr72 = getelementptr inbounds %struct.mt76_bus_ops, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %wr72 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %wr72, align 4
  call void %80(ptr noundef %dev, i32 noundef 2048, i32 noundef 1) #5
  br label %cleanup

do.end75:                                         ; preds = %if.end13.do.end75_crit_edge, %if.end9.do.end75_crit_edge, %lor.lhs.false7.do.end75_crit_edge, %lor.lhs.false.do.end75_crit_edge, %if.end4.do.end75_crit_edge
  %81 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev1.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.4) #8
  %83 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %84) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end75, %do.end, %mt76x0_get_firmware.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %do.end75 ], [ %call70, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %call4.i, %mt76x0_get_firmware.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02u_mcu_fw_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt76x0u_upload_firmware(ptr noundef %dev, ptr noundef %hdr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.mt76x02_fw_header, ptr %hdr, i32 1
  %call = tail call ptr @kmemdup(ptr noundef %add.ptr, i32 noundef 64, i32 noundef 3264) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hdr, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %sub = add i32 %2, -64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt76x0u_upload_firmware.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt76x0u_upload_firmware, %if.then6)) #5
          to label %do.end [label %if.then6], !srcloc !45

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev7 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %3 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev7, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt76x0u_upload_firmware.__UNIQUE_ID_ddebug387, ptr noundef %4, ptr noundef nonnull @.str.13, i32 noundef %sub, i32 noundef 64) #5
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.end
  %add.ptr9 = getelementptr %struct.mt76x02_fw_header, ptr %hdr, i32 3
  %call10 = tail call i32 @mt76x02u_mcu_fw_send_data(ptr noundef %dev, ptr noundef %add.ptr9, i32 noundef %sub, i32 noundef 14584, i32 noundef 64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %do.end.out_crit_edge

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end13:                                         ; preds = %do.end
  %dlm_len14 = getelementptr inbounds %struct.mt76x02_fw_header, ptr %hdr, i32 0, i32 1
  %5 = ptrtoint ptr %dlm_len14 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dlm_len14, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt76x0u_upload_firmware.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt76x0u_upload_firmware, %if.then27)) #5
          to label %do.end31 [label %if.then27], !srcloc !45

if.then27:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %dev28 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %8 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev28, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt76x0u_upload_firmware.__UNIQUE_ID_ddebug388, ptr noundef %9, ptr noundef nonnull @.str.14, i32 noundef %7) #5
  br label %do.end31

do.end31:                                         ; preds = %if.then27, %if.end13
  %10 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hdr, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %add.ptr33 = getelementptr i8, ptr %add.ptr, i32 %12
  %call34 = tail call i32 @mt76x02u_mcu_fw_send_data(ptr noundef %dev, ptr noundef %add.ptr33, i32 noundef %7, i32 noundef 14584, i32 noundef 524288) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %do.end31.out_crit_edge

do.end31.out_crit_edge:                           ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end37:                                         ; preds = %do.end31
  %call38 = tail call i32 @mt76u_vendor_request(ptr noundef %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 18, i16 noundef zeroext 0, ptr noundef nonnull %call, i32 noundef 64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp = icmp slt i32 %call38, 0
  br i1 %cmp, label %if.end37.out_crit_edge, label %if.end40

if.end37.out_crit_edge:                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end40:                                         ; preds = %if.end37
  %call41 = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef 1840, i32 noundef 1, i32 noundef 1, i32 noundef 1000) #5
  br i1 %call41, label %do.body48, label %do.end45

do.end45:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  %dev46 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %13 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev46, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.15) #8
  br label %out

do.body48:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt76x0u_upload_firmware.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt76x0u_upload_firmware, %if.then60)) #5
          to label %out [label %if.then60], !srcloc !45

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #7
  %dev61 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %15 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev61, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt76x0u_upload_firmware.__UNIQUE_ID_ddebug389, ptr noundef %16, ptr noundef nonnull @.str.16) #5
  br label %out

out:                                              ; preds = %if.then60, %do.body48, %do.end45, %if.end37.out_crit_edge, %do.end31.out_crit_edge, %do.end.out_crit_edge
  %err.0 = phi i32 [ %call10, %do.end.out_crit_edge ], [ %call34, %do.end31.out_crit_edge ], [ %call38, %if.end37.out_crit_edge ], [ %call38, %if.then60 ], [ -110, %do.end45 ], [ %call38, %do.body48 ]
  tail call void @kfree(ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @firmware_request_nowarn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02u_mcu_fw_send_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76u_vendor_request(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mt76_poll_msec(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !14, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !30, !31, !32, !34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/usb_mcu.c", i32 118, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mt76x0u_load_firmware.__UNIQUE_ID_ddebug390, !1, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/usb_mcu.c", i32 158, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @mt76x0u_load_firmware._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @mt76x0u_load_firmware._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/usb_mcu.c", i32 75, i32 36}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/usb_mcu.c", i32 77, i32 3}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @mt76x0_get_firmware._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @mt76x0_get_firmware._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !15, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/usb_mcu.c", i32 30, i32 2}
!23 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mt76x0u_upload_firmware.__UNIQUE_ID_ddebug387, !22, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/usb_mcu.c", i32 39, i32 2}
!27 = !{ptr @mt76x0u_upload_firmware.__UNIQUE_ID_ddebug388, !26, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/usb_mcu.c", i32 54, i32 3}
!30 = !{ptr @mt76x0u_upload_firmware._entry, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @mt76x0u_upload_firmware._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x0/usb_mcu.c", i32 59, i32 2}
!34 = !{ptr @mt76x0u_upload_firmware.__UNIQUE_ID_ddebug389, !33, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{!"auto-init"}
!45 = !{i64 2148693749, i64 2148693754, i64 2148693767, i64 2148693811, i64 2148693845, i64 2148693866}
