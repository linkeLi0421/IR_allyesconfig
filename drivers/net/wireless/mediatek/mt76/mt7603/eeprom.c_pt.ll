; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt7603/eeprom.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt7603/eeprom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mt7603_efuse_read.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/wireless/mediatek/mt76/mt7603/eeprom.c\00", [45 x i8] zeroinitializer }, align 32
@mt7603_apply_cal_free_data.cal_free_bytes = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"U\F0\F4\F7VW\\]", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mediatek,eeprom-merge-otp\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 30208, i64 30211, i64 30248]
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 27, i32 6 }
@___asan_gen_.5 = private unnamed_addr constant [15 x i8] c"cal_free_bytes\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 93, i32 18 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [54 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7603/eeprom.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 109, i32 40 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @mt7603_apply_cal_free_data.cal_free_bytes, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7603_apply_cal_free_data.cal_free_bytes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7603_eeprom_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @mt76_eeprom_init(ptr noundef %dev, i32 noundef 1024) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call i32 @mt7603_reg_map(ptr noundef %dev, i32 noundef -2130247680) #3
  %bus.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1.i.i = tail call i32 %3(ptr noundef %dev, i32 noundef %call.i.i) #3
  %and.i.i = and i32 %call1.i.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end.i.i:                                       ; preds = %if.end.i
  %dev2.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %4 = ptrtoint ptr %dev2.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2.i.i, align 8
  %call.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 1024, i32 noundef 3520) #3
  %otp.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 45
  %6 = ptrtoint ptr %otp.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i.i.i, ptr %otp.i.i, align 8
  %size.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 45, i32 1
  %7 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1024, ptr %size.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool7.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %for.cond.preheader.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.preheader.i.i:                           ; preds = %if.end.i.i
  %add.i.i.i = add i32 %call.i.i, 8
  %add85.i.i.i = add i32 %call.i.i, 48
  %add86.1.i.i.i = add i32 %call.i.i, 52
  %add86.2.i.i.i = add i32 %call.i.i, 56
  %add86.3.i.i.i = add i32 %call.i.i, 60
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %mt7603_efuse_read.exit.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i
  %add1241.i.i = phi i32 [ 16, %for.cond.preheader.i.i ], [ %add12.i.i, %mt7603_efuse_read.exit.i.i.for.body.i.i_crit_edge ]
  %i.040.i.i = phi i32 [ 0, %for.cond.preheader.i.i ], [ %add1241.i.i, %mt7603_efuse_read.exit.i.i.for.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i.i, i32 %i.040.i.i
  %8 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call.i37.i.i = tail call i32 %11(ptr noundef %dev, i32 noundef %add.i.i.i) #3
  %and.i.i.i = and i32 %call.i37.i.i, -1140785345
  %shl.i.i.i = shl nuw nsw i32 %i.040.i.i, 16
  %or.i.i.i = or i32 %shl.i.i.i, %and.i.i.i
  %or20.i.i.i = or i32 %or.i.i.i, 1073741824
  %12 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i.i, align 4
  %wr.i.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %wr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wr.i.i.i, align 4
  tail call void %15(ptr noundef %dev, i32 noundef %add.i.i.i, i32 noundef %or20.i.i.i) #3
  %call24.i.i.i = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef %add.i.i.i, i32 noundef 1073741824, i32 noundef 0, i32 noundef 1000) #3
  br i1 %call24.i.i.i, label %if.end26.i.i.i, label %for.body.i.i.cleanup_crit_edge

for.body.i.i.cleanup_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end26.i.i.i:                                   ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 429496) #3
  %17 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call30.i.i.i = tail call i32 %20(ptr noundef %dev, i32 noundef %add.i.i.i) #3
  %and31.i.i.i = and i32 %call30.i.i.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %and31.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and31.i.i.i, 63
  br i1 %cmp.i.i.i, label %if.end26.i.i.i.if.then79.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.end26.i.i.i.if.then79.i.i.i_crit_edge:         ; preds = %if.end26.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then79.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end26.i.i.i
  %and33.i.i.i = and i32 %call30.i.i.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i.i.i)
  %tobool34.not.i.i.i = icmp eq i32 %and33.i.i.i, 0
  br i1 %tobool34.not.i.i.i, label %land.rhs.i.i.i, label %for.cond.preheader.i.i.i

for.cond.preheader.i.i.i:                         ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %21 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %call87.i.i.i = tail call i32 %24(ptr noundef %dev, i32 noundef %add85.i.i.i) #3
  %25 = tail call i32 @llvm.bswap.i32(i32 %call87.i.i.i) #3
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %add.ptr.i.i, align 1
  %27 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %call87.1.i.i.i = tail call i32 %30(ptr noundef %dev, i32 noundef %add86.1.i.i.i) #3
  %add.ptr.1.i.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %call87.1.i.i.i) #3
  %32 = ptrtoint ptr %add.ptr.1.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %31, ptr %add.ptr.1.i.i.i, align 1
  %33 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bus.i.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %call87.2.i.i.i = tail call i32 %36(ptr noundef %dev, i32 noundef %add86.2.i.i.i) #3
  %add.ptr.2.i.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 8
  %37 = tail call i32 @llvm.bswap.i32(i32 %call87.2.i.i.i) #3
  %38 = ptrtoint ptr %add.ptr.2.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %37, ptr %add.ptr.2.i.i.i, align 1
  %39 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus.i.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %call87.3.i.i.i = tail call i32 %42(ptr noundef %dev, i32 noundef %add86.3.i.i.i) #3
  %add.ptr.3.i.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 12
  %43 = tail call i32 @llvm.bswap.i32(i32 %call87.3.i.i.i) #3
  %44 = ptrtoint ptr %add.ptr.3.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %43, ptr %add.ptr.3.i.i.i, align 1
  br label %mt7603_efuse_read.exit.i.i

land.rhs.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  %.b116.i.i.i = load i1, ptr @mt7603_efuse_read.__already_done, align 1
  br i1 %.b116.i.i.i, label %land.rhs.i.i.i.if.then79.i.i.i_crit_edge, label %if.then44.i.i.i, !prof !16

land.rhs.i.i.i.if.then79.i.i.i_crit_edge:         ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then79.i.i.i

if.then44.i.i.i:                                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @mt7603_efuse_read.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 27, i32 noundef 9, ptr noundef null) #3
  br label %if.then79.i.i.i

if.then79.i.i.i:                                  ; preds = %if.then44.i.i.i, %land.rhs.i.i.i.if.then79.i.i.i_crit_edge, %if.end26.i.i.i.if.then79.i.i.i_crit_edge
  %45 = call ptr @memset(ptr %add.ptr.i.i, i32 255, i32 16)
  br label %mt7603_efuse_read.exit.i.i

mt7603_efuse_read.exit.i.i:                       ; preds = %if.then79.i.i.i, %for.cond.preheader.i.i.i
  %add12.i.i = add nuw nsw i32 %add1241.i.i, 16
  %cmp.i.i = icmp ult i32 %add1241.i.i, 1009
  br i1 %cmp.i.i, label %mt7603_efuse_read.exit.i.i.for.body.i.i_crit_edge, label %mt7603_efuse_read.exit.i.i.if.end_crit_edge

mt7603_efuse_read.exit.i.i.if.end_crit_edge:      ; preds = %mt7603_efuse_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

mt7603_efuse_read.exit.i.i.for.body.i.i_crit_edge: ; preds = %mt7603_efuse_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i.i

if.end:                                           ; preds = %mt7603_efuse_read.exit.i.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %otp = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 45
  %46 = ptrtoint ptr %otp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %otp, align 8
  %tobool.not = icmp eq ptr %47, null
  br i1 %tobool.not, label %if.end.if.end12_crit_edge, label %if.then1

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

if.then1:                                         ; preds = %if.end
  %eeprom.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %48 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %eeprom.i, align 16
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %49, align 1
  %52 = tail call i16 @llvm.bswap.i16(i16 %51) #3
  %53 = zext i16 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values)
  switch i16 %52, label %if.else [
    i16 30248, label %if.then1.if.then4_crit_edge
    i16 30211, label %if.then1.if.then4_crit_edge86
    i16 30208, label %if.then1.if.then4_crit_edge87
  ]

if.then1.if.then4_crit_edge87:                    ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then4

if.then1.if.then4_crit_edge86:                    ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then4

if.then1.if.then4_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then4

if.then4:                                         ; preds = %if.then1.if.then4_crit_edge, %if.then1.if.then4_crit_edge86, %if.then1.if.then4_crit_edge87
  %dev1.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %54 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev1.i, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %55, i32 0, i32 27
  %56 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %57, null
  br i1 %tobool.not.i, label %if.then4.if.end12_crit_edge, label %lor.lhs.false.i

if.then4.if.end12_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

lor.lhs.false.i:                                  ; preds = %if.then4
  %call.i.i75 = tail call ptr @of_find_property(ptr noundef nonnull %57, ptr noundef nonnull @.str.1, ptr noundef null) #3
  %tobool.i.not.i = icmp eq ptr %call.i.i75, null
  br i1 %tobool.i.not.i, label %lor.lhs.false.i.if.end12_crit_edge, label %if.end.i77

lor.lhs.false.i.if.end12_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

if.end.i77:                                       ; preds = %lor.lhs.false.i
  %arrayidx.i.i = getelementptr i8, ptr %47, i32 85
  %58 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i.i76 = icmp eq i8 %59, 0
  br i1 %tobool.not.i.i76, label %if.end.i77.if.end12_crit_edge, label %if.end.i.i80

if.end.i77.if.end12_crit_edge:                    ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

if.end.i.i80:                                     ; preds = %if.end.i77
  %add.ptr.i.i78 = getelementptr i8, ptr %47, i32 86
  %60 = ptrtoint ptr %add.ptr.i.i78 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %add.ptr.i.i78, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %cmp.i.i79 = icmp eq i16 %61, 0
  br i1 %cmp.i.i79, label %if.end.i.i80.if.end12_crit_edge, label %if.end3.i.i

if.end.i.i80.if.end12_crit_edge:                  ; preds = %if.end.i.i80
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

if.end3.i.i:                                      ; preds = %if.end.i.i80
  %add.ptr4.i.i = getelementptr i8, ptr %47, i32 92
  %62 = ptrtoint ptr %add.ptr4.i.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 2)
  %63 = load i16, ptr %add.ptr4.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %cmp7.i.i = icmp eq i16 %63, 0
  br i1 %cmp7.i.i, label %if.end3.i.i.if.end12_crit_edge, label %if.end10.i.i

if.end3.i.i.if.end12_crit_edge:                   ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

if.end10.i.i:                                     ; preds = %if.end3.i.i
  %arrayidx11.i.i = getelementptr i8, ptr %47, i32 240
  %64 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx11.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool12.not.i.i = icmp eq i8 %65, 0
  br i1 %tobool12.not.i.i, label %if.end10.i.i.if.end12_crit_edge, label %if.end14.i.i

if.end10.i.i.if.end12_crit_edge:                  ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

if.end14.i.i:                                     ; preds = %if.end10.i.i
  %arrayidx15.i.i = getelementptr i8, ptr %47, i32 244
  %66 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx15.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool16.not.i.i = icmp eq i8 %67, 0
  br i1 %tobool16.not.i.i, label %if.end14.i.i.if.end12_crit_edge, label %mt7603_has_cal_free_data.exit.i

if.end14.i.i.if.end12_crit_edge:                  ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

mt7603_has_cal_free_data.exit.i:                  ; preds = %if.end14.i.i
  %arrayidx19.i.i = getelementptr i8, ptr %47, i32 247
  %68 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx19.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool20.not.i.not.i = icmp eq i8 %69, 0
  br i1 %tobool20.not.i.not.i, label %mt7603_has_cal_free_data.exit.i.if.end12_crit_edge, label %if.end5.i

mt7603_has_cal_free_data.exit.i.if.end12_crit_edge: ; preds = %mt7603_has_cal_free_data.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

if.end5.i:                                        ; preds = %mt7603_has_cal_free_data.exit.i
  %rev.i.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 39
  %70 = ptrtoint ptr %rev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rev.i.i.i, align 4
  %shr.i.mask.i.i = and i32 %71, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1982332928, i32 %shr.i.mask.i.i)
  %cmp.i23.i = icmp eq i32 %shr.i.mask.i.i, 1982332928
  %spec.select.i = select i1 %cmp.i23.i, i32 4, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end5.i
  %i.025.i = phi i32 [ 0, %if.end5.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [8 x i8], ptr @mt7603_apply_cal_free_data.cal_free_bytes, i32 0, i32 %i.025.i
  %72 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %73 to i32
  %arrayidx9.i = getelementptr i8, ptr %47, i32 %conv.i
  %74 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx9.i, align 1
  %arrayidx10.i = getelementptr i8, ptr %49, i32 %conv.i
  %76 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %arrayidx10.i, align 1
  %inc.i = add nuw nsw i32 %i.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %spec.select.i
  br i1 %exitcond.not.i, label %for.body.i.if.end12_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.body.i.if.end12_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

if.else:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #5
  %77 = call ptr @memcpy(ptr %49, ptr %47, i32 1024)
  br label %if.end12

if.end12:                                         ; preds = %if.else, %for.body.i.if.end12_crit_edge, %mt7603_has_cal_free_data.exit.i.if.end12_crit_edge, %if.end14.i.i.if.end12_crit_edge, %if.end10.i.i.if.end12_crit_edge, %if.end3.i.i.if.end12_crit_edge, %if.end.i.i80.if.end12_crit_edge, %if.end.i77.if.end12_crit_edge, %lor.lhs.false.i.if.end12_crit_edge, %if.then4.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %eeprom13 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %78 = ptrtoint ptr %eeprom13 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %eeprom13, align 16
  %cap = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 9
  %80 = ptrtoint ptr %cap to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %cap, align 8
  %macaddr = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 13
  %add.ptr = getelementptr i8, ptr %79, i32 4
  %81 = call ptr @memcpy(ptr %macaddr, ptr %add.ptr, i32 6)
  %antenna_mask = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 15
  %82 = ptrtoint ptr %antenna_mask to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 3, ptr %antenna_mask, align 8
  %arrayidx = getelementptr i8, ptr %79, i32 52
  %83 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %84 to i32
  %and = and i32 %conv, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp27 = icmp eq i32 %and, 1
  %shr48.mask = and i32 %conv, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %shr48.mask)
  %cmp49 = icmp eq i32 %shr48.mask, 16
  %or.cond = or i1 %cmp27, %cmp49
  br i1 %or.cond, label %if.end12.if.then54_crit_edge, label %lor.lhs.false51

if.end12.if.then54_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then54

lor.lhs.false51:                                  ; preds = %if.end12
  %85 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bus.i.i, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 4
  %call.i81 = tail call i32 %88(ptr noundef %dev, i32 noundef -2130247580) #3
  %and.i = and i32 %call.i81, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false51.if.end56_crit_edge, label %lor.lhs.false51.if.then54_crit_edge

lor.lhs.false51.if.then54_crit_edge:              ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then54

lor.lhs.false51.if.end56_crit_edge:               ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end56

if.then54:                                        ; preds = %lor.lhs.false51.if.then54_crit_edge, %if.end12.if.then54_crit_edge
  %89 = ptrtoint ptr %antenna_mask to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %antenna_mask, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %lor.lhs.false51.if.end56_crit_edge
  tail call void @mt76_eeprom_override(ptr noundef %dev) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %for.body.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end56 ], [ -12, %if.end.i.i.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ -110, %for.body.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_eeprom_override(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_eeprom_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7603_reg_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mt76_poll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/eeprom.c", i32 27, i32 6}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @mt7603_apply_cal_free_data.cal_free_bytes, !4, !"cal_free_bytes", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/eeprom.c", i32 93, i32 18}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/eeprom.c", i32 109, i32 40}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{!"branch_weights", i32 2000, i32 1}
