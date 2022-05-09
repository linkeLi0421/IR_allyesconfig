; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt7615/mmio.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt7615/mmio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mt76_driver_ops = type { i32, i32, i16, i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.92 }
%union.anon.92 = type { i32 }
%struct.cpumask = type { [1 x i32] }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.135 = type { ptr, ptr, i16 }
%struct.mt76_rx_status = type <{ %union.anon.136, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.136 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.mt7615_dev = type { %union.anon, ptr, %struct.tasklet_struct, %struct.mt7615_phy, i64, i16, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, i32, %struct.list_head, %struct.spinlock, %struct.anon.155, i32, i8, i8, i8, i8, %struct.work_struct, %struct.list_head, i32, i32, i32, %struct.mt76_connac_pm, %struct.mt76_connac_coredump, [48 x i8] }
%union.anon = type { %struct.mt76_dev }
%struct.mt7615_phy = type { ptr, ptr, ptr, i8, i32, i64, i16, i8, i32, i32, i32, i8, i8, i16, i8, i8, i8, i32, i32, i32, %struct.mib_stats, %struct.sk_buff_head, %struct.delayed_work, %struct.work_struct, %struct.timer_list, %struct.wait_queue_head, i8, %struct.anon.146 }
%struct.mib_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.anon.146 = type { ptr, i16, [4 x i8], [4 x i8], [4 x i8] }
%struct.anon.155 = type { i8, i32, i16, i16 }
%struct.mt76_connac_pm = type { i8, i8, i8, %struct.spinlock, [4 x %struct.anon.156], %struct.work_struct, %struct.wait_queue_head, %struct.anon.157, %struct.mutex, %struct.delayed_work, i32, i32, %struct.anon.158 }
%struct.anon.156 = type { ptr, ptr }
%struct.anon.157 = type { %struct.spinlock, i32 }
%struct.anon.158 = type { i32, i32, i32, i32, i32 }
%struct.mt76_connac_coredump = type { %struct.sk_buff_head, %struct.delayed_work, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@mt7615e_reg_map = dso_local constant { [24 x i32], [32 x i8] } { [24 x i32] [i32 4096, i32 4096, i32 0, i32 9476, i32 134144, i32 16384, i32 28672, i32 32768, i32 49152, i32 131584, i32 133632, i32 135168, i32 135680, i32 137216, i32 139264, i32 143360, i32 144384, i32 147968, i32 149504, i32 196608, i32 524288, i32 786432, i32 -2130247680, i32 0], [32 x i8] zeroinitializer }, align 32
@mt7663e_reg_map = dso_local constant { [24 x i32], [32 x i8] } { [24 x i32] [i32 4096, i32 8192, i32 24576, i32 28684, i32 134144, i32 16384, i32 28672, i32 32768, i32 49152, i32 131072, i32 139264, i32 147456, i32 151552, i32 159744, i32 163840, i32 167936, i32 169984, i32 176128, i32 184320, i32 196608, i32 589824, i32 786432, i32 2013335552, i32 57344], [32 x i8] zeroinitializer }, align 32
@mt7615_mmio_probe.drv_ops = internal constant { %struct.mt76_driver_ops, [36 x i8] } { %struct.mt76_driver_ops { i32 17, i32 352, i16 76, i16 4096, i8 0, ptr @mt7615_update_channel, ptr @mt7615_tx_prepare_skb, ptr @mt7615_tx_complete_skb, ptr null, ptr null, ptr @mt7615_queue_rx_skb, ptr @mt7615_rx_poll_complete, ptr @mt7615_sta_ps, ptr @mt7615_mac_sta_add, ptr null, ptr @mt7615_mac_sta_remove }, [36 x i8] zeroinitializer }, align 32
@mt7615_ops = external dso_local constant %struct.ieee80211_ops, align 4
@mt7615_mmio_probe.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mt7615e\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mt7615_mmio_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/wireless/mediatek/mt76/mt7615/mmio.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ASIC revision: %04x\0A\00", [43 x i8] zeroinitializer }, align 32
@mt7622_wmac_driver = external dso_local global %struct.platform_driver, align 4
@mt7615_pci_driver = external dso_local global %struct.pci_driver, align 4
@__initcall__kmod_mt7615e__393_289_mt7615_init6 = internal global ptr @mt7615_init, section ".initcall6.init", align 4
@__exitcall_mt7615_exit = internal global ptr @mt7615_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file394 = internal constant [63 x i8] c"mt7615e.file=drivers/net/wireless/mediatek/mt76/mt7615/mt7615e\00", section ".modinfo", align 1
@__UNIQUE_ID_license395 = internal constant [29 x i8] c"mt7615e.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__tracepoint_dev_irq = external dso_local global %struct.tracepoint, align 4
@.str.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/wireless/mediatek/mt76/mt7615/../trace.h\00", [43 x i8] zeroinitializer }, align 32
@trace_dev_irq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [16 x i8] c"mt7615e_reg_map\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 14, i32 11 }
@___asan_gen_.10 = private unnamed_addr constant [16 x i8] c"mt7663e_reg_map\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 39, i32 11 }
@___asan_gen_.13 = private unnamed_addr constant [8 x i8] c"drv_ops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 187, i32 38 }
@___asan_gen_.26 = private constant [52 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7615/mmio.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 226, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [56 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7615/../trace.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 59, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 108, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_file394, ptr @__UNIQUE_ID_license395, ptr @__exitcall_mt7615_exit, ptr @__initcall__kmod_mt7615e__393_289_mt7615_init6, ptr @mt7615_exit, ptr @mt7615e_reg_map, ptr @mt7663e_reg_map, ptr @mt7615_mmio_probe.drv_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7615e_reg_map to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7663e_reg_map to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7615_mmio_probe.drv_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7615_reg_map(ptr noundef %dev, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rev.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 39
  %0 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rev.i.i, align 4
  %shr.i.mask.i = and i32 %1, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1986199552, i32 %shr.i.mask.i)
  %cmp.i = icmp eq i32 %shr.i.mask.i, 1986199552
  %base.0.v = select i1 %cmp.i, i32 -65536, i32 -524288
  %base.0 = and i32 %base.0.v, %addr
  %offset.0.v = select i1 %cmp.i, i32 65535, i32 524287
  %offset.0 = and i32 %offset.0.v, %addr
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wr, align 4
  %reg_map = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 9
  %6 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_map, align 8
  %arrayidx = getelementptr i32, ptr %7, i32 3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  tail call void %5(ptr noundef %dev, i32 noundef %9, i32 noundef %base.0) #5
  %10 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_map, align 8
  %arrayidx5 = getelementptr i32, ptr %11, i32 20
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx5, align 4
  %add = add i32 %13, %offset.0
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7615_mmio_probe(ptr noundef %pdev, ptr noundef %mem_base, i32 noundef %irq, ptr noundef %map) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_kmemdup(ptr noundef %pdev, ptr noundef nonnull @mt7615_ops, i32 noundef 452, i32 noundef 3264) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @mt76_alloc_device(ptr noundef %pdev, i32 noundef 12416, ptr noundef nonnull %call, ptr noundef nonnull @mt7615_mmio_probe.drv_ops) #5
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @mt76_mmio_init(ptr noundef nonnull %call1, ptr noundef %mem_base) #5
  %irq_tasklet = getelementptr inbounds %struct.mt7615_dev, ptr %call1, i32 0, i32 2
  tail call void @tasklet_setup(ptr noundef %irq_tasklet, ptr noundef nonnull @mt7615_irq_tasklet) #5
  %reg_map = getelementptr inbounds %struct.mt7615_dev, ptr %call1, i32 0, i32 9
  %0 = ptrtoint ptr %reg_map to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %map, ptr %reg_map, align 8
  %ops5 = getelementptr inbounds %struct.mt7615_dev, ptr %call1, i32 0, i32 6
  %1 = ptrtoint ptr %ops5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %ops5, align 4
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %call1, i32 0, i32 10
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx = getelementptr i32, ptr %map, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, 8
  %call7 = tail call i32 %5(ptr noundef nonnull %call1, i32 noundef %add) #5
  %shl = shl i32 %call7, 16
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_map, align 8
  %arrayidx11 = getelementptr i32, ptr %13, i32 1
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx11, align 4
  %call13 = tail call i32 %11(ptr noundef nonnull %call1, i32 noundef %15) #5
  %and = and i32 %call13, 255
  %or = or i32 %and, %shl
  %rev = getelementptr inbounds %struct.mt76_dev, ptr %call1, i32 0, i32 39
  %16 = ptrtoint ptr %rev to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or, ptr %rev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt7615_mmio_probe.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt7615_mmio_probe, %if.then19)) #5
          to label %do.end [label %if.then19], !srcloc !37

if.then19:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %dev20 = getelementptr inbounds %struct.mt76_dev, ptr %call1, i32 0, i32 13
  %17 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev20, align 8
  %19 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt7615_mmio_probe.__UNIQUE_ID_ddebug392, ptr noundef %18, ptr noundef nonnull @.str.3, i32 noundef %20) #5
  br label %do.end

do.end:                                           ; preds = %if.then19, %if.end4
  %21 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus, align 4
  %bus_ops24 = getelementptr inbounds %struct.mt7615_dev, ptr %call1, i32 0, i32 1
  %23 = ptrtoint ptr %bus_ops24 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %bus_ops24, align 128
  %dev25 = getelementptr inbounds %struct.mt76_dev, ptr %call1, i32 0, i32 13
  %24 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev25, align 8
  %call27 = tail call ptr @devm_kmemdup(ptr noundef %25, ptr noundef %22, i32 noundef 32, i32 noundef 3264) #5
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %do.end.err_free_dev_crit_edge, label %if.end30

do.end.err_free_dev_crit_edge:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_dev

if.end30:                                         ; preds = %do.end
  %26 = ptrtoint ptr %call27 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @mt7615_rr, ptr %call27, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %call27, i32 0, i32 1
  %27 = ptrtoint ptr %wr to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @mt7615_wr, ptr %wr, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %call27, i32 0, i32 2
  %28 = ptrtoint ptr %rmw to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @mt7615_rmw, ptr %rmw, align 4
  %29 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call27, ptr %bus, align 4
  %30 = load ptr, ptr %wr, align 4
  %31 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_map, align 8
  %arrayidx36 = getelementptr i32, ptr %32, i32 5
  %33 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx36, align 4
  %add37 = add i32 %34, 516
  tail call void %30(ptr noundef nonnull %call1, i32 noundef %add37, i32 noundef 0) #5
  %35 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev25, align 8
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %36, i32 noundef %irq, ptr noundef nonnull @mt7615_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %call1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool40.not = icmp eq i32 %call.i, 0
  br i1 %tobool40.not, label %if.end42, label %if.end30.err_free_dev_crit_edge

if.end30.err_free_dev_crit_edge:                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_dev

if.end42:                                         ; preds = %if.end30
  %37 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rev, align 4
  %shr.i.mask.i = and i32 %38, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1986199552, i32 %shr.i.mask.i)
  %cmp.i = icmp eq i32 %shr.i.mask.i, 1986199552
  br i1 %cmp.i, label %if.then44, label %if.end42.if.end47_crit_edge

if.end42.if.end47_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.then44:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus, align 4
  %wr46 = getelementptr inbounds %struct.mt76_bus_ops, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %wr46 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wr46, align 4
  tail call void %42(ptr noundef nonnull %call1, i32 noundef 983432, i32 noundef 1) #5
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end42.if.end47_crit_edge
  %call48 = tail call i32 @mt7615_register_device(ptr noundef nonnull %call1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end47.cleanup_crit_edge, label %err_free_irq

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_free_irq:                                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @devm_free_irq(ptr noundef %pdev, i32 noundef %irq, ptr noundef nonnull %call1) #5
  br label %err_free_dev

err_free_dev:                                     ; preds = %err_free_irq, %if.end30.err_free_dev_crit_edge, %do.end.err_free_dev_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end30.err_free_dev_crit_edge ], [ %call48, %err_free_irq ], [ -12, %do.end.err_free_dev_crit_edge ]
  tail call void @mt76_free_device(ptr noundef nonnull %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %err_free_dev, %if.end47.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_free_dev ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end47.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7615_update_channel(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_tx_prepare_skb(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7615_tx_complete_skb(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7615_queue_rx_skb(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7615_rx_poll_complete(ptr noundef %mdev, i32 noundef %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl nuw i32 1, %q
  tail call void @mt76_set_irq_mask(ptr noundef %mdev, i32 noundef 0, i32 noundef 0, i32 noundef %shl) #5
  %state.i.i = getelementptr inbounds %struct.mt7615_dev, ptr %mdev, i32 0, i32 2, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %entry.mt7615_irq_enable.exit_crit_edge

entry.mt7615_irq_enable.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt7615_irq_enable.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %irq_tasklet.i = getelementptr inbounds %struct.mt7615_dev, ptr %mdev, i32 0, i32 2
  tail call void @__tasklet_schedule(ptr noundef %irq_tasklet.i) #5
  br label %mt7615_irq_enable.exit

mt7615_irq_enable.exit:                           ; preds = %if.then.i.i, %entry.mt7615_irq_enable.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7615_sta_ps(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_mac_sta_add(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7615_mac_sta_remove(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mt76_alloc_device(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_mmio_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7615_irq_tasklet(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -11012
  %q_mcu.i = getelementptr i8, ptr %t, i32 -3668
  %0 = ptrtoint ptr %q_mcu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q_mcu.i, align 16
  %hw_idx.i = getelementptr inbounds %struct.mt76_queue, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %hw_idx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hw_idx.i, align 1
  %conv.i = zext i8 %3 to i32
  %shl.i = shl i32 16, %conv.i
  %bus = getelementptr i8, ptr %t, i32 -10040
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wr, align 4
  %reg_map = getelementptr i8, ptr %t, i32 468
  %8 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_map, align 8
  %arrayidx = getelementptr i32, ptr %9, i32 5
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %add = add i32 %11, 516
  tail call void %7(ptr noundef %add.ptr, i32 noundef %add, i32 noundef 0) #5
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %16 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_map, align 8
  %arrayidx3 = getelementptr i32, ptr %17, i32 5
  %18 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx3, align 4
  %add4 = add i32 %19, 512
  %call5 = tail call i32 %15(ptr noundef %add.ptr, i32 noundef %add4) #5
  %irqmask = getelementptr i8, ptr %t, i32 -176
  %20 = ptrtoint ptr %irqmask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irqmask, align 4
  %and = and i32 %21, %call5
  %22 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus, align 4
  %wr7 = getelementptr inbounds %struct.mt76_bus_ops, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %wr7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wr7, align 4
  %26 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_map, align 8
  %arrayidx9 = getelementptr i32, ptr %27, i32 5
  %28 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx9, align 4
  %add10 = add i32 %29, 512
  tail call void %25(ptr noundef %add.ptr, i32 noundef %add10, i32 noundef %and) #5
  %30 = ptrtoint ptr %irqmask to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irqmask, align 4
  tail call fastcc void @trace_dev_irq(ptr noundef %add.ptr, i32 noundef %and, i32 noundef %31)
  %and12 = and i32 %and, 3
  %and13 = and i32 %and, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool.not = icmp eq i32 %and13, 0
  %or14 = select i1 %tobool.not, i32 0, i32 %shl.i
  %spec.select = or i32 %or14, %and12
  %32 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_map, align 8
  %arrayidx16 = getelementptr i32, ptr %33, i32 5
  %34 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx16, align 4
  %add17 = add i32 %35, 516
  tail call void @mt76_set_irq_mask(ptr noundef %add.ptr, i32 noundef %add17, i32 noundef %spec.select, i32 noundef 0) #5
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %if.then20

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then20:                                        ; preds = %entry
  %tx_napi = getelementptr i8, ptr %t, i32 -2860
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %tx_napi) #5
  br i1 %call.i, label %if.then.i, label %if.then20.if.end21_crit_edge

if.then20.if.end21_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then.i:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__napi_schedule(ptr noundef %tx_napi) #5
  br label %if.end21

if.end21:                                         ; preds = %if.then.i, %if.then20.if.end21_crit_edge, %entry.if.end21_crit_edge
  %and22 = and i32 %and, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end26_crit_edge, label %if.then24

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then24:                                        ; preds = %if.end21
  %napi = getelementptr i8, ptr %t, i32 -5076
  %call.i113 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #5
  br i1 %call.i113, label %if.then.i114, label %if.then24.if.end26_crit_edge

if.then24.if.end26_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then.i114:                                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__napi_schedule(ptr noundef %napi) #5
  br label %if.end26

if.end26:                                         ; preds = %if.then.i114, %if.then24.if.end26_crit_edge, %if.end21.if.end26_crit_edge
  %and27 = and i32 %and, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.if.end32_crit_edge, label %if.then29

if.end26.if.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then29:                                        ; preds = %if.end26
  %arrayidx31 = getelementptr i8, ptr %t, i32 -4852
  %call.i116 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx31) #5
  br i1 %call.i116, label %if.then.i117, label %if.then29.if.end32_crit_edge

if.then29.if.end32_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then.i117:                                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__napi_schedule(ptr noundef %arrayidx31) #5
  br label %if.end32

if.end32:                                         ; preds = %if.then.i117, %if.then29.if.end32_crit_edge, %if.end26.if.end32_crit_edge
  %and33 = and i32 %and, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.cleanup_crit_edge, label %if.end36

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  %rev.i.i = getelementptr i8, ptr %t, i32 -920
  %36 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rev.i.i, align 4
  %shr.i.mask.i = and i32 %37, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1986199552, i32 %shr.i.mask.i)
  %cmp.i = icmp eq i32 %shr.i.mask.i, 1986199552
  %38 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bus, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %42 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_map, align 8
  %arrayidx42 = getelementptr i32, ptr %43, i32 5
  %44 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx42, align 4
  br i1 %cmp.i, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %add43 = add i32 %45, 496
  %call44 = tail call i32 %41(ptr noundef %add.ptr, i32 noundef %add43) #5
  %and45 = and i32 %call44, 60
  %46 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bus, align 4
  %wr47 = getelementptr inbounds %struct.mt76_bus_ops, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %wr47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %wr47, align 4
  %50 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg_map, align 8
  %arrayidx49 = getelementptr i32, ptr %51, i32 5
  %52 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx49, align 4
  %add50 = add i32 %53, 496
  tail call void %49(ptr noundef %add.ptr, i32 noundef %add50, i32 noundef %and45) #5
  br label %if.end58

if.else:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %add55 = add i32 %45, 564
  %call56 = tail call i32 %41(ptr noundef %add.ptr, i32 noundef %add55) #5
  %and57 = and i32 %call56, 520093758
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.then38
  %mcu_int.0 = phi i32 [ %and45, %if.then38 ], [ %and57, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mcu_int.0)
  %tobool59.not = icmp eq i32 %mcu_int.0, 0
  br i1 %tobool59.not, label %if.end58.cleanup_crit_edge, label %if.end61

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end61:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  %reset_state = getelementptr i8, ptr %t, i32 612
  %54 = ptrtoint ptr %reset_state to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %mcu_int.0, ptr %reset_state, align 8
  %55 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr, align 128
  %reset_work = getelementptr i8, ptr %t, i32 516
  tail call void @ieee80211_queue_work(ptr noundef %56, ptr noundef %reset_work) #5
  %reset_wait = getelementptr i8, ptr %t, i32 560
  tail call void @__wake_up(ptr noundef %reset_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.end58.cleanup_crit_edge, %if.end32.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_rr(ptr noundef %mdev, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %offset)
  %cmp.i = icmp ult i32 %offset, 1048576
  br i1 %cmp.i, label %entry.__mt7615_reg_addr.exit_crit_edge, label %if.end.i

entry.__mt7615_reg_addr.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %__mt7615_reg_addr.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rev.i.i.i.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 39
  %0 = ptrtoint ptr %rev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rev.i.i.i.i, align 4
  %shr.i.mask.i.i.i = and i32 %1, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1986199552, i32 %shr.i.mask.i.i.i)
  %cmp.i.i.i = icmp eq i32 %shr.i.mask.i.i.i, 1986199552
  %base.0.v.i.i = select i1 %cmp.i.i.i, i32 -65536, i32 -524288
  %base.0.i.i = and i32 %base.0.v.i.i, %offset
  %offset.0.v.i.i = select i1 %cmp.i.i.i, i32 65535, i32 524287
  %offset.0.i.i = and i32 %offset.0.v.i.i, %offset
  %bus.i.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 10
  %2 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i.i, align 4
  %wr.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %wr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wr.i.i, align 4
  %reg_map.i.i = getelementptr inbounds %struct.mt7615_dev, ptr %mdev, i32 0, i32 9
  %6 = ptrtoint ptr %reg_map.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_map.i.i, align 8
  %arrayidx.i.i = getelementptr i32, ptr %7, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  tail call void %5(ptr noundef %mdev, i32 noundef %9, i32 noundef %base.0.i.i) #5
  %10 = ptrtoint ptr %reg_map.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_map.i.i, align 8
  %arrayidx5.i.i = getelementptr i32, ptr %11, i32 20
  %12 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx5.i.i, align 4
  %add.i.i = add i32 %13, %offset.0.i.i
  br label %__mt7615_reg_addr.exit

__mt7615_reg_addr.exit:                           ; preds = %if.end.i, %entry.__mt7615_reg_addr.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i.i, %if.end.i ], [ %offset, %entry.__mt7615_reg_addr.exit_crit_edge ]
  %bus_ops = getelementptr inbounds %struct.mt7615_dev, ptr %mdev, i32 0, i32 1
  %14 = ptrtoint ptr %bus_ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus_ops, align 128
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call1 = tail call i32 %17(ptr noundef %mdev, i32 noundef %retval.0.i) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7615_wr(ptr noundef %mdev, i32 noundef %offset, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %offset)
  %cmp.i = icmp ult i32 %offset, 1048576
  br i1 %cmp.i, label %entry.__mt7615_reg_addr.exit_crit_edge, label %if.end.i

entry.__mt7615_reg_addr.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %__mt7615_reg_addr.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rev.i.i.i.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 39
  %0 = ptrtoint ptr %rev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rev.i.i.i.i, align 4
  %shr.i.mask.i.i.i = and i32 %1, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1986199552, i32 %shr.i.mask.i.i.i)
  %cmp.i.i.i = icmp eq i32 %shr.i.mask.i.i.i, 1986199552
  %base.0.v.i.i = select i1 %cmp.i.i.i, i32 -65536, i32 -524288
  %base.0.i.i = and i32 %base.0.v.i.i, %offset
  %offset.0.v.i.i = select i1 %cmp.i.i.i, i32 65535, i32 524287
  %offset.0.i.i = and i32 %offset.0.v.i.i, %offset
  %bus.i.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 10
  %2 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i.i, align 4
  %wr.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %wr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wr.i.i, align 4
  %reg_map.i.i = getelementptr inbounds %struct.mt7615_dev, ptr %mdev, i32 0, i32 9
  %6 = ptrtoint ptr %reg_map.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_map.i.i, align 8
  %arrayidx.i.i = getelementptr i32, ptr %7, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  tail call void %5(ptr noundef %mdev, i32 noundef %9, i32 noundef %base.0.i.i) #5
  %10 = ptrtoint ptr %reg_map.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_map.i.i, align 8
  %arrayidx5.i.i = getelementptr i32, ptr %11, i32 20
  %12 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx5.i.i, align 4
  %add.i.i = add i32 %13, %offset.0.i.i
  br label %__mt7615_reg_addr.exit

__mt7615_reg_addr.exit:                           ; preds = %if.end.i, %entry.__mt7615_reg_addr.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i.i, %if.end.i ], [ %offset, %entry.__mt7615_reg_addr.exit_crit_edge ]
  %bus_ops = getelementptr inbounds %struct.mt7615_dev, ptr %mdev, i32 0, i32 1
  %14 = ptrtoint ptr %bus_ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus_ops, align 128
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wr, align 4
  tail call void %17(ptr noundef %mdev, i32 noundef %retval.0.i, i32 noundef %val) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_rmw(ptr noundef %mdev, i32 noundef %offset, i32 noundef %mask, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %offset)
  %cmp.i = icmp ult i32 %offset, 1048576
  br i1 %cmp.i, label %entry.__mt7615_reg_addr.exit_crit_edge, label %if.end.i

entry.__mt7615_reg_addr.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %__mt7615_reg_addr.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rev.i.i.i.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 39
  %0 = ptrtoint ptr %rev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rev.i.i.i.i, align 4
  %shr.i.mask.i.i.i = and i32 %1, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1986199552, i32 %shr.i.mask.i.i.i)
  %cmp.i.i.i = icmp eq i32 %shr.i.mask.i.i.i, 1986199552
  %base.0.v.i.i = select i1 %cmp.i.i.i, i32 -65536, i32 -524288
  %base.0.i.i = and i32 %base.0.v.i.i, %offset
  %offset.0.v.i.i = select i1 %cmp.i.i.i, i32 65535, i32 524287
  %offset.0.i.i = and i32 %offset.0.v.i.i, %offset
  %bus.i.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 10
  %2 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i.i, align 4
  %wr.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %wr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wr.i.i, align 4
  %reg_map.i.i = getelementptr inbounds %struct.mt7615_dev, ptr %mdev, i32 0, i32 9
  %6 = ptrtoint ptr %reg_map.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_map.i.i, align 8
  %arrayidx.i.i = getelementptr i32, ptr %7, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  tail call void %5(ptr noundef %mdev, i32 noundef %9, i32 noundef %base.0.i.i) #5
  %10 = ptrtoint ptr %reg_map.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_map.i.i, align 8
  %arrayidx5.i.i = getelementptr i32, ptr %11, i32 20
  %12 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx5.i.i, align 4
  %add.i.i = add i32 %13, %offset.0.i.i
  br label %__mt7615_reg_addr.exit

__mt7615_reg_addr.exit:                           ; preds = %if.end.i, %entry.__mt7615_reg_addr.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i.i, %if.end.i ], [ %offset, %entry.__mt7615_reg_addr.exit_crit_edge ]
  %bus_ops = getelementptr inbounds %struct.mt7615_dev, ptr %mdev, i32 0, i32 1
  %14 = ptrtoint ptr %bus_ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus_ops, align 128
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmw, align 4
  %call1 = tail call i32 %17(ptr noundef %mdev, i32 noundef %retval.0.i, i32 noundef %mask, i32 noundef %val) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_irq_handler(i32 noundef %irq, ptr noundef %dev_instance) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev_instance, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wr, align 4
  %reg_map = getelementptr inbounds %struct.mt7615_dev, ptr %dev_instance, i32 0, i32 9
  %4 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_map, align 8
  %arrayidx = getelementptr i32, ptr %5, i32 5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, 516
  tail call void %3(ptr noundef %dev_instance, i32 noundef %add, i32 noundef 0) #5
  %state = getelementptr inbounds %struct.mt76_phy, ptr %dev_instance, i32 0, i32 3
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.mt7615_dev, ptr %dev_instance, i32 0, i32 2, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %irq_tasklet = getelementptr inbounds %struct.mt7615_dev, ptr %dev_instance, i32 0, i32 2
  tail call void @__tasklet_schedule(ptr noundef %irq_tasklet) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt7615_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @mt7622_wmac_driver) #5
  tail call void @pci_unregister_driver(ptr noundef nonnull @mt7615_pci_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @mt7615_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @mt7622_wmac_driver, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_unregister_driver(ptr noundef nonnull @mt7615_pci_driver) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_set_irq_mask(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dev_irq(ptr noundef %dev, i32 noundef %val, i32 noundef %mask) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dev_irq, i32 0, i32 1), ptr blockaddress(@trace_dev_irq, %do.body)) #5
          to label %if.end48 [label %do.body], !srcloc !37

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !27) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !38

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #7
  %9 = tail call i32 @llvm.read_register.i32(metadata !27) #5
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !39
  %call42 = tail call i32 @__traceiter_dev_irq(ptr noundef null, ptr noundef %dev, i32 noundef %val, i32 noundef %mask) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !40
  %13 = tail call i32 @llvm.read_register.i32(metadata !27) #5
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !27) #5
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !38

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !27) #5
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dev_irq, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dev_irq, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dev_irq.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @trace_dev_irq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 80, ptr noundef nonnull @.str.5) #5
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !42
  %31 = tail call i32 @llvm.read_register.i32(metadata !27) #5
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dev_irq(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !16, !18, !19, !21, !22, !23, !24, !26}
!llvm.named.register.sp = !{!27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @mt7615e_reg_map, !1, !"mt7615e_reg_map", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/mmio.c", i32 14, i32 11}
!2 = !{ptr @mt7663e_reg_map, !3, !"mt7663e_reg_map", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/mmio.c", i32 39, i32 11}
!4 = !{ptr @mt7615_mmio_probe.drv_ops, !5, !"drv_ops", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/mmio.c", i32 187, i32 38}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/mmio.c", i32 226, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mt7615_mmio_probe.__UNIQUE_ID_ddebug392, !7, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!12 = !{ptr @__initcall__kmod_mt7615e__393_289_mt7615_init6, !13, !"__initcall__kmod_mt7615e__393_289_mt7615_init6", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/mmio.c", i32 289, i32 1}
!14 = !{ptr @__exitcall_mt7615_exit, !15, !"__exitcall_mt7615_exit", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/mmio.c", i32 290, i32 1}
!16 = !{ptr @__UNIQUE_ID_file394, !17, !"__UNIQUE_ID_file394", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/mmio.c", i32 291, i32 1}
!18 = !{ptr @__UNIQUE_ID_license395, !17, !"__UNIQUE_ID_license395", i1 false, i1 false}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/../trace.h", i32 59, i32 1}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{!"sp"}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i64 2148696859, i64 2148696864, i64 2148696877, i64 2148696921, i64 2148696955, i64 2148696976}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{i64 2158417269}
!40 = !{i64 2158417474}
!41 = !{i64 2149370072}
!42 = !{i64 2149371108}
