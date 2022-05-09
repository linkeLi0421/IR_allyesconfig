; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt7615/dma.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt7615/dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.mt76_queue_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@mt7615_wait_pdma_busy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 116, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PDMA engine busy\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt7615_wait_pdma_busy\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/wireless/mediatek/mt76/mt7615/dma.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt7615_wait_pdma_busy._entry_ptr = internal global ptr @mt7615_wait_pdma_busy._entry, section ".printk_index", align 4
@mt7615_wait_pdma_busy._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 125, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PDMA engine tx busy\0A\00", [43 x i8] zeroinitializer }, align 32
@mt7615_wait_pdma_busy._entry_ptr.7 = internal global ptr @mt7615_wait_pdma_busy._entry.5, section ".printk_index", align 4
@mt7615_wait_pdma_busy._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 131, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PSE engine busy\0A\00", [47 x i8] zeroinitializer }, align 32
@mt7615_wait_pdma_busy._entry_ptr.10 = internal global ptr @mt7615_wait_pdma_busy._entry.8, section ".printk_index", align 4
@mt7615_wait_pdma_busy._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 137, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mt7615_wait_pdma_busy._entry_ptr.12 = internal global ptr @mt7615_wait_pdma_busy._entry.11, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 116, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 125, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 131, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private constant [51 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7615/dma.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 137, i32 3 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @mt7615_wait_pdma_busy._entry, ptr @mt7615_wait_pdma_busy._entry.11, ptr @mt7615_wait_pdma_busy._entry.5, ptr @mt7615_wait_pdma_busy._entry.8, ptr @mt7615_wait_pdma_busy._entry_ptr, ptr @mt7615_wait_pdma_busy._entry_ptr.10, ptr @mt7615_wait_pdma_busy._entry_ptr.12, ptr @mt7615_wait_pdma_busy._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7615_wait_pdma_busy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7615_wait_pdma_busy._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7615_wait_pdma_busy._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7615_wait_pdma_busy._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7615_wait_pdma_busy(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rev.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 39
  %0 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rev.i.i, align 4
  %shr.i.mask.i = and i32 %1, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1986199552, i32 %shr.i.mask.i)
  %cmp.i = icmp eq i32 %shr.i.mask.i, 1986199552
  br i1 %cmp.i, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @mt7615_reg_map(ptr noundef %dev, i32 noundef -2113927932) #3
  %call2 = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef %call1, i32 noundef 3, i32 noundef 0, i32 noundef 1000) #3
  br i1 %call2, label %if.then.cleanup34_crit_edge, label %if.then.cleanup34.sink.split_crit_edge

if.then.cleanup34.sink.split_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup34.sink.split

if.then.cleanup34_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup34

if.end6:                                          ; preds = %entry
  %reg_map = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 9
  %2 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_map, align 8
  %arrayidx = getelementptr i32, ptr %3, i32 5
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, 360
  %call7 = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef %add, i32 noundef 4, i32 noundef 0, i32 noundef 1000) #3
  br i1 %call7, label %if.end13, label %if.end6.cleanup34.sink.split_crit_edge

if.end6.cleanup34.sink.split_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup34.sink.split

if.end13:                                         ; preds = %if.end6
  %6 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_map, align 8
  %arrayidx15 = getelementptr i32, ptr %7, i32 8
  %8 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx15, align 4
  %add16 = add i32 %9, 404
  %call17 = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef %add16, i32 noundef 268369920, i32 noundef 0, i32 noundef 1000) #3
  br i1 %call17, label %if.end23, label %if.end13.cleanup34.sink.split_crit_edge

if.end13.cleanup34.sink.split_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup34.sink.split

if.end23:                                         ; preds = %if.end13
  %10 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_map, align 8
  %arrayidx25 = getelementptr i32, ptr %11, i32 5
  %12 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx25, align 4
  %add26 = add i32 %13, 360
  %call27 = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef %add26, i32 noundef -2147483648, i32 noundef 0, i32 noundef 1000) #3
  br i1 %call27, label %if.end23.cleanup34_crit_edge, label %if.end23.cleanup34.sink.split_crit_edge

if.end23.cleanup34.sink.split_crit_edge:          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup34.sink.split

if.end23.cleanup34_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup34

cleanup34.sink.split:                             ; preds = %if.end23.cleanup34.sink.split_crit_edge, %if.end13.cleanup34.sink.split_crit_edge, %if.end6.cleanup34.sink.split_crit_edge, %if.then.cleanup34.sink.split_crit_edge
  %.str.sink = phi ptr [ @.str, %if.then.cleanup34.sink.split_crit_edge ], [ @.str.6, %if.end6.cleanup34.sink.split_crit_edge ], [ @.str.9, %if.end13.cleanup34.sink.split_crit_edge ], [ @.str, %if.end23.cleanup34.sink.split_crit_edge ]
  %dev4 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %14 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull %.str.sink) #6
  br label %cleanup34

cleanup34:                                        ; preds = %cleanup34.sink.split, %if.end23.cleanup34_crit_edge, %if.then.cleanup34_crit_edge
  %retval.1 = phi i32 [ 0, %if.then.cleanup34_crit_edge ], [ 0, %if.end23.cleanup34_crit_edge ], [ -5, %cleanup34.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_reg_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mt76_poll_msec(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7615_dma_start(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmw, align 4
  %reg_map = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 9
  %4 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_map, align 8
  %arrayidx = getelementptr i32, ptr %5, i32 5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, 520
  %call = tail call i32 %3(ptr noundef %dev, i32 noundef %add, i32 noundef 0, i32 noundef 69) #3
  %rev.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 39
  %8 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rev.i.i, align 4
  %shr.i.mask.i = and i32 %9, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1981939712, i32 %shr.i.mask.i)
  %cmp.i = icmp eq i32 %shr.i.mask.i, 1981939712
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call.i = tail call i32 @mt7615_reg_map(ptr noundef %dev, i32 noundef 1342218240) #3
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus, align 4
  %rmw.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmw.i, align 4
  %add.i = add i32 %call.i, 28
  %call29.i = tail call i32 %13(ptr noundef %dev, i32 noundef %add.i, i32 noundef 268374015, i32 noundef 524289) #3
  %add31.i = add i32 %call.i, 32
  %14 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus, align 4
  %wr.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wr.i, align 4
  tail call void %17(ptr noundef %dev, i32 noundef %add31.i, i32 noundef 134217744) #3
  %18 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus, align 4
  %wr.1.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %wr.1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wr.1.i, align 4
  %add32.1.i = add i32 %call.i, 36
  tail call void %21(ptr noundef %dev, i32 noundef %add32.1.i, i32 noundef 134217744) #3
  %22 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus, align 4
  %wr.2.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %wr.2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wr.2.i, align 4
  %add32.2.i = add i32 %call.i, 40
  tail call void %25(ptr noundef %dev, i32 noundef %add32.2.i, i32 noundef 134217744) #3
  %26 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus, align 4
  %wr.3.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %wr.3.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wr.3.i, align 4
  %add32.3.i = add i32 %call.i, 44
  tail call void %29(ptr noundef %dev, i32 noundef %add32.3.i, i32 noundef 134217744) #3
  %30 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus, align 4
  %wr.4.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %wr.4.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wr.4.i, align 4
  %add32.4.i = add i32 %call.i, 48
  tail call void %33(ptr noundef %dev, i32 noundef %add32.4.i, i32 noundef 134217744) #3
  %34 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus, align 4
  %wr.5.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %wr.5.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wr.5.i, align 4
  %add32.5.i = add i32 %call.i, 52
  tail call void %37(ptr noundef %dev, i32 noundef %add32.5.i, i32 noundef 134217744) #3
  %38 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bus, align 4
  %wr67.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %wr67.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wr67.i, align 4
  %add68.i = add i32 %call.i, 208
  tail call void %41(ptr noundef %dev, i32 noundef %add68.i, i32 noundef 1108361744) #3
  %42 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bus, align 4
  %wr70.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %wr70.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %wr70.i, align 4
  %add71.i = add i32 %call.i, 212
  tail call void %45(ptr noundef %dev, i32 noundef %add71.i, i32 noundef 1108361744) #3
  %46 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bus, align 4
  %wr73.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %wr73.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %wr73.i, align 4
  %add74.i = add i32 %call.i, 216
  tail call void %49(ptr noundef %dev, i32 noundef %add74.i, i32 noundef 5) #3
  %50 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bus, align 4
  %wr76.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %wr76.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %wr76.i, align 4
  %add77.i = add i32 %call.i, 220
  tail call void %53(ptr noundef %dev, i32 noundef %add77.i, i32 noundef 0) #3
  %54 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bus, align 4
  %wr79.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %wr79.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %wr79.i, align 4
  %add80.i = add i32 %call.i, 176
  tail call void %57(ptr noundef %dev, i32 noundef %add80.i, i32 noundef 1611805791) #3
  %58 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bus, align 4
  %wr82.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %wr82.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %wr82.i, align 4
  %add83.i = add i32 %call.i, 180
  tail call void %61(ptr noundef %dev, i32 noundef %add83.i, i32 noundef -305419897) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %62 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rev.i.i, align 4
  %shr.i.mask.i19 = and i32 %63, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1986199552, i32 %shr.i.mask.i19)
  %cmp.i20 = icmp eq i32 %shr.i.mask.i19, 1986199552
  br i1 %cmp.i20, label %if.then3, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %64 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bus, align 4
  %rmw.i22 = getelementptr inbounds %struct.mt76_bus_ops, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %rmw.i22 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rmw.i22, align 4
  %68 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %reg_map, align 8
  %arrayidx.i = getelementptr i32, ptr %69, i32 2
  %70 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.i, align 4
  %add.i23 = add i32 %71, 28
  %call.i24 = tail call i32 %67(ptr noundef %dev, i32 noundef %add.i23, i32 noundef 268374015, i32 noundef 524289) #3
  %72 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bus, align 4
  %wr.i25 = getelementptr inbounds %struct.mt76_bus_ops, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %wr.i25 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %wr.i25, align 4
  %76 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %reg_map, align 8
  %arrayidx31.i = getelementptr i32, ptr %77, i32 2
  %78 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx31.i, align 4
  %add32.i = add i32 %79, 16
  tail call void %75(ptr noundef %dev, i32 noundef %add32.i, i32 noundef -3670016) #3
  %80 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bus, align 4
  %wr34.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %wr34.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %wr34.i, align 4
  %84 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %reg_map, align 8
  %arrayidx36.i = getelementptr i32, ptr %85, i32 2
  %86 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx36.i, align 4
  %add37.i = add i32 %87, 8
  tail call void %83(ptr noundef %dev, i32 noundef %add37.i, i32 noundef 1879474231) #3
  %88 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bus, align 4
  %wr39.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %wr39.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %wr39.i, align 4
  %92 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %reg_map, align 8
  %arrayidx41.i = getelementptr i32, ptr %93, i32 2
  %94 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx41.i, align 4
  %add43.i = add i32 %95, 32
  tail call void %91(ptr noundef %dev, i32 noundef %add43.i, i32 noundef 134217792) #3
  %96 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %bus, align 4
  %wr39.1.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %wr39.1.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %wr39.1.i, align 4
  %100 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %reg_map, align 8
  %arrayidx41.1.i = getelementptr i32, ptr %101, i32 2
  %102 = ptrtoint ptr %arrayidx41.1.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx41.1.i, align 4
  %add43.1.i = add i32 %103, 36
  tail call void %99(ptr noundef %dev, i32 noundef %add43.1.i, i32 noundef 134217792) #3
  %104 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %bus, align 4
  %wr39.2.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %wr39.2.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %wr39.2.i, align 4
  %108 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %reg_map, align 8
  %arrayidx41.2.i = getelementptr i32, ptr %109, i32 2
  %110 = ptrtoint ptr %arrayidx41.2.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx41.2.i, align 4
  %add43.2.i = add i32 %111, 40
  tail call void %107(ptr noundef %dev, i32 noundef %add43.2.i, i32 noundef 134217792) #3
  %112 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %bus, align 4
  %wr39.3.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %wr39.3.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %wr39.3.i, align 4
  %116 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %reg_map, align 8
  %arrayidx41.3.i = getelementptr i32, ptr %117, i32 2
  %118 = ptrtoint ptr %arrayidx41.3.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx41.3.i, align 4
  %add43.3.i = add i32 %119, 44
  tail call void %115(ptr noundef %dev, i32 noundef %add43.3.i, i32 noundef 134217792) #3
  %120 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %bus, align 4
  %wr39.4.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %wr39.4.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %wr39.4.i, align 4
  %124 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %reg_map, align 8
  %arrayidx41.4.i = getelementptr i32, ptr %125, i32 2
  %126 = ptrtoint ptr %arrayidx41.4.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx41.4.i, align 4
  %add43.4.i = add i32 %127, 48
  tail call void %123(ptr noundef %dev, i32 noundef %add43.4.i, i32 noundef 134217792) #3
  %128 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %bus, align 4
  %wr78.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %wr78.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %wr78.i, align 4
  %132 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %reg_map, align 8
  %arrayidx80.i = getelementptr i32, ptr %133, i32 2
  %134 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx80.i, align 4
  %add81.i = add i32 %135, 52
  tail call void %131(ptr noundef %dev, i32 noundef %add81.i, i32 noundef 4194368) #3
  %136 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %bus, align 4
  %wr116.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %wr116.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %wr116.i, align 4
  %140 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %reg_map, align 8
  %arrayidx118.i = getelementptr i32, ptr %141, i32 2
  %142 = ptrtoint ptr %arrayidx118.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx118.i, align 4
  %add119.i = add i32 %143, 92
  tail call void %139(ptr noundef %dev, i32 noundef %add119.i, i32 noundef 2097184) #3
  %144 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %bus, align 4
  %wr154.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %wr154.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %wr154.i, align 4
  %148 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %reg_map, align 8
  %arrayidx156.i = getelementptr i32, ptr %149, i32 2
  %150 = ptrtoint ptr %arrayidx156.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx156.i, align 4
  %add157.i = add i32 %151, 208
  tail call void %147(ptr noundef %dev, i32 noundef %add157.i, i32 noundef 1108361744) #3
  %152 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %bus, align 4
  %wr159.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %wr159.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %wr159.i, align 4
  %156 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %reg_map, align 8
  %arrayidx161.i = getelementptr i32, ptr %157, i32 2
  %158 = ptrtoint ptr %arrayidx161.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx161.i, align 4
  %add162.i = add i32 %159, 212
  tail call void %155(ptr noundef %dev, i32 noundef %add162.i, i32 noundef 1108361744) #3
  %160 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %bus, align 4
  %wr164.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %161, i32 0, i32 1
  %162 = ptrtoint ptr %wr164.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %wr164.i, align 4
  %164 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %reg_map, align 8
  %arrayidx166.i = getelementptr i32, ptr %165, i32 2
  %166 = ptrtoint ptr %arrayidx166.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx166.i, align 4
  %add167.i = add i32 %167, 216
  tail call void %163(ptr noundef %dev, i32 noundef %add167.i, i32 noundef 327685) #3
  %168 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %bus, align 4
  %wr169.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %169, i32 0, i32 1
  %170 = ptrtoint ptr %wr169.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %wr169.i, align 4
  %172 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %reg_map, align 8
  %arrayidx171.i = getelementptr i32, ptr %173, i32 2
  %174 = ptrtoint ptr %arrayidx171.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx171.i, align 4
  %add172.i = add i32 %175, 220
  tail call void %171(ptr noundef %dev, i32 noundef %add172.i, i32 noundef 0) #3
  %176 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %bus, align 4
  %wr174.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %177, i32 0, i32 1
  %178 = ptrtoint ptr %wr174.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %wr174.i, align 4
  %180 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %reg_map, align 8
  %arrayidx176.i = getelementptr i32, ptr %181, i32 2
  %182 = ptrtoint ptr %arrayidx176.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx176.i, align 4
  %add177.i = add i32 %183, 176
  tail call void %179(ptr noundef %dev, i32 noundef %add177.i, i32 noundef 1611805791) #3
  %184 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %bus, align 4
  %wr179.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %185, i32 0, i32 1
  %186 = ptrtoint ptr %wr179.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %wr179.i, align 4
  %188 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %reg_map, align 8
  %arrayidx181.i = getelementptr i32, ptr %189, i32 2
  %190 = ptrtoint ptr %arrayidx181.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %arrayidx181.i, align 4
  %add182.i = add i32 %191, 180
  tail call void %187(ptr noundef %dev, i32 noundef %add182.i, i32 noundef -305419897) #3
  %192 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %193, i32 0, i32 1
  %194 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %wr, align 4
  %196 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %reg_map, align 8
  %arrayidx6 = getelementptr i32, ptr %197, i32 5
  %198 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx6, align 4
  %add7 = add i32 %199, 500
  tail call void %195(ptr noundef %dev, i32 noundef %add7, i32 noundef 60) #3
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7615_dma_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mt76_dma_attach(ptr noundef %dev) #3
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wr, align 4
  %reg_map = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 9
  %4 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_map, align 8
  %arrayidx = getelementptr i32, ptr %5, i32 5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, 520
  tail call void %3(ptr noundef %dev, i32 noundef %add, i32 noundef 268439616) #3
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmw, align 4
  %12 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_map, align 8
  %arrayidx3 = getelementptr i32, ptr %13, i32 5
  %14 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx3, align 4
  %add4 = add i32 %15, 520
  %call = tail call i32 %11(ptr noundef %dev, i32 noundef %add4, i32 noundef 512, i32 noundef 512) #3
  %16 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus, align 4
  %rmw18 = getelementptr inbounds %struct.mt76_bus_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %rmw18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmw18, align 4
  %20 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_map, align 8
  %arrayidx20 = getelementptr i32, ptr %21, i32 5
  %22 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx20, align 4
  %add21 = add i32 %23, 520
  %call38 = tail call i32 %19(ptr noundef %dev, i32 noundef %add21, i32 noundef 12582912, i32 noundef 4194304) #3
  %24 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus, align 4
  %rmw40 = getelementptr inbounds %struct.mt76_bus_ops, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %rmw40 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmw40, align 4
  %28 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_map, align 8
  %arrayidx42 = getelementptr i32, ptr %29, i32 5
  %30 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx42, align 4
  %add43 = add i32 %31, 520
  %call60 = tail call i32 %27(ptr noundef %dev, i32 noundef %add43, i32 noundef 48, i32 noundef 48) #3
  %32 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus, align 4
  %rmw62 = getelementptr inbounds %struct.mt76_bus_ops, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %rmw62 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmw62, align 4
  %36 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_map, align 8
  %arrayidx64 = getelementptr i32, ptr %37, i32 5
  %38 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx64, align 4
  %add65 = add i32 %39, 520
  %call82 = tail call i32 %35(ptr noundef %dev, i32 noundef %add65, i32 noundef 3072, i32 noundef 3072) #3
  %rev.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 39
  %40 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rev.i.i, align 4
  %42 = and i32 %41, -327680
  call void @__sanitizer_cov_trace_const_cmp4(i32 1980825600, i32 %42)
  %43 = icmp eq i32 %42, 1980825600
  br i1 %43, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %44 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bus, align 4
  %rmw85 = getelementptr inbounds %struct.mt76_bus_ops, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %rmw85 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rmw85, align 4
  %48 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_map, align 8
  %arrayidx87 = getelementptr i32, ptr %49, i32 5
  %50 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx87, align 4
  %add88 = add i32 %51, 520
  %call89 = tail call i32 %47(ptr noundef %dev, i32 noundef %add88, i32 noundef 0, i32 noundef 67108864) #3
  %52 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bus, align 4
  %wr91 = getelementptr inbounds %struct.mt76_bus_ops, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %wr91 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %wr91, align 4
  %56 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg_map, align 8
  %arrayidx93 = getelementptr i32, ptr %57, i32 5
  %58 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx93, align 4
  %add94 = add i32 %59, 1280
  tail call void %55(ptr noundef %dev, i32 noundef %add94, i32 noundef 1) #3
  %60 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bus, align 4
  %wr96 = getelementptr inbounds %struct.mt76_bus_ops, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %wr96 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %wr96, align 4
  %64 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reg_map, align 8
  %arrayidx98 = getelementptr i32, ptr %65, i32 5
  %66 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx98, align 4
  %add99 = add i32 %67, 1296
  tail call void %63(ptr noundef %dev, i32 noundef %add99, i32 noundef 983040) #3
  %68 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bus, align 4
  %wr101 = getelementptr inbounds %struct.mt76_bus_ops, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %wr101 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %wr101, align 4
  %72 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %reg_map, align 8
  %arrayidx103 = getelementptr i32, ptr %73, i32 5
  %74 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx103, align 4
  %add104 = add i32 %75, 1312
  tail call void %71(ptr noundef %dev, i32 noundef %add104, i32 noundef 259981312) #3
  %76 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bus, align 4
  %wr106 = getelementptr inbounds %struct.mt76_bus_ops, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %wr106 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %wr106, align 4
  %80 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %reg_map, align 8
  %arrayidx108 = getelementptr i32, ptr %81, i32 5
  %82 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx108, align 4
  %add109 = add i32 %83, 1328
  tail call void %79(ptr noundef %dev, i32 noundef %add109, i32 noundef 67108902) #3
  %84 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bus, align 4
  %wr111 = getelementptr inbounds %struct.mt76_bus_ops, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %wr111 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %wr111, align 4
  %88 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %reg_map, align 8
  %arrayidx113 = getelementptr i32, ptr %89, i32 5
  %90 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx113, align 4
  %add114 = add i32 %91, 1332
  tail call void %87(ptr noundef %dev, i32 noundef %add114, i32 noundef 411113601) #3
  %92 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %bus, align 4
  %rmw116 = getelementptr inbounds %struct.mt76_bus_ops, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %rmw116 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rmw116, align 4
  %call117 = tail call i32 %95(ptr noundef %dev, i32 noundef 29016, i32 noundef 0, i32 noundef 65536) #3
  %96 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %bus, align 4
  %rmw119 = getelementptr inbounds %struct.mt76_bus_ops, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %rmw119 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %rmw119, align 4
  %call120 = tail call i32 %99(ptr noundef %dev, i32 noundef 28672, i32 noundef 8388608, i32 noundef 0) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %100 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %bus, align 4
  %wr122 = getelementptr inbounds %struct.mt76_bus_ops, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %wr122 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %wr122, align 4
  %104 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %reg_map, align 8
  %arrayidx124 = getelementptr i32, ptr %105, i32 5
  %106 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx124, align 4
  %add125 = add i32 %107, 524
  tail call void %103(ptr noundef %dev, i32 noundef %add125, i32 noundef -1) #3
  %108 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %reg_map, align 8
  %arrayidx.i = getelementptr i32, ptr %109, i32 5
  %110 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %111, 768
  %call.i.i = tail call ptr @mt76_init_queue(ptr noundef %dev, i32 noundef 2, i32 noundef 3, i32 noundef 128, i32 noundef %add.i) #3
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end.mt7615_init_tx_queues.exit_crit_edge, label %mt76_init_mcu_queue.exit.thread.i

if.end.mt7615_init_tx_queues.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %mt7615_init_tx_queues.exit

mt76_init_mcu_queue.exit.thread.i:                ; preds = %if.end
  %qid3.i.i = getelementptr inbounds %struct.mt76_queue, ptr %call.i.i, i32 0, i32 15
  %112 = ptrtoint ptr %qid3.i.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 9, ptr %qid3.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 22, i32 2
  %113 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call.i.i, ptr %arrayidx.i.i, align 4
  %114 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %rev.i.i, align 4
  %116 = and i32 %115, -327680
  call void @__sanitizer_cov_trace_const_cmp4(i32 1980825600, i32 %116)
  %117 = icmp eq i32 %116, 1980825600
  br i1 %117, label %if.end4.i, label %if.then2.i

if.then2.i:                                       ; preds = %mt76_init_mcu_queue.exit.thread.i
  %dev.i.i.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 1
  %118 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %reg_map, align 8
  %arrayidx1.i.i = getelementptr i32, ptr %119, i32 5
  %120 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i = add i32 %121, 768
  %122 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev.i.i.i, align 4
  %call.i.i.i = tail call ptr @mt76_init_queue(ptr noundef %123, i32 noundef 0, i32 noundef 4, i32 noundef 512, i32 noundef %add.i.i) #3
  %cmp.i.i.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %if.then2.i.mt7615_init_tx_queues.exit_crit_edge, label %mt76_init_tx_queue.exit.thread.i.i

if.then2.i.mt7615_init_tx_queues.exit_crit_edge:  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mt7615_init_tx_queues.exit

mt76_init_tx_queue.exit.thread.i.i:               ; preds = %if.then2.i
  %qid3.i.i.i = getelementptr inbounds %struct.mt76_queue, ptr %call.i.i.i, i32 0, i32 15
  %124 = ptrtoint ptr %qid3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 0, ptr %qid3.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 0
  %125 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call.i.i.i, ptr %arrayidx.i.i.i, align 4
  %126 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %reg_map, align 8
  %arrayidx1.1.i.i = getelementptr i32, ptr %127, i32 5
  %128 = ptrtoint ptr %arrayidx1.1.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx1.1.i.i, align 4
  %add.1.i.i = add i32 %129, 768
  %130 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev.i.i.i, align 4
  %call.i.1.i.i = tail call ptr @mt76_init_queue(ptr noundef %131, i32 noundef 1, i32 noundef 2, i32 noundef 512, i32 noundef %add.1.i.i) #3
  %cmp.i.i.1.i.i = icmp ugt ptr %call.i.1.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.1.i.i, label %mt76_init_tx_queue.exit.thread.i.i.mt7615_init_tx_queues.exit_crit_edge, label %mt76_init_tx_queue.exit.thread.1.i.i

mt76_init_tx_queue.exit.thread.i.i.mt7615_init_tx_queues.exit_crit_edge: ; preds = %mt76_init_tx_queue.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mt7615_init_tx_queues.exit

mt76_init_tx_queue.exit.thread.1.i.i:             ; preds = %mt76_init_tx_queue.exit.thread.i.i
  %qid3.i.1.i.i = getelementptr inbounds %struct.mt76_queue, ptr %call.i.1.i.i, i32 0, i32 15
  %132 = ptrtoint ptr %qid3.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 1, ptr %qid3.i.1.i.i, align 4
  %arrayidx.i.1.i.i = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 1
  %133 = ptrtoint ptr %arrayidx.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call.i.1.i.i, ptr %arrayidx.i.1.i.i, align 4
  %134 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %reg_map, align 8
  %arrayidx1.2.i.i = getelementptr i32, ptr %135, i32 5
  %136 = ptrtoint ptr %arrayidx1.2.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx1.2.i.i, align 4
  %add.2.i.i = add i32 %137, 768
  %138 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev.i.i.i, align 4
  %call.i.2.i.i = tail call ptr @mt76_init_queue(ptr noundef %139, i32 noundef 2, i32 noundef 1, i32 noundef 512, i32 noundef %add.2.i.i) #3
  %cmp.i.i.2.i.i = icmp ugt ptr %call.i.2.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.2.i.i, label %mt76_init_tx_queue.exit.thread.1.i.i.mt7615_init_tx_queues.exit_crit_edge, label %mt76_init_tx_queue.exit.thread.2.i.i

mt76_init_tx_queue.exit.thread.1.i.i.mt7615_init_tx_queues.exit_crit_edge: ; preds = %mt76_init_tx_queue.exit.thread.1.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mt7615_init_tx_queues.exit

mt76_init_tx_queue.exit.thread.2.i.i:             ; preds = %mt76_init_tx_queue.exit.thread.1.i.i
  %qid3.i.2.i.i = getelementptr inbounds %struct.mt76_queue, ptr %call.i.2.i.i, i32 0, i32 15
  %140 = ptrtoint ptr %qid3.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 2, ptr %qid3.i.2.i.i, align 4
  %arrayidx.i.2.i.i = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 2
  %141 = ptrtoint ptr %arrayidx.i.2.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %call.i.2.i.i, ptr %arrayidx.i.2.i.i, align 4
  %142 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %reg_map, align 8
  %arrayidx1.3.i.i = getelementptr i32, ptr %143, i32 5
  %144 = ptrtoint ptr %arrayidx1.3.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx1.3.i.i, align 4
  %add.3.i.i = add i32 %145, 768
  %146 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev.i.i.i, align 4
  %call.i.3.i.i = tail call ptr @mt76_init_queue(ptr noundef %147, i32 noundef 3, i32 noundef 0, i32 noundef 512, i32 noundef %add.3.i.i) #3
  %cmp.i.i.3.i.i = icmp ugt ptr %call.i.3.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.3.i.i, label %mt76_init_tx_queue.exit.thread.2.i.i.mt7615_init_tx_queues.exit_crit_edge, label %mt76_init_tx_queue.exit.thread.3.i.i

mt76_init_tx_queue.exit.thread.2.i.i.mt7615_init_tx_queues.exit_crit_edge: ; preds = %mt76_init_tx_queue.exit.thread.2.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mt7615_init_tx_queues.exit

mt76_init_tx_queue.exit.thread.3.i.i:             ; preds = %mt76_init_tx_queue.exit.thread.2.i.i
  %qid3.i.3.i.i = getelementptr inbounds %struct.mt76_queue, ptr %call.i.3.i.i, i32 0, i32 15
  %148 = ptrtoint ptr %qid3.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 3, ptr %qid3.i.3.i.i, align 4
  %arrayidx.i.3.i.i = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 3
  %149 = ptrtoint ptr %arrayidx.i.3.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %call.i.3.i.i, ptr %arrayidx.i.3.i.i, align 4
  %150 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %reg_map, align 8
  %arrayidx3.i.i = getelementptr i32, ptr %151, i32 5
  %152 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx3.i.i, align 4
  %add4.i.i = add i32 %153, 768
  %154 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dev.i.i.i, align 4
  %call.i26.i.i = tail call ptr @mt76_init_queue(ptr noundef %155, i32 noundef 4, i32 noundef 5, i32 noundef 128, i32 noundef %add4.i.i) #3
  %cmp.i.i27.i.i = icmp ugt ptr %call.i26.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i27.i.i, label %mt76_init_tx_queue.exit.thread.3.i.i.mt7615_init_tx_queues.exit_crit_edge, label %mt76_init_tx_queue.exit33.thread.i.i

mt76_init_tx_queue.exit.thread.3.i.i.mt7615_init_tx_queues.exit_crit_edge: ; preds = %mt76_init_tx_queue.exit.thread.3.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mt7615_init_tx_queues.exit

mt76_init_tx_queue.exit33.thread.i.i:             ; preds = %mt76_init_tx_queue.exit.thread.3.i.i
  %qid3.i29.i.i = getelementptr inbounds %struct.mt76_queue, ptr %call.i26.i.i, i32 0, i32 15
  %156 = ptrtoint ptr %qid3.i29.i.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 4, ptr %qid3.i29.i.i, align 4
  %arrayidx.i30.i.i = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 4
  %157 = ptrtoint ptr %arrayidx.i30.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %call.i26.i.i, ptr %arrayidx.i30.i.i, align 4
  %158 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %reg_map, align 8
  %arrayidx10.i.i = getelementptr i32, ptr %159, i32 5
  %160 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx10.i.i, align 4
  %add11.i.i = add i32 %161, 768
  %call.i34.i.i = tail call ptr @mt76_init_queue(ptr noundef %dev, i32 noundef 0, i32 noundef 15, i32 noundef 128, i32 noundef %add11.i.i) #3
  %cmp.i.i35.i.i = icmp ugt ptr %call.i34.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i35.i.i, label %mt76_init_tx_queue.exit33.thread.i.i.mt7615_init_tx_queues.exit_crit_edge, label %mt76_init_tx_queue.exit33.thread.i.i.if.end128.sink.split_crit_edge

mt76_init_tx_queue.exit33.thread.i.i.if.end128.sink.split_crit_edge: ; preds = %mt76_init_tx_queue.exit33.thread.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end128.sink.split

mt76_init_tx_queue.exit33.thread.i.i.mt7615_init_tx_queues.exit_crit_edge: ; preds = %mt76_init_tx_queue.exit33.thread.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mt7615_init_tx_queues.exit

if.end4.i:                                        ; preds = %mt76_init_mcu_queue.exit.thread.i
  %162 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %reg_map, align 8
  %arrayidx6.i = getelementptr i32, ptr %163, i32 5
  %164 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx6.i, align 4
  %add7.i = add i32 %165, 768
  %dev.i.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 1
  %166 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %dev.i.i, align 4
  %call.i35.i = tail call ptr @mt76_init_queue(ptr noundef %167, i32 noundef 0, i32 noundef 0, i32 noundef 1024, i32 noundef %add7.i) #3
  %cmp.i.i36.i = icmp ugt ptr %call.i35.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i36.i, label %if.end4.i.mt7615_init_tx_queues.exit_crit_edge, label %mt76_init_tx_queue.exit.thread.i

if.end4.i.mt7615_init_tx_queues.exit_crit_edge:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mt7615_init_tx_queues.exit

mt76_init_tx_queue.exit.thread.i:                 ; preds = %if.end4.i
  %qid3.i38.i = getelementptr inbounds %struct.mt76_queue, ptr %call.i35.i, i32 0, i32 15
  %168 = ptrtoint ptr %qid3.i38.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 0, ptr %qid3.i38.i, align 4
  %arrayidx.i39.i = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 0
  %169 = ptrtoint ptr %arrayidx.i39.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %call.i35.i, ptr %arrayidx.i39.i, align 4
  %arrayidx14.i = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 1
  %170 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %call.i35.i, ptr %arrayidx14.i, align 4
  %arrayidx14.1.i = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 2
  %171 = ptrtoint ptr %arrayidx14.1.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %call.i35.i, ptr %arrayidx14.1.i, align 4
  %arrayidx14.2.i = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 3
  %172 = ptrtoint ptr %arrayidx14.2.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %call.i35.i, ptr %arrayidx14.2.i, align 4
  %arrayidx14.3.i = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 4
  %173 = ptrtoint ptr %arrayidx14.3.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %call.i35.i, ptr %arrayidx14.3.i, align 4
  %174 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %reg_map, align 8
  %arrayidx16.i = getelementptr i32, ptr %175, i32 5
  %176 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx16.i, align 4
  %add17.i = add i32 %177, 768
  %call.i42.i = tail call ptr @mt76_init_queue(ptr noundef %dev, i32 noundef 0, i32 noundef 2, i32 noundef 128, i32 noundef %add17.i) #3
  %cmp.i.i43.i = icmp ugt ptr %call.i42.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i43.i, label %mt76_init_tx_queue.exit.thread.i.mt7615_init_tx_queues.exit_crit_edge, label %mt76_init_tx_queue.exit.thread.i.if.end128.sink.split_crit_edge

mt76_init_tx_queue.exit.thread.i.if.end128.sink.split_crit_edge: ; preds = %mt76_init_tx_queue.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end128.sink.split

mt76_init_tx_queue.exit.thread.i.mt7615_init_tx_queues.exit_crit_edge: ; preds = %mt76_init_tx_queue.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mt7615_init_tx_queues.exit

mt7615_init_tx_queues.exit:                       ; preds = %mt76_init_tx_queue.exit.thread.i.mt7615_init_tx_queues.exit_crit_edge, %if.end4.i.mt7615_init_tx_queues.exit_crit_edge, %mt76_init_tx_queue.exit33.thread.i.i.mt7615_init_tx_queues.exit_crit_edge, %mt76_init_tx_queue.exit.thread.3.i.i.mt7615_init_tx_queues.exit_crit_edge, %mt76_init_tx_queue.exit.thread.2.i.i.mt7615_init_tx_queues.exit_crit_edge, %mt76_init_tx_queue.exit.thread.1.i.i.mt7615_init_tx_queues.exit_crit_edge, %mt76_init_tx_queue.exit.thread.i.i.mt7615_init_tx_queues.exit_crit_edge, %if.then2.i.mt7615_init_tx_queues.exit_crit_edge, %if.end.mt7615_init_tx_queues.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call.i.i, %if.end.mt7615_init_tx_queues.exit_crit_edge ], [ %call.i.i.i, %if.then2.i.mt7615_init_tx_queues.exit_crit_edge ], [ %call.i.1.i.i, %mt76_init_tx_queue.exit.thread.i.i.mt7615_init_tx_queues.exit_crit_edge ], [ %call.i.2.i.i, %mt76_init_tx_queue.exit.thread.1.i.i.mt7615_init_tx_queues.exit_crit_edge ], [ %call.i.3.i.i, %mt76_init_tx_queue.exit.thread.2.i.i.mt7615_init_tx_queues.exit_crit_edge ], [ %call.i26.i.i, %mt76_init_tx_queue.exit.thread.3.i.i.mt7615_init_tx_queues.exit_crit_edge ], [ %call.i34.i.i, %mt76_init_tx_queue.exit33.thread.i.i.mt7615_init_tx_queues.exit_crit_edge ], [ %call.i35.i, %if.end4.i.mt7615_init_tx_queues.exit_crit_edge ], [ %call.i42.i, %mt76_init_tx_queue.exit.thread.i.mt7615_init_tx_queues.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %tobool.not = icmp eq ptr %retval.0.i.in, null
  br i1 %tobool.not, label %mt7615_init_tx_queues.exit.if.end128_crit_edge, label %mt7615_init_tx_queues.exit.cleanup_crit_edge

mt7615_init_tx_queues.exit.cleanup_crit_edge:     ; preds = %mt7615_init_tx_queues.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

mt7615_init_tx_queues.exit.if.end128_crit_edge:   ; preds = %mt7615_init_tx_queues.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end128

if.end128.sink.split:                             ; preds = %mt76_init_tx_queue.exit.thread.i.if.end128.sink.split_crit_edge, %mt76_init_tx_queue.exit33.thread.i.i.if.end128.sink.split_crit_edge
  %call.i42.i.sink253 = phi ptr [ %call.i34.i.i, %mt76_init_tx_queue.exit33.thread.i.i.if.end128.sink.split_crit_edge ], [ %call.i42.i, %mt76_init_tx_queue.exit.thread.i.if.end128.sink.split_crit_edge ]
  %qid3.i45.i = getelementptr inbounds %struct.mt76_queue, ptr %call.i42.i.sink253, i32 0, i32 15
  %178 = ptrtoint ptr %qid3.i45.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 7, ptr %qid3.i45.i, align 4
  %arrayidx.i46.i = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 22, i32 0
  %179 = ptrtoint ptr %arrayidx.i46.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %call.i42.i.sink253, ptr %arrayidx.i46.i, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.end128.sink.split, %mt7615_init_tx_queues.exit.if.end128_crit_edge
  %queue_ops = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 24
  %180 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %queue_ops, align 4
  %alloc = getelementptr inbounds %struct.mt76_queue_ops, ptr %181, i32 0, i32 1
  %182 = ptrtoint ptr %alloc to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %alloc, align 4
  %arrayidx129 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 1
  %184 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %reg_map, align 8
  %arrayidx131 = getelementptr i32, ptr %185, i32 5
  %186 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx131, align 4
  %add132 = add i32 %187, 1024
  %call133 = tail call i32 %183(ptr noundef %dev, ptr noundef %arrayidx129, i32 noundef 1, i32 noundef 512, i32 noundef 2048, i32 noundef %add132) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.end136, label %if.end128.cleanup_crit_edge

if.end128.cleanup_crit_edge:                      ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end136:                                        ; preds = %if.end128
  %q_rx = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 23
  %188 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %rev.i.i, align 4
  %190 = and i32 %189, -327680
  call void @__sanitizer_cov_trace_const_cmp4(i32 1980825600, i32 %190)
  %191 = icmp eq i32 %190, 1980825600
  %spec.select = select i1 %191, i32 1024, i32 512
  %192 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %queue_ops, align 4
  %alloc141 = getelementptr inbounds %struct.mt76_queue_ops, ptr %193, i32 0, i32 1
  %194 = ptrtoint ptr %alloc141 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %alloc141, align 4
  %196 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %reg_map, align 8
  %arrayidx145 = getelementptr i32, ptr %197, i32 5
  %198 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx145, align 4
  %add146 = add i32 %199, 1024
  %call147 = tail call i32 %195(ptr noundef %dev, ptr noundef %q_rx, i32 noundef 0, i32 noundef %spec.select, i32 noundef 2048, i32 noundef %add146) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.end150, label %if.end136.cleanup_crit_edge

if.end136.cleanup_crit_edge:                      ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end150:                                        ; preds = %if.end136
  %200 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %bus, align 4
  %wr152 = getelementptr inbounds %struct.mt76_bus_ops, ptr %201, i32 0, i32 1
  %202 = ptrtoint ptr %wr152 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %wr152, align 4
  %204 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %reg_map, align 8
  %arrayidx154 = getelementptr i32, ptr %205, i32 5
  %206 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %arrayidx154, align 4
  %add155 = add i32 %207, 528
  tail call void %203(ptr noundef %dev, i32 noundef %add155, i32 noundef 0) #3
  %208 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %queue_ops, align 4
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %209, align 4
  %call157 = tail call i32 %211(ptr noundef %dev, ptr noundef nonnull @mt7615_poll_rx) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %cmp = icmp slt i32 %call157, 0
  br i1 %cmp, label %if.end150.cleanup_crit_edge, label %if.end159

if.end150.cleanup_crit_edge:                      ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end159:                                        ; preds = %if.end150
  %tx_napi_dev = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 17
  %tx_napi = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 27
  %state.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 27, i32 1
  tail call void @_set_bit(i32 noundef 5, ptr noundef %state.i) #3
  tail call void @netif_napi_add(ptr noundef %tx_napi_dev, ptr noundef %tx_napi, ptr noundef nonnull @mt7615_poll_tx, i32 noundef 64) #3
  tail call void @napi_enable(ptr noundef %tx_napi) #3
  %212 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %reg_map, align 8
  %arrayidx162 = getelementptr i32, ptr %213, i32 5
  %214 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %arrayidx162, align 4
  %add163 = add i32 %215, 520
  %call164 = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef %add163, i32 noundef 10, i32 noundef 0, i32 noundef 1000) #3
  %q_mcu.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 22
  %216 = ptrtoint ptr %q_mcu.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %q_mcu.i, align 16
  %hw_idx.i = getelementptr inbounds %struct.mt76_queue, ptr %217, i32 0, i32 14
  %218 = ptrtoint ptr %hw_idx.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %hw_idx.i, align 1
  %conv.i = zext i8 %219 to i32
  %shl.i = shl i32 16, %conv.i
  %220 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %rev.i.i, align 4
  %shr.i.mask.i = and i32 %221, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1986199552, i32 %shr.i.mask.i)
  %cmp.i = icmp eq i32 %shr.i.mask.i, 1986199552
  %mask.0.v = select i1 %cmp.i, i32 536870915, i32 1073741827
  %mask.0 = or i32 %mask.0.v, %shl.i
  tail call void @mt76_set_irq_mask(ptr noundef %dev, i32 noundef 0, i32 noundef 0, i32 noundef %mask.0) #3
  %state.i.i = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 2, i32 1
  %call.i.i250 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i250)
  %tobool.not.i.i = icmp eq i32 %call.i.i250, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end159.mt7615_irq_enable.exit_crit_edge

if.end159.mt7615_irq_enable.exit_crit_edge:       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #5
  br label %mt7615_irq_enable.exit

if.then.i.i:                                      ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #5
  %irq_tasklet.i = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 2
  tail call void @__tasklet_schedule(ptr noundef %irq_tasklet.i) #3
  br label %mt7615_irq_enable.exit

mt7615_irq_enable.exit:                           ; preds = %if.then.i.i, %if.end159.mt7615_irq_enable.exit_crit_edge
  tail call void @mt7615_dma_start(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %mt7615_irq_enable.exit, %if.end150.cleanup_crit_edge, %if.end136.cleanup_crit_edge, %if.end128.cleanup_crit_edge, %mt7615_init_tx_queues.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mt7615_irq_enable.exit ], [ %retval.0.i, %mt7615_init_tx_queues.exit.cleanup_crit_edge ], [ %call133, %if.end128.cleanup_crit_edge ], [ %call147, %if.end136.cleanup_crit_edge ], [ %call157, %if.end150.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_dma_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_poll_rx(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 7
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -1280
  %pm = getelementptr i8, ptr %1, i32 10484
  %wake.i = getelementptr i8, ptr %1, i32 10660
  tail call void @_raw_spin_lock_bh(ptr noundef %wake.i) #3
  %state.i = getelementptr i8, ptr %1, i32 -1268
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_raw_spin_unlock_bh(ptr noundef %wake.i) #3
  %call.i = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #3
  %wq = getelementptr i8, ptr %1, i32 9504
  %5 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wq, align 32
  %wake_work = getelementptr i8, ptr %1, i32 10564
  %call.i15 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %wake_work) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %count.i = getelementptr i8, ptr %1, i32 10704
  %7 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count.i, align 4
  %inc.i = add i32 %8, 1
  store i32 %inc.i, ptr %count.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %wake.i) #3
  %call5 = tail call i32 @mt76_dma_rx_poll(ptr noundef %napi, i32 noundef %budget) #3
  tail call void @_raw_spin_lock_bh(ptr noundef %wake.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %last_activity.i = getelementptr i8, ptr %1, i32 10900
  %10 = ptrtoint ptr %last_activity.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %last_activity.i, align 4
  %11 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count.i, align 4
  %dec.i = add i32 %12, -1
  store i32 %dec.i, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.mt76_connac_pm_unref.exit_crit_edge

if.end.mt76_connac_pm_unref.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %mt76_connac_pm_unref.exit

land.lhs.true.i:                                  ; preds = %if.end
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %state.i, align 4
  %15 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i19 = icmp eq i32 %15, 0
  br i1 %tobool.not.i19, label %land.lhs.true.i.mt76_connac_pm_unref.exit_crit_edge, label %if.then.i

land.lhs.true.i.mt76_connac_pm_unref.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mt76_connac_pm_unref.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mt76_connac_power_save_sched(ptr noundef %add.ptr, ptr noundef %pm) #3
  br label %mt76_connac_pm_unref.exit

mt76_connac_pm_unref.exit:                        ; preds = %if.then.i, %land.lhs.true.i.mt76_connac_pm_unref.exit_crit_edge, %if.end.mt76_connac_pm_unref.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %wake.i) #3
  br label %cleanup

cleanup:                                          ; preds = %mt76_connac_pm_unref.exit, %if.then
  %retval.0 = phi i32 [ %call5, %mt76_connac_pm_unref.exit ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_poll_tx(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -8152
  %pm = getelementptr i8, ptr %napi, i32 3612
  %wake.i = getelementptr i8, ptr %napi, i32 3788
  tail call void @_raw_spin_lock_bh(ptr noundef %wake.i) #3
  %state.i = getelementptr i8, ptr %napi, i32 -8140
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %2 = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_raw_spin_unlock_bh(ptr noundef %wake.i) #3
  %call.i = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #3
  %wq = getelementptr i8, ptr %napi, i32 2632
  %3 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wq, align 32
  %wake_work = getelementptr i8, ptr %napi, i32 3692
  %call.i21 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %wake_work) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %count.i = getelementptr i8, ptr %napi, i32 3832
  %5 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count.i, align 4
  %inc.i = add i32 %6, 1
  store i32 %inc.i, ptr %count.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %wake.i) #3
  %queue_ops = getelementptr i8, ptr %napi, i32 -36
  %7 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup = getelementptr inbounds %struct.mt76_queue_ops, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %tx_cleanup to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_cleanup, align 4
  %q_mcu = getelementptr i8, ptr %napi, i32 -808
  %11 = ptrtoint ptr %q_mcu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %q_mcu, align 16
  tail call void %10(ptr noundef %add.ptr, ptr noundef %12, i1 noundef zeroext false) #3
  %call.i22 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #3
  br i1 %call.i22, label %if.then5, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

if.then5:                                         ; preds = %if.end
  %13 = ptrtoint ptr %q_mcu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %q_mcu, align 16
  %hw_idx.i = getelementptr inbounds %struct.mt76_queue, ptr %14, i32 0, i32 14
  %15 = ptrtoint ptr %hw_idx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %hw_idx.i, align 1
  %conv.i = zext i8 %16 to i32
  %shl.i = shl i32 16, %conv.i
  tail call void @mt76_set_irq_mask(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 0, i32 noundef %shl.i) #3
  %state.i.i = getelementptr i8, ptr %napi, i32 2864
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then5.if.end7_crit_edge

if.then5.if.end7_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

if.then.i.i:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #5
  %irq_tasklet.i = getelementptr i8, ptr %napi, i32 2860
  tail call void @__tasklet_schedule(ptr noundef %irq_tasklet.i) #3
  br label %if.end7

if.end7:                                          ; preds = %if.then.i.i, %if.then5.if.end7_crit_edge, %if.end.if.end7_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %wake.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %last_activity.i = getelementptr i8, ptr %napi, i32 4028
  %18 = ptrtoint ptr %last_activity.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %last_activity.i, align 4
  %19 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count.i, align 4
  %dec.i = add i32 %20, -1
  store i32 %dec.i, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end7.mt76_connac_pm_unref.exit_crit_edge

if.end7.mt76_connac_pm_unref.exit_crit_edge:      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %mt76_connac_pm_unref.exit

land.lhs.true.i:                                  ; preds = %if.end7
  %21 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %state.i, align 4
  %23 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i26 = icmp eq i32 %23, 0
  br i1 %tobool.not.i26, label %land.lhs.true.i.mt76_connac_pm_unref.exit_crit_edge, label %if.then.i

land.lhs.true.i.mt76_connac_pm_unref.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mt76_connac_pm_unref.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mt76_connac_power_save_sched(ptr noundef %add.ptr, ptr noundef %pm) #3
  br label %mt76_connac_pm_unref.exit

mt76_connac_pm_unref.exit:                        ; preds = %if.then.i, %land.lhs.true.i.mt76_connac_pm_unref.exit_crit_edge, %if.end7.mt76_connac_pm_unref.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %wake.i) #3
  br label %cleanup

cleanup:                                          ; preds = %mt76_connac_pm_unref.exit, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mt76_poll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7615_dma_cleanup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmw, align 4
  %reg_map = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 9
  %4 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_map, align 8
  %arrayidx = getelementptr i32, ptr %5, i32 5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, 520
  %call = tail call i32 %3(ptr noundef %dev, i32 noundef %add, i32 noundef 5, i32 noundef 0) #3
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 4
  %rmw2 = getelementptr inbounds %struct.mt76_bus_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %rmw2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmw2, align 4
  %12 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_map, align 8
  %arrayidx4 = getelementptr i32, ptr %13, i32 5
  %14 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4, align 4
  %add5 = add i32 %15, 520
  %call6 = tail call i32 %11(ptr noundef %dev, i32 noundef %add5, i32 noundef 0, i32 noundef 16777216) #3
  tail call void @mt76_dma_cleanup(ptr noundef %dev) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_dma_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mt76_init_queue(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_dma_rx_poll(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_connac_power_save_sched(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_set_irq_mask(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/dma.c", i32 116, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mt7615_wait_pdma_busy._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mt7615_wait_pdma_busy._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/dma.c", i32 125, i32 3}
!10 = !{ptr @mt7615_wait_pdma_busy._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @mt7615_wait_pdma_busy._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/dma.c", i32 131, i32 3}
!14 = !{ptr @mt7615_wait_pdma_busy._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @mt7615_wait_pdma_busy._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @mt7615_wait_pdma_busy._entry.11, !17, !"_entry", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/dma.c", i32 137, i32 3}
!18 = !{ptr @mt7615_wait_pdma_busy._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!19 = distinct !{null, !20, !"wmm_queue_map", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/dma.c", i32 17, i32 18}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
