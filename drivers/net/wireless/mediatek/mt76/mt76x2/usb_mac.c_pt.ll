; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt76x2/usb_mac.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt76x2/usb_mac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@mt76x2u_mac_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 161, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MAC RX failed to stop\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mt76x2u_mac_stop\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/mediatek/mt76/mt76x2/usb_mac.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt76x2u_mac_stop._entry_ptr = internal global ptr @mt76x2u_mac_stop._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.6 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [55 x i8] c"../drivers/net/wireless/mediatek/mt76/mt76x2/usb_mac.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 161, i32 3 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @mt76x2u_mac_stop._entry, ptr @mt76x2u_mac_stop._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x2u_mac_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76x2u_mac_reset(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wr, align 4
  tail call void %3(ptr noundef %dev, i32 noundef 520, i32 noundef 48) #4
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %wr2 = getelementptr inbounds %struct.mt76_bus_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wr2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wr2, align 4
  tail call void %7(ptr noundef %dev, i32 noundef 1032, i32 noundef -269533409) #4
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 4
  %wr4 = getelementptr inbounds %struct.mt76_bus_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %wr4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wr4, align 4
  tail call void %11(ptr noundef %dev, i32 noundef 1036, i32 noundef 65215) #4
  tail call void @mt76_write_mac_initvals(ptr noundef %dev) #4
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus, align 4
  %wr6 = getelementptr inbounds %struct.mt76_bus_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %wr6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wr6, align 4
  tail call void %15(ptr noundef %dev, i32 noundef 4944, i32 noundef 4128) #4
  %16 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus, align 4
  %wr8 = getelementptr inbounds %struct.mt76_bus_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %wr8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wr8, align 4
  tail call void %19(ptr noundef %dev, i32 noundef 5124, i32 noundef 19) #4
  %20 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus, align 4
  %wr10 = getelementptr inbounds %struct.mt76_bus_ops, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %wr10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wr10, align 4
  tail call void %23(ptr noundef %dev, i32 noundef 4120, i32 noundef 12032) #4
  %24 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus, align 4
  %wr12 = getelementptr inbounds %struct.mt76_bus_ops, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %wr12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wr12, align 4
  tail call void %27(ptr noundef %dev, i32 noundef 532, i32 noundef 8819) #4
  %28 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus, align 4
  %wr14 = getelementptr inbounds %struct.mt76_bus_ops, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %wr14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wr14, align 4
  tail call void %31(ptr noundef %dev, i32 noundef 536, i32 noundef 9028) #4
  %32 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus, align 4
  %wr16 = getelementptr inbounds %struct.mt76_bus_ops, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %wr16 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wr16, align 4
  tail call void %35(ptr noundef %dev, i32 noundef 540, i32 noundef 13482) #4
  %36 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmw, align 4
  %call = tail call i32 %39(ptr noundef %dev, i32 noundef 4100, i32 noundef 3, i32 noundef 0) #4
  %rev.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 39
  %40 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rev.i.i, align 4
  %shr.i.mask.i = and i32 %41, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1980891136, i32 %shr.i.mask.i)
  %cmp.i = icmp eq i32 %shr.i.mask.i, 1980891136
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bus, align 4
  %rmw20 = getelementptr inbounds %struct.mt76_bus_ops, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %rmw20 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rmw20, align 4
  %call21 = tail call i32 %45(ptr noundef %dev, i32 noundef 64, i32 noundef 1, i32 noundef 0) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %46 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bus, align 4
  %rmw23 = getelementptr inbounds %struct.mt76_bus_ops, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %rmw23 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rmw23, align 4
  %call24 = tail call i32 %49(ptr noundef %dev, i32 noundef 5148, i32 noundef 0, i32 noundef 61440) #4
  %50 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bus, align 4
  %rmw26 = getelementptr inbounds %struct.mt76_bus_ops, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %rmw26 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rmw26, align 4
  %call27 = tail call i32 %53(ptr noundef %dev, i32 noundef 5056, i32 noundef -2147483648, i32 noundef 0) #4
  %eeprom.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %54 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %eeprom.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %55, i32 158
  %56 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %add.ptr.i.i, align 1
  %58 = tail call i16 @llvm.bswap.i16(i16 %57) #4
  %conv.i.i = zext i16 %58 to i32
  %59 = trunc i16 %58 to i8
  %conv2.i = and i8 %59, 127
  %and4.i = and i32 %conv.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and4.i)
  %cmp.i56 = icmp eq i32 %and4.i, 255
  %and7.i = and i32 %conv.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool.not.i = icmp eq i32 %and7.i, 0
  %sub.i = sub nsw i8 0, %conv2.i
  %spec.select.i = select i1 %tobool.not.i, i8 %conv2.i, i8 %sub.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %58)
  %cmp15.i = icmp ult i16 %58, 256
  %60 = lshr i16 %58, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %60)
  %cmp18.i = icmp eq i16 %60, 255
  %or.cond.i = or i1 %cmp15.i, %cmp18.i
  br i1 %or.cond.i, label %if.then20.i, label %if.end.do.end59.i_crit_edge

if.end.do.end59.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end59.i

if.then20.i:                                      ; preds = %if.end
  %add.ptr.i181.i = getelementptr i8, ptr %55, i32 58
  %61 = ptrtoint ptr %add.ptr.i181.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 2)
  %62 = load i16, ptr %add.ptr.i181.i, align 1
  %63 = lshr i16 %62, 8
  %trunc.i = trunc i16 %63 to i8
  %64 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc.i, label %if.then20.i.do.end59.i_crit_edge [
    i8 0, label %if.then20.i.if.then33.i_crit_edge
    i8 -1, label %if.then20.i.if.then33.i_crit_edge57
  ]

if.then20.i.if.then33.i_crit_edge57:              ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then33.i

if.then20.i.if.then33.i_crit_edge:                ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then33.i

if.then20.i.do.end59.i_crit_edge:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end59.i

if.then33.i:                                      ; preds = %if.then20.i.if.then33.i_crit_edge, %if.then20.i.if.then33.i_crit_edge57
  br label %do.end59.i

do.end59.i:                                       ; preds = %if.then33.i, %if.then20.i.do.end59.i_crit_edge, %if.end.do.end59.i_crit_edge
  %eep_val.0.i = phi i16 [ 20, %if.then33.i ], [ %60, %if.end.do.end59.i_crit_edge ], [ %63, %if.then20.i.do.end59.i_crit_edge ]
  %65 = sext i8 %spec.select.i to i32
  %conv44.i = select i1 %cmp.i56, i32 0, i32 %65
  %66 = and i16 %eep_val.0.i, 127
  %conv43.i = zext i16 %66 to i32
  %add.i = add nsw i32 %conv44.i, %conv43.i
  %67 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bus, align 4
  %rmw.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rmw.i, align 4
  %shl.i = shl nsw i32 %add.i, 8
  %and63.i = and i32 %shl.i, 32512
  %call64.i = tail call i32 %70(ptr noundef %dev, i32 noundef 1073742100, i32 noundef 32512, i32 noundef %and63.i) #4
  %71 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bus, align 4
  %rmw66.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %rmw66.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rmw66.i, align 4
  %call67.i = tail call i32 %74(ptr noundef %dev, i32 noundef 1073742104, i32 noundef 0, i32 noundef 32512) #4
  %75 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bus, align 4
  %wr.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %wr.i, align 4
  tail call void %78(ptr noundef %dev, i32 noundef 1284, i32 noundef 100663296) #4
  %79 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bus, align 4
  %wr70.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %wr70.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %wr70.i, align 4
  tail call void %82(ptr noundef %dev, i32 noundef 1292, i32 noundef 142606336) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %83(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %84(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %85(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %86(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %87(i32 noundef 214748000) #4
  %88 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bus, align 4
  %wr73.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %wr73.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %wr73.i, align 4
  tail call void %91(ptr noundef %dev, i32 noundef 1284, i32 noundef 0) #4
  %92 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %bus, align 4
  %rmw75.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %rmw75.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rmw75.i, align 4
  %call92.i = tail call i32 %95(ptr noundef %dev, i32 noundef 4352, i32 noundef 65280, i32 noundef 3328) #4
  %96 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %bus, align 4
  %rmw94.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %rmw94.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %rmw94.i, align 4
  %call111.i = tail call i32 %99(ptr noundef %dev, i32 noundef 4356, i32 noundef 3840, i32 noundef 256) #4
  %100 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %bus, align 4
  %rmw113.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %rmw113.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %rmw113.i, align 4
  %call114.i = tail call i32 %103(ptr noundef %dev, i32 noundef 2060, i32 noundef 16, i32 noundef 0) #4
  %104 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %eeprom.i.i, align 16
  %add.ptr.i184.i = getelementptr i8, ptr %105, i32 66
  %106 = ptrtoint ptr %add.ptr.i184.i to i32
  call void @__asan_loadN_noabort(i32 %106, i32 2)
  %107 = load i16, ptr %add.ptr.i184.i, align 1
  %108 = lshr i16 %107, 1
  %109 = and i16 %108, 3
  %shr135.i = zext i16 %109 to i32
  %110 = zext i32 %shr135.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %shr135.i, label %do.end59.i.mt76x2u_mac_fixup_xtal.exit_crit_edge [
    i32 0, label %do.end59.i.sw.epilog.sink.split.i_crit_edge
    i32 1, label %sw.bb138.i
  ]

do.end59.i.sw.epilog.sink.split.i_crit_edge:      ; preds = %do.end59.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

do.end59.i.mt76x2u_mac_fixup_xtal.exit_crit_edge: ; preds = %do.end59.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76x2u_mac_fixup_xtal.exit

sw.bb138.i:                                       ; preds = %do.end59.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb138.i, %do.end59.i.sw.epilog.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 1545596624, %sw.bb138.i ], [ 1545596544, %do.end59.i.sw.epilog.sink.split.i_crit_edge ]
  %111 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %bus, align 4
  %wr140.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %wr140.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %wr140.i, align 4
  tail call void %114(ptr noundef %dev, i32 noundef 284, i32 noundef %.sink.i) #4
  br label %mt76x2u_mac_fixup_xtal.exit

mt76x2u_mac_fixup_xtal.exit:                      ; preds = %sw.epilog.sink.split.i, %do.end59.i.mt76x2u_mac_fixup_xtal.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_write_mac_initvals(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76x2u_mac_stop(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %3 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call1 = tail call i32 %6(ptr noundef %dev, i32 noundef 4932) #4
  %7 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wr, align 4
  %and = and i32 %call1, -256
  tail call void %10(ptr noundef %dev, i32 noundef 4932, i32 noundef %and) #4
  %11 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmw, align 4
  %call4 = tail call i32 %14(ptr noundef %dev, i32 noundef 4928, i32 noundef 1048576, i32 noundef 0) #4
  %15 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus, align 4
  %rmw6 = getelementptr inbounds %struct.mt76_bus_ops, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %rmw6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmw6, align 4
  %call7 = tail call i32 %18(ptr noundef %dev, i32 noundef 5640, i32 noundef 2, i32 noundef 0) #4
  br label %for.body

for.body:                                         ; preds = %if.end15.for.body_crit_edge, %if.end
  %i.0186 = phi i32 [ 0, %if.end ], [ %inc, %if.end15.for.body_crit_edge ]
  %19 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %call10 = tail call i32 %22(ptr noundef %dev, i32 noundef 1073778712) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call10)
  %tobool12.not = icmp sgt i32 %call10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %i.0186)
  %cmp13 = icmp ugt i32 %i.0186, 10
  %or.cond = select i1 %tobool12.not, i1 %cmp13, i1 false
  br i1 %or.cond, label %for.body.for.body18.preheader_crit_edge, label %if.end15

for.body.for.body18.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body18.preheader

if.end15:                                         ; preds = %for.body
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #4
  %inc = add nuw nsw i32 %i.0186, 1
  %exitcond.not = icmp eq i32 %inc, 2000
  br i1 %exitcond.not, label %if.end15.for.body18.preheader_crit_edge, label %if.end15.for.body_crit_edge

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.end15.for.body18.preheader_crit_edge:          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body18.preheader

for.body18.preheader:                             ; preds = %if.end15.for.body18.preheader_crit_edge, %for.body.for.body18.preheader_crit_edge
  br label %for.body18

for.body18:                                       ; preds = %if.end37.for.body18_crit_edge, %for.body18.preheader
  %i.1187 = phi i32 [ %inc39, %if.end37.for.body18_crit_edge ], [ 0, %for.body18.preheader ]
  %23 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %call21 = tail call i32 %26(ptr noundef %dev, i32 noundef 1080) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool23.not = icmp eq i32 %call21, 0
  br i1 %tobool23.not, label %land.lhs.true24, label %for.body18.if.end37_crit_edge

for.body18.if.end37_crit_edge:                    ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

land.lhs.true24:                                  ; preds = %for.body18
  %27 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %call27 = tail call i32 %30(ptr noundef %dev, i32 noundef 2608) #4
  %and28 = and i32 %call27, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %land.lhs.true30, label %land.lhs.true24.if.end37_crit_edge

land.lhs.true24.if.end37_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

land.lhs.true30:                                  ; preds = %land.lhs.true24
  %31 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %call33 = tail call i32 %34(ptr noundef %dev, i32 noundef 2612) #4
  %and34 = and i32 %call33, -16711936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %land.lhs.true30.for.end40_crit_edge, label %land.lhs.true30.if.end37_crit_edge

land.lhs.true30.if.end37_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

land.lhs.true30.for.end40_crit_edge:              ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end40

if.end37:                                         ; preds = %land.lhs.true30.if.end37_crit_edge, %land.lhs.true24.if.end37_crit_edge, %for.body18.if.end37_crit_edge
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %inc39 = add nuw nsw i32 %i.1187, 1
  %exitcond192.not = icmp eq i32 %inc39, 200
  br i1 %exitcond192.not, label %if.end37.for.end40_crit_edge, label %if.end37.for.body18_crit_edge

if.end37.for.body18_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body18

if.end37.for.end40_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end40

for.end40:                                        ; preds = %if.end37.for.end40_crit_edge, %land.lhs.true30.for.end40_crit_edge
  %35 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus, align 4
  %rmw42 = getelementptr inbounds %struct.mt76_bus_ops, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %rmw42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmw42, align 4
  %call43 = tail call i32 %38(ptr noundef %dev, i32 noundef 4100, i32 noundef 12, i32 noundef 0) #4
  br label %for.body46

for.body46:                                       ; preds = %if.end58.for.body46_crit_edge, %for.end40
  %i.2188 = phi i32 [ 0, %for.end40 ], [ %inc60, %if.end58.for.body46_crit_edge ]
  %39 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %call49 = tail call i32 %42(ptr noundef %dev, i32 noundef 4608) #4
  %and50 = and i32 %call49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %land.lhs.true52, label %for.body46.if.end58_crit_edge

for.body46.if.end58_crit_edge:                    ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58

land.lhs.true52:                                  ; preds = %for.body46
  %43 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %call55 = tail call i32 %46(ptr noundef %dev, i32 noundef 8496) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %land.lhs.true52.for.body79.preheader_crit_edge, label %land.lhs.true52.if.end58_crit_edge

land.lhs.true52.if.end58_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58

land.lhs.true52.for.body79.preheader_crit_edge:   ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body79.preheader

if.end58:                                         ; preds = %land.lhs.true52.if.end58_crit_edge, %for.body46.if.end58_crit_edge
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %inc60 = add nuw nsw i32 %i.2188, 1
  %exitcond193.not = icmp eq i32 %inc60, 1000
  br i1 %exitcond193.not, label %if.then63.critedge, label %if.end58.for.body46_crit_edge

if.end58.for.body46_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body46

if.then63.critedge:                               ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  %47 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bus, align 4
  %rmw65 = getelementptr inbounds %struct.mt76_bus_ops, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %rmw65 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rmw65, align 4
  %call66 = tail call i32 %50(ptr noundef %dev, i32 noundef 8208, i32 noundef 0, i32 noundef 2) #4
  %51 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bus, align 4
  %rmw68 = getelementptr inbounds %struct.mt76_bus_ops, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %rmw68 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rmw68, align 4
  %call69 = tail call i32 %54(ptr noundef %dev, i32 noundef 8208, i32 noundef 2, i32 noundef 0) #4
  %55 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bus, align 4
  %rmw71 = getelementptr inbounds %struct.mt76_bus_ops, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %rmw71 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rmw71, align 4
  %call72 = tail call i32 %58(ptr noundef %dev, i32 noundef 8208, i32 noundef 0, i32 noundef 1) #4
  %59 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bus, align 4
  %rmw74 = getelementptr inbounds %struct.mt76_bus_ops, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %rmw74 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rmw74, align 4
  %call75 = tail call i32 %62(ptr noundef %dev, i32 noundef 8208, i32 noundef 1, i32 noundef 0) #4
  br label %for.body79.preheader

for.body79.preheader:                             ; preds = %if.then63.critedge, %land.lhs.true52.for.body79.preheader_crit_edge
  br label %for.body79

for.body79:                                       ; preds = %if.end101.for.body79_crit_edge, %for.body79.preheader
  %count.0190 = phi i32 [ %count.1, %if.end101.for.body79_crit_edge ], [ 0, %for.body79.preheader ]
  %i.3189 = phi i32 [ %inc103, %if.end101.for.body79_crit_edge ], [ 0, %for.body79.preheader ]
  %63 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bus, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %call82 = tail call i32 %66(ptr noundef %dev, i32 noundef 1072) #4
  %and83 = and i32 %call82, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %land.lhs.true85, label %for.body79.if.end101_crit_edge

for.body79.if.end101_crit_edge:                   ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end101

land.lhs.true85:                                  ; preds = %for.body79
  %67 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bus, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %call88 = tail call i32 %70(ptr noundef %dev, i32 noundef 2608) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool90.not = icmp eq i32 %call88, 0
  br i1 %tobool90.not, label %land.lhs.true91, label %land.lhs.true85.if.end101_crit_edge

land.lhs.true85.if.end101_crit_edge:              ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end101

land.lhs.true91:                                  ; preds = %land.lhs.true85
  %71 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bus, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %call94 = tail call i32 %74(ptr noundef %dev, i32 noundef 2612) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool96.not = icmp eq i32 %call94, 0
  br i1 %tobool96.not, label %land.lhs.true97, label %land.lhs.true91.if.end101_crit_edge

land.lhs.true91.if.end101_crit_edge:              ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end101

land.lhs.true97:                                  ; preds = %land.lhs.true91
  %inc98 = add i32 %count.0190, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc98)
  %cmp99 = icmp sgt i32 %inc98, 10
  br i1 %cmp99, label %land.lhs.true97.for.end104_crit_edge, label %land.lhs.true97.if.end101_crit_edge

land.lhs.true97.if.end101_crit_edge:              ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end101

land.lhs.true97.for.end104_crit_edge:             ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end104

if.end101:                                        ; preds = %land.lhs.true97.if.end101_crit_edge, %land.lhs.true91.if.end101_crit_edge, %land.lhs.true85.if.end101_crit_edge, %for.body79.if.end101_crit_edge
  %count.1 = phi i32 [ %count.0190, %for.body79.if.end101_crit_edge ], [ %count.0190, %land.lhs.true85.if.end101_crit_edge ], [ %count.0190, %land.lhs.true91.if.end101_crit_edge ], [ %inc98, %land.lhs.true97.if.end101_crit_edge ]
  tail call void @msleep(i32 noundef 50) #4
  %inc103 = add nuw nsw i32 %i.3189, 1
  %exitcond194.not = icmp eq i32 %inc103, 200
  br i1 %exitcond194.not, label %if.end101.for.end104_crit_edge, label %if.end101.for.body79_crit_edge

if.end101.for.body79_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body79

if.end101.for.end104_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end104

for.end104:                                       ; preds = %if.end101.for.end104_crit_edge, %land.lhs.true97.for.end104_crit_edge
  %call105 = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef 4608, i32 noundef 2, i32 noundef 0, i32 noundef 2000) #4
  br i1 %call105, label %for.end104.for.body111.preheader_crit_edge, label %do.end

for.end104.for.body111.preheader_crit_edge:       ; preds = %for.end104
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body111.preheader

do.end:                                           ; preds = %for.end104
  call void @__sanitizer_cov_trace_pc() #6
  %dev107 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %75 = ptrtoint ptr %dev107 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev107, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %76, ptr noundef nonnull @.str) #7
  br label %for.body111.preheader

for.body111.preheader:                            ; preds = %do.end, %for.end104.for.body111.preheader_crit_edge
  br label %for.body111

for.body111:                                      ; preds = %if.end120.for.body111_crit_edge, %for.body111.preheader
  %i.4191 = phi i32 [ %inc122, %if.end120.for.body111_crit_edge ], [ 0, %for.body111.preheader ]
  %77 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bus, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %call114 = tail call i32 %80(ptr noundef %dev, i32 noundef 1073778712) #4
  %and115 = and i32 %call114, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %i.4191)
  %cmp118 = icmp ugt i32 %i.4191, 10
  %or.cond185 = select i1 %tobool116.not, i1 %cmp118, i1 false
  br i1 %or.cond185, label %for.body111.for.end123_crit_edge, label %if.end120

for.body111.for.end123_crit_edge:                 ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end123

if.end120:                                        ; preds = %for.body111
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #4
  %inc122 = add nuw nsw i32 %i.4191, 1
  %exitcond195.not = icmp eq i32 %inc122, 2000
  br i1 %exitcond195.not, label %if.end120.for.end123_crit_edge, label %if.end120.for.body111_crit_edge

if.end120.for.body111_crit_edge:                  ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body111

if.end120.for.end123_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end123

for.end123:                                       ; preds = %if.end120.for.end123_crit_edge, %for.body111.for.end123_crit_edge
  %81 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bus, align 4
  %wr125 = getelementptr inbounds %struct.mt76_bus_ops, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %wr125 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %wr125, align 4
  tail call void %84(ptr noundef %dev, i32 noundef 4932, i32 noundef %call1) #4
  br label %cleanup

cleanup:                                          ; preds = %for.end123, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end123 ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mt76_poll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/usb_mac.c", i32 161, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mt76x2u_mac_stop._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mt76x2u_mac_stop._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
