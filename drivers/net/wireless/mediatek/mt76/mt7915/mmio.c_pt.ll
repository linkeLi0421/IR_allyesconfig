; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt7915/mmio.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt7915/mmio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.anon.149 = type { i32, i32, i32 }
%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.142, ptr, %union.anon.143, [20 x i8] }
%struct.mt76_phy = type { ptr, ptr, ptr, i32, [7 x ptr], %struct.cfg80211_chan_def, ptr, ptr, i64, %struct.mt76_hw_cap, %struct.mt76_sband, %struct.mt76_sband, %struct.mt76_sband, [6 x i8], i32, i8, i16, %struct.mt76_testmode_data, %struct.delayed_work, i8, [5 x %struct.anon.134], ptr }
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
%struct.mt76_testmode_data = type { i32, [1 x i32], ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, [4 x i8], i8, [3 x [6 x i8]], i32, i32, i16, i32, %struct.anon.133 }
%struct.anon.133 = type { [5 x i64], [5 x i64] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.134 = type { ptr, ptr, i16 }
%struct.mt76_rx_status = type <{ %union.anon.135, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.135 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mt76_mcu = type { %struct.mutex, i32, i32, %struct.sk_buff_head, %struct.wait_queue_head }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.105, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.126, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.105 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.126 = type { ptr }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.mt76_wcid = type { [16 x ptr], %struct.atomic_t, i32, %struct.ewma_signal, i32, %struct.rate_info, i16, i8, i8, i8, i8, [17 x [6 x i8]], i16, i32, i8, %struct.list_head, %struct.idr }
%struct.ewma_signal = type { i32 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.139, i32 }
%union.anon.139 = type { ptr }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.mt76_rate_power = type { %union.anon.140 }
%union.anon.140 = type { %struct.anon.141 }
%struct.anon.141 = type { [4 x i8], [8 x i8], [10 x i8], [16 x i8], [10 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.142 = type { ptr, i32 }
%union.anon.143 = type { %struct.mt76_usb }
%struct.mt76_usb = type { %struct.mutex, ptr, i16, %struct.mt76_worker, %struct.mt76_worker, %struct.work_struct, [6 x i8], [2 x i8], i8, %struct.mt76u_mcu }
%struct.mt76u_mcu = type { ptr, ptr, i32, i32, i8 }
%struct.mt7915_dev = type { %union.anon.145, ptr, ptr, %struct.tasklet_struct, %struct.mt7915_phy, i16, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, i32, i8, i8, i8, i8, i8, i8, ptr, %struct.anon.147, [14 x i8] }
%union.anon.145 = type { %struct.mt76_dev }
%struct.mt7915_phy = type { ptr, ptr, [2 x [13 x %struct.ieee80211_sband_iftype_data]], ptr, ptr, i8, [2 x i32], i32, i64, i16, i16, i8, i8, i32, i32, i32, %struct.mib_stats, %struct.mt76_channel_state, %struct.anon.146 }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.127 }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.anon.127 = type { ptr, i32 }
%struct.mib_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32 }
%struct.mt76_channel_state = type { i64, i64, i64, i64, i64, i8 }
%struct.anon.146 = type { ptr, i32, [4 x i8], [4 x i8], [4 x i8], i8, i8 }
%struct.anon.147 = type { i8, i8 }
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@mt7915_mmio_init.__UNIQUE_ID_ddebug401 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mt7915e\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mt7915_mmio_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/wireless/mediatek/mt76/mt7915/mmio.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ASIC revision: %04x\0A\00", [43 x i8] zeroinitializer }, align 32
@__mt7915_reg_addr.fixed_map = internal unnamed_addr constant [41 x %struct.anon.149] [%struct.anon.149 { i32 4194304, i32 524288, i32 65536 }, %struct.anon.149 { i32 4259840, i32 589824, i32 65536 }, %struct.anon.149 { i32 1073741824, i32 458752, i32 65536 }, %struct.anon.149 { i32 1409286144, i32 8192, i32 4096 }, %struct.anon.149 { i32 1426063360, i32 12288, i32 4096 }, %struct.anon.149 { i32 1476395008, i32 24576, i32 4096 }, %struct.anon.149 { i32 1493172224, i32 28672, i32 4096 }, %struct.anon.149 { i32 2080374784, i32 983040, i32 65536 }, %struct.anon.149 { i32 2080505856, i32 851968, i32 65536 }, %struct.anon.149 { i32 -2147352576, i32 720896, i32 65536 }, %struct.anon.149 { i32 -2130575360, i32 786432, i32 65536 }, %struct.anon.149 { i32 -2113142784, i32 32768, i32 16384 }, %struct.anon.149 { i32 -2113110016, i32 49152, i32 8192 }, %struct.anon.149 { i32 -2113093632, i32 57344, i32 8192 }, %struct.anon.149 { i32 -2113085440, i32 138240, i32 512 }, %struct.anon.149 { i32 -2113081344, i32 139264, i32 4096 }, %struct.anon.149 { i32 -2113077248, i32 196608, i32 65536 }, %struct.anon.149 { i32 -2113011712, i32 131072, i32 1024 }, %struct.anon.149 { i32 -2113007616, i32 132096, i32 512 }, %struct.anon.149 { i32 -2113003520, i32 133120, i32 1024 }, %struct.anon.149 { i32 -2112999424, i32 134144, i32 1024 }, %struct.anon.149 { i32 -2112995328, i32 135168, i32 1024 }, %struct.anon.149 { i32 -2112991232, i32 136192, i32 2048 }, %struct.anon.149 { i32 -2112983040, i32 138752, i32 512 }, %struct.anon.149 { i32 -2112974848, i32 144384, i32 512 }, %struct.anon.149 { i32 -2112970752, i32 147456, i32 512 }, %struct.anon.149 { i32 -2112966656, i32 147968, i32 1024 }, %struct.anon.149 { i32 -2112962560, i32 148992, i32 512 }, %struct.anon.149 { i32 -2112958464, i32 149504, i32 2048 }, %struct.anon.149 { i32 -2112946176, i32 655360, i32 1024 }, %struct.anon.149 { i32 -2112942080, i32 656896, i32 512 }, %struct.anon.149 { i32 -2112937984, i32 657408, i32 1024 }, %struct.anon.149 { i32 -2112933888, i32 658432, i32 1024 }, %struct.anon.149 { i32 -2112929792, i32 659456, i32 1024 }, %struct.anon.149 { i32 -2112925696, i32 660480, i32 2048 }, %struct.anon.149 { i32 -2112917504, i32 663040, i32 512 }, %struct.anon.149 { i32 -2112909312, i32 668672, i32 512 }, %struct.anon.149 { i32 -2112905216, i32 671744, i32 512 }, %struct.anon.149 { i32 -2112901120, i32 672256, i32 1024 }, %struct.anon.149 { i32 -2112897024, i32 673280, i32 512 }, %struct.anon.149 { i32 -2112892928, i32 673792, i32 2048 }], align 4
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private constant [52 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7915/mmio.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 149, i32 2 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_mmio_init(ptr noundef %mdev, ptr noundef %mem_base, i32 noundef %irq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mt76_mmio_init(ptr noundef %mdev, ptr noundef %mem_base) #2
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %bus_ops1 = getelementptr inbounds %struct.mt7915_dev, ptr %mdev, i32 0, i32 2
  %2 = ptrtoint ptr %bus_ops1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %bus_ops1, align 4
  %dev2 = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 13
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev2, align 8
  %call = tail call ptr @devm_kmemdup(ptr noundef %4, ptr noundef %1, i32 noundef 32, i32 noundef 3264) #2
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mt7915_rr, ptr %call, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %wr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @mt7915_wr, ptr %wr, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %rmw to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mt7915_rmw, ptr %rmw, align 4
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %bus, align 4
  %9 = load ptr, ptr %call, align 4
  %call7 = tail call i32 %9(ptr noundef %mdev, i32 noundef 1879114240) #2
  %shl = shl i32 %call7, 16
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call10 = tail call i32 %13(ptr noundef %mdev, i32 noundef 1879114244) #2
  %and = and i32 %call10, 255
  %or = or i32 %and, %shl
  %rev = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 39
  %14 = ptrtoint ptr %rev to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or, ptr %rev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt7915_mmio_init.__UNIQUE_ID_ddebug401, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt7915_mmio_init, %if.then16)) #2
          to label %do.end [label %if.then16], !srcloc !17

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %15 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev2, align 8
  %17 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt7915_mmio_init.__UNIQUE_ID_ddebug401, ptr noundef %16, ptr noundef nonnull @.str.3, i32 noundef %18) #2
  br label %do.end

do.end:                                           ; preds = %if.then16, %if.end
  %19 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus, align 4
  %wr21 = getelementptr inbounds %struct.mt76_bus_ops, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %wr21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wr21, align 4
  tail call void %22(ptr noundef %mdev, i32 noundef 880660, i32 noundef 0) #2
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_mmio_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_rr(ptr noundef %mdev, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %offset)
  %cmp.i = icmp ult i32 %offset, 1048576
  br i1 %cmp.i, label %entry.__mt7915_reg_addr.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.__mt7915_reg_addr.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %__mt7915_reg_addr.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.049.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [41 x %struct.anon.149], ptr @__mt7915_reg_addr.fixed_map, i32 0, i32 %i.049.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %offset)
  %cmp2.i = icmp ugt i32 %1, %offset
  br i1 %cmp2.i, label %for.body.i.for.inc.i_crit_edge, label %if.end4.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.i

if.end4.i:                                        ; preds = %for.body.i
  %sub.i = sub i32 %offset, %1
  %size.i = getelementptr [41 x %struct.anon.149], ptr @__mt7915_reg_addr.fixed_map, i32 0, i32 %i.049.i, i32 2
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %3)
  %cmp8.i = icmp ugt i32 %sub.i, %3
  br i1 %cmp8.i, label %if.end4.i.for.inc.i_crit_edge, label %cleanup.i

if.end4.i.for.inc.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.i

cleanup.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #4
  %mapped.i = getelementptr [41 x %struct.anon.149], ptr @__mt7915_reg_addr.fixed_map, i32 0, i32 %i.049.i, i32 1
  %4 = ptrtoint ptr %mapped.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mapped.i, align 4
  %add.i = add i32 %5, %sub.i
  br label %__mt7915_reg_addr.exit

for.inc.i:                                        ; preds = %if.end4.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.049.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 41
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %6 = add i32 %offset, -402653184
  call void @__sanitizer_cov_trace_const_cmp4(i32 12582912, i32 %6)
  %7 = icmp ult i32 %6, 12582912
  %8 = and i32 %offset, -134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 1879048192, i32 %8)
  %9 = icmp eq i32 %8, 1879048192
  %or.cond.i = or i1 %7, %9
  br i1 %or.cond.i, label %if.then17.i, label %if.end18.i

if.then17.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %shr30.i.i = lshr i32 %offset, 16
  %bus.i.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 10
  %10 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i.i, align 4
  %rmw.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmw.i.i, align 4
  %and.i.i = and i32 %offset, 65535
  %call.i.i = tail call i32 %13(ptr noundef %mdev, i32 noundef 987564, i32 noundef 65535, i32 noundef %shr30.i.i) #2
  %14 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call50.i.i = tail call i32 %17(ptr noundef %mdev, i32 noundef 987564) #2
  %add.i.i = or i32 %and.i.i, 917504
  br label %__mt7915_reg_addr.exit

if.end18.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %shr30.i38.i = lshr i32 %offset, 12
  %bus.i39.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 10
  %18 = ptrtoint ptr %bus.i39.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i39.i, align 4
  %rmw.i40.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %rmw.i40.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmw.i40.i, align 4
  %and.i41.i = and i32 %offset, 4095
  %call.i42.i = tail call i32 %21(ptr noundef %mdev, i32 noundef 987568, i32 noundef 1048575, i32 noundef %shr30.i38.i) #2
  %22 = ptrtoint ptr %bus.i39.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus.i39.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %call50.i43.i = tail call i32 %25(ptr noundef %mdev, i32 noundef 987568) #2
  br label %__mt7915_reg_addr.exit

__mt7915_reg_addr.exit:                           ; preds = %if.end18.i, %if.then17.i, %cleanup.i, %entry.__mt7915_reg_addr.exit_crit_edge
  %retval.2.i = phi i32 [ %add.i, %cleanup.i ], [ %add.i.i, %if.then17.i ], [ %and.i41.i, %if.end18.i ], [ %offset, %entry.__mt7915_reg_addr.exit_crit_edge ]
  %bus_ops = getelementptr inbounds %struct.mt7915_dev, ptr %mdev, i32 0, i32 2
  %26 = ptrtoint ptr %bus_ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus_ops, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %call1 = tail call i32 %29(ptr noundef %mdev, i32 noundef %retval.2.i) #2
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7915_wr(ptr noundef %mdev, i32 noundef %offset, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %offset)
  %cmp.i = icmp ult i32 %offset, 1048576
  br i1 %cmp.i, label %entry.__mt7915_reg_addr.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.__mt7915_reg_addr.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %__mt7915_reg_addr.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.049.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [41 x %struct.anon.149], ptr @__mt7915_reg_addr.fixed_map, i32 0, i32 %i.049.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %offset)
  %cmp2.i = icmp ugt i32 %1, %offset
  br i1 %cmp2.i, label %for.body.i.for.inc.i_crit_edge, label %if.end4.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.i

if.end4.i:                                        ; preds = %for.body.i
  %sub.i = sub i32 %offset, %1
  %size.i = getelementptr [41 x %struct.anon.149], ptr @__mt7915_reg_addr.fixed_map, i32 0, i32 %i.049.i, i32 2
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %3)
  %cmp8.i = icmp ugt i32 %sub.i, %3
  br i1 %cmp8.i, label %if.end4.i.for.inc.i_crit_edge, label %cleanup.i

if.end4.i.for.inc.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.i

cleanup.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #4
  %mapped.i = getelementptr [41 x %struct.anon.149], ptr @__mt7915_reg_addr.fixed_map, i32 0, i32 %i.049.i, i32 1
  %4 = ptrtoint ptr %mapped.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mapped.i, align 4
  %add.i = add i32 %5, %sub.i
  br label %__mt7915_reg_addr.exit

for.inc.i:                                        ; preds = %if.end4.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.049.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 41
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %6 = add i32 %offset, -402653184
  call void @__sanitizer_cov_trace_const_cmp4(i32 12582912, i32 %6)
  %7 = icmp ult i32 %6, 12582912
  %8 = and i32 %offset, -134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 1879048192, i32 %8)
  %9 = icmp eq i32 %8, 1879048192
  %or.cond.i = or i1 %7, %9
  br i1 %or.cond.i, label %if.then17.i, label %if.end18.i

if.then17.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %shr30.i.i = lshr i32 %offset, 16
  %bus.i.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 10
  %10 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i.i, align 4
  %rmw.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmw.i.i, align 4
  %and.i.i = and i32 %offset, 65535
  %call.i.i = tail call i32 %13(ptr noundef %mdev, i32 noundef 987564, i32 noundef 65535, i32 noundef %shr30.i.i) #2
  %14 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call50.i.i = tail call i32 %17(ptr noundef %mdev, i32 noundef 987564) #2
  %add.i.i = or i32 %and.i.i, 917504
  br label %__mt7915_reg_addr.exit

if.end18.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %shr30.i38.i = lshr i32 %offset, 12
  %bus.i39.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 10
  %18 = ptrtoint ptr %bus.i39.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i39.i, align 4
  %rmw.i40.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %rmw.i40.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmw.i40.i, align 4
  %and.i41.i = and i32 %offset, 4095
  %call.i42.i = tail call i32 %21(ptr noundef %mdev, i32 noundef 987568, i32 noundef 1048575, i32 noundef %shr30.i38.i) #2
  %22 = ptrtoint ptr %bus.i39.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus.i39.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %call50.i43.i = tail call i32 %25(ptr noundef %mdev, i32 noundef 987568) #2
  br label %__mt7915_reg_addr.exit

__mt7915_reg_addr.exit:                           ; preds = %if.end18.i, %if.then17.i, %cleanup.i, %entry.__mt7915_reg_addr.exit_crit_edge
  %retval.2.i = phi i32 [ %add.i, %cleanup.i ], [ %add.i.i, %if.then17.i ], [ %and.i41.i, %if.end18.i ], [ %offset, %entry.__mt7915_reg_addr.exit_crit_edge ]
  %bus_ops = getelementptr inbounds %struct.mt7915_dev, ptr %mdev, i32 0, i32 2
  %26 = ptrtoint ptr %bus_ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus_ops, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wr, align 4
  tail call void %29(ptr noundef %mdev, i32 noundef %retval.2.i, i32 noundef %val) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_rmw(ptr noundef %mdev, i32 noundef %offset, i32 noundef %mask, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %offset)
  %cmp.i = icmp ult i32 %offset, 1048576
  br i1 %cmp.i, label %entry.__mt7915_reg_addr.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.__mt7915_reg_addr.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %__mt7915_reg_addr.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.049.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [41 x %struct.anon.149], ptr @__mt7915_reg_addr.fixed_map, i32 0, i32 %i.049.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %offset)
  %cmp2.i = icmp ugt i32 %1, %offset
  br i1 %cmp2.i, label %for.body.i.for.inc.i_crit_edge, label %if.end4.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.i

if.end4.i:                                        ; preds = %for.body.i
  %sub.i = sub i32 %offset, %1
  %size.i = getelementptr [41 x %struct.anon.149], ptr @__mt7915_reg_addr.fixed_map, i32 0, i32 %i.049.i, i32 2
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %3)
  %cmp8.i = icmp ugt i32 %sub.i, %3
  br i1 %cmp8.i, label %if.end4.i.for.inc.i_crit_edge, label %cleanup.i

if.end4.i.for.inc.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.i

cleanup.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #4
  %mapped.i = getelementptr [41 x %struct.anon.149], ptr @__mt7915_reg_addr.fixed_map, i32 0, i32 %i.049.i, i32 1
  %4 = ptrtoint ptr %mapped.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mapped.i, align 4
  %add.i = add i32 %5, %sub.i
  br label %__mt7915_reg_addr.exit

for.inc.i:                                        ; preds = %if.end4.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.049.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 41
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %6 = add i32 %offset, -402653184
  call void @__sanitizer_cov_trace_const_cmp4(i32 12582912, i32 %6)
  %7 = icmp ult i32 %6, 12582912
  %8 = and i32 %offset, -134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 1879048192, i32 %8)
  %9 = icmp eq i32 %8, 1879048192
  %or.cond.i = or i1 %7, %9
  br i1 %or.cond.i, label %if.then17.i, label %if.end18.i

if.then17.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %shr30.i.i = lshr i32 %offset, 16
  %bus.i.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 10
  %10 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i.i, align 4
  %rmw.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmw.i.i, align 4
  %and.i.i = and i32 %offset, 65535
  %call.i.i = tail call i32 %13(ptr noundef %mdev, i32 noundef 987564, i32 noundef 65535, i32 noundef %shr30.i.i) #2
  %14 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call50.i.i = tail call i32 %17(ptr noundef %mdev, i32 noundef 987564) #2
  %add.i.i = or i32 %and.i.i, 917504
  br label %__mt7915_reg_addr.exit

if.end18.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %shr30.i38.i = lshr i32 %offset, 12
  %bus.i39.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 10
  %18 = ptrtoint ptr %bus.i39.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i39.i, align 4
  %rmw.i40.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %rmw.i40.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmw.i40.i, align 4
  %and.i41.i = and i32 %offset, 4095
  %call.i42.i = tail call i32 %21(ptr noundef %mdev, i32 noundef 987568, i32 noundef 1048575, i32 noundef %shr30.i38.i) #2
  %22 = ptrtoint ptr %bus.i39.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus.i39.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %call50.i43.i = tail call i32 %25(ptr noundef %mdev, i32 noundef 987568) #2
  br label %__mt7915_reg_addr.exit

__mt7915_reg_addr.exit:                           ; preds = %if.end18.i, %if.then17.i, %cleanup.i, %entry.__mt7915_reg_addr.exit_crit_edge
  %retval.2.i = phi i32 [ %add.i, %cleanup.i ], [ %add.i.i, %if.then17.i ], [ %and.i41.i, %if.end18.i ], [ %offset, %entry.__mt7915_reg_addr.exit_crit_edge ]
  %bus_ops = getelementptr inbounds %struct.mt7915_dev, ptr %mdev, i32 0, i32 2
  %26 = ptrtoint ptr %bus_ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus_ops, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmw, align 4
  %call1 = tail call i32 %29(ptr noundef %mdev, i32 noundef %retval.2.i, i32 noundef %mask, i32 noundef %val) #2
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mmio.c", i32 149, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mt7915_mmio_init.__UNIQUE_ID_ddebug401, !1, !"__UNIQUE_ID_ddebug401", i1 false, i1 false}
!6 = !{ptr @__mt7915_reg_addr.fixed_map, !7, !"fixed_map", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/mmio.c", i32 36, i32 4}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i64 2148735460, i64 2148735465, i64 2148735478, i64 2148735522, i64 2148735556, i64 2148735577}
