; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt76x2/usb_mcu.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt76x2/usb_mcu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
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

@mt76x2u_mcu_load_rom_patch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 68, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"could not get hardware semaphore for ROM PATCH\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mt76x2u_mcu_load_rom_patch\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/mediatek/mt76/mt76x2/usb_mcu.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt76x2u_mcu_load_rom_patch._entry_ptr = internal global ptr @mt76x2u_mcu_load_rom_patch._entry, section ".printk_index", align 4
@mt76x2u_mcu_load_rom_patch._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 81, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ROM patch already applied\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mt76x2u_mcu_load_rom_patch._entry_ptr.8 = internal global ptr @mt76x2u_mcu_load_rom_patch._entry.5, section ".printk_index", align 4
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mt7662_rom_patch.bin\00", [43 x i8] zeroinitializer }, align 32
@mt76x2u_mcu_load_rom_patch._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 90, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to load firmware\0A\00", [39 x i8] zeroinitializer }, align 32
@mt76x2u_mcu_load_rom_patch._entry_ptr.12 = internal global ptr @mt76x2u_mcu_load_rom_patch._entry.10, section ".printk_index", align 4
@mt76x2u_mcu_load_rom_patch._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 96, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ROM patch build: %.15s\0A\00", [40 x i8] zeroinitializer }, align 32
@mt76x2u_mcu_load_rom_patch._entry_ptr.15 = internal global ptr @mt76x2u_mcu_load_rom_patch._entry.13, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mt76x2u_mcu_load_rom_patch._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 133, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to load ROM patch\0A\00", [38 x i8] zeroinitializer }, align 32
@mt76x2u_mcu_load_rom_patch._entry_ptr.18 = internal global ptr @mt76x2u_mcu_load_rom_patch._entry.16, section ".printk_index", align 4
@mt76x2u_mcu_enable_patch.data = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"o\FC\08\01 \04\00\00\00\09\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mt7662.bin\00", [21 x i8] zeroinitializer }, align 32
@mt76x2u_mcu_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 171, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Firmware Version: %d.%d.%02d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mt76x2u_mcu_load_firmware\00", [38 x i8] zeroinitializer }, align 32
@mt76x2u_mcu_load_firmware._entry_ptr = internal global ptr @mt76x2u_mcu_load_firmware._entry, section ".printk_index", align 4
@mt76x2u_mcu_load_firmware._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 174, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Build: %x\0A\00", [21 x i8] zeroinitializer }, align 32
@mt76x2u_mcu_load_firmware._entry_ptr.24 = internal global ptr @mt76x2u_mcu_load_firmware._entry.22, section ".printk_index", align 4
@mt76x2u_mcu_load_firmware._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.2, i32 175, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Build Time: %.16s\0A\00", [45 x i8] zeroinitializer }, align 32
@mt76x2u_mcu_load_firmware._entry_ptr.27 = internal global ptr @mt76x2u_mcu_load_firmware._entry.25, section ".printk_index", align 4
@mt76x2u_mcu_load_firmware._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.21, ptr @.str.2, i32 219, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"firmware failed to start\0A\00", [38 x i8] zeroinitializer }, align 32
@mt76x2u_mcu_load_firmware._entry_ptr.30 = internal global ptr @mt76x2u_mcu_load_firmware._entry.28, section ".printk_index", align 4
@mt76x2u_mcu_load_firmware.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.21, ptr @.str.2, ptr @.str.32, i8 0, i8 57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mt76x2u\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"firmware running\0A\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 67, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 81, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 85, i32 30 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 90, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 96, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 133, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 31, i32 18 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 151, i32 30 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 170, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 174, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 175, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 219, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private constant [55 x i8] c"../drivers/net/wireless/mediatek/mt76/mt76x2/usb_mcu.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 228, i32 2 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @mt76x2u_mcu_load_firmware._entry, ptr @mt76x2u_mcu_load_firmware._entry.22, ptr @mt76x2u_mcu_load_firmware._entry.25, ptr @mt76x2u_mcu_load_firmware._entry.28, ptr @mt76x2u_mcu_load_firmware._entry_ptr, ptr @mt76x2u_mcu_load_firmware._entry_ptr.24, ptr @mt76x2u_mcu_load_firmware._entry_ptr.27, ptr @mt76x2u_mcu_load_firmware._entry_ptr.30, ptr @mt76x2u_mcu_load_rom_patch._entry, ptr @mt76x2u_mcu_load_rom_patch._entry.10, ptr @mt76x2u_mcu_load_rom_patch._entry.13, ptr @mt76x2u_mcu_load_rom_patch._entry.16, ptr @mt76x2u_mcu_load_rom_patch._entry.5, ptr @mt76x2u_mcu_load_rom_patch._entry_ptr, ptr @mt76x2u_mcu_load_rom_patch._entry_ptr.12, ptr @mt76x2u_mcu_load_rom_patch._entry_ptr.15, ptr @mt76x2u_mcu_load_rom_patch._entry_ptr.18, ptr @mt76x2u_mcu_load_rom_patch._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @mt76x2u_mcu_enable_patch.data, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x2u_mcu_load_rom_patch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x2u_mcu_load_rom_patch._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x2u_mcu_load_rom_patch._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x2u_mcu_load_rom_patch._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x2u_mcu_load_rom_patch._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x2u_mcu_enable_patch.data to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x2u_mcu_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x2u_mcu_load_firmware._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x2u_mcu_load_firmware._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x2u_mcu_load_firmware._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76x2u_mcu_fw_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %fw.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rev.i.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 39
  %0 = ptrtoint ptr %rev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rev.i.i.i, align 4
  %shr.i.mask.i.i = and i32 %1, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1980891136, i32 %shr.i.mask.i.i)
  %cmp.i.i = icmp eq i32 %shr.i.mask.i.i, 1980891136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #5
  %2 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i, align 4, !annotation !61
  br i1 %cmp.i.i, label %if.end.thread.i, label %land.lhs.true.i

if.end.thread.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i131.i = trunc i32 %1 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 33, i16 %conv.i131.i)
  %cmp132.i = icmp ugt i16 %conv.i131.i, 33
  %.133.i = select i1 %cmp132.i, i32 1, i32 2
  %.130134.i = select i1 %cmp132.i, i32 1800, i32 1840
  br label %if.end17.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef 1980, i32 noundef 1, i32 noundef 1, i32 noundef 600) #5
  br i1 %call1.i, label %land.lhs.true9.i, label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev2.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %3 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev2.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str) #8
  br label %mt76x2u_mcu_load_rom_patch.exit.thread

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %5 = ptrtoint ptr %rev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rev.i.i.i, align 4
  %conv.i.i = trunc i32 %6 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 33, i16 %conv.i.i)
  %cmp.i = icmp ugt i16 %conv.i.i, 33
  %..i = select i1 %cmp.i, i32 1, i32 2
  %.130.i = select i1 %cmp.i, i32 1800, i32 1840
  %bus.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %7 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call10.i = tail call i32 %10(ptr noundef %dev, i32 noundef %.130.i) #5
  %and.i = and i32 %call10.i, %..i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true9.i.if.end17.i_crit_edge, label %mt76x2u_mcu_load_rom_patch.exit.thread8

land.lhs.true9.i.if.end17.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

mt76x2u_mcu_load_rom_patch.exit.thread8:          ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev16.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %11 = ptrtoint ptr %dev16.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev16.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #5
  br label %if.end

if.end17.i:                                       ; preds = %land.lhs.true9.i.if.end17.i_crit_edge, %if.end.thread.i
  %.130136.i = phi i32 [ %.130134.i, %if.end.thread.i ], [ %.130.i, %land.lhs.true9.i.if.end17.i_crit_edge ]
  %.135.i = phi i32 [ %.133.i, %if.end.thread.i ], [ %..i, %land.lhs.true9.i.if.end17.i_crit_edge ]
  %dev18.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %13 = ptrtoint ptr %dev18.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev18.i, align 8
  %call19.i = call i32 @request_firmware(ptr noundef nonnull %fw.i, ptr noundef nonnull @.str.9, ptr noundef %14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp20.i = icmp slt i32 %call19.i, 0
  br i1 %cmp20.i, label %if.end17.i.mt76x2u_mcu_load_rom_patch.exit.thread_crit_edge, label %if.end23.i

if.end17.i.mt76x2u_mcu_load_rom_patch.exit.thread_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76x2u_mcu_load_rom_patch.exit.thread

if.end23.i:                                       ; preds = %if.end17.i
  %15 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fw.i, align 4
  %tobool24.not.i = icmp eq ptr %16, null
  br i1 %tobool24.not.i, label %if.end23.i.out.sink.split.i_crit_edge, label %lor.lhs.false.i

if.end23.i.out.sink.split.i_crit_edge:            ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split.i

lor.lhs.false.i:                                  ; preds = %if.end23.i
  %data.i = getelementptr inbounds %struct.firmware, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %tobool25.not.i = icmp eq ptr %18, null
  br i1 %tobool25.not.i, label %lor.lhs.false.i.out.sink.split.i_crit_edge, label %lor.lhs.false26.i

lor.lhs.false.i.out.sink.split.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split.i

lor.lhs.false26.i:                                ; preds = %lor.lhs.false.i
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %20)
  %cmp27.i = icmp ult i32 %20, 31
  br i1 %cmp27.i, label %lor.lhs.false26.i.out.sink.split.i_crit_edge, label %if.end34.i

lor.lhs.false26.i.out.sink.split.i_crit_edge:     ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split.i

if.end34.i:                                       ; preds = %lor.lhs.false26.i
  %21 = ptrtoint ptr %dev18.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev18.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.14, ptr noundef nonnull %18) #8
  %bus55.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %23 = ptrtoint ptr %bus55.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus55.i, align 4
  %wr.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wr.i, align 4
  call void %26(ptr noundef %dev, i32 noundef 1073778712, i32 noundef 12582944) #5
  call void @mt76x02u_mcu_fw_reset(ptr noundef %dev) #5
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #5
  %27 = ptrtoint ptr %bus55.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus55.i, align 4
  %wr57.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %wr57.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wr57.i, align 4
  call void %30(ptr noundef %dev, i32 noundef 2048, i32 noundef 1) #5
  %31 = ptrtoint ptr %bus55.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus55.i, align 4
  %wr59.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %wr59.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wr59.i, align 4
  call void %34(ptr noundef %dev, i32 noundef 2464, i32 noundef 4194864) #5
  %35 = ptrtoint ptr %bus55.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus55.i, align 4
  %wr61.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %wr61.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wr61.i, align 4
  call void %38(ptr noundef %dev, i32 noundef 2468, i32 noundef 1) #5
  %39 = ptrtoint ptr %bus55.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus55.i, align 4
  %wr63.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %wr63.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wr63.i, align 4
  call void %42(ptr noundef %dev, i32 noundef 2500, i32 noundef 68) #5
  %43 = ptrtoint ptr %bus55.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus55.i, align 4
  %wr65.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %wr65.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wr65.i, align 4
  call void %46(ptr noundef %dev, i32 noundef 2668, i32 noundef 3) #5
  %47 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fw.i, align 4
  %data66.i = getelementptr inbounds %struct.firmware, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %data66.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data66.i, align 4
  %add.ptr.i = getelementptr i8, ptr %50, i32 30
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %48, align 4
  %sub.i = add i32 %52, -30
  %call68.i = call i32 @mt76x02u_mcu_fw_send_data(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %sub.i, i32 noundef 2048, i32 noundef 589824) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i)
  %cmp69.i = icmp slt i32 %call68.i, 0
  br i1 %cmp69.i, label %if.end34.i.out.i_crit_edge, label %if.end72.i

if.end34.i.out.i_crit_edge:                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.i

if.end72.i:                                       ; preds = %if.end34.i
  %data.i4 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 1
  %53 = ptrtoint ptr %data.i4 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i4, align 4
  %55 = call ptr @memcpy(ptr %54, ptr @mt76x2u_mcu_enable_patch.data, i32 11)
  %56 = load ptr, ptr %data.i4, align 4
  %call.i5 = call i32 @mt76u_vendor_request(ptr noundef %dev, i8 noundef zeroext 1, i8 noundef zeroext 32, i16 noundef zeroext 18, i16 noundef zeroext 0, ptr noundef %56, i32 noundef 11) #5
  %57 = ptrtoint ptr %data.i4 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data.i4, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 8)
  store i64 8069330134311698436, ptr %58, align 1
  %60 = load ptr, ptr %data.i4, align 4
  %call.i = call i32 @mt76u_vendor_request(ptr noundef %dev, i8 noundef zeroext 1, i8 noundef zeroext 32, i16 noundef zeroext 18, i16 noundef zeroext 0, ptr noundef %60, i32 noundef 8) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %61(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %62(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %63(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %64(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %65(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %66(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %67(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %68(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %69(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %70(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %71(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %72(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %73(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %74(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %75(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %76(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %77(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %78(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %79(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %80(i32 noundef 214748000) #5
  %call74.i = call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef %.130136.i, i32 noundef %.135.i, i32 noundef %.135.i, i32 noundef 100) #5
  br i1 %call74.i, label %if.end72.i.out.i_crit_edge, label %if.end72.i.out.sink.split.i_crit_edge

if.end72.i.out.sink.split.i_crit_edge:            ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split.i

if.end72.i.out.i_crit_edge:                       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.i

out.sink.split.i:                                 ; preds = %if.end72.i.out.sink.split.i_crit_edge, %lor.lhs.false26.i.out.sink.split.i_crit_edge, %lor.lhs.false.i.out.sink.split.i_crit_edge, %if.end23.i.out.sink.split.i_crit_edge
  %.str.17.sink.i = phi ptr [ @.str.11, %if.end23.i.out.sink.split.i_crit_edge ], [ @.str.11, %lor.lhs.false.i.out.sink.split.i_crit_edge ], [ @.str.11, %lor.lhs.false26.i.out.sink.split.i_crit_edge ], [ @.str.17, %if.end72.i.out.sink.split.i_crit_edge ]
  %err.0.ph.i = phi i32 [ -5, %if.end23.i.out.sink.split.i_crit_edge ], [ -5, %lor.lhs.false.i.out.sink.split.i_crit_edge ], [ -5, %lor.lhs.false26.i.out.sink.split.i_crit_edge ], [ -110, %if.end72.i.out.sink.split.i_crit_edge ]
  %81 = ptrtoint ptr %dev18.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev18.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull %.str.17.sink.i) #8
  br label %out.i

out.i:                                            ; preds = %out.sink.split.i, %if.end72.i.out.i_crit_edge, %if.end34.i.out.i_crit_edge
  %err.0.i = phi i32 [ %call68.i, %if.end72.i.out.i_crit_edge ], [ -5, %if.end34.i.out.i_crit_edge ], [ %err.0.ph.i, %out.sink.split.i ]
  br i1 %cmp.i.i, label %out.i.mt76x2u_mcu_load_rom_patch.exit_crit_edge, label %if.then82.i

out.i.mt76x2u_mcu_load_rom_patch.exit_crit_edge:  ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76x2u_mcu_load_rom_patch.exit

if.then82.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #7
  %bus83.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %83 = ptrtoint ptr %bus83.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bus83.i, align 4
  %wr84.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %wr84.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %wr84.i, align 4
  call void %86(ptr noundef %dev, i32 noundef 1980, i32 noundef 1) #5
  br label %mt76x2u_mcu_load_rom_patch.exit

mt76x2u_mcu_load_rom_patch.exit.thread:           ; preds = %if.end17.i.mt76x2u_mcu_load_rom_patch.exit.thread_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ %call19.i, %if.end17.i.mt76x2u_mcu_load_rom_patch.exit.thread_crit_edge ], [ -110, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #5
  br label %cleanup

mt76x2u_mcu_load_rom_patch.exit:                  ; preds = %if.then82.i, %out.i.mt76x2u_mcu_load_rom_patch.exit_crit_edge
  %87 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %88) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %cmp = icmp slt i32 %err.0.i, 0
  br i1 %cmp, label %mt76x2u_mcu_load_rom_patch.exit.cleanup_crit_edge, label %mt76x2u_mcu_load_rom_patch.exit.if.end_crit_edge

mt76x2u_mcu_load_rom_patch.exit.if.end_crit_edge: ; preds = %mt76x2u_mcu_load_rom_patch.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

mt76x2u_mcu_load_rom_patch.exit.cleanup_crit_edge: ; preds = %mt76x2u_mcu_load_rom_patch.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %mt76x2u_mcu_load_rom_patch.exit.if.end_crit_edge, %mt76x2u_mcu_load_rom_patch.exit.thread8
  %call1 = call fastcc i32 @mt76x2u_mcu_load_firmware(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mt76x2u_mcu_load_rom_patch.exit.cleanup_crit_edge, %mt76x2u_mcu_load_rom_patch.exit.thread
  %retval.0 = phi i32 [ %call1, %if.end ], [ %err.0.i, %mt76x2u_mcu_load_rom_patch.exit.cleanup_crit_edge ], [ %retval.0.i.ph, %mt76x2u_mcu_load_rom_patch.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt76x2u_mcu_load_firmware(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #5
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !61
  %dev1 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1, align 8
  %call = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @.str.19, ptr noundef %2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fw, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end.out_crit_edge, label %lor.lhs.false

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

lor.lhs.false:                                    ; preds = %if.end
  %data = getelementptr inbounds %struct.firmware, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %lor.lhs.false.out_crit_edge, label %lor.lhs.false3

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %8)
  %cmp4 = icmp ult i32 %8, 32
  br i1 %cmp4, label %lor.lhs.false3.out_crit_edge, label %if.end6

lor.lhs.false3.out_crit_edge:                     ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end6:                                          ; preds = %lor.lhs.false3
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %6, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %10)
  %dlm_len9 = getelementptr inbounds %struct.mt76x02_fw_header, ptr %6, i32 0, i32 1
  %12 = ptrtoint ptr %dlm_len9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dlm_len9, align 4
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  %add = add i32 %11, 32
  %add10 = add i32 %add, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %add10)
  %cmp12.not = icmp eq i32 %8, %add10
  br i1 %cmp12.not, label %if.end14, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end14:                                         ; preds = %if.end6
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
  %shr16 = lshr i32 %conv, 8
  %and17 = and i32 %shr16, 15
  %and18 = and i32 %conv, 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.20, i32 noundef %shr, i32 noundef %and17, i32 noundef %and18) #8
  %build_ver = getelementptr inbounds %struct.mt76x02_fw_header, ptr %6, i32 0, i32 2
  %20 = ptrtoint ptr %build_ver to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %build_ver, align 4
  %22 = call i16 @llvm.bswap.i16(i16 %21)
  %conv19 = zext i16 %22 to i32
  %23 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev1, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.23, i32 noundef %conv19) #8
  %25 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev1, align 8
  %build_time = getelementptr inbounds %struct.mt76x02_fw_header, ptr %6, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.26, ptr noundef %build_time) #8
  call void @mt76x02u_mcu_fw_reset(ptr noundef %dev) #5
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #5
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %27 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wr, align 4
  call void %30(ptr noundef %dev, i32 noundef 1073778712, i32 noundef 12582944) #5
  %31 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus, align 4
  %wr44 = getelementptr inbounds %struct.mt76_bus_ops, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %wr44 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wr44, align 4
  call void %34(ptr noundef %dev, i32 noundef 2048, i32 noundef 1) #5
  %35 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus, align 4
  %wr46 = getelementptr inbounds %struct.mt76_bus_ops, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %wr46 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wr46, align 4
  call void %38(ptr noundef %dev, i32 noundef 2464, i32 noundef 4194864) #5
  %39 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus, align 4
  %wr48 = getelementptr inbounds %struct.mt76_bus_ops, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %wr48 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wr48, align 4
  call void %42(ptr noundef %dev, i32 noundef 2468, i32 noundef 1) #5
  %43 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus, align 4
  %wr50 = getelementptr inbounds %struct.mt76_bus_ops, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %wr50 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wr50, align 4
  call void %46(ptr noundef %dev, i32 noundef 2500, i32 noundef 68) #5
  %47 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bus, align 4
  %wr52 = getelementptr inbounds %struct.mt76_bus_ops, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %wr52 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %wr52, align 4
  call void %50(ptr noundef %dev, i32 noundef 2668, i32 noundef 3) #5
  %51 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fw, align 4
  %data53 = getelementptr inbounds %struct.firmware, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %data53 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data53, align 4
  %add.ptr = getelementptr i8, ptr %54, i32 32
  %call54 = call i32 @mt76x02u_mcu_fw_send_data(ptr noundef %dev, ptr noundef %add.ptr, i32 noundef %11, i32 noundef 14592, i32 noundef 524288) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.end14.out_crit_edge, label %if.end58

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end58:                                         ; preds = %if.end14
  %rev.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 39
  %55 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rev.i, align 4
  %conv.i = trunc i32 %56 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 33, i16 %conv.i)
  %cmp61 = icmp ugt i16 %conv.i, 33
  %spec.select = select i1 %cmp61, i32 1116160, i32 1114112
  %57 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fw, align 4
  %data66 = getelementptr inbounds %struct.firmware, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %data66 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data66, align 4
  %add.ptr67 = getelementptr i8, ptr %60, i32 32
  %add.ptr68 = getelementptr i8, ptr %add.ptr67, i32 %11
  %call69 = call i32 @mt76x02u_mcu_fw_send_data(ptr noundef %dev, ptr noundef %add.ptr68, i32 noundef %14, i32 noundef 14592, i32 noundef %spec.select) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %if.end58.out_crit_edge, label %if.end73

if.end58.out_crit_edge:                           ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end73:                                         ; preds = %if.end58
  %call.i = call i32 @mt76u_vendor_request(ptr noundef %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 18, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0) #5
  %call74 = call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef 1840, i32 noundef 1, i32 noundef 1, i32 noundef 100) #5
  br i1 %call74, label %if.end80, label %do.end78

do.end78:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.29) #8
  br label %out

if.end80:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rmw, align 4
  %call82 = call i32 %66(ptr noundef %dev, i32 noundef 1840, i32 noundef 0, i32 noundef 2) #5
  %67 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bus, align 4
  %wr84 = getelementptr inbounds %struct.mt76_bus_ops, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %wr84 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %wr84, align 4
  call void %70(ptr noundef %dev, i32 noundef 2048, i32 noundef 1) #5
  call void @mt76x02_set_ethtool_fwver(ptr noundef %dev, ptr noundef nonnull %6) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt76x2u_mcu_load_firmware.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt76x2u_mcu_load_firmware, %if.then91)) #5
          to label %out [label %if.then91], !srcloc !62

if.then91:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  %71 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev1, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt76x2u_mcu_load_firmware.__UNIQUE_ID_ddebug397, ptr noundef %72, ptr noundef nonnull @.str.32) #5
  br label %out

out:                                              ; preds = %if.then91, %if.end80, %do.end78, %if.end58.out_crit_edge, %if.end14.out_crit_edge, %if.end6.out_crit_edge, %lor.lhs.false3.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end.out_crit_edge
  %err.0 = phi i32 [ %call69, %if.then91 ], [ -110, %do.end78 ], [ -22, %lor.lhs.false3.out_crit_edge ], [ -22, %lor.lhs.false.out_crit_edge ], [ -22, %if.end.out_crit_edge ], [ -22, %if.end6.out_crit_edge ], [ -5, %if.end14.out_crit_edge ], [ -5, %if.end58.out_crit_edge ], [ %call69, %if.end80 ]
  %73 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %74) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76x2u_mcu_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mt76x02_mcu_function_select(ptr noundef %dev, i32 noundef 1, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @mt76x02_mcu_set_radio_state(ptr noundef %dev, i1 noundef zeroext true) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_mcu_function_select(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_mcu_set_radio_state(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mt76_poll_msec(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02u_mcu_fw_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02u_mcu_fw_send_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76u_vendor_request(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_set_ethtool_fwver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/usb_mcu.c", i32 67, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mt76x2u_mcu_load_rom_patch._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mt76x2u_mcu_load_rom_patch._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/usb_mcu.c", i32 81, i32 3}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mt76x2u_mcu_load_rom_patch._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @mt76x2u_mcu_load_rom_patch._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/usb_mcu.c", i32 85, i32 30}
!15 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/usb_mcu.c", i32 90, i32 3}
!17 = !{ptr @mt76x2u_mcu_load_rom_patch._entry.10, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @mt76x2u_mcu_load_rom_patch._entry_ptr.12, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.14, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/usb_mcu.c", i32 96, i32 2}
!21 = !{ptr @mt76x2u_mcu_load_rom_patch._entry.13, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @mt76x2u_mcu_load_rom_patch._entry_ptr.15, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.17, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/usb_mcu.c", i32 133, i32 3}
!25 = !{ptr @mt76x2u_mcu_load_rom_patch._entry.16, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @mt76x2u_mcu_load_rom_patch._entry_ptr.18, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @mt76x2u_mcu_enable_patch.data, !28, !"data", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/usb_mcu.c", i32 31, i32 18}
!29 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/usb_mcu.c", i32 151, i32 30}
!31 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/usb_mcu.c", i32 170, i32 2}
!33 = !{ptr @.str.21, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mt76x2u_mcu_load_firmware._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @mt76x2u_mcu_load_firmware._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/usb_mcu.c", i32 174, i32 2}
!38 = !{ptr @mt76x2u_mcu_load_firmware._entry.22, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @mt76x2u_mcu_load_firmware._entry_ptr.24, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/usb_mcu.c", i32 175, i32 2}
!42 = !{ptr @mt76x2u_mcu_load_firmware._entry.25, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @mt76x2u_mcu_load_firmware._entry_ptr.27, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.29, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/usb_mcu.c", i32 219, i32 3}
!46 = !{ptr @mt76x2u_mcu_load_firmware._entry.28, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @mt76x2u_mcu_load_firmware._entry_ptr.30, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.31, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/usb_mcu.c", i32 228, i32 2}
!50 = !{ptr @.str.32, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @mt76x2u_mcu_load_firmware.__UNIQUE_ID_ddebug397, !49, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{!"auto-init"}
!62 = !{i64 2148184759, i64 2148184764, i64 2148184777, i64 2148184821, i64 2148184855, i64 2148184876}
