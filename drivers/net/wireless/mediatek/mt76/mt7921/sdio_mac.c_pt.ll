; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt7921/sdio_mac.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt7921/sdio_mac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.mt7921_dev = type { %union.anon, ptr, %struct.mt7921_phy, %struct.tasklet_struct, %struct.work_struct, i8, %struct.list_head, %struct.spinlock, i8, %struct.mt76_connac_pm, %struct.mt76_connac_coredump, ptr, [32 x i8] }
%union.anon = type { %struct.mt76_dev }
%struct.mt7921_phy = type { ptr, ptr, [6 x [13 x %struct.ieee80211_sband_iftype_data]], i32, i64, i16, i16, i8, i32, i32, %struct.mib_stats, i8, %struct.sk_buff_head, %struct.delayed_work }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.128 }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.anon.128 = type { ptr, i32 }
%struct.mib_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32 }
%struct.mt76_connac_pm = type { i8, i8, i8, %struct.spinlock, [4 x %struct.anon.148], %struct.work_struct, %struct.wait_queue_head, %struct.anon.149, %struct.mutex, %struct.delayed_work, i32, i32, %struct.anon.150 }
%struct.anon.148 = type { ptr, ptr }
%struct.anon.149 = type { %struct.spinlock, i32 }
%struct.anon.150 = type { i32, i32, i32, i32, i32 }
%struct.mt76_connac_coredump = type { %struct.sk_buff_head, %struct.delayed_work, i32 }
%struct.mt76_tx_info = type { [32 x %struct.mt76_queue_buf], ptr, i32, i32 }
%struct.mt76_queue_buf = type { i32, i16, i8 }
%struct.sk_buff = type { %union.anon.41, %union.anon.44, %union.anon.45, [48 x i8], %union.anon.46, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.48, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { ptr, ptr, %union.anon.43 }
%union.anon.43 = type { ptr }
%union.anon.44 = type { ptr }
%union.anon.45 = type { i64 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { i32, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.50, i32, i32, i32, i16, i16, %union.anon.52, i32, %union.anon.53, %union.anon.54, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.50 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { i16 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.mt76_queue_entry = type { %union.anon.132, %union.anon.133, [2 x i32], [2 x i16], i16, i8 }
%union.anon.132 = type { ptr }
%union.anon.133 = type { ptr }

@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/wireless/mediatek/mt76/mt7921/sdio_mac.c\00", [43 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mt7921s_tx_complete_skb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 58, i32 2 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [56 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7921/sdio_mac.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 204, i32 9 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7921s_wfsys_reset(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mt7921s_mcu_drv_pmctrl(ptr noundef %dev) #4
  %func = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %func, align 4
  tail call void @sdio_claim_host(ptr noundef %1) #4
  %2 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %func, align 4
  %call2 = tail call i32 @sdio_readl(ptr noundef %3, i32 noundef 12, ptr noundef null) #4
  %and = and i32 %call2, -33
  %4 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %func, align 4
  tail call void @sdio_writel(ptr noundef %5, i32 noundef %and, i32 noundef 12, ptr noundef null) #4
  tail call void @msleep(i32 noundef 50) #4
  %6 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %func, align 4
  %call5 = tail call i32 @sdio_readl(ptr noundef %7, i32 noundef 12, ptr noundef null) #4
  %and6 = and i32 %call5, -65
  %8 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %func, align 4
  tail call void @sdio_writel(ptr noundef %9, i32 noundef %and6, i32 noundef 12, ptr noundef null) #4
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %10 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %func, align 4
  %call9 = tail call i32 @sdio_readl(ptr noundef %11, i32 noundef 12, ptr noundef null) #4
  %or = or i32 %call9, 32
  %12 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %func, align 4
  tail call void @sdio_writel(ptr noundef %13, i32 noundef %or, i32 noundef 12, ptr noundef null) #4
  %call11 = tail call i64 @ktime_get() #4
  %add.i = add i64 %call11, 2000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 59) #4
  %14 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %func, align 4
  %call.i62 = tail call i32 @sdio_readl(ptr noundef %15, i32 noundef 12, ptr noundef null) #4
  %and2063 = and i32 %call.i62, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2063)
  %tobool.not64 = icmp eq i32 %and2063, 0
  br i1 %tobool.not64, label %entry.land.lhs.true_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then31.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call24 = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call24, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call24, %add.i
  br i1 %cmp3.i, label %if.then27, label %if.then31

if.then27:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %func, align 4
  %call.i61 = tail call i32 @sdio_readl(ptr noundef %17, i32 noundef 12, ptr noundef null) #4
  br label %for.end

if.then31:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 12501, i32 noundef 50000, i32 noundef 2) #4
  %18 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %func, align 4
  %call.i = tail call i32 @sdio_readl(ptr noundef %19, i32 noundef 12, ptr noundef null) #4
  %and20 = and i32 %call.i, 32768
  %tobool.not = icmp eq i32 %and20, 0
  br i1 %tobool.not, label %if.then31.land.lhs.true_crit_edge, label %if.then31.for.end_crit_edge

if.then31.for.end_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.then31.land.lhs.true_crit_edge:                ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

for.end:                                          ; preds = %if.then31.for.end_crit_edge, %if.then27, %entry.for.end_crit_edge
  %20 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %func, align 4
  tail call void @sdio_release_host(ptr noundef %21) #4
  %call36 = tail call i32 @mt7921s_mcu_fw_pmctrl(ptr noundef %dev) #4
  %call37 = tail call i32 @mt7921s_mcu_drv_pmctrl(ptr noundef %dev) #4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921s_mcu_drv_pmctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_claim_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_readl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_writel(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_release_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921s_mcu_fw_pmctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7921s_init_reset(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 8, ptr noundef %state) #4
  %wait = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 14, i32 4
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #4
  %res_q = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 14, i32 3
  tail call void @skb_queue_purge(ptr noundef %res_q) #4
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 77) #4
  %call = tail call zeroext i1 @mt76s_txqs_empty(ptr noundef %dev) #4
  br i1 %call, label %entry.if.end34_crit_edge, label %if.then9

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.then9:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #4
  %0 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #4
  %wait11 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 4, i32 1
  %call1267 = call i32 @prepare_to_wait_event(ptr noundef %wait11, ptr noundef nonnull %__wq_entry, i32 noundef 2) #4
  %call1468 = call zeroext i1 @mt76s_txqs_empty(ptr noundef %dev) #4
  br i1 %call1468, label %if.then9.for.end_crit_edge, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  br label %cleanup

if.then9.for.end_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then9.cleanup_crit_edge
  %__ret10.169 = phi i32 [ %__ret10.1, %cleanup.cleanup_crit_edge ], [ 500, %if.then9.cleanup_crit_edge ]
  %call31 = call i32 @schedule_timeout(i32 noundef %__ret10.169) #4
  %call12 = call i32 @prepare_to_wait_event(ptr noundef %wait11, ptr noundef nonnull %__wq_entry, i32 noundef 2) #4
  %call14 = call zeroext i1 @mt76s_txqs_empty(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool18.not = icmp eq i32 %call31, 0
  %1 = select i1 %call14, i1 %tobool18.not, i1 false
  %__ret10.1 = select i1 %1, i32 1, i32 %call31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret10.1)
  %tobool24.not = icmp eq i32 %__ret10.1, 0
  %2 = select i1 %call14, i1 true, i1 %tobool24.not
  br i1 %2, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then9.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait11, ptr noundef nonnull %__wq_entry) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #4
  br label %if.end34

if.end34:                                         ; preds = %for.end, %entry.if.end34_crit_edge
  %3 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end34.mt76_worker_disable.exit_crit_edge, label %if.end.i

if.end34.mt76_worker_disable.exit_crit_edge:      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_disable.exit

if.end.i:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = call i32 @kthread_park(ptr noundef nonnull %5) #4
  %state.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %state.i, align 4
  br label %mt76_worker_disable.exit

mt76_worker_disable.exit:                         ; preds = %if.end.i, %if.end34.mt76_worker_disable.exit_crit_edge
  %func.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %func.i, align 4
  call void @sdio_claim_host(ptr noundef %8) #4
  %9 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %func.i, align 4
  call void @sdio_writel(ptr noundef %10, i32 noundef 2, i32 noundef 4, ptr noundef null) #4
  %11 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %func.i, align 4
  call void @sdio_release_host(ptr noundef %12) #4
  %call36 = call i32 @mt7921s_wfsys_reset(ptr noundef %dev)
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %tobool.not.i61 = icmp eq ptr %14, null
  br i1 %tobool.not.i61, label %mt76_worker_disable.exit.mt76_worker_enable.exit_crit_edge, label %if.end.i62

mt76_worker_disable.exit.mt76_worker_enable.exit_crit_edge: ; preds = %mt76_worker_disable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_enable.exit

if.end.i62:                                       ; preds = %mt76_worker_disable.exit
  call void @kthread_unpark(ptr noundef nonnull %14) #4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.end.i62.mt76_worker_enable.exit_crit_edge, label %if.end.i.i

if.end.i62.mt76_worker_enable.exit_crit_edge:     ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_enable.exit

if.end.i.i:                                       ; preds = %if.end.i62
  %state.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 0, i32 1, i32 1
  %call.i.i = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i, label %if.end.i.i.mt76_worker_enable.exit_crit_edge

if.end.i.i.mt76_worker_enable.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_enable.exit

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %17 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %state.i.i, align 4
  %19 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool4.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %land.lhs.true.i.i.mt76_worker_enable.exit_crit_edge

land.lhs.true.i.i.mt76_worker_enable.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_enable.exit

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %call7.i.i = call i32 @wake_up_process(ptr noundef %21) #4
  br label %mt76_worker_enable.exit

mt76_worker_enable.exit:                          ; preds = %if.then5.i.i, %land.lhs.true.i.i.mt76_worker_enable.exit_crit_edge, %if.end.i.i.mt76_worker_enable.exit_crit_edge, %if.end.i62.mt76_worker_enable.exit_crit_edge, %mt76_worker_disable.exit.mt76_worker_enable.exit_crit_edge
  call void @_clear_bit(i32 noundef 2, ptr noundef %state) #4
  call void @_clear_bit(i32 noundef 8, ptr noundef %state) #4
  %22 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %func.i, align 4
  call void @sdio_claim_host(ptr noundef %23) #4
  %24 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %func.i, align 4
  call void @sdio_writel(ptr noundef %25, i32 noundef 1, i32 noundef 4, ptr noundef null) #4
  %26 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %func.i, align 4
  call void @sdio_release_host(ptr noundef %27) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mt76s_txqs_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7921s_mac_reset(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 9
  tail call void @mt76_connac_free_pending_tx_skbs(ptr noundef %pm, ptr noundef null) #4
  tail call void @mt76_txq_schedule_all(ptr noundef %dev) #4
  %tx_worker = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 26
  %0 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_worker, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.mt76_worker_disable.exit_crit_edge, label %if.end.i

entry.mt76_worker_disable.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_disable.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 @kthread_park(ptr noundef nonnull %1) #4
  %state.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 26, i32 2
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %state.i, align 4
  br label %mt76_worker_disable.exit

mt76_worker_disable.exit:                         ; preds = %if.end.i, %entry.mt76_worker_disable.exit_crit_edge
  %state = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 7, ptr noundef %state) #4
  tail call void @_set_bit(i32 noundef 8, ptr noundef %state) #4
  %wait = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 14, i32 4
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #4
  %res_q = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 14, i32 3
  tail call void @skb_queue_purge(ptr noundef %res_q) #4
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 103) #4
  %call = tail call zeroext i1 @mt76s_txqs_empty(ptr noundef %dev) #4
  br i1 %call, label %mt76_worker_disable.exit.if.end35_crit_edge, label %if.then10

mt76_worker_disable.exit.if.end35_crit_edge:      ; preds = %mt76_worker_disable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.then10:                                        ; preds = %mt76_worker_disable.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #4
  %3 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #4
  %wait12 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 4, i32 1
  %call13157 = call i32 @prepare_to_wait_event(ptr noundef %wait12, ptr noundef nonnull %__wq_entry, i32 noundef 2) #4
  %call15158 = call zeroext i1 @mt76s_txqs_empty(ptr noundef %dev) #4
  br i1 %call15158, label %if.then10.for.end_crit_edge, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  br label %cleanup

if.then10.for.end_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then10.cleanup_crit_edge
  %__ret11.1159 = phi i32 [ %__ret11.1, %cleanup.cleanup_crit_edge ], [ 500, %if.then10.cleanup_crit_edge ]
  %call32 = call i32 @schedule_timeout(i32 noundef %__ret11.1159) #4
  %call13 = call i32 @prepare_to_wait_event(ptr noundef %wait12, ptr noundef nonnull %__wq_entry, i32 noundef 2) #4
  %call15 = call zeroext i1 @mt76s_txqs_empty(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool19.not = icmp eq i32 %call32, 0
  %4 = select i1 %call15, i1 %tobool19.not, i1 false
  %__ret11.1 = select i1 %4, i32 1, i32 %call32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret11.1)
  %tobool25.not = icmp eq i32 %__ret11.1, 0
  %5 = select i1 %call15, i1 true, i1 %tobool25.not
  br i1 %5, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then10.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait12, ptr noundef nonnull %__wq_entry) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #4
  br label %if.end35

if.end35:                                         ; preds = %for.end, %mt76_worker_disable.exit.if.end35_crit_edge
  %6 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool.not.i100 = icmp eq ptr %8, null
  br i1 %tobool.not.i100, label %if.end35.mt76_worker_disable.exit104_crit_edge, label %if.end.i103

if.end35.mt76_worker_disable.exit104_crit_edge:   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_disable.exit104

if.end.i103:                                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  %call.i101 = call i32 @kthread_park(ptr noundef nonnull %8) #4
  %state.i102 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %state.i102 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %state.i102, align 4
  br label %mt76_worker_disable.exit104

mt76_worker_disable.exit104:                      ; preds = %if.end.i103, %if.end35.mt76_worker_disable.exit104_crit_edge
  %status_worker = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %status_worker to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %status_worker, align 4
  %tobool.not.i105 = icmp eq ptr %11, null
  br i1 %tobool.not.i105, label %mt76_worker_disable.exit104.mt76_worker_disable.exit109_crit_edge, label %if.end.i108

mt76_worker_disable.exit104.mt76_worker_disable.exit109_crit_edge: ; preds = %mt76_worker_disable.exit104
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_disable.exit109

if.end.i108:                                      ; preds = %mt76_worker_disable.exit104
  call void @__sanitizer_cov_trace_pc() #6
  %call.i106 = call i32 @kthread_park(ptr noundef nonnull %11) #4
  %state.i107 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %state.i107 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 0, ptr %state.i107, align 4
  br label %mt76_worker_disable.exit109

mt76_worker_disable.exit109:                      ; preds = %if.end.i108, %mt76_worker_disable.exit104.mt76_worker_disable.exit109_crit_edge
  %net_worker = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 0, i32 1, i32 4, i32 1
  %13 = ptrtoint ptr %net_worker to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net_worker, align 4
  %tobool.not.i110 = icmp eq ptr %14, null
  br i1 %tobool.not.i110, label %mt76_worker_disable.exit109.mt76_worker_disable.exit114_crit_edge, label %if.end.i113

mt76_worker_disable.exit109.mt76_worker_disable.exit114_crit_edge: ; preds = %mt76_worker_disable.exit109
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_disable.exit114

if.end.i113:                                      ; preds = %mt76_worker_disable.exit109
  call void @__sanitizer_cov_trace_pc() #6
  %call.i111 = call i32 @kthread_park(ptr noundef nonnull %14) #4
  %state.i112 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 0, i32 1, i32 4, i32 2
  %15 = ptrtoint ptr %state.i112 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 0, ptr %state.i112, align 4
  br label %mt76_worker_disable.exit114

mt76_worker_disable.exit114:                      ; preds = %if.end.i113, %mt76_worker_disable.exit109.mt76_worker_disable.exit114_crit_edge
  %stat_work = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 0, i32 1, i32 4, i32 3
  %call37 = call zeroext i1 @cancel_work_sync(ptr noundef %stat_work) #4
  %func.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %func.i, align 4
  call void @sdio_claim_host(ptr noundef %17) #4
  %18 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %func.i, align 4
  call void @sdio_writel(ptr noundef %19, i32 noundef 2, i32 noundef 4, ptr noundef null) #4
  %20 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %func.i, align 4
  call void @sdio_release_host(ptr noundef %21) #4
  %call38 = call i32 @mt7921s_wfsys_reset(ptr noundef %dev)
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %6, align 4
  %tobool.not.i115 = icmp eq ptr %23, null
  br i1 %tobool.not.i115, label %mt76_worker_disable.exit114.mt76_worker_enable.exit_crit_edge, label %if.end.i116

mt76_worker_disable.exit114.mt76_worker_enable.exit_crit_edge: ; preds = %mt76_worker_disable.exit114
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_enable.exit

if.end.i116:                                      ; preds = %mt76_worker_disable.exit114
  call void @kthread_unpark(ptr noundef nonnull %23) #4
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %6, align 4
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %if.end.i116.mt76_worker_enable.exit_crit_edge, label %if.end.i.i

if.end.i116.mt76_worker_enable.exit_crit_edge:    ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_enable.exit

if.end.i.i:                                       ; preds = %if.end.i116
  %state.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 0, i32 1, i32 1
  %call.i.i = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i, label %if.end.i.i.mt76_worker_enable.exit_crit_edge

if.end.i.i.mt76_worker_enable.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_enable.exit

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %26 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %state.i.i, align 4
  %28 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool4.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %land.lhs.true.i.i.mt76_worker_enable.exit_crit_edge

land.lhs.true.i.i.mt76_worker_enable.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_enable.exit

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %6, align 4
  %call7.i.i = call i32 @wake_up_process(ptr noundef %30) #4
  br label %mt76_worker_enable.exit

mt76_worker_enable.exit:                          ; preds = %if.then5.i.i, %land.lhs.true.i.i.mt76_worker_enable.exit_crit_edge, %if.end.i.i.mt76_worker_enable.exit_crit_edge, %if.end.i116.mt76_worker_enable.exit_crit_edge, %mt76_worker_disable.exit114.mt76_worker_enable.exit_crit_edge
  %31 = ptrtoint ptr %status_worker to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %status_worker, align 4
  %tobool.not.i117 = icmp eq ptr %32, null
  br i1 %tobool.not.i117, label %mt76_worker_enable.exit.mt76_worker_enable.exit128_crit_edge, label %if.end.i119

mt76_worker_enable.exit.mt76_worker_enable.exit128_crit_edge: ; preds = %mt76_worker_enable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_enable.exit128

if.end.i119:                                      ; preds = %mt76_worker_enable.exit
  call void @kthread_unpark(ptr noundef nonnull %32) #4
  %33 = ptrtoint ptr %status_worker to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %status_worker, align 4
  %tobool.not.i.i118 = icmp eq ptr %34, null
  br i1 %tobool.not.i.i118, label %if.end.i119.mt76_worker_enable.exit128_crit_edge, label %if.end.i.i123

if.end.i119.mt76_worker_enable.exit128_crit_edge: ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_enable.exit128

if.end.i.i123:                                    ; preds = %if.end.i119
  %state.i.i120 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 0, i32 1, i32 4
  %call.i.i121 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i120) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i121)
  %tobool1.not.i.i122 = icmp eq i32 %call.i.i121, 0
  br i1 %tobool1.not.i.i122, label %land.lhs.true.i.i125, label %if.end.i.i123.mt76_worker_enable.exit128_crit_edge

if.end.i.i123.mt76_worker_enable.exit128_crit_edge: ; preds = %if.end.i.i123
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_enable.exit128

land.lhs.true.i.i125:                             ; preds = %if.end.i.i123
  %35 = ptrtoint ptr %state.i.i120 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %state.i.i120, align 4
  %37 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool4.not.i.i124 = icmp eq i32 %37, 0
  br i1 %tobool4.not.i.i124, label %if.then5.i.i127, label %land.lhs.true.i.i125.mt76_worker_enable.exit128_crit_edge

land.lhs.true.i.i125.mt76_worker_enable.exit128_crit_edge: ; preds = %land.lhs.true.i.i125
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_enable.exit128

if.then5.i.i127:                                  ; preds = %land.lhs.true.i.i125
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %status_worker to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %status_worker, align 4
  %call7.i.i126 = call i32 @wake_up_process(ptr noundef %39) #4
  br label %mt76_worker_enable.exit128

mt76_worker_enable.exit128:                       ; preds = %if.then5.i.i127, %land.lhs.true.i.i125.mt76_worker_enable.exit128_crit_edge, %if.end.i.i123.mt76_worker_enable.exit128_crit_edge, %if.end.i119.mt76_worker_enable.exit128_crit_edge, %mt76_worker_enable.exit.mt76_worker_enable.exit128_crit_edge
  %40 = ptrtoint ptr %net_worker to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %net_worker, align 4
  %tobool.not.i129 = icmp eq ptr %41, null
  br i1 %tobool.not.i129, label %mt76_worker_enable.exit128.mt76_worker_enable.exit140_crit_edge, label %if.end.i131

mt76_worker_enable.exit128.mt76_worker_enable.exit140_crit_edge: ; preds = %mt76_worker_enable.exit128
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_enable.exit140

if.end.i131:                                      ; preds = %mt76_worker_enable.exit128
  call void @kthread_unpark(ptr noundef nonnull %41) #4
  %42 = ptrtoint ptr %net_worker to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %net_worker, align 4
  %tobool.not.i.i130 = icmp eq ptr %43, null
  br i1 %tobool.not.i.i130, label %if.end.i131.mt76_worker_enable.exit140_crit_edge, label %if.end.i.i135

if.end.i131.mt76_worker_enable.exit140_crit_edge: ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_enable.exit140

if.end.i.i135:                                    ; preds = %if.end.i131
  %state.i.i132 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 0, i32 1, i32 4, i32 2
  %call.i.i133 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i132) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i133)
  %tobool1.not.i.i134 = icmp eq i32 %call.i.i133, 0
  br i1 %tobool1.not.i.i134, label %land.lhs.true.i.i137, label %if.end.i.i135.mt76_worker_enable.exit140_crit_edge

if.end.i.i135.mt76_worker_enable.exit140_crit_edge: ; preds = %if.end.i.i135
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_enable.exit140

land.lhs.true.i.i137:                             ; preds = %if.end.i.i135
  %44 = ptrtoint ptr %state.i.i132 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %state.i.i132, align 4
  %46 = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool4.not.i.i136 = icmp eq i32 %46, 0
  br i1 %tobool4.not.i.i136, label %if.then5.i.i139, label %land.lhs.true.i.i137.mt76_worker_enable.exit140_crit_edge

land.lhs.true.i.i137.mt76_worker_enable.exit140_crit_edge: ; preds = %land.lhs.true.i.i137
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_enable.exit140

if.then5.i.i139:                                  ; preds = %land.lhs.true.i.i137
  call void @__sanitizer_cov_trace_pc() #6
  %47 = ptrtoint ptr %net_worker to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %net_worker, align 4
  %call7.i.i138 = call i32 @wake_up_process(ptr noundef %48) #4
  br label %mt76_worker_enable.exit140

mt76_worker_enable.exit140:                       ; preds = %if.then5.i.i139, %land.lhs.true.i.i137.mt76_worker_enable.exit140_crit_edge, %if.end.i.i135.mt76_worker_enable.exit140_crit_edge, %if.end.i131.mt76_worker_enable.exit140_crit_edge, %mt76_worker_enable.exit128.mt76_worker_enable.exit140_crit_edge
  %fw_assert = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 5
  %49 = ptrtoint ptr %fw_assert to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load = load i8, ptr %fw_assert, align 4
  %bf.clear = and i8 %bf.load, -33
  store i8 %bf.clear, ptr %fw_assert, align 4
  call void @_clear_bit(i32 noundef 2, ptr noundef %state) #4
  call void @_clear_bit(i32 noundef 8, ptr noundef %state) #4
  %50 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %func.i, align 4
  call void @sdio_claim_host(ptr noundef %51) #4
  %52 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %func.i, align 4
  call void @sdio_writel(ptr noundef %53, i32 noundef 1, i32 noundef 4, ptr noundef null) #4
  %54 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %func.i, align 4
  call void @sdio_release_host(ptr noundef %55) #4
  %call44 = call i32 @mt7921_run_firmware(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %mt76_worker_enable.exit140.out_crit_edge

mt76_worker_enable.exit140.out_crit_edge:         ; preds = %mt76_worker_enable.exit140
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end47:                                         ; preds = %mt76_worker_enable.exit140
  %call48 = call i32 @mt7921_mcu_set_eeprom(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end47.out_crit_edge

if.end47.out_crit_edge:                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end51:                                         ; preds = %if.end47
  %call52 = call i32 @mt7921_mac_init(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end51.out_crit_edge

if.end51.out_crit_edge:                           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end55:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  %phy = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 2
  %call56 = call i32 @__mt7921_start(ptr noundef %phy) #4
  br label %out

out:                                              ; preds = %if.end55, %if.end51.out_crit_edge, %if.end47.out_crit_edge, %mt76_worker_enable.exit140.out_crit_edge
  %err.0 = phi i32 [ %call44, %mt76_worker_enable.exit140.out_crit_edge ], [ %call48, %if.end47.out_crit_edge ], [ %call52, %if.end51.out_crit_edge ], [ %call56, %if.end55 ]
  call void @_clear_bit(i32 noundef 7, ptr noundef %state) #4
  %56 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tx_worker, align 4
  %tobool.not.i142 = icmp eq ptr %57, null
  br i1 %tobool.not.i142, label %out.mt76_worker_enable.exit153_crit_edge, label %if.end.i144

out.mt76_worker_enable.exit153_crit_edge:         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_enable.exit153

if.end.i144:                                      ; preds = %out
  call void @kthread_unpark(ptr noundef nonnull %57) #4
  %58 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tx_worker, align 4
  %tobool.not.i.i143 = icmp eq ptr %59, null
  br i1 %tobool.not.i.i143, label %if.end.i144.mt76_worker_enable.exit153_crit_edge, label %if.end.i.i148

if.end.i144.mt76_worker_enable.exit153_crit_edge: ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_enable.exit153

if.end.i.i148:                                    ; preds = %if.end.i144
  %state.i.i145 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 26, i32 2
  %call.i.i146 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i145) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i146)
  %tobool1.not.i.i147 = icmp eq i32 %call.i.i146, 0
  br i1 %tobool1.not.i.i147, label %land.lhs.true.i.i150, label %if.end.i.i148.mt76_worker_enable.exit153_crit_edge

if.end.i.i148.mt76_worker_enable.exit153_crit_edge: ; preds = %if.end.i.i148
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_enable.exit153

land.lhs.true.i.i150:                             ; preds = %if.end.i.i148
  %60 = ptrtoint ptr %state.i.i145 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %state.i.i145, align 4
  %62 = and i32 %61, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool4.not.i.i149 = icmp eq i32 %62, 0
  br i1 %tobool4.not.i.i149, label %if.then5.i.i152, label %land.lhs.true.i.i150.mt76_worker_enable.exit153_crit_edge

land.lhs.true.i.i150.mt76_worker_enable.exit153_crit_edge: ; preds = %land.lhs.true.i.i150
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_enable.exit153

if.then5.i.i152:                                  ; preds = %land.lhs.true.i.i150
  call void @__sanitizer_cov_trace_pc() #6
  %63 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tx_worker, align 4
  %call7.i.i151 = call i32 @wake_up_process(ptr noundef %64) #4
  br label %mt76_worker_enable.exit153

mt76_worker_enable.exit153:                       ; preds = %if.then5.i.i152, %land.lhs.true.i.i150.mt76_worker_enable.exit153_crit_edge, %if.end.i.i148.mt76_worker_enable.exit153_crit_edge, %if.end.i144.mt76_worker_enable.exit153_crit_edge, %out.mt76_worker_enable.exit153_crit_edge
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_connac_free_pending_tx_skbs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_txq_schedule_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_run_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_mcu_set_eeprom(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_mac_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mt7921_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7921s_tx_prepare_skb(ptr noundef %mdev, ptr nocapture noundef readnone %txwi_ptr, i32 noundef %qid, ptr noundef %wcid, ptr noundef %sta, ptr nocapture noundef readonly %tx_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %skb = getelementptr inbounds %struct.mt76_tx_info, ptr %tx_info, i32 0, i32 1
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %hw_key = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  %2 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_key, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %5)
  %cmp = icmp ult i32 %5, 15
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !14

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool5.not = icmp eq ptr %wcid, null
  %global_wcid = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 36
  %spec.select = select i1 %tobool5.not, ptr %global_wcid, ptr %wcid
  %tobool8.not = icmp eq ptr %sta, null
  br i1 %tobool8.not, label %if.end.if.end14_crit_edge, label %if.then9

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then9:                                         ; preds = %if.end
  %last_txs = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 3, i32 4, i32 3, i32 2
  %6 = ptrtoint ptr %last_txs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_txs, align 8
  %add = add i32 %7, 25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp10 = icmp slt i32 %sub, 0
  br i1 %cmp10, label %if.then11, label %if.then9.if.end14_crit_edge

if.then9.if.end14_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cb.i, align 8
  %or = or i32 %10, 1
  store i32 %or, ptr %cb.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %12 = ptrtoint ptr %last_txs to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %last_txs, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.then9.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %call15 = tail call i32 @mt76_tx_status_skb_add(ptr noundef %mdev, ptr noundef %spec.select, ptr noundef %1) #4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 -64
  %15 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 64)
  tail call void @mt7921_mac_write_txwi(ptr noundef %mdev, ptr noundef %add.ptr.i, ptr noundef %1, ptr noundef %spec.select, ptr noundef %3, i32 noundef %call15, i1 noundef zeroext false) #4
  %call.i = tail call ptr @skb_push(ptr noundef %1, i32 noundef 64) #4
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %add.i = add i32 %17, 4
  %and17.i = and i32 %add.i, 65535
  %or.i = or i32 %and17.i, 65536
  %call.i52 = tail call ptr @skb_push(ptr noundef %1, i32 noundef 4) #4
  %18 = tail call i32 @llvm.bswap.i32(i32 %or.i) #4
  %19 = ptrtoint ptr %call.i52 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %call.i52, align 1
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  %sub17 = add i32 %21, -1
  %or18 = or i32 %sub17, 3
  %add19 = sub i32 1, %21
  %sub21 = add i32 %add19, %or18
  %call22 = tail call i32 @mt76_skb_adjust_pad(ptr noundef %1, i32 noundef %sub21) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end14.cleanup_crit_edge, label %if.then24

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then24:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %pktid25 = getelementptr inbounds %struct.mt76_wcid, ptr %spec.select, i32 0, i32 16
  %call26 = tail call ptr @idr_remove(ptr noundef %pktid25, i32 noundef %call15) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call22, %if.then24 ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_tx_status_skb_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_skb_adjust_pad(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7921s_tx_complete_skb(ptr noundef %mdev, ptr nocapture noundef readonly %e) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %e, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %arrayidx = getelementptr i8, ptr %3, i32 8
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = and i32 %5, -16580608
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %arrayidx18 = getelementptr %struct.mt76_dev, ptr %mdev, i32 0, i32 37, i32 %7
  %8 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %arrayidx18, align 4
  %call = tail call i32 @rcu_read_lock_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end25_crit_edge

entry.do.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end25

land.lhs.true:                                    ; preds = %entry
  %call20 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true.do.end25_crit_edge, label %land.lhs.true22

land.lhs.true.do.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end25

land.lhs.true22:                                  ; preds = %land.lhs.true
  %.b45 = load i1, ptr @mt7921s_tx_complete_skb.__warned, align 1
  br i1 %.b45, label %land.lhs.true22.do.end25_crit_edge, label %if.then

land.lhs.true22.do.end25_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end25

if.then:                                          ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @mt7921s_tx_complete_skb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 204, ptr noundef nonnull @.str.1) #4
  br label %do.end25

do.end25:                                         ; preds = %if.then, %land.lhs.true22.do.end25_crit_edge, %land.lhs.true.do.end25_crit_edge, %entry.do.end25_crit_edge
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %do.end25.if.end35_crit_edge, label %lor.lhs.false.i

do.end25.if.end35_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

lor.lhs.false.i:                                  ; preds = %do.end25
  %sta.i = getelementptr inbounds %struct.mt76_wcid, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %sta.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i = load i8, ptr %sta.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool1.not.i = icmp sgt i8 %bf.load.i, -1
  %add.ptr.i = getelementptr i8, ptr %9, i32 -268
  %tobool28.not = icmp eq ptr %add.ptr.i, null
  %or.cond = select i1 %tobool1.not.i, i1 true, i1 %tobool28.not
  br i1 %or.cond, label %lor.lhs.false.i.if.end35_crit_edge, label %land.lhs.true29

lor.lhs.false.i.if.end35_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

land.lhs.true29:                                  ; preds = %lor.lhs.false.i
  %11 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %e, align 4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 15, i32 0, i32 18
  %13 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %14)
  %cmp.not = icmp eq i16 %14, -30578
  br i1 %cmp.not, label %land.lhs.true29.if.end35_crit_edge, label %if.then34, !prof !14

land.lhs.true29.if.end35_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.then34:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mt7921_tx_check_aggr(ptr noundef nonnull %add.ptr.i, ptr noundef %add.ptr) #4
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %land.lhs.true29.if.end35_crit_edge, %lor.lhs.false.i.if.end35_crit_edge, %do.end25.if.end35_crit_edge
  %15 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %e, align 4
  %call36 = tail call ptr @skb_pull(ptr noundef %16, i32 noundef 68) #4
  %wcid37 = getelementptr inbounds %struct.mt76_queue_entry, ptr %e, i32 0, i32 4
  %17 = ptrtoint ptr %wcid37 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %wcid37, align 4
  %19 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %e, align 4
  tail call void @__mt76_tx_complete_skb(ptr noundef %mdev, i16 noundef zeroext %18, ptr noundef %20, ptr noundef null) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7921_tx_check_aggr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mt7921s_tx_status_data(ptr noundef %mdev, ptr nocapture noundef readnone %update) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pm = getelementptr inbounds %struct.mt7921_dev, ptr %mdev, i32 0, i32 9
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %mdev, ptr noundef %pm) #4
  tail call void @mt7921_mac_sta_poll(ptr noundef %mdev) #4
  tail call void @mt76_connac_power_save_sched(ptr noundef %mdev, ptr noundef %pm) #4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  ret i1 false
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7921_mac_sta_poll(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_park(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_unpark(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7921_mac_write_txwi(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mt76_tx_complete_skb(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_pm_wake(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_connac_power_save_sched(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/sdio_mac.c", i32 58, i32 2}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/sdio_mac.c", i32 204, i32 9}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{!"branch_weights", i32 1, i32 2000}
